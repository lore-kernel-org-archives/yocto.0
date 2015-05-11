Return-Path: <martin.beaudet@intelia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2193EE00961; Mon, 11 May 2015 10:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp-out-2.satelmail.com (smtp-out-2.satelcom.qc.ca
	[208.77.80.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3653EE004F6
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 10:12:36 -0700 (PDT)
Received: from mta-1.satelcom.qc.ca (mta-1.satelcom.qc.ca [172.16.16.49])
	by smtp-out-2.satelmail.com (Postfix) with ESMTP id BD4B941F65
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 13:12:35 -0400 (EDT)
Received: from assp-db2.satelcom.qc.ca (unknown [172.16.16.118])
	by mta-1.satelcom.qc.ca (Postfix) with ESMTPS id B4B8641F85
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 13:12:35 -0400 (EDT)
Received: from smtp-1.satelcom.qc.ca (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by assp-db2.satelcom.qc.ca (Postfix) with ESMTPS id 64B18379C0
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 13:12:35 -0400 (EDT)
Received: from smtp-1.satelcom.qc.ca ([172.16.16.54]
	helo=smtp-1.satelcom.qc.ca)
	by assp-db.satelcom.qc.ca with SMTP (2.4.3); 11 May 2015 13:12:35 -0400
Received: from remote.intelia.com (unknown [204.80.6.198])
	by smtp-1.satelcom.qc.ca (Postfix) with ESMTPS id 2488541E40
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 13:12:35 -0400 (EDT)
Received: from CT-SERVEUR.ctaq.local ([fe80::7895:8268:18d2:9278]) by
	CT-SERVEUR.ctaq.local ([fe80::7895:8268:18d2:9278%10]) with mapi;
	Mon, 11 May 2015 13:12:34 -0400
From: Martin Beaudet <martin.beaudet@intelia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 11 May 2015 13:12:31 -0400
Thread-Topic: QT5 - Beaglebone Black (meta-toolchain-qt5) error
Thread-Index: AdCMDWbR6rdY0l5BSVatYfZuMI9yDQ==
Message-ID: <muid.8573ca2507.00FFF1D896D3FF4482179DF8C27DEFAFA38C360AD2@CT-SERVEUR.ctaq.local>
Accept-Language: fr-FR, fr-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: fr-FR, fr-CA
MIME-Version: 1.0
X-Assp-Version: 2.4.3(15075) on assp-db.satelcom.qc.ca
X-Assp-ID: assp-db.satelcom.qc.ca a119-64355-11618
X-Assp-Session: 1291F204 (mail 1)
X-Assp-Envelope-From: martin.beaudet@intelia.com
X-Assp-Intended-For: yocto@yoctoproject.org
X-Assp-Server-TLS: yes
Subject: QT5 - Beaglebone Black (meta-toolchain-qt5) error
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
X-List-Received-Date: Mon, 11 May 2015 17:12:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_00FFF1D896D3FF4482179DF8C27DEFAFA38C360AD2CTSERVEURctaq_"

--_000_00FFF1D896D3FF4482179DF8C27DEFAFA38C360AD2CTSERVEURctaq_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to build the meta-toolchain-qt5 for Beaglebone Black (daisy) and=
 I'm getting and error.

Build Configuration:
BB_VERSION =3D "1.22.0"
BUILD_SYS =3D "x86_64-linux"
NATIVELSBSTRING =3D "Ubuntu-14.10"
TARGET_SYS =3D "arm-poky-linux-gnueabi"
MACHINE =3D "beaglebone"
DISTRO =3D "poky"
DISTRO_VERSION =3D "1.6.2"
TUNE_FEATURES =3D "armv7a vfp thumb neon callconvention-hard cortexa8"
TARGET_FPU =3D "vfp-neon"
meta
meta-yocto =3D "daisy:02e603e48c6e0b0492f596890adadf6590fa692c"
meta-oe =3D "daisy:d3d14d3fcca7fcde362cf0b31411dc4eea6d20aa"
meta-ti =3D "daisy:3a95559c124d3ce8c076b3fae5859435977d1ac2"
meta-qt5 =3D "master:87235825459d376bf4537c9523eb2496e15893aa"
meta-embarcados
meta-bbb =3D "daisy:9bd79b23a50e407a990a6b00724470c4cbedb71b"

I use this command to build the SDK : bitbake meta-toolchain-qt5


Here is the error :
------------------------------------------------------------
Collected errors:
* check_data_file_clashes: Package libgles-omap3 wants to install file /hom=
e/xxx/Sonar/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnuea=
bi/meta-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.6.2/sysroots/cortexa8t2hf=
-vfp-neon-poky-linux-gnueabi/usr/lib/libGLESv2.so<http://libglesv2.so/>
But that file is already provided by package * libgles2-mesa-dev
* opkg_install_cmd: Cannot install package packagegroup-qt5-toolchain-targe=
t.
------------------------------------------------------------


How can I correct this ? I presume I have to use the PREFERED_PROVIDER or s=
omething like this but I did not succeed yet.

--_000_00FFF1D896D3FF4482179DF8C27DEFAFA38C360AD2CTSERVEURctaq_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR-CA link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&n=
bsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I'm trying to =
build the meta-toolchain-qt5 for Beaglebone Black (daisy) and I'm getting a=
nd error.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Build Confi=
guration:<br>BB_VERSION =3D &quot;1.22.0&quot;<br>BUILD_SYS =3D &quot;x86_6=
4-linux&quot;<br>NATIVELSBSTRING =3D &quot;Ubuntu-14.10&quot;<br>TARGET_SYS=
 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE =3D &quot;beaglebone&quo=
t;<br>DISTRO =3D &quot;poky&quot;<br>DISTRO_VERSION =3D &quot;1.6.2&quot;<b=
r>TUNE_FEATURES =3D &quot;armv7a vfp thumb neon callconvention-hard cortexa=
8&quot;<br>TARGET_FPU =3D &quot;vfp-neon&quot;<br>meta&nbsp;<br>meta-yocto =
=3D &quot;daisy:02e603e48c6e0b0492f596890adadf6590fa692c&quot;<br>meta-oe =
=3D &quot;daisy:d3d14d3fcca7fcde362cf0b31411dc4eea6d20aa&quot;<br>meta-ti =
=3D &quot;daisy:3a95559c124d3ce8c076b3fae5859435977d1ac2&quot;<br>meta-qt5 =
=3D &quot;master:87235825459d376bf4537c9523eb2496e15893aa&quot;<br>meta-emb=
arcados&nbsp;<br>meta-bbb =3D &quot;daisy:9bd79b23a50e407a990a6b00724470c4c=
bedb71b&quot;<o:p></o:p></span></p><p class=3DMsoNormal style=3D'box-sizing=
: border-box;orphans: auto;widows: 1;-webkit-text-stroke-width: 0px;word-sp=
acing:0px'><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US>I use this command to build the SDK : bitbake meta-t=
oolchain-qt5<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><=
o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal style=3D'box-sizing: border-box;or=
phans: auto;widows: 1;-webkit-text-stroke-width: 0px;word-spacing:0px'><spa=
n lang=3DEN-US>Here is the error :<o:p></o:p></span></p><p class=3DMsoNorma=
l style=3D'box-sizing: border-box;orphans: auto;widows: 1;-webkit-text-stro=
ke-width: 0px;word-spacing:0px'><span lang=3DEN-US>------------------------=
------------------------------------<br>Collected errors:<br>* check_data_f=
ile_clashes: Package libgles-omap3 wants to install file /home/xxx/Sonar/po=
ky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/meta-toolch=
ain-qt5/1.0-r0/sdk/image/opt/poky/1.6.2/sysroots/cortexa8t2hf-vfp-neon-poky=
-linux-gnueabi/usr/lib/<a href=3D"http://libglesv2.so/"><span style=3D'colo=
r:windowtext;text-decoration:none'>libGLESv2.so</span></a><br>But that file=
 is already provided by package * libgles2-mesa-dev<br>* opkg_install_cmd: =
Cannot install package packagegroup-qt5-toolchain-target.<br>--------------=
----------------------------------------------<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'box-sizing: border-box;orphans: auto;widows: 1;-webkit-text-stroke=
-width: 0px;word-spacing:0px'><span lang=3DEN-US>How can I correct this ? I=
 presume I have to use the PREFERED_PROVIDER or something like this but I d=
id not succeed yet.<o:p></o:p></span></p></div></body></html>=

--_000_00FFF1D896D3FF4482179DF8C27DEFAFA38C360AD2CTSERVEURctaq_--
