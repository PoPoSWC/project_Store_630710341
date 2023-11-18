import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project_store/models/list_item.dart';
import 'package:project_store/screens/home/home_page.dart';
import 'package:project_store/screens/home/list_store.dart';
import 'package:project_store/screens/home/product.dart';

class Stockpage extends StatelessWidget {
  final TodoItem items;

  const Stockpage({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(),
              Expanded(
                  child: Container(
                child: Text(
                  items.county,
                  style: TextStyle(fontSize: 24.0, color: Colors.cyan),
                ),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      buildContainer("Gaming Chair Gm.001 ",
                          items.p1.toString(), 'assets/p1.jpg', items.p1),
                      SizedBox(
                        width: 16,
                      ),
                      buildContainer("Gaming Monitor Gm.002 ",
                          items.p2.toString(), 'assets/p2.jpg', items.p2),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              new SizedBox(width: 20,),
              new SizedBox(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Productpage(
                                Kp: "คุณสมบัติโครงสร้างเก้าอี้ผลิตจากเหล็กหนา คุณภาพดี มีความแข็งแรงวัสดุเบาะผลิตจาก Mould Shaping Foam ขึ้นรูป ทนทาน และนั่งสบายกว่าฟองน้ำทั่วไปบุด้วยหนังเทียม PU ออกแบบดีไซน์เร้าใจ เอาใจเหล่าเกมเมอร์สุดเท่ขาเก้าอี้ผลิตจากไนลอนคุณภาพดี และล้อเก้าอี้ผลิตจากพลาสติก ABS แข็งแรงทนทานเพิ่มความสบายขณะนั่งด้วยเบาะรองหลัง และเบาะรองคอ ช่วยรองรับสรีระได้ดีพนักพิงสามารถปรับเอนได้ 90-160 องศาพนักแขนแบบ 2D สามารถปรับระดับสูง-ต่ำ และหมุนซ้าย-ขวาได้ตามต้องการสามารถปรับระดับความสูง-ต่ำของเก้าอี้ได้ตามสรีระของผู้ใช้งานสามารถรับน้ำหนักได้สูงสุด 150 กิโลกรัมสินค้ารับประกัน 1 ปี (เฉพาะโครงสร้าง)วิธีใช้งานใช้สำหรับนั่งทำงาน หรือเล่นเกม",
                                name:items,
                                A3:'assets/p1.jpg',
                                cp: items.p1,
                               pname:"Gaming Chair Gm.001 " ,
                              )),
                    );
                  },
                  child: Text("ดูรายละเอียด"),
                ),
              ), new SizedBox(width: 70,),
              new SizedBox(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Productpage(
                            Kp: "Gaming Monitor ขนาด 24.5 นิ้วบนความละเอียด Full HD ที่ให้ Refresh rate สูงถึง 165Hz และได้รับการรับรองจาก NVIDIA ในการใช้งานเทคโนโลยี G-SYNC ซึ่งสามารถเปิดใช้งานผ่านฟีเจอร์ VRR (variable refresh rate)พร้อมด้วยเทคโนโลยี Adaptive Sync (FreeSync) ตอบสนองการเล่นเกมได้อย่างยอดเยี่ยม 0.5 ms คืออัตราการตอบสนอง (Reponse time) เพื่อการแสดงผลที่ราบลื่นและยังมาพร้อมกับASUS Extreme Low Motion Blur (ELMB) ที่จะช่วยลดอาการ ghosting และการเบลอของภาพขณะเล่นเกม มาพร้อมกับ GameFast ช่วยเพิ่มความเร็วในการส่งข้อมูลจากคอมพิวเตอร์สู่หน้าจอ",
                            name:items,
                            A3:'assets/p2.jpg',
                            cp: items.p2,
                            pname:"Gaming Monitor Gm.002 " ,
                          )),
                    );
                  },
                  child: Text("ดูรายละเอียด"),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      buildContainer("Gaming Mouse Gm.003 ",
                          items.p3.toString(), 'assets/p3.png', items.p3),
                      SizedBox(
                        width: 16,
                      ),
                      buildContainer("Headset G.011",
                          items.p4.toString(), 'assets/p4.jpg', items.p4),
                    ],
                  ),
                ),
              )
            ],
          ),Row(
            children: [
              new SizedBox(width: 20,),
              new SizedBox(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Productpage(
                            Kp: "เกมมิ่งเมาส์ พร้อมการออกแบบที่ดูดีเหมาะกับเกมเมอร์และเพื่อความเกาะมือและการควบคุ้มที่ดี เมาส์ตัวนี้มาพร้อมไฟ RGB และมี DPI สูงสุดอยู่ที่6400 เมาส์ใช้การออกแบบตามหลักสรีรศาสตร์ที่พอดีกับมือทำให้คุณรู้สึกสบายและสามารถใช้งานได้นานโดยไม่รู้สึกเหนื่อย สะดวกและสามารถใช้งานได้โดยไม่ต้องใช้ไดรเวอร์ใด ๆ ของ plug and play และสามารถใช้ได้กับระบบปฏิบัติการที่หลากหลาย",
                            name:items,
                            A3:'assets/p3.png',
                            cp: items.p3,
                            pname:"Gaming Mouse Gm.003 " ,
                          )),
                    );
                  },
                  child: Text("ดูรายละเอียด"),
                ),
              ), new SizedBox(width: 70,),
              new SizedBox(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Productpage(
                            Kp: "หูฟังครอบหูไร้สายที่มาพร้อมระบบเสียงสตูดิโอให้เสียงด้วยไดรเวอร์ขนาด 40 มม. ช่วยเพิ่มอรรถรสในการดูหนัง ฟังเพลงได้เป็นอย่างดี ทั้งยังมาพร้อมไมโครโฟนสำหรับรับสายสนทนาในตัว ใช้งานได้ทั้งแบบมีสายและไร้สายด้วยการเชื่อมต่อ Bluetooth รองรับการใช้งานได้หลายอุปกรณ์ทั้งสมาร์ทโฟน แท็บเล็ต และคอมพิวเตอร์ ตัวเครื่องถูกแบบมาอย่างทันสมัย ดูพรีเมียม Earpad เป็นทรงกลมครอบหูได้พอดี สายคาดปรับได้ตามขนาดศีรษะ",
                            name:items,
                            A3:'assets/p4.jpg',
                            cp: items.p4,
                            pname:"Headset G.011" ,
                          )),
                    );
                  },
                  child: Text("ดูรายละเอียด"),
                ),
              )
            ],
          ),new SizedBox(height: 20,),
          Row(crossAxisAlignment:CrossAxisAlignment.end,children: [new SizedBox(width: 20,),new SizedBox(width:100,height:50,child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child:Text("back"),

          ),)],)
        ],
      ),
    );
  }

  Container buildContainer(A1, A2, A3, A4) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(foregroundImage: AssetImage(A3), radius: 50)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                A1,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "สินค้าในสต๊อก : " + A2,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// ElevatedButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => HomePage()),
// );
// },
// child:Text("back"),
//
// )
