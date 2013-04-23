Return-Path: <alexan3@vt.edu>
Received: from lennier.cc.vt.edu (lennier.cc.vt.edu [198.82.162.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E04CE014D1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 10:23:10 -0700 (PDT)
Received: from zidane.cc.vt.edu (zidane.cc.vt.edu [198.82.163.227])
	by lennier.cc.vt.edu (8.13.8/8.13.8) with ESMTP id r3NHN8W6004945
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 13:23:09 -0400
Received: from mail-gh0-f200.google.com (EHLO mail-gh0-f200.google.com)
	([209.85.160.200]) by zidane.cc.vt.edu (MOS 4.3.3-GA FastPath queued)
	with ESMTP id XLC44760; Tue, 23 Apr 2013 13:03:18 -0400 (EDT)
Received: by mail-gh0-f200.google.com with SMTP id 10so1473396ghy.3
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 10:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:from:to:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language
	:x-gm-message-state;
	bh=BPUxCdGVJ0R+TGXtukdXlaLO7bazypfSfk+P20lJuRk=;
	b=d13ZFO+b6XM8QSGSzY2NU3eAuQnSgQb0oq4Z/eHktYYTTThdKx3tzmZbrkYjzzMD+b
	wkDn8lJCfC1/UGu56dHO8GU8hmwI8XV8PjjyCSWr9VhsY4nlStDDCOBnpdACOXATELUh
	3yvfQLcV6UhGP4sB4YUX79lfiL0kfbdVFfW8tGKXj2WAbdjkFOuUXP13z+CFgiPDad8M
	8nzXa7BPszwg61oddHL0TD8Hfh4SlSsilpedJyODxAZMeHDvw0x25tBecijyYYFW+KqX
	nd3FG9Bl9WEu40YTkbUi3FqxZY+sR4dunF+JrJfY726MtIywBNyGq8v8LXrtTJ9Rn5gF
	r68g==
X-Received: by 10.49.119.138 with SMTP id ku10mr29093461qeb.13.1366736597277; 
	Tue, 23 Apr 2013 10:03:17 -0700 (PDT)
X-Received: by 10.49.119.138 with SMTP id ku10mr29093443qeb.13.1366736597026; 
	Tue, 23 Apr 2013 10:03:17 -0700 (PDT)
Received: from KellerPC (c-98-249-5-179.hsd1.va.comcast.net. [98.249.5.179])
	by mx.google.com with ESMTPS id en8sm32280921qeb.0.2013.04.23.10.03.15
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 23 Apr 2013 10:03:16 -0700 (PDT)
From: "Alexander Keller" <alexan3@vt.edu>
To: <yocto@yoctoproject.org>
Date: Tue, 23 Apr 2013 13:03:15 -0400
Message-ID: <023f01ce4044$72657a90$57306fb0$@vt.edu>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac5AQ4jxN+klP2WhSOGm1g0SNFvOiA==
X-Gm-Message-State: ALoCoQkSkUKMZ8ycO2GgJpb6BtBZrAmhfCLoLPsMTgdUFCslAlQY4+DqLBKHtx1cxH5T1K27Hdsk5bviyriiVhdowHDgtNSO/ivJABvWGZIkOwb2qmllm+eest7nU27tadiVsGTQ+HInZFkyzWUzgEF7UnQ2fxSp1w==
X-Mirapoint-Received-SPF: 209.85.160.200 mail-gh0-f200.google.com
	alexan3@vt.edu 4 softfail
X-Junkmail-Status: score=10/50, host=zidane.cc.vt.edu
X-Junkmail-Signature-Raw: score=unknown,
	refid=str=0001.0A020202.5176C37C.015F,ss=1,re=0.000,fgs=0,
	ip=98.249.5.179, so=2011-07-25 19:15:43,
	dmn=2011-05-27 18:58:46, mode=single engine
X-Junkmail-IWF: false
Subject: Building error for yocto
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
X-List-Received-Date: Tue, 23 Apr 2013 17:23:10 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0240_01CE4022.EB5476D0"
Content-Language: en-us

------=_NextPart_000_0240_01CE4022.EB5476D0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello, 

 

I have trying to build yocto for the past couple of days to test the
hardware acceleration on the X11. However, when I try to build yocto I keep
on getting this error:

 

ERROR: Function failed: do_configure (see
/home/lucid/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/busybox/1.20.2
-r8/temp/log.do_configure.30517 for further information)

ERROR: Logfile of failure stored in:
/home/lucid/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/busybox/1.20.2
-r8/temp/log.do_configure.30517

Log data follows:

| DEBUG: Executing python function sysroot_cleansstate

| DEBUG: Python function sysroot_cleansstate finished

| DEBUG: Executing shell function do_configure

| trap: 80: SIGHUP: bad trap

 

Does anyone know what could be the cause of this error?

 

I am using Ubuntu 10.10 on my host and I am building master branch. 

 

Any help will be most appreciated, 

 

Thanks for your help,

 

Alexander Keller 


------=_NextPart_000_0240_01CE4022.EB5476D0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	font-family:"Calibri","sans-serif";}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello, <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I have =
trying to build yocto for the past couple of days to test the hardware =
acceleration on the X11. However, when I try to build yocto I keep on =
getting this error:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>ERROR: =
Function failed: do_configure (see =
/home/lucid/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/busybox/1.2=
0.2-r8/temp/log.do_configure.30517 for further =
information)<o:p></o:p></p><p class=3DMsoNormal>ERROR: Logfile of =
failure stored in: =
/home/lucid/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/busybox/1.2=
0.2-r8/temp/log.do_configure.30517<o:p></o:p></p><p =
class=3DMsoNormal>Log data follows:<o:p></o:p></p><p class=3DMsoNormal>| =
DEBUG: Executing python function sysroot_cleansstate<o:p></o:p></p><p =
class=3DMsoNormal>| DEBUG: Python function sysroot_cleansstate =
finished<o:p></o:p></p><p class=3DMsoNormal>| DEBUG: Executing shell =
function do_configure<o:p></o:p></p><p class=3DMsoNormal>| trap: 80: =
SIGHUP: bad trap<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Does anyone =
know what could be the cause of this error?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am using =
Ubuntu 10.10 on my host and I am building master branch. =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Any help will be most appreciated, <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks for =
your help,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Alexander Keller <o:p></o:p></p></div></body></html>

------=_NextPart_000_0240_01CE4022.EB5476D0--
