<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>

<html>
<head>
    <meta charset="utf-8">
    <title>prop demo</title>
    <style>
        p {
            margin: 20px 0 0;
        }
        b {
            color: blue;
        }
    </style>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
<input id="check0" class="ch" type="checkbox"  value="All">All</input>
<input id="check1" class="ch" type="checkbox"  value="1">1</input>
<input id="check2" class="ch" type="checkbox"  value="2">2</input>
<input id="check3" class="ch" type="checkbox"  value="3">3</input>
<label for="check1">Check me</label>
<input type="button" id="demo">Demo</input>
<p></p>
<textarea></textarea>


<script>

    $( 'input' ).on( 'click', function() {
        $( 'p' ).html( 'Был выбран ' + $( 'input:checked' ).val() );
    });
    //------------------------------
//    var array;
//    $("input").change( function () {
//        array = new Array;
//
//        $("input:checkbox[class=ch]:checked").each(function () {
//            if($("input:checkbox[class=ch]").prop('checked')) {
//                array.push($(this).val());
//                $("p").text(array + " checked!");
//                $("textarea").text($("input:checkbox[class=ch]").prop('checked'));
//
//            }
//        })
//
//    })

    //---------------------------------

//    $(document).ready(function () {
//        var countChecked = function() {
//            var n = $( "input:checked" ).val();
//
//
//            $( "p" ).text( n + (n === 1 ? " is" : " are") + " checked!" );
//
//        };
//        countChecked();
//
//        $( "input[type=checkbox]" ).on( "click", countChecked );
//    })
</script>

</body>
</html>
