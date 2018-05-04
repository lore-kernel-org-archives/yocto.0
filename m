Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 389C0E00C59; Fri,  4 May 2018 03:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0103.outbound.protection.outlook.com [104.47.2.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9963E00C22
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 03:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=K6ogivz+Ojb43WRIAyp9N3jcDmMTFtU1nQyafNis1IY=;
	b=Yl2EnfwVYlSMtimCn0oZggx72+yfHzk/1AzpquCJWno3fX7juWjlxup/nazWoTBS1fUDHzJZlaseoLhQzdI6BuUhTvPMfSaUoMHs49m3RIV0k+iyC0D5Hqzwwx9koEz3DqiXKf7t59OaFaH97LVUkpSrkTAAbcfMEG1ZqFEwaQA=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0319.EURP192.PROD.OUTLOOK.COM (52.134.24.31) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.735.17; Fri, 4 May 2018 06:43:18 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::a060:8fd0:4c92:6910]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::a060:8fd0:4c92:6910%17]) with mapi id 15.20.0735.016;
	Fri, 4 May 2018 06:43:18 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] PXE booting ISO image fails with message "Waiting for
	removable media..."
Thread-Index: AQHT4xa7kZ51esAEykaXqXu2cIV6u6QfHXmA
Date: Fri, 4 May 2018 06:43:18 +0000
Message-ID: <VI1P192MB014338A4DAD0BE3F80AE705C8D860@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <mailman.83558.1525373248.15860.yocto@yoctoproject.org>
	<MWHPR19MB11834493BB850310B51FF64CC5870@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB11834493BB850310B51FF64CC5870@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0319;
	7:yjObfxBpxWywlhYiYsiQgR5k5zmES10oKMGU2y3SpQrNik2rH7+mOJILClOaT61Uwx5iElTY9LVs016GnnQo9Ss7YuE7AKqARhbh1Pc7d0V3vBDtsgBiIy7REuKIiz1Gkgw3OrF2BHuVA1tS7Y1JTHcxuSNcYincxsNb4FAlHyuPffrxcug4naJWowfEsy0c7bvisZzi7MP1y+HcgvYt8DCemWQnzRUDk6Sc9ankbztWp2L14UQtcG0XU+FJ8xmF
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0319; 
x-ms-traffictypediagnostic: VI1P192MB0319:
x-microsoft-antispam-prvs: <VI1P192MB0319DA6C65A1241B512750888D860@VI1P192MB0319.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(189930954265078)(21748063052155); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(3231254)(944501410)(52105095)(93006095)(93001095)(10201501046)(6041310)(2016111802025)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0319; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0319; 
x-forefront-prvs: 06628F7CA4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(39380400002)(346002)(366004)(39830400003)(199004)(189003)(86362001)(10710500007)(2906002)(3280700002)(53546011)(6506007)(26005)(8676002)(81156014)(966005)(186003)(102836004)(55016002)(9686003)(2501003)(6306002)(54896002)(486006)(44832011)(236005)(6246003)(3660700001)(2900100001)(5250100002)(74316002)(476003)(5660300001)(53936002)(39060400002)(25786009)(66066001)(14454004)(316002)(3846002)(6116002)(790700001)(7736002)(446003)(7110500001)(11346002)(97736004)(105586002)(8936002)(45080400002)(229853002)(6436002)(606006)(478600001)(106356001)(9326002)(99286004)(110136005)(76176011)(33656002)(7696005)(15650500001)(68736007)(2420400007)(81166006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0319;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: lzyDAZclDAnq5JAFBJLCLqmLrqWifyYmfyLEHeNy+zyqcRCyqa3vk0psYj4YRzZ2KZ8UvURX5W5tSPpUUsQReNFwdrVIiC5aYwpFv3TmWHh/X4zGbce27XEQF94lyF4mcpOIPjA3Do6qU+1a7ttd3r0pGMg0ym/i3aYYfRud27dvy88y3ODInNE+WMonmQeN
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 7ebfafda-f247-4aec-9301-08d5b18a5206
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ebfafda-f247-4aec-9301-08d5b18a5206
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2018 06:43:18.1152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0319
Subject: Re: PXE booting ISO image fails with message "Waiting for removable media..."
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
X-List-Received-Date: Fri, 04 May 2018 10:15:33 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB014338A4DAD0BE3F80AE705C8D860VI1P192MB0143EURP_"

--_000_VI1P192MB014338A4DAD0BE3F80AE705C8D860VI1P192MB0143EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Raymond,

> I'd recently gone through similar issue that you're experiencing.  The "W=
aiting for Removable Media" hang had been there for at least 7-8 years.  A =
workaround was put in around 2013.  See here: https://patchwork.openembedde=
d.org/patch/42291/
>
> Add "debugshell=3D30" (30 is in second, for timeout, or any other reasona=
ble value that you like) to the append
> statement in your pxelinux.cfg/default file.  Then you'd timeout when you=
 "normally" hangs, break into a shell,
> where you could initiate udhcpc to configure networking, after which you =
could transfer your bootable image onto
> your RAM, and write out onto your HDD/SSD.

Unfortunately, we cannot use this trick because the MB which boots using PX=
E is not accessible and we want to use PXE booting  for every boot...

> It seems this kernel boot option of debugshell isn't documented officiall=
y in kernel-parameters.txt file.

>  You could also look for init-live.sh on your yocto tree, and look for "W=
aiting for Removable Media", and see the
> surrounding code to get a fell how this debugshell thing works.
I think this is what we will have to do ..

I read the description of the internals of the initrd provided by Archlinux=
. The main difference is that Yocto initrd searches for the final rootfs on=
 physical device (/dev/sdX) whereas the Archlinux initrd identifies (using =
LABEL) the support it was launched from and then searches on this support f=
or the final rootfs.

I guess this approach would unify all booting: from USB, CD-ROM and PXE.. B=
ut at the moment, I don't know how to reproduce the archlinux initrd works =
with Yocto...

If only a guru of Yocto could help ...

Vincent

Date: Thu, 3 May 2018 14:27:46 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com<mailto:vincent.daanen@or=
thotaxy.com>>
To: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] PXE booting ISO image fails with message "Waiting for
        removable media..."
Message-ID:
        <VI1P192MB01430B16A66D217CB44829098D870@VI1P192MB0143.EURP192.PROD.=
OUTLOOK.COM<mailto:VI1P192MB01430B16A66D217CB44829098D870@VI1P192MB0143.EUR=
P192.PROD.OUTLOOK.COM>>

Content-Type: text/plain; charset=3D"utf-8"

Hi,

We want to deploy image created with Yocto (Rocko) via PXE.
The target board is a Intel-based SBC (AAEON GENE BT05).

At first, we tried with a ISO from Archlinux and the target-board successfu=
lly booted.

Then we create a ISO using Yocto but boot hangs with a message ?Waiting for=
 removable media ...?.
Googling this message points me to this post: http://thread.gmane.org/gmane=
.linux.embedded.yocto.general/20611 which relates exactly the same problem,=
 explain why the issue raises, gives an indication to how to fix .. and tha=
t?s all ?

So at this point, we know that the problem comes from the /recipes-core/ini=
trdscripts/files/init-live.sh file.
It seems searching for an /dev/sdx should be protected by a timeout set by =
default to 30 secs but during our trials, no timeout seems to exist.

What we do not understand, is how to highlight the differences between the =
Yocto-based and the Archlinux ISO files so that we can ?unblock? the boot u=
sing the Yocto-based ISO file.

Is the someone here how could help?

Thanks

Vincent

--_000_VI1P192MB014338A4DAD0BE3F80AE705C8D860VI1P192MB0143EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Hi Raymond,<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt; I'd recently g=
one through similar issue that you're experiencing.&nbsp; The &quot;Waiting=
 for Removable Media&quot; hang had been there for at least 7-8 years.&nbsp=
; A workaround was put in around 2013.&nbsp; See here: https://patchwork.op=
enembedded.org/patch/42291/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt; <o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt; Add &quot;debu=
gshell=3D30&quot; (30 is in second, for timeout, or any other reasonable va=
lue that you like) to the append
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt; statement in y=
our pxelinux.cfg/default file.&nbsp; Then you'd timeout when you &quot;norm=
ally&quot; hangs, break into a shell,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt; where you coul=
d initiate udhcpc to configure networking, after which you could transfer y=
our bootable image onto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt; your RAM, and =
write out onto your HDD/SSD.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Unfortunately, we c=
annot use this trick because the MB which boots using PXE is not accessible=
 and we want to use PXE booting &nbsp;for every boot&#8230;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt; It seems this =
kernel boot option of debugshell isn't documented officially in kernel-para=
meters.txt file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt;&nbsp; You coul=
d also look for init-live.sh on your yocto tree, and look for &quot;Waiting=
 for Removable Media&quot;, and see the<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&gt; surrounding co=
de to get a fell how this debugshell thing works.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">I think this is wha=
t we will have to do ..<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">I read the descript=
ion of the internals of the initrd provided by Archlinux. The main differen=
ce is that Yocto initrd searches for the final rootfs on physical device (/=
dev/sdX) whereas the Archlinux initrd
 identifies (using LABEL) the support it was launched from and then searche=
s on this support for the final rootfs.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">I guess this approa=
ch would unify all booting: from USB, CD-ROM and PXE.. But at the moment, I=
 don&#8217;t know how to reproduce the archlinux initrd works with Yocto&#8=
230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">If only a guru of Y=
octo could help &#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Vincent<o:p></o:p><=
/span></p>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:12.0pt"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
black">Date: Thu, 3 May 2018 14:27:46 &#43;0000<br>
From: Vincent Daanen &lt;<a href=3D"mailto:vincent.daanen@orthotaxy.com">vi=
ncent.daanen@orthotaxy.com</a>&gt;<br>
To: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: [yocto] PXE booting ISO image fails with message &quot;Waiting for=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; removable media...&quot;<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;<a href=3D"mailto:VI1P192MB0=
1430B16A66D217CB44829098D870@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM">VI1P19=
2MB01430B16A66D217CB44829098D870@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM</a>=
&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi,<br>
<br>
We want to deploy image created with Yocto (Rocko) via PXE.<br>
The target board is a Intel-based SBC (AAEON GENE BT05).<br>
<br>
At first, we tried with a ISO from Archlinux and the target-board successfu=
lly booted.<br>
<br>
Then we create a ISO using Yocto but boot hangs with a message ?Waiting for=
 removable media ...?.<br>
Googling this message points me to this post: <a href=3D"http://thread.gman=
e.org/gmane.linux.embedded.yocto.general/20611">
http://thread.gmane.org/gmane.linux.embedded.yocto.general/20611</a> which =
relates exactly the same problem, explain why the issue raises, gives an in=
dication to how to fix .. and that?s all ?<br>
<br>
So at this point, we know that the problem comes from the /recipes-core/ini=
trdscripts/files/init-live.sh file.<br>
It seems searching for an /dev/sdx should be protected by a timeout set by =
default to 30 secs but during our trials, no timeout seems to exist.<br>
<br>
What we do not understand, is how to highlight the differences between the =
Yocto-based and the Archlinux ISO files so that we can ?unblock? the boot u=
sing the Yocto-based ISO file.<br>
<br>
Is the someone here how could help?<br>
<br>
Thanks<br>
<br>
Vincent<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_VI1P192MB014338A4DAD0BE3F80AE705C8D860VI1P192MB0143EURP_--
