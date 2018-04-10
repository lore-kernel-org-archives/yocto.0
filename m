Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94898E00B1E; Wed, 11 Apr 2018 12:45:48 -0700 (PDT)
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
	*      [40.92.10.81 listed in list.dnswl.org]
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
X-Greylist: delayed 47390 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Apr 2018 12:45:46 PDT
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092010081.outbound.protection.outlook.com [40.92.10.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3126EE00529
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 12:45:46 -0700 (PDT)
Received: from CO1NAM04HT216.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e4d::467) by
	SN1NAM04HT215.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e4c::271) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Wed, 11 Apr 2018 12:15:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=iwPrEbDyNuitgYc7xHjJOUTDBqJI9Hl0C1J9bvkiAUA=;
	b=Ct1s7kTClllYXzAlN1HrReREyGTF6jFKhMYmsZzcpaO1GB2MNO3z4Fnaw/OJs1JmSr9Aa0np1IUF4wZC6Kv4Y5amQedSLzF09mL71P42hb8Xscodjg6TACEhRyd4lVLeGnxshxpXXGtT1Ltz4XtyqPNl0KdR6AOZmluxXTV+YFXD+IC1fPrygaIHDndap3kQPflyUDWViPPNoKJWEGN0uSrg8O35ai2/kqIK9u9kgTZZmkqTskwKgFsexkWYaE64YiZ4vft3PMgjBf7T6K+1QYBe6hTt96kkdFMLcZR+V/Tvh4QHRcZAEAB9IS3TwGkGjYaT2A69zHrTjX7H0PlFxA==
Received: from CO1NAM04FT033.eop-NAM04.prod.protection.outlook.com
	(10.152.90.51) by CO1NAM04HT216.eop-NAM04.prod.protection.outlook.com
	(10.152.91.211) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.653.8;
	Tue, 10 Apr 2018 06:59:51 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.90.59) by
	CO1NAM04FT033.mail.protection.outlook.com (10.152.91.232) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Tue, 10 Apr 2018 06:59:52 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0653.015;
	Tue, 10 Apr 2018 06:59:51 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: MACHINE .conf file
Thread-Index: AQHT0D8IcoaZq15WEky6gA4dFMV0tKP5YaCAgAAve8k=
Date: Tue, 10 Apr 2018 06:59:51 +0000
Message-ID: <MWHPR19MB1183DE9FB07B3A43EE287875C5BE0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
	<MWHPR19MB118326D76F8C45037C1BA6E6C5BA0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<34bdb916-5d2b-a478-4b83-3a47e39db01d@intel.com>,
	<MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183CD97B36C1A2EC8442554C5BF0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<MWHPR15MB17606B0E25E90F5BE03FE7C0F0BE0@MWHPR15MB1760.namprd15.prod.outlook.com>
In-Reply-To: <MWHPR15MB17606B0E25E90F5BE03FE7C0F0BE0@MWHPR15MB1760.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C5E99D52ED4E89BC4AF70AA5BC26DA091DA6375CE2C748963675D92A703A58D9;
	UpperCasedChecksum:B20DA16AA7653190558C74A993E70CA75859214035B0FAE1122193A3FF38B6B0;
	SizeAsReceived:7654; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [RmQDscJ8hPaFEPrNbAvQmXTmvEbDbmAD8eHdQDCBIf+jbEm1M/SSQV8bYOEP6T7O]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CO1NAM04HT216;
	7:XMcLx1dlIqw1+pxExpe3xjLzE43Vd4FoLWHgpzBOEMF7iHSHS52QM2Fdufzw1RtJIEh6AQzGUII1Y0Hs/dRbVqmUXUO5gIyHVfI3nepTZVazIMmi2cud94g8f3sevvY/JnP3h4zrlSuCwV/aJky+pWXuvgho9TWrzIYQv3VOHz+mwzBnedQPXSirNbmbknf8SM/ThPsAzeJoG2LFwMnW38FHiT8PrtiX286ljUzZPY3l5jW1tEzG7GaBNMU9KOMR
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:CO1NAM04HT216; 
X-MS-TrafficTypeDiagnostic: CO1NAM04HT216:|CO1NAM04HT216:|SN1NAM04HT215:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:CO1NAM04HT216; BCL:0; PCL:0; RULEID:; SRVR:CO1NAM04HT216; 
x-forefront-prvs: 0638FD5066
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:CO1NAM04HT216;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: TlSoSV5K8wYpDRs0J7V5qqsyWaqd7K9zr0yJDpSpXfj9iET4AmtvIa3c9Up78obx+leY+5tQxtiq/aWFfVakvgJ2T945WAAyjDrExuG1F45jGanpblgjVXdIXXrKJt9e3uNgW1OyPkc0PymM+gg9096x/HuXww4NVdYggE47TfGnIYnSm+VuXQdB7XRtvM+e
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: def16f2e-f09c-4aaf-4e32-08d59eb0a85d
X-MS-Exchange-CrossTenant-Network-Message-Id: def16f2e-f09c-4aaf-4e32-08d59eb0a85d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2018 06:59:51.8288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT216
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM04HT215;
	23:rq1S/sfoHDBnhQfn6fDl0jCZWVILgbW6qkIA0cR224xdUIp1KmRsxJ+MrGbxTA4oW49HCgty1efCROGHKs6mwxVqA5ePQTvbJkiZfEGYvF/s1CgQVXDLYZgDDogtpo7qRWOotw4pOfmoaywrQEQJRA==
X-OriginatorOrg: hotmail.com
Subject: Re: MACHINE .conf file
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
X-List-Received-Date: Wed, 11 Apr 2018 19:45:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183DE9FB07B3A43EE287875C5BE0MWHPR19MB1183namp_"

--_000_MWHPR19MB1183DE9FB07B3A43EE287875C5BE0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Meta-intel comes with the BSP we chose for our board.  It's already in conf=
/bblayers.conf.


I tried to use do_install() {...} within the workspaces/recipes/.../.bb fil=
e created by devtool to move files.  However, I'm currently stuck with not =
knowing the exact variable/macro I could use for the source and the destina=
tion to prepare for the root filesystem.  Any tip/help?


________________________________
From: Mohammad, Jamal M <MohammadJamal.Mohiuddin@ncr.com>
Sent: Monday, April 9, 2018 9:04 PM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: RE: MACHINE .conf file


Did you add meta-intel layer in conf/bblayers.conf file.. It will be presen=
t in that directory.



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Raymond Yeung
Sent: Tuesday, April 10, 2018 1:42 AM
To: yocto@yoctoproject.org
Subject: [yocto] MACHINE .conf file



Some questions about MACHINE:



1. I'd customized MACHINE (=3D"intel-corei7-64") variable in conf/local.con=
f under my build directory, as per document, and had successfully generated=
 an image for my H/W.  However, I don't seem to find "intel-corei7-64.conf"=
 file in meta/conf/machine under poky source directory.  Is this normal?



2. How many machine files are there per target machine, and should it be in=
 meta/conf/machine under source directory (similar to #1, but just a confir=
mation for me)?



3. To install an "external" .ko in the root filesystem, my understanding is=
 I need to add its name to MACHINE_XXX_RRECOMMENDS (or one of the other 3) =
in machine .conf file.  If there's only 1 machine file, this is obvious.  I=
f not, where should I put it?

Raymond

--_000_MWHPR19MB1183DE9FB07B3A43EE287875C5BE0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Meta-intel comes with the BSP we =
chose for our board. &nbsp;It's already in conf/bblayers.conf.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I tried to use do_install() {...}=
 within the workspaces/recipes/.../.bb file created by devtool to move file=
s. &nbsp;However, I'm currently stuck with not knowing the exact variable/m=
acro I could use for the source and the
 destination to prepare for the root filesystem. &nbsp;Any tip/help?</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mohammad, Jamal M &lt=
;MohammadJamal.Mohiuddin@ncr.com&gt;<br>
<b>Sent:</b> Monday, April 9, 2018 9:04 PM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: MACHINE .conf file</font>
<div>&nbsp;</div>
</div>
<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">Did you add meta-intel layer in conf/bblayers.co=
nf file.. It will be present in that directory.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&q=
uot;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0=
pt; font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject=
.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Raymond Yeung<br>
<b>Sent:</b> Tuesday, April 10, 2018 1:42 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] MACHINE .conf file</span></p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div id=3D"x_divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Some questions about MACHINE:</span></p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif; color:black">&nbsp;</span></p>
</div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif; color:black">1. I'd customized MACHINE (=3D&quot;intel-corei7-64&q=
uot;)&nbsp;variable in conf/local.conf under my build directory, as per doc=
ument, and had successfully generated an image for my H/W. &nbsp;However,
 I don't seem to find&nbsp;&quot;intel-corei7-64.conf&quot; file in meta/co=
nf/machine under poky&nbsp;source&nbsp;directory. &nbsp;Is this normal?
</span></p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif; color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif; color:black">2.&nbsp;How many machine files are there per target m=
achine, and should it be in meta/conf/machine under source directory (simil=
ar to #1, but just a confirmation for me)?</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif; color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif; color:black">3.&nbsp;To install an =
&quot;external&quot; .ko in the root filesystem, my understanding is I need=
 to add its name to MACHINE_XXX_RRECOMMENDS (or one of the other
 3) in machine .conf file. &nbsp;If there's only 1 machine file, this is ob=
vious. &nbsp;If not, where should I put it?</span></p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif; color:black">Raymond</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183DE9FB07B3A43EE287875C5BE0MWHPR19MB1183namp_--
