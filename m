Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC3C2E009C8; Tue,  2 Jun 2015 08:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 24DDDE007B6
	for <yocto@yoctoproject.org>; Tue,  2 Jun 2015 08:50:22 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Tue, 2 Jun 2015 17:50:20 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Smart package manager problems
Thread-Index: AdCdSSeUcCzqNNvLRx2ZwuPjolKMuA==
Date: Tue, 2 Jun 2015 15:50:20 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D8AAC26@SESTOEX04.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.175]
MIME-Version: 1.0
Subject: Smart package manager problems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Jun 2015 15:50:27 -0000
X-Groupsio-MsgNum: 25025
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_003_DDB0C57E45663A458C5CACB7B5688BC21D8AAC26SESTOEX04enease_"

--_003_DDB0C57E45663A458C5CACB7B5688BC21D8AAC26SESTOEX04enease_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello guys,

I experiences a problem related to smart package manager that I wanted to d=
iscuss with you. I was interested in your feedback, knowledge of this and m=
aybe advices on how should we proceed further.

The bug I experienced can be duplicated with the information available in t=
he "patch-info.txt" file attached to this email.
I also attached the log of the error for easier read in the "image-build-in=
fo.txt" file.

After some careful investigation I discovered that the problem is caused by=
 the smart package manager, after the install_complementary function call w=
hen it in fact tries to call smart with "install --attempt -y" arguments. I=
t is not able to see the fact that those packages were already installed an=
d tries to do it again.
This error behavior might also be related to the problems mentioned here:
https://www.mail-archive.com/yocto@yoctoproject.org/msg24279.html
and https://bugs.launchpad.net/smart/+bug/1238492

Thanks again for all your help. If any further information would be require=
d I will be more than happy to share it.


AlexV



--_003_DDB0C57E45663A458C5CACB7B5688BC21D8AAC26SESTOEX04enease_
Content-Type: text/plain; name="patch-info.txt"
Content-Description: patch-info.txt
Content-Disposition: attachment; filename="patch-info.txt"; size=1161;
	creation-date="Tue, 02 Jun 2015 15:34:23 GMT";
	modification-date="Tue, 02 Jun 2015 15:34:24 GMT"
Content-Transfer-Encoding: base64

Z2l0IGRpZmYgbWV0YS9yZWNpcGVzLWNvcmUvaW1hZ2VzL2NvcmUtaW1hZ2UtbWluaW1hbC5iYg0K
ZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1jb3JlL2ltYWdlcy9jb3JlLWltYWdlLW1pbmltYWwu
YmIgYi9tZXRhL3JlY2lwZXMtY29yZS9pbWFnZXMvY29yZS1pbWFnZS1taW5pbWFsLmJiDQppbmRl
eCA5NzE2Mjc0Li4wZTZmN2ZiIDEwMDY0NA0KLS0tIGEvbWV0YS9yZWNpcGVzLWNvcmUvaW1hZ2Vz
L2NvcmUtaW1hZ2UtbWluaW1hbC5iYg0KKysrIGIvbWV0YS9yZWNpcGVzLWNvcmUvaW1hZ2VzL2Nv
cmUtaW1hZ2UtbWluaW1hbC5iYg0KQEAgLTEsNSArMSwyNSBAQA0KIFNVTU1BUlkgPSAiQSBzbWFs
bCBpbWFnZSBqdXN0IGNhcGFibGUgb2YgYWxsb3dpbmcgYSBkZXZpY2UgdG8gYm9vdC4iDQoNCitJ
TUFHRV9GRUFUVVJFUyArPSAiIFwNCisgICAgICAgICAgICAgICAgICAgZGJnLXBrZ3MgXA0KKyAg
ICAgICAgICAgICAgICAgICBkZWJ1Zy10d2Vha3MgXA0KKyAgICAgICAgICAgICAgICAgICBkZXYt
cGtncyBcDQorICAgICAgICAgICAgICAgICAgIGRvYy1wa2dzIFwNCisgICAgICAgICAgICAgICAg
ICAgcHRlc3QtcGtncyBcDQorICAgICAgICAgICAgICAgICAgIHNwbGFzaCBcDQorICAgICAgICAg
ICAgICAgICAgIHN0YXRpY2Rldi1wa2dzIFwNCisgICAgICAgICAgICAgICAgICAgZWNsaXBzZS1k
ZWJ1ZyBcDQorICAgICAgICAgICAgICAgICAgIGh3Y29kZWNzIFwNCisgICAgICAgICAgICAgICAg
ICAgbmZzLXNlcnZlciBcDQorICAgICAgICAgICAgICAgICAgIHF0NC1wa2dzIFwNCisgICAgICAg
ICAgICAgICAgICAgc3NoLXNlcnZlci1vcGVuc3NoIFwNCisgICAgICAgICAgICAgICAgICAgdG9v
bHMtZGVidWcgXA0KKyAgICAgICAgICAgICAgICAgICB0b29scy1wcm9maWxlIFwNCisgICAgICAg
ICAgICAgICAgICAgdG9vbHMtc2RrIFwNCisgICAgICAgICAgICAgICAgICAgdG9vbHMtdGVzdGFw
cHMgXA0KKyAgICAgICAgICAgICAgICAgICB4MTEgXA0KKyAgICAgICAgICAgICAgICAgICB4MTEt
YmFzZSINCisNCiBJTUFHRV9JTlNUQUxMID0gInBhY2thZ2Vncm91cC1jb3JlLWJvb3QgJHtST09U
RlNfUEtHTUFOQUdFX0JPT1RTVFJBUH0gJHtDT1JFX0lNQUdFX0VYVFJBX0lOU1RBTEx9Ig0KDQog
SU1BR0VfTElOR1VBUyA9ICIgIg0K

--_003_DDB0C57E45663A458C5CACB7B5688BC21D8AAC26SESTOEX04enease_
Content-Type: text/plain; name="image-build-info.txt"
Content-Description: image-build-info.txt
Content-Disposition: attachment; filename="image-build-info.txt"; size=1848;
	creation-date="Tue, 02 Jun 2015 15:36:31 GMT";
	modification-date="Tue, 02 Jun 2015 15:36:31 GMT"
Content-Transfer-Encoding: base64

V0FSTklORzogbG9nX2NoZWNrOiBUaGVyZSBpcyBhIHdhcm4gbWVzc2FnZSBpbiB0aGUgbG9nZmls
ZQ0KV0FSTklORzogbG9nX2NoZWNrOiBNYXRjaGVkIGtleXdvcmQ6IFt3YXJuXQ0KV0FSTklORzog
bG9nX2NoZWNrOiB3YXJuaW5nOiBsaWJzdGRjKystc3RhdGljZGV2LTQuOS4yLXIwQGk1ODYgaXMg
YWxyZWFkeSBpbnN0YWxsZWQNCg0KV0FSTklORzogbG9nX2NoZWNrOiBUaGVyZSBpcyBhIHdhcm4g
bWVzc2FnZSBpbiB0aGUgbG9nZmlsZQ0KV0FSTklORzogbG9nX2NoZWNrOiBNYXRjaGVkIGtleXdv
cmQ6IFt3YXJuXQ0KV0FSTklORzogbG9nX2NoZWNrOiB3YXJuaW5nOiBsaWJzdGRjKystZGV2LTQu
OS4yLXIwQGk1ODYgaXMgYWxyZWFkeSBpbnN0YWxsZWQNCg0KV0FSTklORzogbG9nX2NoZWNrOiBU
aGVyZSBpcyBhIHdhcm4gbWVzc2FnZSBpbiB0aGUgbG9nZmlsZQ0KV0FSTklORzogbG9nX2NoZWNr
OiBNYXRjaGVkIGtleXdvcmQ6IFt3YXJuXQ0KV0FSTklORzogbG9nX2NoZWNrOiB3YXJuaW5nOiBn
ZXR0ZXh0LWRldi0wLjE5LjQtcjBAaTU4NiBpcyBhbHJlYWR5IGluc3RhbGxlZA0KDQpXQVJOSU5H
OiBsb2dfY2hlY2s6IFRoZXJlIGlzIGEgd2FybiBtZXNzYWdlIGluIHRoZSBsb2dmaWxlDQpXQVJO
SU5HOiBsb2dfY2hlY2s6IE1hdGNoZWQga2V5d29yZDogW3dhcm5dDQpXQVJOSU5HOiBsb2dfY2hl
Y2s6IHdhcm5pbmc6IGxpYmM2LWRldi0yLjIxLXIwQGk1ODYgaXMgYWxyZWFkeSBpbnN0YWxsZWQN
Cg0KV0FSTklORzogbG9nX2NoZWNrOiBUaGVyZSBpcyBhIHdhcm4gbWVzc2FnZSBpbiB0aGUgbG9n
ZmlsZQ0KV0FSTklORzogbG9nX2NoZWNrOiBNYXRjaGVkIGtleXdvcmQ6IFt3YXJuXQ0KV0FSTklO
RzogbG9nX2NoZWNrOiB3YXJuaW5nOiBsaWJjNi1kYmctMi4yMS1yMEBpNTg2IGlzIGFscmVhZHkg
aW5zdGFsbGVkDQoNCldBUk5JTkc6IGxvZ19jaGVjazogVGhlcmUgaXMgYSB3YXJuIG1lc3NhZ2Ug
aW4gdGhlIGxvZ2ZpbGUNCldBUk5JTkc6IGxvZ19jaGVjazogTWF0Y2hlZCBrZXl3b3JkOiBbd2Fy
bl0NCldBUk5JTkc6IGxvZ19jaGVjazogd2FybmluZzogbGliZ2NjLXMtZGV2LTQuOS4yLXIwQGk1
ODYgaXMgYWxyZWFkeSBpbnN0YWxsZWQNCg0KV0FSTklORzogbG9nX2NoZWNrOiBUaGVyZSBpcyBh
IHdhcm4gbWVzc2FnZSBpbiB0aGUgbG9nZmlsZQ0KV0FSTklORzogbG9nX2NoZWNrOiBNYXRjaGVk
IGtleXdvcmQ6IFt3YXJuXQ0KV0FSTklORzogbG9nX2NoZWNrOiB3YXJuaW5nOiBsaWJjNi1zdGF0
aWNkZXYtMi4yMS1yMEBpNTg2IGlzIGFscmVhZHkgaW5zdGFsbGVkDQoNCldBUk5JTkc6IGxvZ19j
aGVjazogVGhlcmUgaXMgYSB3YXJuIG1lc3NhZ2UgaW4gdGhlIGxvZ2ZpbGUNCldBUk5JTkc6IGxv
Z19jaGVjazogTWF0Y2hlZCBrZXl3b3JkOiBbd2Fybl0NCldBUk5JTkc6IGxvZ19jaGVjazogd2Fy
bmluZzogbGliZ29tcC1kZXYtNC45LjItcjBAaTU4NiBpcyBhbHJlYWR5IGluc3RhbGxlZA0KDQpX
QVJOSU5HOiBsb2dfY2hlY2s6IFRoZXJlIGlzIGEgd2FybiBtZXNzYWdlIGluIHRoZSBsb2dmaWxl
DQpXQVJOSU5HOiBsb2dfY2hlY2s6IE1hdGNoZWQga2V5d29yZDogW3dhcm5dDQpXQVJOSU5HOiBs
b2dfY2hlY2s6IHdhcm5pbmc6IGxpYnVic2FuLWRldi00LjkuMi1yMEBpNTg2IGlzIGFscmVhZHkg
aW5zdGFsbGVkDQoNCldBUk5JTkc6IGxvZ19jaGVjazogVGhlcmUgaXMgYSB3YXJuIG1lc3NhZ2Ug
aW4gdGhlIGxvZ2ZpbGUNCldBUk5JTkc6IGxvZ19jaGVjazogTWF0Y2hlZCBrZXl3b3JkOiBbd2Fy
bl0NCldBUk5JTkc6IGxvZ19jaGVjazogd2FybmluZzogbGliYXNhbi1kZXYtNC45LjItcjBAaTU4
NiBpcyBhbHJlYWR5IGluc3RhbGxlZA0K

--_003_DDB0C57E45663A458C5CACB7B5688BC21D8AAC26SESTOEX04enease_--
