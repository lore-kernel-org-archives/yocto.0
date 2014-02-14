Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [180.151.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D96FE00571
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 02:20:52 -0800 (PST)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 1DF6836B74;
	Fri, 14 Feb 2014 15:50:30 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138]) (using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by jaguar.aricent.com (Postfix) with ESMTP id 0603536B37;
	Fri, 14 Feb 2014 15:50:30 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Fri, 14 Feb 2014 15:50:30 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 14 Feb 2014 15:50:29 +0530
Thread-Topic: [yocto] Error in configuring multilib ie libstdc++ for c++
Thread-Index: Ac8m7af+gw/m5KsARoCe6DNa1+YCwQCf7MDQ
Message-ID: <17797116383D4341B029FDF34C22BF6A72FF339980@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <17797116383D4341B029FDF34C22BF6A72FEFCE970@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<3191CAF4-6496-4EA5-9D3F-4A1B206CA248@gmail.com>
In-Reply-To: <3191CAF4-6496-4EA5-9D3F-4A1B206CA248@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error in configuring multilib ie libstdc++ for c++
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
X-List-Received-Date: Fri, 14 Feb 2014 10:20:56 -0000
X-Groupsio-MsgNum: 18113
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_17797116383D4341B029FDF34C22BF6A72FF339980GUREXMB01ASIA_"

--_004_17797116383D4341B029FDF34C22BF6A72FF339980GUREXMB01ASIA_
Content-Type: multipart/alternative;
	boundary="_000_17797116383D4341B029FDF34C22BF6A72FF339980GUREXMB01ASIA_"

--_000_17797116383D4341B029FDF34C22BF6A72FF339980GUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi ,

Actually we had two toolchains one for linux(linux kernel and other userspa=
ce component ) components and other elf toolchain for bootloaders (like xlo=
ader uboot and sysconfig) compilations. We have tried to compile both the t=
oolchains using yocto  for 4.6.3 version and working fine for language=3Dc =
only. But we have issue that I am not able to create libstd* libraries by s=
etting extra_oeconf enable-language=3Dc,c++ for elf toolchain and its givin=
g error in compilation steps .

Please suggest me the solution.

From: Khem Raj [mailto:raj.khem@gmail.com]
Sent: Tuesday, February 11, 2014 11:24 AM
To: Rohit2 Jindal
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Error in configuring multilib ie libstdc++ for c++


On Jan 26, 2014, at 10:51 PM, Rohit2 Jindal <rohit2.jindal@aricent.com<mail=
to:rohit2.jindal@aricent.com>> wrote:


Hi,

I am trying to compile both c and c++ multilib for elf toolchain but its gi=
ving error in configuring the same for c++. Logs are attached with this mai=
l. And EXTRA_OECONF passed are as below:

EXTRA_OECONF +=3D "--with-sysroot=3D${TMPDIR}/sysroots/${BUILD_SYS}/usr/lib=
/mips32-nlm-elf.gcc-cross-initial/gcc/mips64-nlm-elf/4.6.3 \

you are trying to mix bare metal compiler toolchain with hosted toolchain t=
argeting Linux ?
OpenEmbedded has concept of TARGET_OS and now you could unset it but thats =
a untreated territory. If you explain in essence what you are trying to do.=
 May be there is a solution.


                --enable-threads \
                --enable-multilib \
                --disable-libmudflap \
                --disable-libssp \
                --disable-libstdcxx-pch \
                --with-gnu-as \
                --with-gnu-ld \
                --with-mips-plt \
                 --enable-languages=3Dc,c++ \
                --enable-lto \
                --disable-nls \
                --disable-shared \
                --disable-threads \
                --disable-libgomp \
                --without-headers \
                --with-newlib \
                --disable-decimal-float \
                --disable-libffi \
                --disable-libquadmath \
                --disable-libitm \
                --enable-poison-system-directories \
                --with-gxx-include-dir=3D${TMPDIR}/sysroots/${BUILD_SYS}/us=
r/${TARGET_SYS}/usr/include/c++ \
                --enable-cxx-flags=3D'-G0 -mno-gpopt' \

Please suggest me the way to resolve this issue.

Regards,
Rohit Jindal





=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
<error in configuring multilib for c++.log>________________________________=
_______________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto





=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

--_000_17797116383D4341B029FDF34C22BF6A72FF339980GUREXMB01ASIA_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi ,<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Actually we had two toolc=
hains one for linux(linux kernel and other userspace component ) components=
 and other elf toolchain for bootloaders (like xloader uboot
 and sysconfig) compilations. We have tried to compile both the toolchains =
using yocto&nbsp; for 4.6.3 version and working fine for language=3Dc only.=
 But we have issue that I am not able to create libstd* libraries by settin=
g extra_oeconf enable-language=3Dc,c&#43;&#43; for
 elf toolchain and its giving error in compilation steps .<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Please suggest me the sol=
ution.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Khem Raj=
 [mailto:raj.khem@gmail.com]
<br>
<b>Sent:</b> Tuesday, February 11, 2014 11:24 AM<br>
<b>To:</b> Rohit2 Jindal<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Error in configuring multilib ie libstdc&#43;&#=
43; for c&#43;&#43;<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Jan 26, 2014, at 10:51 PM, Rohit2 Jindal &lt;<a h=
ref=3D"mailto:rohit2.jindal@aricent.com">rohit2.jindal@aricent.com</a>&gt; =
wrote:<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Hi,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">I am trying to compile both c and c&#43=
;&#43; multilib for elf toolchain but its giving error in configuring the s=
ame for c&#43;&#43;. Logs are attached with this mail. And EXTRA_OECONF
 passed are as below:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">EXTRA_OECONF &#43;=3D &quot;--with-sysr=
oot=3D${TMPDIR}/sysroots/${BUILD_SYS}/usr/lib/mips32-nlm-elf.gcc-cross-init=
ial/gcc/mips64-nlm-elf/4.6.3 \<o:p></o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">you are trying to mix bare metal compiler toolchain =
with hosted toolchain targeting Linux ?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">OpenEmbedded has concept of TARGET_OS and now you co=
uld unset it but thats a untreated territory. If you explain in essence wha=
t you are trying to do. May be there is a solution.<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-threads \<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-multilib \<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libmudflap \<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--disable-libssp \<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libstdcxx-pch=
 \<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-gnu-as \<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-gnu-ld \<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-mips-plt \<o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--enable-language=
s=3Dc,c&#43;&#43; \<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-lto \<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-nls \<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-shared \<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-threads \<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libgomp \<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --without-headers \<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-newlib \<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-decimal-float=
 \<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libffi \<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libquadmath \=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libitm \<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-poison-system-=
directories \<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-gxx-include-dir=
=3D${TMPDIR}/sysroots/${BUILD_SYS}/usr/${TARGET_SYS}/usr/include/c&#43;&#43=
; \<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-cxx-flags=3D'-=
G0 -mno-gpopt' \<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Please suggest me the way to resolve th=
is issue.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Regards,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Rohit Jindal<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Hel=
vetica&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:gray"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to<span class=3D"apple-converted-space">&nbsp;</span><a href=
=3D"http://www.aricent.com/legal/email_disclaimer.html"><span style=3D"colo=
r:purple">http://www.aricent.com/legal/email_disclaimer.html</span></a><br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</span><span style=3D"font-size:9.0pt;font-family:&quot;Helvetica&quot;,&qu=
ot;sans-serif&quot;">&lt;error in configuring multilib for c&#43;&#43;.log&=
gt;_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org"><span style=3D"color:purple">yoct=
o@yoctoproject.org</span></a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto"><span style=3D"co=
lor:purple">https://lists.yoctoproject.org/listinfo/yocto</span></a><o:p></=
o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to http://www.aricent.com/legal/email_disclaimer.html<br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</body>
</html>

--_000_17797116383D4341B029FDF34C22BF6A72FF339980GUREXMB01ASIA_--

--_004_17797116383D4341B029FDF34C22BF6A72FF339980GUREXMB01ASIA_
Content-Type: application/octet-stream;
	name="error in configuring multilib for c++"
Content-Description: error in configuring multilib for c++
Content-Disposition: attachment;
	filename="error in configuring multilib for c++"; size=18558;
	creation-date="Mon, 27 Jan 2014 06:37:46 GMT";
	modification-date="Mon, 27 Jan 2014 06:39:04 GMT"
Content-Transfer-Encoding: base64

Q2hlY2tpbmcgbXVsdGlsaWIgY29uZmlndXJhdGlvbiBmb3IgbGlic3RkYysrLXYzLi4uDQpDb25m
aWd1cmluZyBpbiBtaXBzNjQteHh4LWVsZi9saWJzdGRjKystdjMNCmNvbmZpZ3VyZTogbG9hZGlu
ZyBjYWNoZSAuL2NvbmZpZy5jYWNoZQ0KY2hlY2tpbmcgYnVpbGQgc3lzdGVtIHR5cGUuLi4gaTY4
Ni1wYy1saW51eC1nbnUNCmNoZWNraW5nIGhvc3Qgc3lzdGVtIHR5cGUuLi4gbWlwczY0LXh4eC1l
bGYNCmNoZWNraW5nIHRhcmdldCBzeXN0ZW0gdHlwZS4uLiBtaXBzNjQteHh4LWVsZg0KY2hlY2tp
bmcgZm9yIGEgQlNELWNvbXBhdGlibGUgaW5zdGFsbC4uLiAvdXNyL2Jpbi9pbnN0YWxsIC1jDQpj
aGVja2luZyB3aGV0aGVyIGJ1aWxkIGVudmlyb25tZW50IGlzIHNhbmUuLi4geWVzDQpjaGVja2lu
ZyBmb3IgbWlwczY0LXh4eC1lbGYtc3RyaXAuLi4gL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxk
RUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vc3RyaXANCmNoZWNr
aW5nIGZvciBhIHRocmVhZC1zYWZlIG1rZGlyIC1wLi4uIC9iaW4vbWtkaXIgLXANCmNoZWNraW5n
IGZvciBnYXdrLi4uIGdhd2sNCmNoZWNraW5nIHdoZXRoZXIgbWFrZSAgc2V0cyAkKE1BS0UpLi4u
IHllcw0KY2hlY2tpbmcgZm9yIG1pcHM2NC14eHgtZWxmLWdjYy4uLiAvaG9tZS9taWNrZXkvRG93
bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIvaG9tZS9taWNrZXkvRG93
bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL21pY2tleS9Eb3dubG9h
ZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluLyAtQi9o
b21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0
LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9p
bnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVkZSAtaXN5c3RlbSAvaG9t
ZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14
eHgtZWxmL3N5cy1pbmNsdWRlDQpjaGVja2luZyBmb3Igc3VmZml4IG9mIG9iamVjdCBmaWxlcy4u
LiBvDQpjaGVja2luZyB3aGV0aGVyIHdlIGFyZSB1c2luZyB0aGUgR05VIEMgY29tcGlsZXIuLi4g
eWVzDQpjaGVja2luZyB3aGV0aGVyIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmov
Z2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmov
Z2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwv
bWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2Fk
L0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlz
eXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2Vs
Zi9taXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9C
dWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUg
ICAgYWNjZXB0cyAtZy4uLiB5ZXMNCmNoZWNraW5nIGZvciAvaG9tZS9taWNrZXkvRG93bmxvYWQv
QnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIvaG9tZS9taWNrZXkvRG93bmxvYWQv
QnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWls
ZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluLyAtQi9ob21lL21p
Y2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1l
bGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxs
L21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVkZSAtaXN5c3RlbSAvaG9tZS9taWNr
ZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxm
L3N5cy1pbmNsdWRlICAgIG9wdGlvbiB0byBhY2NlcHQgSVNPIEM4OS4uLiB1bnN1cHBvcnRlZA0K
Y2hlY2tpbmcgd2hldGhlciB3ZSBhcmUgdXNpbmcgdGhlIEdOVSBDKysgY29tcGlsZXIuLi4geWVz
DQpjaGVja2luZyB3aGV0aGVyIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2Nj
Ml9lbGYvLi9nY2MveGdjYyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2Nj
Ml9lbGYvLi9nY2MvIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlw
c2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1
aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0
ZW0gL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9t
aXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWls
ZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAg
YWNjZXB0cyAtZy4uLiB5ZXMNCmNoZWNraW5nIGhvdyB0byBydW4gdGhlIEMgcHJlcHJvY2Vzc29y
Li4uIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdj
YyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1C
L2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBz
NjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwv
bWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbWlja2V5
L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9p
bmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21p
cHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgLUUNCmNoZWNraW5nIGZv
ciBncmVwIHRoYXQgaGFuZGxlcyBsb25nIGxpbmVzIGFuZCAtZS4uLiAvYmluL2dyZXANCmNoZWNr
aW5nIGZvciBlZ3JlcC4uLiAvYmluL2dyZXAgLUUNCmNoZWNraW5nIHdoZXRoZXIgbG4gLXMgd29y
a3MuLi4geWVzDQpjaGVja2luZyBmb3IgbWlwczY0LXh4eC1lbGYtYXMuLi4gL2hvbWUvbWlja2V5
L0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy9hcw0KY2hlY2tpbmcgZm9yIG1p
cHM2NC14eHgtZWxmLWFyLi4uIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxs
L21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluL2FyDQpjaGVja2luZyBmb3IgbWlwczY0
LXh4eC1lbGYtcmFubGliLi4uIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxs
L21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluL3JhbmxpYg0KY2hlY2tpbmcgd2hldGhl
ciB0byBlbmFibGUgbWFpbnRhaW5lci1zcGVjaWZpYyBwb3J0aW9ucyBvZiBNYWtlZmlsZXMuLi4g
bm8NCmNvbmZpZ3VyZTogQ1BVIGNvbmZpZyBkaXJlY3RvcnkgaXMgY3B1L21pcHMNCmNvbmZpZ3Vy
ZTogT1MgY29uZmlnIGRpcmVjdG9yeSBpcyBvcy9nZW5lcmljDQpjaGVja2luZyBob3cgdG8gcHJp
bnQgc3RyaW5ncy4uLiBwcmludGYNCmNoZWNraW5nIGZvciBhIHNlZCB0aGF0IGRvZXMgbm90IHRy
dW5jYXRlIG91dHB1dC4uLiAvYmluL3NlZA0KY2hlY2tpbmcgZm9yIGZncmVwLi4uIC9iaW4vZ3Jl
cCAtRg0KY2hlY2tpbmcgZm9yIGxkIHVzZWQgYnkgL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxk
RUxGL29iai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxk
RUxGL29iai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYv
aW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9taWNrZXkv
RG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xp
YjMyLyAtaXN5c3RlbSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBz
Y3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rv
d25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMt
aW5jbHVkZSAgIC4uLiAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxm
Ly4vZ2NjL2NvbGxlY3QtbGQNCmNoZWNraW5nIGlmIHRoZSBsaW5rZXIgKC9ob21lL21pY2tleS9E
b3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvY29sbGVjdC1sZCkgaXMgR05VIGxk
Li4uIHllcw0KY2hlY2tpbmcgZm9yIEJTRC0gb3IgTVMtY29tcGF0aWJsZSBuYW1lIGxpc3RlciAo
bm0pLi4uIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2Mv
bm0NCmNoZWNraW5nIHRoZSBuYW1lIGxpc3RlciAoL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxk
RUxGL29iai9nY2MyX2VsZi8uL2djYy9ubSkgaW50ZXJmYWNlLi4uIEJTRCBubQ0KY2hlY2tpbmcg
dGhlIG1heGltdW0gbGVuZ3RoIG9mIGNvbW1hbmQgbGluZSBhcmd1bWVudHMuLi4gOTgzMDQNCmNo
ZWNraW5nIHdoZXRoZXIgdGhlIHNoZWxsIHVuZGVyc3RhbmRzIHNvbWUgWFNJIGNvbnN0cnVjdHMu
Li4geWVzDQpjaGVja2luZyB3aGV0aGVyIHRoZSBzaGVsbCB1bmRlcnN0YW5kcyAiKz0iLi4uIHll
cw0KY2hlY2tpbmcgZm9yIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9l
bGYvLi9nY2MvY29sbGVjdC1sZCBvcHRpb24gdG8gcmVsb2FkIG9iamVjdCBmaWxlcy4uLiAtcg0K
Y2hlY2tpbmcgZm9yIG1pcHM2NC14eHgtZWxmLW9iamR1bXAuLi4gL2hvbWUvbWlja2V5L0Rvd25s
b2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vb2Jq
ZHVtcA0KY2hlY2tpbmcgaG93IHRvIHJlY29nbml6ZSBkZXBlbmRlbnQgbGlicmFyaWVzLi4uIHVu
a25vd24NCmNoZWNraW5nIGZvciBtaXBzNjQteHh4LWVsZi1hci4uLiAoY2FjaGVkKSAvaG9tZS9t
aWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgt
ZWxmL2Jpbi9hcg0KY2hlY2tpbmcgZm9yIG1pcHM2NC14eHgtZWxmLXN0cmlwLi4uIChjYWNoZWQp
IC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlw
czY0LXh4eC1lbGYvYmluL3N0cmlwDQpjaGVja2luZyBmb3IgbWlwczY0LXh4eC1lbGYtcmFubGli
Li4uIChjYWNoZWQpIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNj
cm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluL3JhbmxpYg0KY2hlY2tpbmcgY29tbWFuZCB0byBw
YXJzZSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL25t
IG91dHB1dCBmcm9tIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYv
Li9nY2MveGdjYyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYv
Li9nY2MvIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3Nz
L2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxG
L2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hv
bWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQt
eHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9p
bnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgb2JqZWN0
Li4uIGZhaWxlZA0KY2hlY2tpbmcgZm9yIEFOU0kgQyBoZWFkZXIgZmlsZXMuLi4gbm8NCmNoZWNr
aW5nIGZvciBzeXMvdHlwZXMuaC4uLiBubw0KY2hlY2tpbmcgZm9yIHN5cy9zdGF0LmguLi4gbm8N
CmNoZWNraW5nIGZvciBzdGRsaWIuaC4uLiBubw0KY2hlY2tpbmcgZm9yIHN0cmluZy5oLi4uIG5v
DQpjaGVja2luZyBmb3IgbWVtb3J5LmguLi4gbm8NCmNoZWNraW5nIGZvciBzdHJpbmdzLmguLi4g
bm8NCmNoZWNraW5nIGZvciBpbnR0eXBlcy5oLi4uIG5vDQpjaGVja2luZyBmb3Igc3RkaW50Lmgu
Li4gbm8NCmNoZWNraW5nIGZvciB1bmlzdGQuaC4uLiBubw0KY2hlY2tpbmcgZm9yIGRsZmNuLmgu
Li4gbm8NCmNoZWNraW5nIGZvciBvYmpkaXIuLi4gLmxpYnMNCmNoZWNraW5nIGlmIC9ob21lL21p
Y2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL21p
Y2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUvbWlja2V5
L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9i
aW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2Vs
Zi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1
aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lz
dGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYv
bWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgc3VwcG9ydHMgLWZuby1ydHRpIC1mbm8tZXhj
ZXB0aW9ucy4uLiBubw0KY2hlY2tpbmcgZm9yIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVM
Ri9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVM
Ri9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2lu
c3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rv
d25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIz
Mi8gLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Ny
b3NzL2VsZi9taXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3du
bG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWlu
Y2x1ZGUgICAgb3B0aW9uIHRvIHByb2R1Y2UgUElDLi4uIC1mUElDIC1EUElDDQpjaGVja2luZyBp
ZiAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2Mg
LUIvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9o
b21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0
LXh4eC1lbGYvYmluLyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21p
cHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL21pY2tleS9E
b3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5j
bHVkZSAtaXN5c3RlbSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBz
Y3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgIFBJQyBmbGFnIC1mUElDIC1E
UElDIHdvcmtzLi4uIHllcw0KY2hlY2tpbmcgaWYgL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxk
RUxGL29iai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxk
RUxGL29iai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYv
aW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9taWNrZXkv
RG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xp
YjMyLyAtaXN5c3RlbSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBz
Y3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rv
d25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMt
aW5jbHVkZSAgICBzdGF0aWMgZmxhZyAtc3RhdGljIHdvcmtzLi4uIG5vDQpjaGVja2luZyBpZiAv
aG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIv
aG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21l
L21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4
eC1lbGYvYmluLyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNj
cm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3du
bG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVk
ZSAtaXN5c3RlbSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jv
c3MvZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgIHN1cHBvcnRzIC1jIC1vIGZpbGUu
by4uLiB5ZXMNCmNoZWNraW5nIGlmIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmov
Z2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmov
Z2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwv
bWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2Fk
L0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlz
eXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2Vs
Zi9taXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9C
dWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUg
ICAgc3VwcG9ydHMgLWMgLW8gZmlsZS5vLi4uIChjYWNoZWQpIHllcw0KY2hlY2tpbmcgd2hldGhl
ciB0aGUgL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy94
Z2NjIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy8g
LUIvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21p
cHM2NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFs
bC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xpYjMyLyAtaXN5c3RlbSAvaG9tZS9taWNr
ZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxm
L2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwv
bWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMtaW5jbHVkZSAgICBsaW5rZXIgKC9ob21l
L21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvY29sbGVjdC1sZCkg
c3VwcG9ydHMgc2hhcmVkIGxpYnJhcmllcy4uLiB5ZXMNCmNoZWNraW5nIGR5bmFtaWMgbGlua2Vy
IGNoYXJhY3RlcmlzdGljcy4uLiBubw0KY2hlY2tpbmcgaG93IHRvIGhhcmRjb2RlIGxpYnJhcnkg
cGF0aHMgaW50byBwcm9ncmFtcy4uLiBpbW1lZGlhdGUNCmNoZWNraW5nIHdoZXRoZXIgc3RyaXBw
aW5nIGxpYnJhcmllcyBpcyBwb3NzaWJsZS4uLiB5ZXMNCmNoZWNraW5nIGlmIGxpYnRvb2wgc3Vw
cG9ydHMgc2hhcmVkIGxpYnJhcmllcy4uLiBubw0KY2hlY2tpbmcgd2hldGhlciB0byBidWlsZCBz
aGFyZWQgbGlicmFyaWVzLi4uIG5vDQpjaGVja2luZyB3aGV0aGVyIHRvIGJ1aWxkIHN0YXRpYyBs
aWJyYXJpZXMuLi4geWVzDQpjaGVja2luZyBob3cgdG8gcnVuIHRoZSBDKysgcHJlcHJvY2Vzc29y
Li4uIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdj
YyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1C
L2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBz
NjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwv
bWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbWlja2V5
L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9p
bmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21p
cHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgLUUNCmNoZWNraW5nIGZv
ciBsZCB1c2VkIGJ5IC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYv
Li9nY2MveGdjYyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYv
Li9nY2MvIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3Nz
L2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxG
L2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hv
bWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQt
eHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9p
bnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAuLi4gL2hv
bWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy9jb2xsZWN0LWxk
DQpjaGVja2luZyBpZiB0aGUgbGlua2VyICgvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYv
b2JqL2djYzJfZWxmLy4vZ2NjL2NvbGxlY3QtbGQpIGlzIEdOVSBsZC4uLiB5ZXMNCmNoZWNraW5n
IHdoZXRoZXIgdGhlIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYv
Li9nY2MveGdjYyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYv
Li9nY2MvIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3Nz
L2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxG
L2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hv
bWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQt
eHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9p
bnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgbGlua2Vy
ICgvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL2NvbGxl
Y3QtbGQpIHN1cHBvcnRzIHNoYXJlZCBsaWJyYXJpZXMuLi4gbm8NCmNoZWNraW5nIGZvciAvaG9t
ZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIvaG9t
ZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL21p
Y2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1l
bGYvYmluLyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9z
cy9lbGYvbWlwczY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9h
ZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVkZSAt
aXN5c3RlbSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3Mv
ZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgIG9wdGlvbiB0byBwcm9kdWNlIFBJQy4u
LiAtZlBJQyAtRFBJQw0KY2hlY2tpbmcgaWYgL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxG
L29iai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxG
L29iai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5z
dGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9taWNrZXkvRG93
bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xpYjMy
LyAtaXN5c3RlbSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jv
c3MvZWxmL21pcHM2NC14eHgtZWxmL2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25s
b2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMtaW5j
bHVkZSAgICBQSUMgZmxhZyAtZlBJQyAtRFBJQyB3b3Jrcy4uLiB5ZXMNCmNoZWNraW5nIGlmIC9o
b21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9o
b21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUv
bWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4
LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Ny
b3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25s
b2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9pbmNsdWRl
IC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9z
cy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgc3RhdGljIGZsYWcgLXN0YXRpYyB3
b3Jrcy4uLiBubw0KY2hlY2tpbmcgaWYgL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL29i
ai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL29i
ai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFs
bC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9taWNrZXkvRG93bmxv
YWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xpYjMyLyAt
aXN5c3RlbSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3Mv
ZWxmL21pcHM2NC14eHgtZWxmL2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25sb2Fk
L0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMtaW5jbHVk
ZSAgICBzdXBwb3J0cyAtYyAtbyBmaWxlLm8uLi4geWVzDQpjaGVja2luZyBpZiAvaG9tZS9taWNr
ZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIvaG9tZS9taWNr
ZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL21pY2tleS9E
b3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmlu
LyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYv
bWlwczY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWls
ZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVkZSAtaXN5c3Rl
bSAvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21p
cHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgIHN1cHBvcnRzIC1jIC1vIGZpbGUuby4uLiAoY2Fj
aGVkKSB5ZXMNCmNoZWNraW5nIHdoZXRoZXIgdGhlIC9ob21lL21pY2tleS9Eb3dubG9hZC9CdWls
ZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL21pY2tleS9Eb3dubG9hZC9CdWls
ZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxG
L2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbWlja2V5
L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9s
aWIzMi8gLWlzeXN0ZW0gL2hvbWUvbWlja2V5L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlw
c2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL21pY2tleS9E
b3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lz
LWluY2x1ZGUgICAgbGlua2VyICgvaG9tZS9taWNrZXkvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2dj
YzJfZWxmLy4vZ2NjL2NvbGxlY3QtbGQpIHN1cHBvcnRzIHNoYXJlZCBsaWJyYXJpZXMuLi4gbm8N
CmNoZWNraW5nIGR5bmFtaWMgbGlua2VyIGNoYXJhY3RlcmlzdGljcy4uLiBubw0KY2hlY2tpbmcg
aG93IHRvIGhhcmRjb2RlIGxpYnJhcnkgcGF0aHMgaW50byBwcm9ncmFtcy4uLiBpbW1lZGlhdGUN
CmNoZWNraW5nIGZvciBleGNlcHRpb24gbW9kZWwgdG8gdXNlLi4uIGNhbGwgZnJhbWUNCmNoZWNr
aW5nIGZvciBlbmFibGVkIFBDSC4uLiBubw0KY2hlY2tpbmcgZm9yIHRocmVhZCBtb2RlbCB1c2Vk
IGJ5IEdDQy4uLiBzaW5nbGUNCmNoZWNraW5nIGZvciBhdG9taWMgYnVpbHRpbnMgZm9yIGJvb2wu
Li4geWVzDQpjaGVja2luZyBmb3IgYXRvbWljIGJ1aWx0aW5zIGZvciBzaG9ydC4uLiB5ZXMNCmNo
ZWNraW5nIGZvciBhdG9taWMgYnVpbHRpbnMgZm9yIGludC4uLiB5ZXMNCmNoZWNraW5nIGZvciBh
dG9taWMgYnVpbHRpbnMgZm9yIGxvbmcgbG9uZy4uLiBubw0KY2hlY2tpbmcgZm9yIElTTy9JRUMg
VFIgMjQ3MzMgLi4uIG5vDQpjaGVja2luZyBmb3IgZysrIHRoYXQgc3VwcG9ydHMgLWZmdW5jdGlv
bi1zZWN0aW9ucyAtZmRhdGEtc2VjdGlvbnMuLi4geWVzDQpjaGVja2luZyBmb3IgdW5kZXJseWlu
ZyBJL08gdG8gdXNlLi4uIHN0ZGlvDQpjaGVja2luZyBmb3IgQyBsb2NhbGUgdG8gdXNlLi4uIGdl
bmVyaWMNCmNoZWNraW5nIGZvciBzdGQ6OmFsbG9jYXRvciBiYXNlIGNsYXNzLi4uIG5ldw0KY29u
ZmlndXJlOiAiQyIgaGVhZGVyIHN0cmF0ZWd5IHNldCB0byBjX2dsb2JhbA0KY2hlY2tpbmcgZm9y
IGVuYWJsZWQgbG9uZyBsb25nIHNwZWNpYWxpemF0aW9ucy4uLiB5ZXMNCmNoZWNraW5nIHdjaGFy
LmggdXNhYmlsaXR5Li4uIG5vDQpjaGVja2luZyB3Y2hhci5oIHByZXNlbmNlLi4uIG5vDQpjaGVj
a2luZyBmb3Igd2NoYXIuaC4uLiBubw0KY2hlY2tpbmcgZm9yIG1ic3RhdGVfdC4uLiBubw0KY2hl
Y2tpbmcgd2N0eXBlLmggdXNhYmlsaXR5Li4uIG5vDQpjaGVja2luZyB3Y3R5cGUuaCBwcmVzZW5j
ZS4uLiBubw0KY2hlY2tpbmcgZm9yIHdjdHlwZS5oLi4uIG5vDQpjaGVja2luZyBmb3IgZW5hYmxl
ZCB3Y2hhcl90IHNwZWNpYWxpemF0aW9ucy4uLiBubw0KY2hlY2tpbmcgZm9yIElTTyBDOTkgc3Vw
cG9ydCBpbiA8bWF0aC5oPi4uLiBubw0KY2hlY2tpbmcgdGdtYXRoLmggdXNhYmlsaXR5Li4uIG5v
DQpjaGVja2luZyB0Z21hdGguaCBwcmVzZW5jZS4uLiBubw0KY2hlY2tpbmcgZm9yIHRnbWF0aC5o
Li4uIG5vDQpjaGVja2luZyBjb21wbGV4LmggdXNhYmlsaXR5Li4uIG5vDQpjaGVja2luZyBjb21w
bGV4LmggcHJlc2VuY2UuLi4gbm8NCmNoZWNraW5nIGZvciBjb21wbGV4LmguLi4gbm8NCm5vDQpj
aGVja2luZyBmb3IgSVNPIEM5OSBzdXBwb3J0IGluIDxzdGRpby5oPi4uLiBubw0KY2hlY2tpbmcg
Zm9yIElTTyBDOTkgc3VwcG9ydCBpbiA8c3RkbGliLmg+Li4uIG5vDQpjaGVja2luZyBmb3IgZnVs
bHkgZW5hYmxlZCBJU08gQzk5IHN1cHBvcnQuLi4gbm8NCmNvbmZpZ3VyZTogRGVidWcgYnVpbGQg
ZmxhZ3Mgc2V0IHRvIC1nMyAtTzANCmNoZWNraW5nIGZvciBhZGRpdGlvbmFsIGRlYnVnIGJ1aWxk
Li4uIG5vDQpjb25maWd1cmU6IHRhcmdldC1saWJnb21wIG5vdCBidWlsdA0KY2hlY2tpbmcgZm9y
IHBhcmFsbGVsIG1vZGUgc3VwcG9ydC4uLiBubw0KY2hlY2tpbmcgZm9yIGV4dHJhIGNvbXBpbGVy
IGZsYWdzIGZvciBidWlsZGluZy4uLiAtRzAgLW1uby1ncG9wdA0KY2hlY2tpbmcgZm9yIGV4dGVy
biB0ZW1wbGF0ZSBzdXBwb3J0Li4uIHllcw0KY2hlY2tpbmcgZm9yIEVPV05FUkRFQUQuLi4gbm8N
CmNoZWNraW5nIGZvciBFTk9UUkVDT1ZFUkFCTEUuLi4gbm8NCmNoZWNraW5nIGZvciBFTk9MSU5L
Li4uIG5vDQpjaGVja2luZyBmb3IgRVBST1RPLi4uIG5vDQpjaGVja2luZyBmb3IgRU5PREFUQS4u
LiBubw0KY2hlY2tpbmcgZm9yIEVOT1NSLi4uIG5vDQpjaGVja2luZyBmb3IgRU5PU1RSLi4uIG5v
DQpjaGVja2luZyBmb3IgRVRJTUUuLi4gbm8NCmNoZWNraW5nIGZvciBFQkFETVNHLi4uIG5vDQpj
aGVja2luZyBmb3IgRUNBTkNFTEVELi4uIG5vDQpjaGVja2luZyBmb3IgRU9WRVJGTE9XLi4uIG5v
DQpjaGVja2luZyBmb3IgRU5PVFNVUC4uLiBubw0KY2hlY2tpbmcgZm9yIEVJRFJNLi4uIG5vDQpj
aGVja2luZyBmb3IgRVRYVEJTWS4uLiBubw0KY2hlY2tpbmcgZm9yIGludDY0X3QuLi4gY2hlY2tp
bmcgZm9yIExGUyBzdXBwb3J0Li4uIG5vDQpjaGVja2luZyBzeXMvaW9jdGwuaCB1c2FiaWxpdHku
Li4gbm8NCmNoZWNraW5nIHN5cy9pb2N0bC5oIHByZXNlbmNlLi4uIG5vDQpjaGVja2luZyBmb3Ig
c3lzL2lvY3RsLmguLi4gbm8NCmNoZWNraW5nIHN5cy9maWxpby5oIHVzYWJpbGl0eS4uLiBubw0K
Y2hlY2tpbmcgc3lzL2ZpbGlvLmggcHJlc2VuY2UuLi4gbm8NCmNoZWNraW5nIGZvciBzeXMvZmls
aW8uaC4uLiBubw0KY2hlY2tpbmcgZm9yIHBvbGwuLi4gbm8NCmNoZWNraW5nIGZvciBTX0lTUkVH
IG9yIFNfSUZSRUcuLi4gbm8NCmNoZWNraW5nIHN5cy91aW8uaCB1c2FiaWxpdHkuLi4gbm8NCmNo
ZWNraW5nIHN5cy91aW8uaCBwcmVzZW5jZS4uLiBubw0KY2hlY2tpbmcgZm9yIHN5cy91aW8uaC4u
LiBubw0KY2hlY2tpbmcgZm9yIHdyaXRldi4uLiBubw0KY2hlY2tpbmcgZm9yIGNvbXBsZXguaC4u
LiAoY2FjaGVkKSBubw0Kbm8NCmNoZWNraW5nIGZvciBJU08gQzk5IHN1cHBvcnQgdG8gVFIxIGlu
IDxjdHlwZS5oPi4uLiBubw0KY2hlY2tpbmcgZmVudi5oIHVzYWJpbGl0eS4uLiBubw0KY2hlY2tp
bmcgZmVudi5oIHByZXNlbmNlLi4uIG5vDQpjaGVja2luZyBmb3IgZmVudi5oLi4uIG5vDQpubw0K
Y2hlY2tpbmcgZm9yIElTTyBDOTkgc3VwcG9ydCB0byBUUjEgaW4gPHN0ZGludC5oPi4uLiBubw0K
Y2hlY2tpbmcgZm9yIElTTyBDOTkgc3VwcG9ydCB0byBUUjEgaW4gPG1hdGguaD4uLi4gbm8NCm5v
DQpubw0KY2hlY2tpbmcgc3RkYm9vbC5oIHVzYWJpbGl0eS4uLiBubw0KY2hlY2tpbmcgc3RkYm9v
bC5oIHByZXNlbmNlLi4uIHllcw0KY29uZmlndXJlOiBXQVJOSU5HOiBzdGRib29sLmg6IHByZXNl
bnQgYnV0IGNhbm5vdCBiZSBjb21waWxlZA0KY29uZmlndXJlOiBXQVJOSU5HOiBzdGRib29sLmg6
ICAgICBjaGVjayBmb3IgbWlzc2luZyBwcmVyZXF1aXNpdGUgaGVhZGVycz8NCmNvbmZpZ3VyZTog
V0FSTklORzogc3RkYm9vbC5oOiBzZWUgdGhlIEF1dG9jb25mIGRvY3VtZW50YXRpb24NCmNvbmZp
Z3VyZTogV0FSTklORzogc3RkYm9vbC5oOiAgICAgc2VjdGlvbiAiUHJlc2VudCBCdXQgQ2Fubm90
IEJlIENvbXBpbGVkIg0KY29uZmlndXJlOiBXQVJOSU5HOiBzdGRib29sLmg6IHByb2NlZWRpbmcg
d2l0aCB0aGUgY29tcGlsZXIncyByZXN1bHQNCmNoZWNraW5nIGZvciBzdGRib29sLmguLi4gbm8N
CmNoZWNraW5nIGZvciB0aGUgdmFsdWUgb2YgRU9GLi4uIGNvbmZpZ3VyZTogZXJyb3I6IGNvbXB1
dGluZyBFT0YgZmFpbGVkDQptYWtlWzFdOiAqKiogW2NvbmZpZ3VyZS10YXJnZXQtbGlic3RkYysr
LXYzXSBFcnJvciAxDQptYWtlWzFdOiBMZWF2aW5nIGRpcmVjdG9yeSBgL2hvbWUvbWlja2V5L0Rv
d25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZicNCg0K

--_004_17797116383D4341B029FDF34C22BF6A72FF339980GUREXMB01ASIA_--
