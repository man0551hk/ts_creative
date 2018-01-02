<?php
class GalleryCategoryClass
{
  function GetGalleryCategorySetting()
  {
    $resultRow = '';

    $result = mysql_query("select * from gallery_category") or die (mysql_error());
    while($row = mysql_fetch_array($result))
    {
      $set_id = $row["set_id"];
      $resultRow .= '<tr>';
      $result2 = mysql_query("select * from lang_setting") or die (mysql_error());
      while($row2 = mysql_fetch_array($result2))
      {
        $lang_id = $row2["lang_id"];

        $resultRow .= '<td>';
        $result3 = mysql_query("select * from gallery_category_setting where lang_id = '$lang_id' and set_id = '$set_id'") or  (mysql_error());
        if($row3 = mysql_fetch_array($result3))
        {
            $resultRow .= $row2["display_name"] . '<input type = "text" name = "editcategory'.$row3["category_id"].'" value = "'.$row3["category"].'" />';
        }

        $resultRow .= '</td>';
      }
      $resultRow .= '<td>';
      $resultRow .= '<a href = "gallery_category_delete.php?set_id='.$set_id.'" class="btn btn-danger">Delete Category</a>';
      $resultRow .= '</td>';
      $resultRow .= '</tr>';
    }


    $resultRow .= '<tr>';
    $resultRow .= '<td colspan = "5">New Category</td>';
    $resutRow .= '</tr>';
    $resultRow .= '<tr>';
    $result = mysql_query("select * from lang_setting") or die (mysql_error());
    while($row = mysql_fetch_array($result))
    {
      $resultRow .= '<td>';
      $resultRow .= '<div class ="form-inline">';
      $resultRow .= $row["display_name"];
      $resultRow .= '<input type = "text" name = "newCategory'.$row["lang_id"].'" />';
      $resultRow .= '</div>';
      $resultRow .= '</td>';
    }
    $resutRow .= '</tr>';

    return $resultRow;
  }

  function InsertCategory()
  {
    mysql_query("insert into gallery_category (create_date) values (NOW())") or die (mysql_error());
    $set_id = mysql_insert_id();
    return $set_id;
  }

  function InsertGalleryCategory($category, $set_id, $lang_id)
  {
    mysql_query("insert into gallery_category_setting (category, set_id, lang_id) values ('$category', '$set_id', '$lang_id')") or (mysql_error());
    $category_id = mysql_insert_id();
    return $category_id;
  }

  function UpdateGalleryCategory($category, $category_id)
  {
    mysql_query("update gallery_category_setting set category = '$category' where category_id = '$category_id'") or (mysql_error());
  }

  function DeleteGalleryCategory($set_id)
  {
    mysql_query("delete from gallery_category where set_id = '$set_id'") or (mysql_error());
    mysql_query("delete from gallery_category_setting where set_id = '$set_id'") or (mysql_error());
  }

  function ReturnCategroyID()
  {
    $categoryIDArray = Array();
    $result = mysql_query("select category_id from gallery_category_setting") or die (mysql_error());
    while($row = mysql_fetch_array($result))
    {
      $categoryIDArray[] = $row["category_id"];
    }
    return $categoryIDArray;
  }

  function GalleryCategory($currLang_ID)
  {
    $resultRow = '';
    $result = mysql_query("select * from gallery_category_setting where lang_id = '$currLang_ID' order by category_id") or die (mysql_error());
    while($row = mysql_fetch_array($result))
    {
      $resultRow .= '<li><a href="#" data-filter=".' . $row["set_id"] . '">' . $row["category"] . '</a><span>|</span></li>';
    }
    return $resultRow;
  }

  function ReturnCategroyDropDown($set_id)
  {
    $resultRow = '';
    $result = mysql_query("select category_id, category, set_id from gallery_category_setting where lang_id = 1") or die (mysql_error());
    while($row = mysql_fetch_array($result))
    {
      if($row["set_id"] == $set_id)
      {
        $resultRow .= '<option value = "' .$row["set_id"]. '" selected>'.$row["category"].'</option>';
      }
      else {
        $resultRow .= '<option value = "' .$row["set_id"]. '">'.$row["category"].'</option>';
      }

    }
    return $resultRow;
  }

}

$galleryCategoryClass = new GalleryCategoryClass();
?>
