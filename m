Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D56DE00B8A; Sat,  7 Apr 2018 00:35:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.10.68 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 171997 seconds by postgrey-1.32 at yocto-www;
	Sat, 07 Apr 2018 00:35:09 PDT
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092010068.outbound.protection.outlook.com [40.92.10.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E556BE0086B
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2018 00:35:09 -0700 (PDT)
Received: from BN3NAM04HT177.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e4e::388) by
	SN1NAM04HT178.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e4c::362) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Sat, 7 Apr 2018 07:35:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ftr+sE/O3g+dJj4RPomzcDDkkRGP909Cu9aN3JlkyAo=;
	b=AlZLa2uwXkpcsD7Bd4ElkIJuhrcWWLsKaWYoA9LSg+Nlg40ia3a09pl5dpbQM2kTBWRKsbv7iV/EM7UFVmaGqxs1cQDJZ+puvUCVtmBGTId6Y8S5u59VWCMnNU5C7KxPfnj+SfxlKbKnT3NjKLnxt1SQc+741VnYNdQHJP9OaxUve54XWnJ49cvolSONpTt2bgIO0KW4J0xIcelnp1vGNqiNZih+2G304orZqNrQXx42CNXk/vIMNQ+YNq50l22qAvoKVAiij/HufUOMntT7kOZYcNXrKBYSS/vtsxuB9HyM54wnhW2iqyL98+B5Se4zInEyWwKfJkVR+e07Kkaujg==
Received: from BN3NAM04FT057.eop-NAM04.prod.protection.outlook.com
	(10.152.92.55) by BN3NAM04HT177.eop-NAM04.prod.protection.outlook.com
	(10.152.93.132) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Sat, 7 Apr 2018 01:43:46 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.92.51) by
	BN3NAM04FT057.mail.protection.outlook.com (10.152.93.80) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Sat, 7 Apr 2018 01:43:46 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0653.014;
	Sat, 7 Apr 2018 01:43:46 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Adding debug output in recipe
Thread-Index: AQHTzLAit2+6n2Xi7EWx49+fo7yXrqPzLKaAgAAQCLmAAA3ggIABOxI1
Date: Sat, 7 Apr 2018 01:43:46 +0000
Message-ID: <MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
	<MWHPR19MB118326D76F8C45037C1BA6E6C5BA0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<34bdb916-5d2b-a478-4b83-3a47e39db01d@intel.com>
In-Reply-To: <34bdb916-5d2b-a478-4b83-3a47e39db01d@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:85D7E18BD99B84C8DA3CC22F0A72D1F315356E4DF4C2F83CB36F8F3307F898B0;
	UpperCasedChecksum:E688ABEDAF04DDC650F007ECCB32649046057E913B50FD52A42758EBF3CE002D;
	SizeAsReceived:7288; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Cc6y8pij7IJvsh8T+BQAaxm2ZTC8fTcw]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM04HT177;
	7:24KfibT0UaaM5DsGZ62a/JGwA46N7M5EnOvN0rAGgLBlH/qu82w9CMoP6KaAnUUrdeuG2Pmj2Z5EILuW+UEMrEieZaCMfAubyVra84COy8I+xCqz0GM8j58oXDKvRGHvucyLauHf2VqTfhQ1uFYXgRcz1luLF53NJfPPdg+vfxyh6h5pwCioV22KPlhcf9/H3zx7fijqZ+xRXtVqlKoqarvhOwwfTZlpv5cBDNFVFf1iKOaVZxer0JNpbXMlwMJS
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BN3NAM04HT177; 
X-MS-TrafficTypeDiagnostic: BN3NAM04HT177:|BN3NAM04HT177:|SN1NAM04HT178:
x-ms-office365-filtering-correlation-id: 4a5777b5-981a-4e11-5d83-08d59c290115
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM04HT177; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM04HT177; 
x-forefront-prvs: 0635D5275E
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BN3NAM04HT177;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: KZZSYUMTnB3Fjr3XSW76qmSPPSVfBSiHiH5NOoJwgfke+U/j0NZhaDz3cJflonn5twRDk9kzaI16VOHMOO7k5qMs0YSriyeymGJ8/nXUNVGbE5UBBAXjJX8A8XoSSqUsVd3XxdqEuDjSJu6g2V7iINJvJK3GuF++qChOzzFv/i+TA1Kd8Df7oyJrWGwOxHh8
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a5777b5-981a-4e11-5d83-08d59c290115
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2018 01:43:46.7312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT177
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM04HT178;
	23:5kzbPwOYwR5ufTi4+INCL+VnOYNghsWyYSr2hw9Q2eMexN1ik3oh4Sdc6K+sJiIMZjsKDrPDIIBmv/1sUtInPyhEOVIMY1R9IHq1ZEbDMD//CgrTjpnkKJj4q9XSL2Pq+EN19Zu8zJoS/6tdeHdRTQ==
X-OriginatorOrg: hotmail.com
Subject: Re: Adding debug output in recipe
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
X-List-Received-Date: Sat, 07 Apr 2018 07:35:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90MWHPR19MB1183namp_"

--_000_MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Want to comment on this part of an earlier reply from Anuj:


"Use EXTRA_OEMAKE +=3D "<varname>=3D'${STAGING_KERNEL_DIR}'" if the variabl=
e
name used in your Makefile is different from KERNEL_PATH or KERNEL_SRC."

A "bitbake -e <my recipe>" confirms that EXTRA_OEMAKE is already setup to u=
se KERNEL_SRC.  And I'd manually modified the 3rd party Makefile to use it =
(still need to find out a nicer patching method).

Originally reported problem with "Files/directories were installed but not =
shipped" apparently was due to use of

EXTRA_OEMAKE_append_task-install =3D " -C ${STAGING_KERNEL_DIR} M=3D${S}"

It's a line auto-generated by "devtool add".  Commenting out this line (and=
 removing the already created directories from .../oe_workdir/image in my o=
ut-of-tree root directory) stops the failure.

However, I still need to figure out how I could specify to the tool where m=
y .ko, .so and 2 binaries should be moved to, in order to make it into the =
image.  Makefile for original 3rd party code also has a "install" target th=
at "installs" the files into various directories on the host (e.g. /usr/bin=
).

In the "Incorporating Out-of-Tree Modules" section, there's a mentioning of=
 4 MACHINE_XXX variables.  I'll try them to see if they may help.

Raymond





--_000_MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90MWHPR19MB1183namp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Want to comment on this part of a=
n earlier reply from Anuj:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText"><br>
&quot;Use EXTRA_OEMAKE &#43;=3D &quot;&lt;varname&gt;=3D'${STAGING_KERNEL_D=
IR}'&quot; if the variable<br>
name used in your Makefile is different from KERNEL_PATH or KERNEL_SRC.&quo=
t;</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">A &quot;bitbake -e &lt;my recipe&gt;&quot; confirm=
s that EXTRA_OEMAKE is already setup to use KERNEL_SRC. &nbsp;And I'd manua=
lly modified the 3rd party Makefile to use it (still need to find out a nic=
er patching method).</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">Originally reported problem with &quot;<span style=
=3D"white-space: pre-wrap; font-size: 11pt;">Files/directories were install=
ed but not shipped&quot; apparently was due to use of&nbsp;</span></div>
<div class=3D"PlainText"><span style=3D"white-space: pre-wrap; font-size: 1=
1pt;"><br>
</span></div>
<div class=3D"PlainText"><span style=3D"white-space: pre-wrap; font-size: 1=
1pt;">EXTRA_OEMAKE_append_task-install
</span>=3D &quot; -C ${STAGING_KERNEL_DIR} M=3D${S}&quot;</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">It's a line auto-generated by &quot;devtool add&qu=
ot;. &nbsp;Commenting out&nbsp;this line (and removing the already created =
directories from .../oe_workdir/image in my out-of-tree root directory)&nbs=
p;stops the failure.</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">However, I still need to figure out how I could sp=
ecify to the tool where my .ko, .so and 2 binaries should be moved to, in o=
rder to make it into the image. &nbsp;Makefile for original 3rd party code =
also has a &quot;install&quot; target that &quot;installs&quot;
 the files into various directories on the host (e.g. /usr/bin).</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">In the &quot;Incorporating Out-of-Tree Modules&quo=
t; section, there's a mentioning of 4 MACHINE_XXX variables. &nbsp;I'll try=
 them to see if they may help.</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">Raymond</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText"><br>
<br>
<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90MWHPR19MB1183namp_--
