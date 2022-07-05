import 'dart:convert';

import 'package:flutter/material.dart';

class catalogfree{
  static List<free> freecourses = [
   free (
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiydoyccFzh-9XSkCXyUn5rAvN_uV8oNS9eg&usqp=CAU",
        coursename:"Introduction to Information Technology",
        video:"https://media.istockphoto.com/videos/cyborg-humanoid-robot-show-a-medicine-capsule-to-a-camera-rack-focus-video-id1300942368"
    ),
      free (
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfW52cQKdFGhU-LCBeNVVILicnzGlDCjFl4g&usqp=CAU",
        coursename:"CS50's Introduction to Computer Science",
        video:"https://media.istockphoto.com/videos/hightech-startup-concept-innovative-female-software-engineer-standing-video-id1338935699"
      ),

      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA-qenyDAW8wz4o_2N5ObsSTaTVxyVDq3jTw&usqp=CAU",
        coursename:"Free Technology Courses",
        video:"https://media.istockphoto.com/videos/the-concept-of-digitalization-of-information-it-specialist-standing-video-id1130887908"
      ),

      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxukJD8PCaVsaKkk4iyRa4CLLcGbM3p_WPA&usqp=CAU",
        coursename:"Information Technology Foundations",
        video:"https://media.istockphoto.com/videos/group-of-latin-american-engineering-students-learning-how-circuits-video-id1352496455"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhw6cw_ftCQZTt_WkOPAScSB5Xi5jZ3Z8BEA&usqp=CAU",
        coursename:"Free Tech Training",
        video:"https://media.istockphoto.com/videos/female-engineer-looking-on-on-innovative-technology-mechanical-robot-video-id1276785787"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyKRp3yS2NShBxorq1LqVw8OEeLOzVF-g10A&usqp=CAU",
        coursename:"Business Technology Management Specialization",
        video:"https://media.istockphoto.com/videos/young-researchers-are-looking-at-robotic-machines-in-motion-video-id1220392735"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Software Testing",
        video:"https://media.istockphoto.com/videos/group-of-technical-engineer-working-in-protection-workwear-and-the-video-id1400073661"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvQ7MQ6BUQjjnyKaBY3mJ2ZrL9m-_YDw-i6w&usqp=CAU",
        coursename:"Introduction to Computational Thinking and Data Science",
        video:"https://media.istockphoto.com/videos/industry-40-modern-factory-project-engineer-talks-to-female-operator-video-id1208258468"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Emerging Technologies",
        video:"https://media.istockphoto.com/videos/artificial-intelligence-of-deep-learning-video-id1397952445"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"New Technologies for Business Leaders",
        video:"https://media.istockphoto.com/videos/group-of-technical-engineer-working-in-protection-workwear-and-the-video-id1400073877"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Java certification training course",
        video:"https://media.istockphoto.com/videos/team-of-professional-it-developers-have-a-meeting-speaker-talks-about-video-id1130884879"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Node.js Training",
        video:"https://media.istockphoto.com/videos/young-adult-engineer-group-learn-and-discuss-arm-project-robot-video-id1387376212"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Social media manager",
        video:"https://media.istockphoto.com/videos/futuristic-male-engineer-wearing-virtual-reality-glasses-working-with-video-id1369986868"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Content manager",
        video:"https://media.istockphoto.com/videos/futuristic-male-engineer-wearing-virtual-reality-glasses-working-with-video-id1369986868"
      ),
       free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Information architect",
        video:"https://media.istockphoto.com/videos/futuristic-male-engineer-wearing-virtual-reality-glasses-working-with-video-id1369986868"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Ethical Hacking Course",
        video:"https://media.istockphoto.com/videos/futuristic-male-engineer-wearing-virtual-reality-glasses-working-with-video-id1369986868"
      ),
       free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Big data Hadoop certification training course",
        video:"https://media.istockphoto.com/videos/futuristic-male-engineer-wearing-virtual-reality-glasses-working-with-video-id1369986868"
      ),
      free(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Big Data Engineer Master’s Program",
        video:"https://media.istockphoto.com/videos/futuristic-male-engineer-wearing-virtual-reality-glasses-working-with-video-id1369986868"
      ),
  ];
}


class free {
  var  images;
  var coursename;
  var video;

  free({
    required this.images,
    required this.coursename,
    required this.video
  });
  
}
