import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pushups extends StatefulWidget {
  const Pushups({super.key});

  @override
  State<Pushups> createState() => _PushupsState();
}

class _PushupsState extends State<Pushups> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 100,
                color: Color.fromARGB(255, 38, 95, 139),
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Push up",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(height: 33.h),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  backgroundColor: const Color.fromARGB(255, 38, 95, 139),
                  padding:
                      EdgeInsets.symmetric(vertical: 38.h, horizontal: 38.w)),
              child: const Text(
                '+',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.h),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                backgroundColor: const Color.fromARGB(255, 38, 95, 139),
                padding: EdgeInsets.symmetric(vertical: 38.h, horizontal: 40.w),
              ),
              child: const Text(
                '-',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 20.h),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                  
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18), 
                  ),
                  backgroundColor: const Color.fromARGB(255, 38, 95, 139),
                  padding:
                      EdgeInsets.symmetric(vertical: 46.h, horizontal: 35.w),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
