<?php
class socialClass
{
  function GetSocialSetting()
  {
    $resultRow = '';
    $result = mysql_query("select * from social_media") or die (mysql_error());
    $iconClassArray = $this->iconClass();
    while($row = mysql_fetch_array($result))
    {
      $resultRow .= '<tr>';
      $resultRow .= '<td><input type = "text" name = "link'.$row["id"].'" value = "'.$row["link"].'" class="form-control"></td>';
      $resultRow .= '<td>';
      $resultRow .= '<select name = "icon_class'.$row["id"].'" class="form-control">';
      for($i = 0; $i < sizeof($iconClassArray); $i++)
      {
        if($iconClassArray[$i] == $row["icon_class"])
        {
          $resultRow .= '<option value = "'.$iconClassArray[$i].'" selected>'.$iconClassArray[$i].'</option>';
        }
        else
        {
          $resultRow .= '<option value = "'.$iconClassArray[$i].'">'.$iconClassArray[$i].'</option>';
        }
      }
      $resultRow .= '</select>';
      $resultRow .= '</td>';
      $resultRow .= '<td>';
      $resultRow .= '<a href = "social_media_delete.php?id='.$row["id"].'" class="btn btn-danger">Delete</a>';
      $resultRow .= '</td>';
      $resultRow .= '</tr>';
    }
    $resultRow .= '<tr>';
    $resultRow .= '<td colspan ="3">New Bottom Social Media Button</td>';
    $resultRow .= '</tr>';
    $resultRow .= '<tr>';
    $resultRow .= '<td><input type = "text" name = "newlink" value = "" class="form-control" placeholder="Link"></td>';
    $resultRow .= '<td>';
    $resultRow .= '<select name = "newiconclass" class="form-control">';
    $resultRow .= '<option value = "">Select Icon Class</option>';
    for($i = 0; $i < sizeof($iconClassArray); $i++)
    {

        $resultRow .= '<option value = "'.$iconClassArray[$i].'">'.$iconClassArray[$i].'</option>';

    }
    $resultRow .= '</select>';
    $resultRow .= '</td>';
    $resultRow .= '</tr>';
    return $resultRow;
  }

  function GetSocialSettingArray()
  {
    $socialIDArray = Array();
    $result = mysql_query("select id from social_media") or die (mysql_error());

    while($row = mysql_fetch_array($result))
    {
      $socialIDArray[] = $row["id"];
    }

    return $socialIDArray;
  }

  function SaveSocialMedia($id, $link, $icon_class)
  {
    mysql_query("update social_media set link = '$link', icon_class = '$icon_class' where id = '$id'") or die (mysql_error());
  }

  function InsertSocialMedia($link, $icon_class)
  {
    mysql_query("insert into social_media (link, icon_class) values ('$link', '$icon_class')") or die (mysql_error());
  }

  function DeleteSocialMedia($id)
  {
    mysql_query("delete from social_media where id = '$id'") or die(mysql_error());
  }

  function iconClass()
  {
    $iconClassArray = Array();
    $iconClassArray[] = "ion-social-twitter";
    $iconClassArray[] = "ion-social-facebook";
    $iconClassArray[] = "ion-social-googleplus";
    $iconClassArray[] = "ion-social-instagram";
    $iconClassArray[] = "ion-social-pinterest";
    $iconClassArray[] = "ion-social-rss";
    $iconClassArray[] = "ion-social-tumblr";
    $iconClassArray[] = "ion-social-reddit";
    $iconClassArray[] = "ion-social-linkedin";

    return $iconClassArray;
  }

  function GetSocialMedia()
  {
    $resultRow = '';
    $result = mysql_query("select link, icon_class from social_media") or die(mysql_error());
    while($row = mysql_fetch_array($result))
    {
      $resultRow .= '<li>';
      $resultRow .= '<a href="'.$row["link"].'" target = "_blank">';
      $resultRow .= '<i class="'.$row["icon_class"].'"></i>';
      $resultRow .= '</a>';
      $resultRow .= '</li>';
    }
    return $resultRow;
  }
}
$socialClass  = new socialClass();
?>
