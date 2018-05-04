Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9BFAE00C17; Fri,  4 May 2018 14:27:42 -0700 (PDT)
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
	no *      trust *      [40.92.0.80 listed in list.dnswl.org]
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
X-Greylist: delayed 120765 seconds by postgrey-1.32 at yocto-www;
	Fri, 04 May 2018 14:27:39 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092000080.outbound.protection.outlook.com [40.92.0.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3463E009DF
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 14:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Q0snke7v3bRoDtemQ6eJNFL1Rexyuv0fqdqgZB9eieg=;
	b=eijxqp7HZkH0hiWI/hq49Nr4X+COMdlXIFZyHW7d9VSYGCp9Apfv4Vi0AL1iGlQaUfLYJmZ4V4ZVM9o6ijuCtEmwOYvm7nI8ZBUjfbRnMD1MxETz6zdo6uG0A9v2akqBFAz9sqL5FmTkyVskJjzcLLQBFPu5isXXcYwVEAB2hKczFWWCo+iUeEpJWybknYJzsjcpOQJLy8WpDRdEZEyOg+GyPFC/2MnTXreidXiMuUk8RYPcJ9PD2M3yrY9tXARVDXAHsAfdZKwcjiuOAzqlec9H1X6LyIx0VA0Zc0FPjQ1n8FEBMW4/LuCw+2vKt6YT1gmSsZAiDkoFFj2410sFHA==
Received: from BN3NAM01FT025.eop-nam01.prod.protection.outlook.com
	(10.152.66.51) by BN3NAM01HT186.eop-nam01.prod.protection.outlook.com
	(10.152.66.115) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.715.13;
	Fri, 4 May 2018 16:53:03 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.66.51) by
	BN3NAM01FT025.mail.protection.outlook.com (10.152.67.179) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.715.13 via Frontend Transport; Fri, 4 May 2018 16:53:03 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0715.024;
	Fri, 4 May 2018 16:53:03 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Vincent Daanen <vincent.daanen@orthotaxy.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] PXE booting ISO image fails with message "Waiting for
	removable media..."
Thread-Index: AQHT4xa7kZ51esAEykaXqXu2cIV6u6QfHXmAgACsEyU=
Date: Fri, 4 May 2018 16:53:03 +0000
Message-ID: <MWHPR19MB118329D6D03BAB8C04F866BDC5860@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.83558.1525373248.15860.yocto@yoctoproject.org>
	<MWHPR19MB11834493BB850310B51FF64CC5870@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<VI1P192MB014338A4DAD0BE3F80AE705C8D860@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
In-Reply-To: <VI1P192MB014338A4DAD0BE3F80AE705C8D860@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:72769224524FB6DE5FA4922A63C8FBA1893CE4E48840753D034BA20D2E574C84;
	UpperCasedChecksum:FED2C9193E08F85B134B1D864A54B0E955C70F073E1984BAA9E2079D2C0CF95D;
	SizeAsReceived:7476; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [MLadU5HjDsUFcSqWhxlq8UyzmNOZgRc+kByB9MTjY/ROt107YuD8nozbH/9hZ6n9]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM01HT186;
	7:zoYuKhqipauA+01WmD23THUwunPh8y7685nkjKv7VUp2IfI2MxN0hMC/k3X80mKDF+qmRryozk+cRxyqona7rq2SGQaeaO+X8/jkBm4RTrFQLHPcvDX0uxNlrt+Xf4uZ4W5gMiq/zULnb4HTUa/XGyBRIXBtIx5h3H7+54YiHDK4N6CQ2JV8+uqEG8PS+qus301Y21D759wbaTVP1CjX+ICke/FokYPbh4GsYV9ls4uYkqdrvbFQxtcOB2Wj5nsq
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BN3NAM01HT186; 
x-ms-traffictypediagnostic: BN3NAM01HT186:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM01HT186; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM01HT186; 
x-forefront-prvs: 06628F7CA4
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BN3NAM01HT186;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: uCw44v7y0z1HlZ5ZT7E01TkDKsxbV5gUn6X3nSAY/uwSWlcX8BGO0cl9PDj2lDpNJL9b/16CLgXV7I5lV2EeB7gnpKWza3eQVPLNCNkRnnBCbSZbypxmXdPw76+Kg4VjFZGwQuqqGlCSE8xl0gTTSE7UN7I5oLav0XVR6EKCDeyfKMxsTiV3QwIUOwTUgOnR
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 3b85d76f-0828-4ef6-fdf2-08d5b1df8091
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b85d76f-0828-4ef6-fdf2-08d5b1df8091
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2018 16:53:03.4886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM01HT186
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
X-List-Received-Date: Fri, 04 May 2018 21:27:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB118329D6D03BAB8C04F866BDC5860MWHPR19MB1183namp_"

--_000_MWHPR19MB118329D6D03BAB8C04F866BDC5860MWHPR19MB1183namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Perhaps you could try NFS kernel boot option.  Set up the remote (tftp root=
) directory to reflect the path the init code expects.


I tried this for a little while but ran into what 2 issues - network driver=
 init is later than NFS (due to it being a LKM rather than part of kernel),=
 and Avahi screwing around with IP addresses.  I looked into the log to con=
firm timing for the first one, and fixed this with kernel reconfiguration. =
 However, I've yet to try fixing Avahi (remove it) as I'm not sure how to d=
o it yet.


My time ran out, and I got another workable solution.  So I shelved this NF=
S approach.  If you get this working, would appreciate it if you could publ=
ish it, and any issues you run into implementing it.


Raymond


________________________________
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
Sent: Thursday, May 3, 2018 11:43 PM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: RE: [yocto] PXE booting ISO image fails with message "Waiting for =
removable media..."


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
E is not accessible and we want to use PXE booting  for every boot=85



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
ut at the moment, I don=92t know how to reproduce the archlinux initrd work=
s with Yocto=85



If only a guru of Yocto could help =85



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

--_000_MWHPR19MB118329D6D03BAB8C04F866BDC5860MWHPR19MB1183namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Perhaps you could try NFS kernel =
boot option. &nbsp;Set up the remote (tftp root) directory to reflect the p=
ath the init code expects.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I tried this for a little while b=
ut ran into what 2 issues - network driver init is later than NFS (due to i=
t being a LKM rather than part of kernel), and Avahi screwing around with I=
P addresses. &nbsp;I looked into the log
 to confirm timing for the first one, and fixed this with kernel reconfigur=
ation. &nbsp;However, I've yet to try fixing Avahi (remove it) as I'm not s=
ure how to do it yet.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">My time ran out, and I got anothe=
r workable solution. &nbsp;So I shelved this NFS approach. &nbsp;If you get=
 this working, would appreciate it if you could publish it, and any issues =
you run into implementing it.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Vincent Daanen &lt;vi=
ncent.daanen@orthotaxy.com&gt;<br>
<b>Sent:</b> Thursday, May 3, 2018 11:43 PM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: [yocto] PXE booting ISO image fails with message &quot;=
Waiting for removable media...&quot;</font>
<div>&nbsp;</div>
</div>
<div lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">Hi Raymond,</span=
></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt; I'd recently=
 gone through similar issue that you're experiencing.&nbsp; The &quot;Waiti=
ng for Removable Media&quot; hang had been there for at least 7-8 years.&nb=
sp; A workaround was put in around 2013.&nbsp; See here: https://patchwork.=
openembedded.org/patch/42291/</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt; </span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt; Add &quot;de=
bugshell=3D30&quot; (30 is in second, for timeout, or any other reasonable =
value that you like) to the append
</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt; statement in=
 your pxelinux.cfg/default file.&nbsp; Then you'd timeout when you &quot;no=
rmally&quot; hangs, break into a shell,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt; where you co=
uld initiate udhcpc to configure networking, after which you could transfer=
 your bootable image onto</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt; your RAM, an=
d write out onto your HDD/SSD.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">Unfortunately, we=
 cannot use this trick because the MB which boots using PXE is not accessib=
le and we want to use PXE booting &nbsp;for every boot=85</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt; It seems thi=
s kernel boot option of debugshell isn't documented officially in kernel-pa=
rameters.txt file.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt;&nbsp; You co=
uld also look for init-live.sh on your yocto tree, and look for &quot;Waiti=
ng for Removable Media&quot;, and see the</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&gt; surrounding =
code to get a fell how this debugshell thing works.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">I think this is w=
hat we will have to do ..</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">I read the descri=
ption of the internals of the initrd provided by Archlinux. The main differ=
ence is that Yocto initrd searches for the final rootfs on physical device =
(/dev/sdX) whereas the Archlinux initrd
 identifies (using LABEL) the support it was launched from and then searche=
s on this support for the final rootfs.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">I guess this appr=
oach would unify all booting: from USB, CD-ROM and PXE.. But at the moment,=
 I don=92t know how to reproduce the archlinux initrd works with Yocto=85</=
span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">If only a guru of=
 Yocto could help =85</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt">Vincent</span></p=
>
<div>
<div>
<div>
<p class=3D"x_MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font=
-size:12.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"colo=
r:black">Date: Thu, 3 May 2018 14:27:46 &#43;0000<br>
From: Vincent Daanen &lt;<a href=3D"mailto:vincent.daanen@orthotaxy.com" id=
=3D"LPlnk148599" class=3D"OWAAutoLink" previewremoved=3D"true">vincent.daan=
en@orthotaxy.com</a>&gt;<br>
To: &quot;<a href=3D"mailto:yocto@yoctoproject.org" id=3D"LPlnk455762" clas=
s=3D"OWAAutoLink" previewremoved=3D"true">yocto@yoctoproject.org</a>&quot; =
&lt;<a href=3D"mailto:yocto@yoctoproject.org" id=3D"LPlnk529830" class=3D"O=
WAAutoLink" previewremoved=3D"true">yocto@yoctoproject.org</a>&gt;<br>
Subject: [yocto] PXE booting ISO image fails with message &quot;Waiting for=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; removable media...&quot;<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;<a href=3D"mailto:VI1P192MB0=
1430B16A66D217CB44829098D870@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM" id=3D"=
LPlnk390352" class=3D"OWAAutoLink" previewremoved=3D"true">VI1P192MB01430B1=
6A66D217CB44829098D870@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM</a>&gt;<br>
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
e.org/gmane.linux.embedded.yocto.general/20611" id=3D"LPlnk713613" class=3D=
"OWAAutoLink" previewremoved=3D"true">
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
Vincent</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB118329D6D03BAB8C04F866BDC5860MWHPR19MB1183namp_--
