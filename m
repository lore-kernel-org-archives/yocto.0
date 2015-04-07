Return-Path: <EBolton@agjunction.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50C6AE00858; Mon,  6 Apr 2015 23:44:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.56.111.101 listed in list.dnswl.org]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bbn0101.outbound.protection.outlook.com [157.56.111.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF3BBE00832
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 23:44:05 -0700 (PDT)
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) by
	DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) with
	Microsoft
	SMTP Server (TLS) id 15.1.136.17; Tue, 7 Apr 2015 06:44:02 +0000
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) by
	DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) with
	mapi id 15.01.0136.014; Tue, 7 Apr 2015 06:44:02 +0000
From: Erik Bolton <EBolton@agjunction.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Python Error in SDK
Thread-Index: AQHQcP1LwNuP2H/n70WhWxWbA3CVow==
Date: Tue, 7 Apr 2015 06:44:01 +0000
Message-ID: <1428389040815.28148@agjunction.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [72.201.0.208]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0201MB1087;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(979002)(6009001)(53754006)(50986999)(19580395003)(2351001)(110136001)(106116001)(80792005)(62966003)(19627405001)(66066001)(107886001)(102836002)(77156002)(92566002)(54356999)(229853001)(450100001)(46102003)(40100003)(122556002)(2900100001)(117636001)(16236675004)(2501003)(19625215002)(2656002)(87936001)(99286002)(86362001)(36756003)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0201MB1087;
	H:DM2PR0201MB1087.namprd02.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
x-microsoft-antispam-prvs: <DM2PR0201MB10870B7D30E57925BA7087AECCFD0@DM2PR0201MB1087.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:DM2PR0201MB1087; BCL:0;
	PCL:0; RULEID:; SRVR:DM2PR0201MB1087; 
x-forefront-prvs: 0539EEBD11
MIME-Version: 1.0
X-OriginatorOrg: agjunction.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2015 06:44:01.4206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f7bd4f9-3eab-4e10-b6c3-fdfbbaf69f20
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0201MB1087
Subject: Python Error in SDK
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
X-List-Received-Date: Tue, 07 Apr 2015 06:44:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_142838904081528148agjunctioncom_"

--_000_142838904081528148agjunctioncom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hey All;


This has been brought up before (although I think the error was different),=
 but I'm having a lot of issues with the version of Python included with th=
e SDK.


We use Python for code generation as part of our project. If I source the e=
nvironment script and try to run our Python scripts I get this:


Traceback (most recent call last):
  File "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sit=
e.py", line 569, in <module>
    main()
  File "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sit=
e.py", line 551, in main
    known_paths =3D addusersitepackages(known_paths)
  File "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sit=
e.py", line 278, in addusersitepackages
    user_site =3D getusersitepackages()
  File "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sit=
e.py", line 253, in getusersitepackages
    user_base =3D getuserbase() # this will also set USER_BASE
  File "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sit=
e.py", line 242, in getuserbase
    from sysconfig import get_config_var
  File "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sys=
config.py", line 10, in <module>
    'stdlib': '{base}/'+sys.lib+'/python{py_version_short}',
AttributeError: 'module' object has no attribute 'lib'

If I try running something that doesn't exist I get this:

Fatal Python error: Py_Initialize: Unable to get the locale encoding
ImportError: No module named 'encodings'
Aborted (core dumped)

I've tried using update-alternatives to point the SDK python to my local py=
thon (Ubuntu 14.10, Python 2.7.8), but the errors persist.

I know a few people have simply deleted the python binary from the SDK, but=
 I don't think that will help in my case.

I would try to remove it from the SDK in the actual package groups, but sma=
rtpm and a few other programs depend on it. I'm not sure they would play ni=
ce with my local version.

Any suggestions on how to fix this "correctly"?

Thanks very much.
-Erik
Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized to read, print, retain, copy, dis=
seminate, distribute, or use this message or any part thereof. If you recei=
ve this message in error, please notify the sender immediately and delete a=
ll copies of this message.

--_000_142838904081528148agjunctioncom_
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
<p>Hey All;<br>
</p>
<p><br>
</p>
<p>This has been brought up before (although I think the error was differen=
t), but I'm having a lot of issues with the version of Python included with=
 the SDK.<br>
</p>
<p><br>
</p>
<p>We use Python for code generation as part of our project. If I source th=
e environment script and try to run our&nbsp;Python&nbsp;scripts I get this=
:<br>
</p>
<p><br>
</p>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File &quot;/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/li=
b/python2.7/site.py&quot;, line 569, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; main()</div>
<div>&nbsp; File &quot;/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/li=
b/python2.7/site.py&quot;, line 551, in main</div>
<div>&nbsp; &nbsp; known_paths =3D addusersitepackages(known_paths)</div>
<div>&nbsp; File &quot;/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/li=
b/python2.7/site.py&quot;, line 278, in addusersitepackages</div>
<div>&nbsp; &nbsp; user_site =3D getusersitepackages()</div>
<div>&nbsp; File &quot;/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/li=
b/python2.7/site.py&quot;, line 253, in getusersitepackages</div>
<div>&nbsp; &nbsp; user_base =3D getuserbase() # this will also set USER_BA=
SE</div>
<div>&nbsp; File &quot;/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/li=
b/python2.7/site.py&quot;, line 242, in getuserbase</div>
<div>&nbsp; &nbsp; from sysconfig import get_config_var</div>
<div>&nbsp; File &quot;/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/li=
b/python2.7/sysconfig.py&quot;, line 10, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; 'stdlib': '{base}/'&#43;sys.lib&#43;'/python{py_version_=
short}',</div>
<div>AttributeError: 'module' object has no attribute 'lib'</div>
<div><br>
If I try running something that doesn't exist I get this:<br>
</div>
<div><br>
</div>
<div>
<div>Fatal Python error: Py_Initialize: Unable to get the locale encoding</=
div>
<div>ImportError: No module named 'encodings'</div>
<div>Aborted (core dumped)</div>
<div><br>
I've tried using update-alternatives to point the SDK python to my local py=
thon (Ubuntu 14.10, Python 2.7.8), but the errors persist.<br>
</div>
<br>
</div>
<div>I know a few people have simply deleted the python binary from the SDK=
, but I don't think that will help in my case.<br>
</div>
<div><br>
</div>
<div>I would try to remove it from the SDK in the actual package groups, bu=
t smartpm and a few other programs depend on it. I'm not sure they would pl=
ay nice with my local version.<br>
</div>
<div><br>
</div>
<div>Any suggestions on how to fix this &quot;correctly&quot;?<br>
</div>
<div><br>
</div>
<div>Thanks very much.<br>
</div>
<div>-Erik<br>
</div>
</div>
Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized
 to read, print, retain, copy, disseminate, distribute, or use this message=
 or any part thereof. If you receive this message in error, please notify t=
he sender immediately and delete all copies of this message.
</body>
</html>

--_000_142838904081528148agjunctioncom_--
