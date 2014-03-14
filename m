Return-Path: <ankur@embertec.com>
Received: from mail.embertec.com (mail.embertec.com [119.18.44.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EF15E009D1
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 23:01:51 -0700 (PDT)
Received: from mail.embertec.com by embertec.com (mail.embertec.com)
	(SecurityGateway 2.0.6) with SMTP id SG000725049.MSG 
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 16:30:56 +1030
Received: from EMBSVR01.ember.local ([fe80::b1f0:778b:4c9c:36f7]) by
	EMBSVR01.ember.local ([fe80::b1f0:778b:4c9c:36f7%18]) with mapi;
	Fri, 14 Mar 2014 16:30:49 +1030
From: Ankur Patel <ankur@embertec.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 14 Mar 2014 16:30:48 +1030
Thread-Topic: Issue installing External Kernel Module with same name
Thread-Index: Ac8/Rk2xgbjJKyfpR2eM3SvXAhfl7A==
Message-ID: <BD5E516FF3711A41B93DC005170007BB010D4B870A88@EMBSVR01.ember.local>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=mail.embertec.com (ip=192.168.14.10)
X-Mailman-Approved-At: Fri, 14 Mar 2014 09:06:26 -0700
Subject: Issue installing External Kernel Module with same name
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
X-List-Received-Date: Fri, 14 Mar 2014 06:01:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BD5E516FF3711A41B93DC005170007BB010D4B870A88EMBSVR01emb_"

--_000_BD5E516FF3711A41B93DC005170007BB010D4B870A88EMBSVR01emb_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Friends,

I am using Poky version of Yocto for building images for imx28 evk.

I have to included the receipe which builds the TI Comapt Wifi Driver as Ex=
ternal Module and adds itself to the core-minimal-image.

Below line is used under the layer.conf file to add TI WiFi Driver to rootf=
s:

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "ti-compat-wireless-wl18xx"

Now the problem is, as kernel also builds the wifi driver modules based on =
the same .config file used by external driver module. This generates two di=
fferent rpm images for same wifi driver at tmp/deploy/rpm/imx28evk director=
y as below:

test@test-VirtualBox:~/mx28_repo/mx28_build/tmp/deploy/rpm/imx28evk$ ls ker=
nel-module-wl18xx-*
kernel-module-wl18xx-3.10.32+git-r0.imx28evk.rpm
kernel-module-wl18xx-r8.a8.08-0b.imx28evk.rpm

The Final rootfs contains the .ko files from "kernel-module-wl18xx-3.10.32+=
git-r0.imx28evk.rpm
" RPM instead of "kernel-module-wl18xx-r8.a8.08-0b.imx28evk.rpm".

Is there any way to modify the linux receipe not create RPMs for specific m=
odules? Or Install specific kernel module with version as r8.a8.08-0b for w=
l18xx?

Please feel free to share if you need further information.

Thank you,
Ankur

--_000_BD5E516FF3711A41B93DC005170007BB010D4B870A88EMBSVR01emb_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 15 (filtered medium)"><style><!--
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-AU link=3D"#0563C1=
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal>Hello Fr=
iends,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DM=
soNormal>I am using Poky version of Yocto for building images for imx28 evk=
. <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNo=
rmal>I have to included the receipe which builds the TI Comapt Wifi Driver =
as External Module and adds itself to the core-minimal-image.<o:p></o:p></p=
><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Below line =
is used under the layer.conf file to add TI WiFi Driver to rootfs:<o:p></o:=
p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b>MAC=
HINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D &quot;ti-compat-wireless-wl18xx&quot;=
<o:p></o:p></b></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMso=
Normal>Now the problem is, as kernel also builds the wifi driver modules ba=
sed on the same .config file used by external driver module. This generates=
 two different rpm images for same wifi driver at tmp/deploy/rpm/imx28evk d=
irectory as below:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p>=
<p class=3DMsoNormal><b>test@test-VirtualBox:~/mx28_repo/mx28_build/tmp/dep=
loy/rpm/imx28evk$</b> ls kernel-module-wl18xx-*<o:p></o:p></p><p class=3DMs=
oNormal>kernel-module-wl18xx-<b>3.10.32+git-r0</b>.imx28evk.rpm&nbsp; <o:p>=
</o:p></p><p class=3DMsoNormal>kernel-module-wl18xx-<b>r8.a8.08-0b</b>.imx2=
8evk.rpm<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>The Final rootfs contains the .ko files from &#8220;kernel-mod=
ule-wl18xx-3.10.32+git-r0.imx28evk.rpm&nbsp; <o:p></o:p></p><p class=3DMsoN=
ormal>&#8220; RPM instead of &#8220;kernel-module-wl18xx-r8.a8.08-0b.imx28e=
vk.rpm&#8221;.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p c=
lass=3DMsoNormal>Is there any way to modify the linux receipe not create RP=
Ms for specific modules? Or Install specific kernel module with version as =
<b>r8.a8.08-0b for wl18xx?<o:p></o:p></b></p><p class=3DMsoNormal><b><o:p>&=
nbsp;</o:p></b></p><p class=3DMsoNormal>Please feel free to share if you ne=
ed further information.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal>Thank you,<o:p></o:p></p><p class=3DMsoNormal>Ank=
ur<o:p></o:p></p></div></body></html>=

--_000_BD5E516FF3711A41B93DC005170007BB010D4B870A88EMBSVR01emb_--
