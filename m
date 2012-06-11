Return-Path: <juergen.messerer@bbv.ch>
Received: from owa.outnet.ch (mail.outnet.ch [80.67.146.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 039EAE0044A
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 07:12:52 -0700 (PDT)
Received: from TKSSREX01.outnet.ch ([10.10.10.1]) by tkssrexhcu01.outnet.ch
	([172.17.220.45]) with mapi; Mon, 11 Jun 2012 16:12:47 +0200
From: =?iso-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 11 Jun 2012 16:12:46 +0200
Thread-Topic: Grub installation
Thread-Index: Ac1H2l8SNvXbdwJIQQ6wgId2BrI5XQ==
Message-ID: <A7B59F6D52627C44813C136D437B0832068BC78CAB6C@TKSSREX01.outnet.ch>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-CH
MIME-Version: 1.0
Subject: Grub installation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 11 Jun 2012 14:12:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A7B59F6D52627C44813C136D437B0832068BC78CAB6CTKSSREX01ou_"

--_000_A7B59F6D52627C44813C136D437B0832068BC78CAB6CTKSSREX01ou_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

I have the following problem. I have created with yocto a core-image-minima=
l for x86 which I could test with qemu.

later I added the following lines to conf/local.conf at the end according t=
o the manual chapter 4.2.4:
IMAGE_INSTALL_append =3D " bash"
IMAGE_INSTALL_append =3D " strace"
IMAGE_INSTALL_append =3D " grub"

Bash and strace were installed correctly.
In the case of grub I couldn't find the directory /boot/grub.

/etc/grub.d is installed also the folder /usr/lib/grub

Question 1:
Which grub recipe does yocto install from  poky-denzil-7.0/meta/recipes-bsp=
/grub/
I would prefer version 1.99.

Questin 2:
Will yocto not install a /boot/grub directory?

I would appreciate any tips and tricks to install grub correctly in the cor=
e-image-minimal


Thanks a lot

Best regards

Juergen

--_000_A7B59F6D52627C44813C136D437B0832068BC78CAB6CTKSSREX01ou_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Micr=
osoft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE-CH link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US>Hi<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I have the foll=
owing problem. I have created with yocto a core-image-minimal for x86 which=
 I could test with qemu.<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US>later I added the following lines to conf/local.conf at the end accordi=
ng to the manual chapter 4.2.4:<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>IMAGE_INSTALL_append =3D &quot; bash&quot;<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US>IMAGE_INSTALL_append =3D &qu=
ot; strace&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US>IMAGE_INSTALL_append =3D &quot; grub&quot;<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>Bash and strace were installed correctly. <o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>In the case of grub I=
 couldn&#8217;t find the directory /boot/grub.<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US>/etc/grub.d is installed also the folder /usr/lib=
/grub<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Question 1:<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Which grub recipe=
 does yocto install from =A0poky-denzil-7.0/meta/recipes-bsp/grub/<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I would prefer version=
 1.99.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&n=
bsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Questin 2:<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Will yocto not in=
stall a /boot/grub directory?<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>I would appreciate any tips and tricks to install grub correctly i=
n the core-image-minimal<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Tha=
nks a lot<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Best regard=
s<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;<=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Juergen<o:p></o:p><=
/span></p></div></body></html>=

--_000_A7B59F6D52627C44813C136D437B0832068BC78CAB6CTKSSREX01ou_--
