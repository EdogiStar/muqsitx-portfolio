<?php 
	
	if (isset($_POST['new_skill_btn'])) {
		
		$skillName = $_POST['new_skill_name'];
		$token = $_POST['token'];
		$token = md5($token);
		
		// controller classes
		include '../classes/dbh.php';
		include '../classes/skills.php';
		include '../classes/SkillsContr.php';
		$contact = new SkillsContr($skillName);

		$contact->updateSkill($token);
		
	}
	