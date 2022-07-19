<?php 
	if (isset($_GET['del_skill'])) {
		$del_skill = $_GET['del_skill'];
		$del_skill = explode(",", $del_skill);
		$token = $del_id[0];
		$skillName = $del_id[1];

		$token = $del_skill[0];
		$skillName = $del_skill[1];
		// controller classes
		include '../classes/dbh.php';
		include '../classes/skills.php';
		include '../classes/SkillsContr.php';
		$contact = new SkillsContr($skillName);

		$contact->deleteSkill($token);
	}
?>

