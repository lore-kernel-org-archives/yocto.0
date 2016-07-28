Return-Path: <Manish.Jaggi@cavium.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C784EE00FAB; Thu, 28 Jul 2016 15:36:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.70 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 120076 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Jul 2016 15:35:56 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0070.outbound.protection.outlook.com [104.47.41.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D54AE00D34
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 15:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-cavium-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=yfXqbHsnYEbSH/yZDdBZHMCt5QxhllrbGb4V/lK6BoM=;
	b=D20Lp9Utz9CbkKqF7xgitm9OYrEi6tA4vIinu77QELZgw5AkihUAbo3cpOpAo56zkbtxjDuLNotU6fb8iEjlsHHGreWn/hrQ5/F5BHm7XvpqUJLo29+I0b2T3ajefc57piyi33j0fwFmA4mrGX2erTj2ZdCc+CwDww/CKitBG5w=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1596.namprd07.prod.outlook.com (10.162.110.15) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Thu, 28 Jul 2016 22:35:53 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.0549.016; Thu, 28 Jul 2016 22:35:53 +0000
From: "Jaggi, Manish" <Manish.Jaggi@cavium.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: populate_sdk multilib not generating lib32 sysrots
Thread-Index: AQHR6SBmlJ0W13nFLUKM/b9TrA0G7w==
Date: Thu, 28 Jul 2016 22:35:53 +0000
Message-ID: <BY1PR0701MB15948444C67E8C271BE9FEF5EC000@BY1PR0701MB1594.namprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Manish.Jaggi@cavium.com; 
x-originating-ip: [12.108.191.226]
x-ms-office365-filtering-correlation-id: da323896-2c70-4d95-98a6-08d3b73788de
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1596;
	6:BN3gBINBuhusgYl06VCA0sxUmE/oh/wSPpQ0l+3VgtpleBKcZH18OuxJMu42tHaJq3gsSDNaInU0215DgxLuRLdm55SxJJxnHmsxfMuh6W8AkID3zk6g6DMeXt6e4ZQBzoChb3HcoRkhoxORGr8thSZE+N3qJn8SdSfNnu0ExuVjvuFZIDUCubXxP0zfmzOnPVKnxPyStpcl3sYHPUSPfvhDslQy4fZSBJH/4I07d6b9K+IfZFPMXisivS4al3HD5vAu5LWhrIDP7eFFxUoa9+quJJnOFlP7Ej8JERqhINo=;
	5:tyBmqVjGAbHHbrBfTwClPpuPh1K1ksuJgH9XZ13lrWJp4e86obld3KFzVKDH3RL5yRB0atosKxC+lGQGAjkk0BDvMukUQ6rSX3Aux1gt7dAJWO6zbKL6Y7A2KW+wY/9nm9PuEgdLn/K4/8dF3ip52w==;
	24:iEmqesUVNo7bUwhRi4pQqA0sJG03M1CDQ3+gNutt+DqIgFVavAhro4puP87dhtf3Eytx1KAhBiV51Gi4yc0iiWkK/yi+BVBqL/ct+CZxjjA=;
	7:x2nqPaxzzLDFin1/tiEGfPMJ4lpV+WajOZ6ZghDH23vLKAXiUyH+sjCnPKGA92SY+ARob0aWdkewRgzh8YIR4E7rjK6V2vDVKZdfwc0oOF8QW/gHIEFfFmPTPsJAi/exisSJwOQYy81W7GRmsIu1Uatq4oDYHjwa9+sSFVRA+DWNAaXuYGDCZ0DTbb8Be9tcMB7micci0JkIGRS2A6BKsEzdassf0gl/qq2VZ+5/1frXnVT/uRcyIgrEfQj7Wuz2
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1596;
x-microsoft-antispam-prvs: <BY1PR0701MB1596A60AB819C613BD175D4AEC000@BY1PR0701MB1596.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BY1PR0701MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1596; 
x-forefront-prvs: 00179089FD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(69234005)(3846002)(50986999)(87936001)(74316002)(86362001)(54356999)(76576001)(7846002)(6116002)(101416001)(7736002)(19625215002)(3660700001)(66066001)(97736004)(3280700002)(102836003)(110136002)(107886002)(189998001)(99286002)(16236675004)(10400500002)(586003)(105586002)(7696003)(2501003)(77096005)(122556002)(2900100001)(19627405001)(92566002)(106116001)(106356001)(5640700001)(450100001)(2351001)(33656002)(11100500001)(5002640100001)(2906002)(8676002)(19580395003)(68736007)(8936002)(81166006)(1730700003)(81156014)(9686002)(229853001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1596;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: cavium.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: cavium.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2016 22:35:53.5014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1596
X-Mailman-Approved-At: Fri, 29 Jul 2016 02:04:17 -0700
Subject: populate_sdk multilib not generating lib32 sysrots
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
X-List-Received-Date: Thu, 28 Jul 2016 22:36:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY1PR0701MB15948444C67E8C271BE9FEF5EC000BY1PR0701MB1594_"

--_000_BY1PR0701MB15948444C67E8C271BE9FEF5EC000BY1PR0701MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On krogoth branch of poky  trying to create a multilib sdk (aarch64 aarch64=
_ilp32)
Using the below local.conf


CONF_VERSION =3D "1"
MACHINE =3D "TestMachine"
CORE_IMAGE_EXTRA_INSTALL_append +=3D " openssl"
PREFERRED_VERSION_linux-thunderx-81xx =3D "4.4.3"
BB_NUMBER_THREADS=3D"32"
PREFERRED_PROVIDER_virtual/kernel =3D "linux-thunderx-81xx"
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "aarch64_ilp32"


after bitbake core-image-minimal
and bitbake -c populate_sdk core-image-minimal

The sysroot directory in tmp/sysroots has sysroots for both 64 and ilp32
TestMachine
lib32-TestMachine

But when installed the sdk using populate sdk generated script, sysroots is=
 only for aarch64 and not for aarch64_ilp32

ls ~/sdk_install_poky/sysroots/
aarch64-poky-linux  x86_64-pokysdk-linux


What could be missing here?

FYI The generated rootfs has multi libs, libssl for 32bit and 64bit are pre=
sent.




Regards,
Manish Jaggi

--_000_BY1PR0701MB15948444C67E8C271BE9FEF5EC000BY1PR0701MB1594_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:10pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Candara,Sans-Serif;">
<p><span id=3D"ms-rterangepaste-start"></span><font face=3D"Candara,Sans-Se=
rif" color=3D"black" size=3D"2"><span style=3D"font-size:10pt;background-co=
lor:white;" id=3D"divtagdefaultwrapper"></p>
<div style=3D"margin-top:0;margin-bottom:0;">On krogoth branch of poky&nbsp=
; trying to create a multilib sdk (aarch64 aarch64_ilp32)</div>
<div style=3D"margin-top:0;margin-bottom:0;">Using the below local.conf</di=
v>
<div style=3D"margin-top:0;margin-bottom:0;"><br>
</div>
<div style=3D"margin-top:0;margin-bottom:0;">&nbsp;</div>
<div>CONF_VERSION =3D &quot;1&quot;</div>
<div>MACHINE =3D &quot;TestMachine&quot;</div>
<div>CORE_IMAGE_EXTRA_INSTALL_append &#43;=3D &quot; openssl&quot;</div>
<div>PREFERRED_VERSION_linux-thunderx-81xx =3D &quot;4.4.3&quot;</div>
<div>BB_NUMBER_THREADS=3D&quot;32&quot;</div>
<div>PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-thunderx-81xx&quot;<=
/div>
<div>require conf/multilib.conf</div>
<div>MULTILIBS =3D &quot;multilib:lib32&quot;</div>
<div>DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;aarch64_ilp32&quot;</di=
v>
<br>
<div style=3D"margin-top:0;margin-bottom:0;">&nbsp;</div>
<div style=3D"margin-top:0;margin-bottom:0;">after bitbake core-image-minim=
al&nbsp;</div>
<div style=3D"margin-top:0;margin-bottom:0;">and bitbake -c populate_sdk co=
re-image-minimal&nbsp;</div>
<div style=3D"margin-top:0;margin-bottom:0;"><br>
</div>
<div style=3D"margin-top:0;margin-bottom:0;">The sysroot directory in tmp/s=
ysroots has sysroots for both 64 and ilp32</div>
<div style=3D"margin-top:0;margin-bottom:0;"><font face=3D"Candara,Sans-Ser=
if,Apple Color Emoji,Segoe UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android =
Emoji,EmojiSymbols" size=3D"1"><span style=3D"font-size:13.32px;">TestMachi=
ne</span></font></div>
<div style=3D"margin-top:0;margin-bottom:0;">lib32-TestMachine<br>
</div>
<div style=3D"margin-top:0;margin-bottom:0;"><br>
</div>
<div style=3D"margin-top:0;margin-bottom:0;">But when installed the sdk usi=
ng populate sdk generated&nbsp;script, sysroots is only for aarch64 and not=
 for aarch64_ilp32</div>
<div style=3D"margin-top:0;margin-bottom:0;">&nbsp;</div>
<div>ls ~/sdk_install_poky/sysroots/</div>
<div>aarch64-poky-linux &nbsp;x86_64-pokysdk-linux</div>
<br>
<div style=3D"margin-top:0;margin-bottom:0;">&nbsp;</div>
<div style=3D"margin-top:0;margin-bottom:0;">What could be missing here?</d=
iv>
<div style=3D"margin-top:0;margin-bottom:0;"><br>
</div>
<div style=3D"margin-top:0;margin-bottom:0;">FYI&nbsp;The generated rootfs =
has multi libs, libssl for 32bit and 64bit are present.</div>
<div style=3D"margin-top:0;margin-bottom:0;"><br>
</div>
</span></font><span id=3D"ms-rterangepaste-end"></span><br>
<p></p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<font face=3D"Cordia New, sans-serif" size=3D"2">Regards,</font>
<div><font face=3D"Cordia New, sans-serif" size=3D"2">Manish Jaggi</font></=
div>
</div>
</div>
</div>
</body>
</html>

--_000_BY1PR0701MB15948444C67E8C271BE9FEF5EC000BY1PR0701MB1594_--
