<?php 

	class SkillsView extends Skills {

		
		public function showMenuSkills() {
			$results = $this->getAllSkills();
			foreach ($results as $result) {
				$token = $result['skill_id'];
				$token = md5($token);
				$skillName = $result['skill_name'];
				echo '<li class="nav-item"> <a class="nav-link" href="skills.php">'.$skillName.'</a></li>';
			}
		}

		public function showAllSkills() {
			$results = $this->getAllSkills();
			foreach ($results as $result) {
				$token = $result['skill_id'];
				$token = md5($token);
				$skillName = $result['skill_name'];
				echo '<span>*'.$skillName.'</span>* ';
			}
		}

		public function showAdminSkills() {
			$results = $this->getAllSkills();
			foreach ($results as $result) {
				$token = $result['skill_id'];
				$token = md5($token);
				$skillName = $result['skill_name'];
				echo '<tr>
                            <td>
                              '.$skillName.'
                            </td>
                            <td>
                              <a href="skills.php?edit_skill='.$token.', '.$skillName.'" class="badge badge-gradient-success">Edit</a>
                            </td>
                            <td>
                              <a href="delete_skill.php?del_skill='.$token.', '.$skillName.'" class="badge badge-gradient-danger">Delete</a>
                            </td>
                          </tr>';
			}
		}
	}