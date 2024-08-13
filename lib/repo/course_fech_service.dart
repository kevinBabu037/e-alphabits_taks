
import 'dart:convert';
import 'dart:developer';

import 'package:ealphabit_task/model/course_model/all_batch.dart';
import 'package:http/http.dart'as http;



class CourseService{

   Future<AllBatch?> fechCourse()async{
     
    try {
      final url = Uri.parse("https://adminapi.heliumlearn.com/batch/all-batches/66716e531359e338a3eb0636/65f45af97cd1f92cbdbf579f");
      final response = await  http.get( 
     url,
    headers: {
      "BearerToken" :"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6IjY2NzE2ZTUzMTM1OWUzMzhhM2ViMDYzNiIsInBob25lTnVtYmVyIjo3ODc0ODcyNTI2fSwiaWF0IjoxNzIzMDA5MTU2LCJleHAiOjE3MjMwOTU1NTZ9.dHw8hgf_jlh-MSO3wjxddjmu8see8FZzrFzZpbumkoY"
    } 
   );
       log(response.body); 
       
     if(response.statusCode == 200){
        final jsonData = jsonDecode(response.body);
        
        return AllBatch.fromJson(jsonData);
         
     }
     
    } catch (e) {
       log(e.toString());

    }
     return null;
   }




}