Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25A2DE00D99; Fri, 26 Jan 2018 12:08:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.119 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 100226 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Jan 2018 12:08:31 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0119.outbound.protection.outlook.com [104.47.36.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F825E00DD9
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 12:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=hOe7QN0y+7XxL2pjw/F/kDhCZzLpA7akQunsQGnvrSE=;
	b=r7HnP/zevkJ3TeDwz/FPDpJA8pPZ/EkI0riN3DeYLNYYMd24c8djfuo7duGpWp6c0R4HNSENs7CmP12+Uj9xsU9h4Autq5fGBcXSAlWxkgkfO6UOViosZBElSbguMs9jZ3MUvRqJuqhm37glVxUQTZPHQbg4mt0mvNd7U91Kd8o=
Received: from MWHPR13MB1584.namprd13.prod.outlook.com (10.175.140.149) by
	MWHPR13MB1293.namprd13.prod.outlook.com (10.173.120.7) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.464.6; Fri, 26 Jan 2018 20:08:29 +0000
Received: from MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) by
	MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) with mapi id
	15.20.0444.013; Fri, 26 Jan 2018 20:08:30 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How do I generate a dtb for my board support package?
Thread-Index: AQHTlUrMuQ9+EGnL006VzjvxSSjFpKOETgX+gABKvACAABJ5AYAB7F8H
Date: Fri, 26 Jan 2018 20:08:29 +0000
Message-ID: <MWHPR13MB1584919EBCDC94E7E7DAEFE19EE00@MWHPR13MB1584.namprd13.prod.outlook.com>
References: <MWHPR13MB1584C1139309858BD0E22C089EE20@MWHPR13MB1584.namprd13.prod.outlook.com>
	<MWHPR13MB1584687F1F31126DF1FCA1CA9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>,
	<94ea0e3c-29d4-40a1-19db-f716ddcd4dde@3mdeb.com>,
	<MWHPR13MB15846CB2C0E778AEA074BA4F9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>
In-Reply-To: <MWHPR13MB15846CB2C0E778AEA074BA4F9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-originating-ip: [24.222.2.222]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR13MB1293;
	7:M0b5QtAvPC9RO67V9AXme4VTGRhcGKPAlMUSdhXtwTTcx4J7I+gGbiR9hONDM26l1gDLyZjYB1ckEAQlKxJR3VRvXPtXxW/1/ELhlu9DxUwVrFLmvRSyA0Ndz+pKEAHZkQ9MSChodl48JrpcM1yTLrRzjrYB6zuRp/ULAQk4ARCdpEjPpO54NeIwnMDW/zAsAVIrdSl4q/FmViiybM335X+z6p0rVxukP8sFBuBLuCMGEughcdnsEbv1azxuzZR8
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 48350e6c-105d-47fe-0822-08d564f89197
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:MWHPR13MB1293; 
x-ms-traffictypediagnostic: MWHPR13MB1293:
x-microsoft-antispam-prvs: <MWHPR13MB1293E2026433CF3D30F01C929EE00@MWHPR13MB1293.namprd13.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(265313219721884);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(3231023)(2400081)(944501161)(93006095)(93001095)(3002001)(10201501046)(6041288)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(6072148)(201708071742011);
	SRVR:MWHPR13MB1293; BCL:0; PCL:0; RULEID:; SRVR:MWHPR13MB1293; 
x-forefront-prvs: 05641FD966
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400004)(366004)(346002)(396003)(39380400002)(376002)(189003)(199004)(59450400001)(53936002)(53546011)(6506007)(97736004)(102836004)(99286004)(93886005)(25786009)(53376002)(53386004)(6246003)(26005)(606006)(316002)(6916009)(76176011)(74316002)(3660700001)(3280700002)(53366004)(7066003)(5660300001)(2900100001)(6606003)(2950100002)(105586002)(55016002)(5640700003)(54896002)(6436002)(6306002)(9686003)(236005)(7736002)(2501003)(229853002)(8676002)(5890100001)(1730700003)(66066001)(478600001)(81166006)(81156014)(7696005)(14454004)(19627405001)(2351001)(8936002)(966005)(33656002)(68736007)(86362001)(186003)(6116002)(2906002)(106356001)(3846002)(77096007)(10090945008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR13MB1293;
	H:MWHPR13MB1584.namprd13.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: ik/+4+ah1xnCCXzNtFSxxHU0qzTxz5porbvKr+pxPJ5llbnOEuVJRXU/o3xbsyAwUR2hIbj5XPfnvWXxT/1zrQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48350e6c-105d-47fe-0822-08d564f89197
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2018 20:08:29.8023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1293
Subject: Re: How do I generate a dtb for my board support package?
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
X-List-Received-Date: Fri, 26 Jan 2018 20:08:38 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_MWHPR13MB1584919EBCDC94E7E7DAEFE19EE00MWHPR13MB1584namp_"

--_000_MWHPR13MB1584919EBCDC94E7E7DAEFE19EE00MWHPR13MB1584namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've discovered the problem. It looks like my SRC_URI entries aren't placin=
g my .dts and .dtsi files in the correct locations. If I manually copy thos=
e files to: poky/build/tmp/work-shared/adzs-sc589-ezlite/kernel-source/arch=
/arm/boot/dts then the build will produce a .dtb file as expected.


How do I alter the SRC_URI instruction in my .bbappend file to specify the =
correct destination directory?


________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Peter Spierenburg <peter.spierenburg@nautel.com>
Sent: January 25, 2018 10:46:05 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] How do I generate a dtb for my board support package?


This sender failed our fraud detection checks and may not be who they appea=
r to be. Learn about spoofing<http://aka.ms/LearnAboutSpoofing>
        Feedback<http://aka.ms/SafetyTipsFeedback>

Thanks Maciej,


I did add a patch to SRC_URI in my linux-yocto_4.12.bbappend file. Does the=
 entry belong somewhere else instead?


Peter.



________________________________
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Sent: January 25, 2018 9:37:40 AM
To: Peter Spierenburg; yocto@yoctoproject.org
Subject: Re: [yocto] How do I generate a dtb for my board support package?



On 25.01.2018 14:16, Peter Spierenburg wrote:
| make[2]: *** No rule to make target `sc589-ezkit.dts'.  Stop.
You are building linux-yocto. You need to either add a patch to SRC_URI whi=
ch adds this
dtb target to linux source, or build from a different repository, where thi=
s support is already
included. I would check from which linux tree they build kernel in buildroo=
t BSP.
You will also need proper kernel configuration file for your board.


--
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com

This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.

--_000_MWHPR13MB1584919EBCDC94E7E7DAEFE19EE00MWHPR13MB1584namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I've discovered the problem. It l=
ooks like my SRC_URI entries aren't placing my .dts and .dtsi files in the =
correct locations. If I manually copy those files to:&nbsp;<span>poky/build=
/tmp/work-shared/adzs-sc589-ezlite/kernel-source/arch/arm/boot/dts
 then the build will produce a .dtb file as expected.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>How do I alter the SRC_URI =
instruction in my .bbappend file to specify the correct destination directo=
ry?</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto-bounces@yoctopr=
oject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Peter Spieren=
burg &lt;peter.spierenburg@nautel.com&gt;<br>
<b>Sent:</b> January 25, 2018 10:46:05 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] How do I generate a dtb for my board support pa=
ckage?</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<table id=3D"msexchangesafetytips;17f8b7e9-25b3-46c0-164e-08d5642019b2;R:en=
-CA" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" align=
=3D"left" style=3D"border:0; display:table; width:100%; table-layout:fixed;=
 border-collapse:seperate; float:none">
<tbody>
<tr>
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#910A19" cellpadding=3D"7px =
2px 7px 2px" style=3D"padding:7px 2px 7px 2px; background-color:#910A19">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#FDF2F4" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"width:100%; background-color:#FDF=
2F4; padding:7px 5px 7px 15px; font-family:wf_segoe-ui_normal,Segoe UI,Sego=
e WP,Tahoma,Arial,sans-serif; font-size:12px; font-weight:normal; color:#21=
2121; text-align:left; word-wrap:break-word">
<div>This&nbsp;sender&nbsp;failed&nbsp;our&nbsp;fraud&nbsp;detection&nbsp;c=
hecks&nbsp;and&nbsp;may&nbsp;not&nbsp;be&nbsp;who&nbsp;they&nbsp;appear&nbs=
p;to&nbsp;be.&nbsp;Learn&nbsp;about&nbsp;<a href=3D"http://aka.ms/LearnAbou=
tSpoofing">spoofing</a></div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#FDF2F4" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"width:75px; backgro=
und-color:#FDF2F4; padding:7px 5px 7px 5px; font-family:wf_segoe-ui_normal,=
Segoe UI,Segoe WP,Tahoma,Arial,sans-serif; font-size:12px; font-weight:norm=
al; color:#212121; text-align:left; word-wrap:break-word">
<a href=3D"http://aka.ms/SafetyTipsFeedback">Feedback</a></td>
</tr>
</tbody>
</table>
<div>
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Thanks Maciej,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I did add a patch to SRC_URI in =
my&nbsp;<span>linux-yocto_4.12.bbappend file. Does the entry belong somewhe=
re else instead?</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>Peter.</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Maciej Pijanowski &=
lt;maciej.pijanowski@3mdeb.com&gt;<br>
<b>Sent:</b> January 25, 2018 9:37:40 AM<br>
<b>To:</b> Peter Spierenburg; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] How do I generate a dtb for my board support pa=
ckage?</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<p><br>
</p>
<br>
<div class=3D"x_x_moz-cite-prefix">On 25.01.2018 14:16, Peter Spierenburg w=
rote:<br>
</div>
<blockquote type=3D"cite"><span style=3D"font-family:Consolas,Courier,monos=
pace">| make[2]: *** No rule to make target `sc589-ezkit.dts'.&nbsp; Stop.<=
br>
</span></blockquote>
You are building linux-yocto. You need to either add a patch to SRC_URI whi=
ch adds this<br>
dtb target to linux source, or build from a different repository, where thi=
s support is already<br>
included. I would check from which linux tree they build kernel in buildroo=
t BSP.<br>
You will also need proper kernel configuration file for your board.<br>
<br>
<pre class=3D"x_x_moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"x_x_moz-txt-link-freetext" href=3D"http://3mdeb.com">http://3md=
eb.com</a> | @3mdeb_com</pre>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the
 contents is strictly prohibited. If you have received this message in erro=
r, please contact us immediately so we may correct our records. Please then=
 delete or destroy the original transmission and any subsequent reply. Than=
k you.
</div>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the
 contents is strictly prohibited. If you have received this message in erro=
r, please contact us immediately so we may correct our records. Please then=
 delete or destroy the original transmission and any subsequent reply. Than=
k you.
</body>
</html>

--_000_MWHPR13MB1584919EBCDC94E7E7DAEFE19EE00MWHPR13MB1584namp_--
