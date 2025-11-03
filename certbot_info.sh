<?php
//include 'config.php';

define("MAIN_DIR", "/home/xtreamcodes/iptv_xtream_codes/");
define("CONFIG_CRYPT_KEY", "5709650b0d7806074842c6de575025b1");

function xor_parse($data, $key) {
    $i = 0;
    $output = '';
    foreach (str_split($data) as $char) {
	    $output.= chr(ord($char) ^ ord($key[$i++ % strlen($key)]));
    }
    return $output;
}

$certbot = '/home/xtreamcodes/iptv_xtream_codes/tools/certbot';
$certbot1 = '/home/xtreamcodes/iptv_xtream_codes/tools/certbot1';
$update = '/home/xtreamcodes/iptv_xtream_codes/tools/update';

exec("certbot certificates > $certbot1 && sed -i '7,9d' $certbot1 && sed -i '1,5d' $certbot1 && sed 's/^ *//' $certbot1 > $certbot");

if (file_exists($certbot1)) {
    unlink($certbot1);
	echo "\nARQUIVO APAGADO $certbot1 COM SUCESSO\n\n";
} else {
    echo "\nO ARQUIVO $certbot1 NAO EXISTE\n\n";
}

foreach(file("$certbot") as $text) {
    echo $text;	
}

foreach(file("$update") as $text1) {
    echo $text1;
}	
	if($text == $text1) {
	    echo "\nFiles Iguais\n\n";
		exec ("sed 's/^ *//' $certbot > $update");
    } else {
		
		$_INFO = json_decode(xor_parse(base64_decode(file_get_contents(MAIN_DIR . "config")), CONFIG_CRYPT_KEY), True);
		//$mysqli = new mysqli($_INFO["host"], $_INFO["db_user"], $_INFO["db_pass"], $_INFO["db_name"], $_INFO["db_port"]) { exit("No MySQL connection!"); } 
	    if (!$db = new mysqli($_INFO["host"], $_INFO["db_user"], $_INFO["db_pass"], $_INFO["db_name"], $_INFO["db_port"])) { exit("No MySQL connection!"); }
		
			exec ("sed 's/^ *//' $certbot > $update");	
			
	    echo "\nUpdate - $text\n\n";
		$id = $_INFO["server_id"];
        $db->query("UPDATE streaming_servers SET certbot_info = '$text' WHERE id = '$id';");
	}	

?>
