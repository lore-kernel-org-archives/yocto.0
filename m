Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32E2AE00BB5; Mon, 21 Dec 2015 00:46:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0055.outbound.protection.outlook.com [104.47.101.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F1B7E00AE4
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 00:46:22 -0800 (PST)
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) by
	MA1PR01MB0581.INDPRD01.PROD.OUTLOOK.COM (10.164.122.16) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Mon, 21 Dec 2015 08:31:51 +0000
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Mon, 21 Dec 2015 08:31:49 +0000
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) with mapi id
	15.01.0361.006; Mon, 21 Dec 2015 08:31:49 +0000
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Nodejs building issue in yocto
Thread-Index: AQHRO8oIHRS7aiWx2E+xKgGHxVgI+A==
Date: Mon, 21 Dec 2015 08:31:49 +0000
Message-ID: <MA1PR01MB0056024224A9B50B4F6D381082E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Raghavendra.Kakarla@inedasystems.com; 
x-originating-ip: [25.164.117.4]
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0056;
	5:4wKwg3DsVMAN/6isQxNCPog5AatB8uZZQNqDFSp9P8JJWjQuX3WcXu7jTJXIm5gswJf0NHus+7CeYV5s54t7E8u0aSIL4FlPxibmStw69WV0ka4iDg8Rm4ugNuitWlAP0LhwDlocsdH5R1desdNhwA==;
	24:Y3m90zZLoMnVcZl0//b+wsmagJ+tSHOMcW2vk3OfCKzh/z0s0zIine9Bf0nQz8KspasKK/do6ygyv4MWT4vSPbwG825B4YLu6r/0S1Q3XYU=;
	20:rBoayypmcZzNTh4dDw4oSnQD791hpvEtJceYgE9i3UzpYUad4NXnzUCWXs5uzIKgwgOIUlPJ0kwoZV7CmSYaNAfDznCdsrg3HUekAQv/i+BxjbbgJfZQ4K8pFOHqIkUD5vnkSN+i64igUuYe1k367KTO8i2njCfWGTiCt5vyKj4=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:MA1PR01MB0056;
x-microsoft-antispam-prvs: <MA1PR01MB0056FD19578A4CECBB1E3CA282E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(520078)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:MA1PR01MB0056; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0056; 
x-forefront-prvs: 079756C6B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(51874003)(53754006)(189002)(199003)(97736004)(50986999)(77096005)(2501003)(575784001)(5003600100002)(2900100001)(86362001)(11100500001)(5001960100002)(87936001)(40100003)(2351001)(229853001)(16236675004)(19627405001)(92566002)(54356999)(106116001)(122556002)(33656002)(5002640100001)(101416001)(5004730100002)(66066001)(586003)(105586002)(19625215002)(450100001)(106356001)(10400500002)(81156007)(107886002)(19580395003)(110136002)(1096002)(1220700001)(189998001)(1730700002)(5008740100001)(102836003)(6116002)(3846002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0056;
	H:MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:3; A:1; LANG:en; 
received-spf: None (protection.outlook.com: inedasystems.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2015 08:31:49.0459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0056
X-Microsoft-Exchange-Diagnostics: 1; MA1PR01MB0581;
	2:LHOZNj/M+PDYmMaAFTwWoM0QD5BXrP2ikTwz2wiMxg27Px3yOblmuXIaWggc/xShpiAGN9O3/11BukLJ7+LAQ0chH/0xUH9XDr7xtmdZTWhH19T1PLKzXfMP5dTOof9OeSEuixu5Qm8RWc2y+N8l7g==;
	23:uqiGEMrIRWMVPtdKc7c45SCNtgq5i+UL5YdbghHYwdRSEs/PMMyXT/4o8sECXCalJMp0IdeTi8FGj6aGO1jSz6yrgxFWXbzcLBQ1R1dfeK7be/Z0bMoyWUS22wbCAaZy5aMVEoQkEzkeJGAPcP+fKOY6cMUb/PgAYmbPt0JODsSNbVwVgDMfhBnw8IlV3Ft8
X-OriginatorOrg: inedasystems.com
Subject: Nodejs building issue in yocto
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
X-List-Received-Date: Mon, 21 Dec 2015 08:46:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB0056024224A9B50B4F6D381082E40MA1PR01MB0056INDP_"

--_000_MA1PR01MB0056024224A9B50B4F6D381082E40MA1PR01MB0056INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am try to build the nodejs-5.3 in yocto but I got the following errors.

That errors also not consistent. They are changes for compile to compile.

Could you please help in solving this issue.

The errors are as follows:

mips32r22r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target=
/http_parser/deps/http_parser/http_parser.o
| make[1]: execvp: printf: Argument list too long
| make[1]: *** [/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/t=
estpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.=
0/out/Release/obj.target/deps/openssl/libopenssl.a] Error 127
| make[1]: *** Waiting for unfinished jobs.



Log data follows:
| DEBUG: Executing shell function do_compile
| make -C out BUILDTYPE=3DRelease V=3D1
| make[1]: Entering directory `/media/testuser/b156d50b-387f-4037-b97b-e0de=
6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-=
r1.0/node-v5.3.0/out'
|   LD_LIBRARY_PATH=3D/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/=
home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node=
-v5.3.0/out/Release/lib.host:/media/testuser/b156d50b-387f-4037-b97b-e0de62=
59af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1=
.0/node-v5.3.0/out/Release/lib.target:$LD_LIBRARY_PATH; export LD_LIBRARY_P=
ATH; cd ../deps/v8/tools/gyp; mkdir -p /media/testuser/b156d50b-387f-4037-b=
97b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodej=
s/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target/v8_snapshot/geni; "/media/t=
estuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc2/poky/build/tmp/wo=
rk/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Release/mksnapshot=
" --log-snapshot-positions --logfile "/media/testuser/b156d50b-387f-4037-b9=
7b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs=
/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target/v8_snapshot/geni/snapshot.lo=
g" "/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc2/poky/=
build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Releas=
e/obj.target/v8_snapshot/geni/snapshot.cc" ""
| /bin/sh: /media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc=
2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out=
/Release/mksnapshot: cannot execute binary file: Exec format error
| make[1]: *** [/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/t=
estpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.=
0/out/Release/obj.target/v8_snapshot/geni/snapshot.cc] Error 126

Thanks in advance.

Regards,
Raghavendra K.

--_000_MA1PR01MB0056024224A9B50B4F6D381082E40MA1PR01MB0056INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p><span id=3D"ms-rterangepaste-start"></span><font size=3D"2"><span style=
=3D"font-size:10pt;">Hi All,<br>
<br>
I am try to build the nodejs-5.3 in yocto but I got the following errors.<b=
r>
<br>
That errors also not consistent. They are changes for compile to compile.<b=
r>
<br>
Could you please help in solving this issue.<br>
<br>
The errors are as follows:<br>
<br>
mips32r22r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target=
/http_parser/deps/http_parser/http_parser.o<br>
| make[1]: execvp: printf: Argument list too long<br>
| make[1]: *** [/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/t=
estpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.=
0/out/Release/obj.target/deps/openssl/libopenssl.a] Error 127<br>
| make[1]: *** Waiting for unfinished jobs.<br>
<br>
<br>
<br>
Log data follows:<br>
| DEBUG: Executing shell function do_compile<br>
| make -C out BUILDTYPE=3DRelease V=3D1<br>
| make[1]: Entering directory `/media/testuser/b156d50b-387f-4037-b97b-e0de=
6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-=
r1.0/node-v5.3.0/out'<br>
|&nbsp;&nbsp; LD_LIBRARY_PATH=3D/media/testuser/b156d50b-387f-4037-b97b-e0d=
e6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0=
-r1.0/node-v5.3.0/out/Release/lib.host:/media/testuser/b156d50b-387f-4037-b=
97b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodej=
s/5.3.0-r1.0/node-v5.3.0/out/Release/lib.target:$LD_LIBRARY_PATH;
 export LD_LIBRARY_PATH; cd ../deps/v8/tools/gyp; mkdir -p /media/testuser/=
b156d50b-387f-4037-b97b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips3=
2r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target/v8_snap=
shot/geni; &quot;/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/=
testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3=
.0/out/Release/mksnapshot&quot;
 --log-snapshot-positions --logfile &quot;/media/testuser/b156d50b-387f-403=
7-b97b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/no=
dejs/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target/v8_snapshot/geni/snapsho=
t.log&quot; &quot;/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home=
/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.=
3.0/out/Release/obj.target/v8_snapshot/geni/snapshot.cc&quot;
 &quot;&quot;<br>
| /bin/sh: /media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc=
2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out=
/Release/mksnapshot: cannot execute binary file: Exec format error<br>
| make[1]: *** [/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/t=
estpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.=
0/out/Release/obj.target/v8_snapshot/geni/snapshot.cc] Error 126<br>
<br>
Thanks in advance.<br>
<br>
Regards,<br>
Raghavendra K.</span></font><span id=3D"ms-rterangepaste-end"></span><br>
</p>
</div>
</body>
</html>

--_000_MA1PR01MB0056024224A9B50B4F6D381082E40MA1PR01MB0056INDP_--
