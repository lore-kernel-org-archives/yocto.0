Return-Path: <MohamedYouseif@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DECBDE00971; Wed, 19 Sep 2018 04:07:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohamedyouseif[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.68.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 22274 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Sep 2018 04:07:47 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092068024.outbound.protection.outlook.com [40.92.68.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F4B1E00939
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 04:07:47 -0700 (PDT)
Received: from VE1EUR02HT156.eop-EUR02.prod.protection.outlook.com
	(2a01:111:e400:7e1e::411) by
	AM5EUR02HT157.eop-EUR02.prod.protection.outlook.com
	(2a01:111:e400:7e1c::317) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1164.13;
	Wed, 19 Sep 2018 07:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=A/EEaNOTOLRdi/fdKHN7O6xOOcpYIaPLllLtKYvg/JI=;
	b=ivA0vV4NNs3mVcGkJ1cUsoPcKQDqeS3J9zatZpDbGbfgh78qxs5z2H+FqLFqj5oBEZCvIOf8d0NgbI+p5W0Pu/mWSmB9pF+wLMLn7d4DGy8zFUYWn49UDjK1i66VV83JRAAs0eyTti2RLAKu7UL+tKflCnrXgzShujbVhLeZkcaGQTwxnWL0fnW9OiITpFoRUNLvXHWjhJs+ZcSJnOabDcnZk0tTFj9PjH/Wv9uG/+TAulTHpE1PYr+vXiCo7FaOSUyAmnKTbx1IR8X+nBaxcME2Rst2ztwihyX7cNUyihHpR8mqaOzNHDwnm5sGHpnb7Fg8Fpa1LlJTeC25hdB3xA==
Received: from VE1EUR02FT017.eop-EUR02.prod.protection.outlook.com
	(10.152.12.55) by VE1EUR02HT156.eop-EUR02.prod.protection.outlook.com
	(10.152.13.155) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1164.13;
	Tue, 18 Sep 2018 16:19:07 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM (10.152.12.58) by
	VE1EUR02FT017.mail.protection.outlook.com (10.152.12.98) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1164.13 via Frontend Transport; Tue, 18 Sep 2018 16:19:06 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::a828:9769:8ca9:eb22]) by HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::a828:9769:8ca9:eb22%5]) with mapi id 15.20.1122.021;
	Tue, 18 Sep 2018 16:19:06 +0000
From: Mohamed Youseif <MohamedYouseif@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding nInvaders game package recipe
Thread-Index: AQHUT2pKxYksjshYKU+ornLG6TttMQ==
Date: Tue, 18 Sep 2018 16:19:06 +0000
Message-ID: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E64BA8AAA4473400DA489E67154078A0624B42C7824FDC240476DF94B57AC911;
	UpperCasedChecksum:4A4059A9E5B9857F12B099A001492387646C17D89399961A62006454ACBF38CA;
	SizeAsReceived:6863; Count:43
x-tmn: [xrsv8S9eCassF+ottMFqfN/nAhCQucHL3oh4eYzR31U=]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT156;
	6:8w4WRZlPVeJs4tll4IKuQw/YvpY4XO/z1ipGkgi7PGrfGPjYVfwu0JUNKDJkL3ws991m4ZCdA4XPMOLuaAGEfxlhYcgxkZtRzjzWDlEa34N5SvmQf2oX+35fqnpHlytaly+GuGPR1djlOovM5Gwuup/2MqZCD/np2ffWmR3vs2VZleDUNkANhnw0ng4y4dq7COeX0lpLA0qn71x4SYApiV7Ejpt1GPx/NbmKqiNqoxInRswI4ZKnegmlX4JE5S9loAbfVxgZUtfRrY6GRRYCSqVjNt3cR5TPaIEJIRSP1NK1ye9hMqnK4SWFljF2gVyUAIAp9vbnFhbmxY75Jfx3OmlMR8NiFXoDa+Ao/CrteOgBVRt5IOczeOpzQUZfJ6ykpBfrN7VMN574BAA6DNOz4H8kv5mLw/bza3de4ZfaciFkCWrHMAILjulLh4KZBf8jdyF72BtksLuUJjvedIGduQ==;
	5:7Khd6BcLTrlp4g2JUpd2z9BIx239nB6UgOjpdyL6a+jRSlp895qx0ab8gilp1YM4e91vZXnYexKOEOS/VObNnvKpWtN1nDMdZOeYR8Oqhv2xCRrXZdL3RBGVzGO+z1Msb/WsebWZdPLvtRdzxSZBbR2FimskKhkwyQETcw0wDlU=;
	7:i0eHr3QV4frbXuaNV3YNgZqlnDoflmWZZNX1G6P19EaN62WGQ0/6ufiGTlE7cHj2tmcPIhfsH1ffyFZfBs6bZYiVE0HIXO1oMZGr72Iq71mNCUrWAbZCRn6papA9lXr368mmxQexsFKqsJcBUoEE1ZIryB7iZ4HcenBwZmpPjL2VD6Xz7kbcGZp2lZe01ea0taTxlIheUl4p5Yd8d5ebRBjk+9iQhGnefj0jpgDVBUb3502pkEPV1NDHPtbzsC2+
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:VE1EUR02HT156; 
X-MS-TrafficTypeDiagnostic: VE1EUR02HT156:|VE1EUR02HT156:|AM5EUR02HT157:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:VE1EUR02HT156; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT156; 
x-forefront-prvs: 0799B1B2D7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(26005)(68736007)(81156014)(966005)(33656002)(72206003)(8676002)(97736004)(1730700003)(7696005)(6346003)(87572001)(102836004)(99286004)(19627405001)(14454004)(25786009)(8936002)(105004)(20460500001)(2900100001)(6916009)(74316002)(105586002)(6306002)(54896002)(5660300001)(236005)(55016002)(5640700003)(6436002)(82202002)(2351001)(606006)(106356001)(476003)(14444005)(256004)(5250100002)(426003)(2501003)(104016004)(56003)(86362001)(80792005)(486006)(554374003);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR02HT156;
	H:HE1P195MB0362.EURP195.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: outlook.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MohamedYouseif@outlook.com; 
x-microsoft-antispam-message-info: r0zGwibbLQeSdrNfvJb/4YrrSTYPlXsRPHTG3cF3HNEmcvJGWgsF9Bh/0jWivVVFCYvnqa7bgWWiXMGfZiv31z9qQE2M1sfdVjQL7V0TgrYiCyh3BHKf0wtKfhR+HvF+TKB58PCgoFj5FwtT3d4xE6vNEqbjj+5NlAr6L7SeNQyLPmcnstBcxmrhe3jroxO+cV1vTMbFWTwOmONwHE+xgyytPr9y53n4WFjTgtbE+QI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-Network-Message-Id: dfe7a01b-4118-45b9-03a4-08d61d827540
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2018 16:19:06.8026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT156
X-Microsoft-Exchange-Diagnostics: 1; AM5EUR02HT157;
	23:ChDqcb0wDQuMc4tbHFngEM6atY5/wsSN3aGJhC4ZtMSzx7JlZHkt4w3nlo4ll6NWIRL4afOZH6PR04N0bbkUfOEoqMBmjsqEkTe8VkmCX4eg7RrbvhScWLJW8gZYnL/0fCPPlnbCtQVPtHmjWRbYsQ==
X-OriginatorOrg: outlook.com
Subject: Adding nInvaders game package recipe
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
X-List-Received-Date: Wed, 19 Sep 2018 11:07:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1P195MB03625FB2341F7F8FBD894D2DC11D0HE1P195MB0362EURP_"

--_000_HE1P195MB03625FB2341F7F8FBD894D2DC11D0HE1P195MB0362EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, I want to add the invaders game package to my image that I had built be=
fore and tested, so I used the command "recipetool create -V 1.0 https://gi=
thub.com/TheZ3ro/ninvaders.git" to make my custom recipe, then I had to app=
end this package to my image by appending the package name to IMAGE_INSTALL=
 variable (like this IMAGE_INSTALL_append =3D "ninvaders", but before I bui=
ld the new image I tried to test my recipes' task to be done correctly by r=
unning this command
"bitbake -b ninvaders_git.bb"  but there is an error while executing the do=
_compile task and it prints out that:

ERROR: ninvaders-1.0+gitAUTOINC+c6ab4117ba-r0 do_compile: oe_runmake failed
ERROR: ninvaders-1.0+gitAUTOINC+c6ab4117ba-r0 do_compile: Function failed: =
do_compile (log file is located at /home/yusuf/rpi/build/tmp_sumo_RPI/work/=
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0+gitAUTOINC+c6ab4117b=
a-r0/temp/log.do_compile.25813)
ERROR: Logfile of failure stored in: /home/yusuf/rpi/build/tmp_sumo_RPI/wor=
k/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0+gitAUTOINC+c6ab411=
7ba-r0/temp/log.do_compile.25813
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'co=
mmon-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
| make: *** No rule to make target 'globals.o', needed by 'nInvaders'.  Sto=
p.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/yusuf/rp=
i/build/tmp_sumo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvader=
s/1.0+gitAUTOINC+c6ab4117ba-r0/temp/log.do_compile.25813)
ERROR: Task (/home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders_git.=
bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 8 tasks of which 0 didn't need to be rerun a=
nd 1 failed.

Summary: 1 task failed:
  /home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders_git.bb:do_compi=
le
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

so should i modify the do_compile task?
Thanks,
Yusuf

--_000_HE1P195MB03625FB2341F7F8FBD894D2DC11D0HE1P195MB0362EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hi, I want to add the invaders&nbsp;game package to my image that I had bui=
lt before and tested, so I used the command &quot;recipetool&nbsp;create -V=
 1.0&nbsp;<a href=3D"https://github.com/TheZ3ro/ninvaders.git" id=3D"LPlnk6=
34710">https://github.com/TheZ3ro/ninvaders.git</a>&quot; to
 make my custom recipe, then I had to append this package to my image by ap=
pending the package name to IMAGE_INSTALL variable (like this IMAGE_INSTALL=
_append =3D &quot;ninvaders&quot;, but before I build the new image I tried=
 to test my recipes' task to be done correctly
 by running this command <br>
&quot;bitbake&nbsp;-b&nbsp;ninvaders_git.bb&quot;&nbsp; but there is an err=
or while executing the do_compile task and it prints out that:&nbsp;<br>
<br>
<span>ERROR: ninvaders-1.0&#43;gitAUTOINC&#43;c6ab4117ba-r0 do_compile: oe_=
runmake failed<br>
</span>
<div>ERROR: ninvaders-1.0&#43;gitAUTOINC&#43;c6ab4117ba-r0 do_compile: Func=
tion failed: do_compile (log file is located at /home/yusuf/rpi/build/tmp_s=
umo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0&#43;git=
AUTOINC&#43;c6ab4117ba-r0/temp/log.do_compile.25813)<br>
</div>
<div>ERROR: Logfile of failure stored in: /home/yusuf/rpi/build/tmp_sumo_RP=
I/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0&#43;gitAUTOIN=
C&#43;c6ab4117ba-r0/temp/log.do_compile.25813<br>
</div>
<div>Log data follows:<br>
</div>
<div>| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32'=
, 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']<br>
</div>
<div>| DEBUG: Executing shell function do_compile<br>
</div>
<div>| NOTE: make -j 4<br>
</div>
<div>| make: *** No rule to make target 'globals.o', needed by 'nInvaders'.=
 &nbsp;Stop.<br>
</div>
<div>| ERROR: oe_runmake failed<br>
</div>
<div>| WARNING: exit code 1 from a shell command.<br>
</div>
<div>| ERROR: Function failed: do_compile (log file is located at /home/yus=
uf/rpi/build/tmp_sumo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/nin=
vaders/1.0&#43;gitAUTOINC&#43;c6ab4117ba-r0/temp/log.do_compile.25813)<br>
</div>
<div>ERROR: Task (/home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders=
_git.bb:do_compile) failed with exit code '1'<br>
</div>
<div>NOTE: Tasks Summary: Attempted 8 tasks of which 0 didn't need to be re=
run and 1 failed.<br>
</div>
<div><br>
</div>
<div>Summary: 1 task failed:<br>
</div>
<div>&nbsp; /home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders_git.b=
b:do_compile<br>
</div>
<div>Summary: There was 1 WARNING message shown.<br>
</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
</div>
<span></span><br>
so should i modify the do_compile task?&nbsp;<br>
Thanks,<br>
Yusuf</div>
</body>
</html>

--_000_HE1P195MB03625FB2341F7F8FBD894D2DC11D0HE1P195MB0362EURP_--
