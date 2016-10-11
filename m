Return-Path: <gstroz@qti.qualcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA0ADE00DCF; Tue, 11 Oct 2016 16:56:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [199.106.114.251 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0175]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 121 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Oct 2016 16:56:11 PDT
Received: from wolverine02.qualcomm.com (wolverine02.qualcomm.com
	[199.106.114.251])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D89AE0099B
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 16:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
	s=qcdkim; t=1476230171; x=1507766171;
	h=from:to:subject:date:message-id:mime-version;
	bh=iio8s2Q1ahDGj0Bs+iMEnyqw87Z+8YZTxfu6baE+US0=;
	b=FuiIwleRyMDMDq44ZrmgWcsxWIboDAyESLbKkQaMH6InZGzPUSXtfs9k
	Ed30eRLoac1KHHUH4ITegxK3SsBz5IHeww6udVUfxXAR2ckvHkITYijN2
	I1ntPm0foVAgrMmr4YJs7c4E8bHepQmNM7OvMcydBiTxcS6CaYwnWZxNU Y=;
X-IronPort-AV: E=Sophos;i="5.31,479,1473145200"; 
	d="scan'208,217";a="326165661"
Received: from ironmsg05-lv.qualcomm.com ([10.47.202.182])
	by wolverine02.qualcomm.com with ESMTP; 11 Oct 2016 16:54:09 -0700
X-IronPort-AV: E=McAfee;i="5700,7163,8315"; a="29333121"
Received: from nalasexr02c.na.qualcomm.com ([10.49.56.27])
	by ironmsg05-lv.qualcomm.com with ESMTP/TLS/RC4-SHA;
	11 Oct 2016 16:54:08 -0700
Received: from nalasexr02c.na.qualcomm.com (10.49.56.27) by
	nalasexr02c.na.qualcomm.com (10.49.56.27) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Tue, 11 Oct 2016 16:53:48 -0700
Received: from nalasexr02c.na.qualcomm.com ([10.49.56.27]) by
	nalasexr02c.na.qualcomm.com ([10.49.56.27]) with mapi id 15.00.1178.000;
	Tue, 11 Oct 2016 16:53:48 -0700
From: "Stroz, Glenn" <gstroz@qti.qualcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Conflict between multilib glibc and non-multlib glibc
Thread-Index: AdIkCiATnVR2PhBxTCecaLVsdPvkYA==
Date: Tue, 11 Oct 2016 23:53:47 +0000
Message-ID: <63f678382e5d4d6a9c8ce92b0154235b@nalasexr02c.na.qualcomm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.49.16.6]
MIME-Version: 1.0
Subject: Conflict between multilib glibc and non-multlib glibc
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
X-List-Received-Date: Tue, 11 Oct 2016 23:56:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63f678382e5d4d6a9c8ce92b0154235bnalasexr02cnaqualcommco_"

--_000_63f678382e5d4d6a9c8ce92b0154235bnalasexr02cnaqualcommco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We have a project running an aarch64 compatible processor. For backward com=
patibility with some internal software packages, we're using the armv7a-vfp=
 machine type as a multilib lib32 variant. However, we have found that when=
 attempting to install both lib32-glibc and glibc we encounter a file confl=
ict in the root image.

ERROR: Multilib check error: duplicate files /local/mnt/workspace2/gstroz/L=
E-UM-yocto2/poky/build/tmp-glibc/work/apq8096-oe-linux/machine-image/1.0-r0=
/multilib/lib32/usr/include/fpu_control.h /local/mnt/workspace2/gstroz/LE-U=
M-yocto2/poky/build/tmp-glibc/work/apq8096-oe-linux/machine- -image/1.0-r0/=
rootfs/usr/include/fpu_control.h is not the same

This is because the fpu_control.h file varies based on the machine architec=
ture (in this case armv7-vfp and aarch64). Is this a known bug? If so, what=
 is the suggested solution? We would like to keep both 32 and 64 bit librar=
ies if possible.

-Glenn


--_000_63f678382e5d4d6a9c8ce92b0154235bnalasexr02cnaqualcommco_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have a project running an aarch64 compatible proc=
essor. For backward compatibility with some internal software packages, we&=
#8217;re using the armv7a-vfp machine type as a multilib lib32 variant. How=
ever, we have found that when attempting
 to install both lib32-glibc and glibc we encounter a file conflict in the =
root image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Multilib check error: duplicate files /local/=
mnt/workspace2/gstroz/LE-UM-yocto2/poky/build/tmp-glibc/work/apq8096-oe-lin=
ux/machine-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h /local/mnt=
/workspace2/gstroz/LE-UM-yocto2/poky/build/tmp-glibc/work/apq8096-oe-linux/=
machine-
 -image/1.0-r0/rootfs/usr/include/fpu_control.h is not the same<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is because the fpu_control.h file varies based =
on the machine architecture (in this case armv7-vfp and aarch64). Is this a=
 known bug? If so, what is the suggested solution? We would like to keep bo=
th 32 and 64 bit libraries if possible.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Glenn<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_63f678382e5d4d6a9c8ce92b0154235bnalasexr02cnaqualcommco_--
