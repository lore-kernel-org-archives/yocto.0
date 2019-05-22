Return-Path: <Norman.Stetter@garz-fricke.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 552F3E00D5D; Wed, 22 May 2019 06:26:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.72.187.39 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3018 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 May 2019 06:26:48 PDT
Received: from mailout-afstr39.mailout.artfiles.de
	(mailout-afstr39.mailout.artfiles.de [212.72.187.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D16CE00D79
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 06:26:48 -0700 (PDT)
Received: from [89.27.136.47] (helo=mail.garz-fricke.com)
	auth=mx@garz-fricke.com by mailout.artfiles.de with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_CBC_SHA384:256) (Exim 4.86_2)
	id 1hTQTt-0007f9-8T
	for yocto@yoctoproject.org; Wed, 22 May 2019 14:36:29 +0200
Received: from SRV24.hamburg.garz-fricke.de ([fe80::91bd:d629:787:188]) by
	SRV24.hamburg.garz-fricke.de ([fe80::91bd:d629:787:188%12]) with mapi
	id 14.03.0439.000; Wed, 22 May 2019 14:36:18 +0200
From: Norman Stetter <Norman.Stetter@garz-fricke.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building single package as image, respecting dependencies
Thread-Index: AdUQmvjUgZzqIjtPR86llJuZzr/bmQ==
Date: Wed, 22 May 2019 12:36:18 +0000
Message-ID: <A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1@SRV24.hamburg.garz-fricke.de>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.0.130]
MIME-Version: 1.0
Subject: Building single package as image, respecting dependencies
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
X-List-Received-Date: Wed, 22 May 2019 13:26:53 -0000
X-Groupsio-MsgNum: 45269
Content-Language: de-DE
Content-Type: multipart/related;
	boundary="_004_A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1SRV24hamburggarzf_";
	type="multipart/alternative"

--_004_A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1SRV24hamburggarzf_
Content-Type: multipart/alternative;
	boundary="_000_A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1SRV24hamburggarzf_"

--_000_A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1SRV24hamburggarzf_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi there,

I am currently working on a minimal CLI only system.
The image is based on 'core-image-base' using sysvinit and busybox.
To reduce image size and boot time, I removed as many packages as possible.=
 For some application cases I will need python3 though.
My idea was to have python3 as some kind of add-on in a squashfs image, tha=
t can be mounted only when needed.

So I tried to build an image only containing the python3 package, but as li=
ttle as possible otherwise, like this:

inherit image
IMAGE_FSTYPES =3D "squashfs-xz"
DEFAULT_TASK_PROVIDER =3D ""
DISTRO_EXTRA_RDEPENDS =3D ""
DISTRO_FEATURES =3D ""
POKY_DEFAULT_EXTRA_RDEPENDS =3D ""
IMAGE_FEATURES =3D ""
IMAGE_LINGUAS =3D ""
CORE_IMAGE_BASE_INSTALL =3D ""
RDEPENDS_${PN} =3D ""
PACKAGE_EXCLUDE =3D "busybox openssl run-postinsts update-rc.d"
VIRTUAL-RUNTIME_dev_manager =3D ""
VIRTUAL-RUNTIME_login_manager =3D ""
VIRTUAL-RUNTIME_init_manager =3D ""
VIRTUAL-RUNTIME_initscripts =3D ""
VIRTUAL-RUNTIME_keymaps =3D ""
VIRTUAL-RUNTIME_base-utils =3D ""
PREFERRED_PROVIDER_virtual/base-utils =3D ""

IMAGE_INSTALL =3D "python3"

But like this I can only manually exclude packages I already have in my mai=
n OS image. Some packages can't be excluded at all, as python3 depends on t=
hem and won't build if they are excluded.

Is there a way to have dependencies between images? So I could have the pyt=
hon-image build know which dependencies are already built into my OS image =
and therefore not include them itself?

Or would it be better to avoid building a second image and rather build 'py=
thon3' with my OS-image, adding it to PACKAGE_EXCLUDE and from within this =
build process pack all python3 files into an image? If I were to pursue thi=
s method, any suggestions on how to separate the python3 files from the res=
t of my rootfs, including the necessary dependencies?

Any advice and idea is much appreciated.

Mit freundlichen Gr=FC=DFen / Best regards
Norman Stetter
SW ENWICKLUNG EMBEDDED SYSTEMS
Garz & Fricke GmbH

21079 Hamburg
Direct: +49 40 791899 - 477
Fax: +49 40 791899 - 39
Norman.Stetter@garz-fricke.com
www.garz-fricke.com<http://www.garz-fricke.com/>
WE MAKE IT YOURS!
[cid:image001.jpg@01D510A9.7F9CD640]
Sitz der Gesellschaft: D-21079 Hamburg
Registergericht: Amtsgericht Hamburg, HRB 60514
Gesch=E4ftsf=FChrer: Matthias Fricke, Manfred Garz, Marc-Michael Braun


--_000_A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1SRV24hamburggarzf_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi there,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am currently working on a min=
imal CLI only system.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The image is based on &#8216;co=
re-image-base&#8217; using sysvinit and busybox.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To reduce image size and boot t=
ime, I removed as many packages as possible. For
<i>some</i> application cases I will need python3 though.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My idea was to have python3 as =
some kind of add-on in a squashfs image, that can be mounted only when need=
ed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So I tried to build an image on=
ly containing the python3 package, but as little as possible otherwise, lik=
e this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">inherit image
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">IMAGE_FSTYPES =
=3D &quot;squashfs-xz&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">DEFAULT_TASK_P=
ROVIDER =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">DISTRO_EXTRA_R=
DEPENDS =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">DISTRO_FEATURE=
S =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">POKY_DEFAULT_E=
XTRA_RDEPENDS =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">IMAGE_FEATURES=
 =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">IMAGE_LINGUAS =
=3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">CORE_IMAGE_BAS=
E_INSTALL =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">RDEPENDS_${PN}=
 =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">PACKAGE_EXCLUD=
E =3D &quot;busybox openssl run-postinsts update-rc.d&quot;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">VIRTUAL-RUNTIM=
E_dev_manager =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">VIRTUAL-RUNTIM=
E_login_manager =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">VIRTUAL-RUNTIM=
E_init_manager =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">VIRTUAL-RUNTIM=
E_initscripts =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">VIRTUAL-RUNTIM=
E_keymaps =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">VIRTUAL-RUNTIM=
E_base-utils =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">PREFERRED_PROV=
IDER_virtual/base-utils =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Courier New&quot;">IMAGE_INSTALL =3D &quot;pytho=
n3&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But like this I can only manual=
ly exclude packages I already have in my main OS image. Some packages can&#=
8217;t be excluded at all, as python3 depends on them and won&#8217;t build=
 if they are excluded.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a way to have dependen=
cies between images? So I could have the python-image build know which depe=
ndencies are already built into my OS image and therefore not include them =
itself?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Or would it be better to avoid =
building a second image and rather build &#8216;python3&#8217; with my OS-i=
mage, adding it to PACKAGE_EXCLUDE and from within this build process pack =
all python3 files into an image? If I were to pursue
 this method, any suggestions on how to separate the python3 files from the=
 rest of my rootfs, including the necessary dependencies?<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any advice and idea is much app=
reciated. <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 lang=3D"EN-US" style=3D"font-size:10.0pt;line-height:106%;font-family:&quo=
t;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">Mit freundlic=
hen Gr=FC=DFen / Best regards<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><b><s=
pan lang=3D"EN-US" style=3D"font-size:10.0pt;line-height:106%;font-family:&=
quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">Norman Ste=
tter<br>
</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt;line-height:106%;=
font-family:&quot;Arial&quot;,sans-serif;color:#97BF0D;mso-fareast-language=
:DE">SW ENWICKLUNG EMBEDDED SYSTEMS</span><span lang=3D"EN-US" style=3D"fon=
t-size:8.0pt;line-height:106%;font-family:&quot;Arial&quot;,sans-serif;colo=
r:black;mso-fareast-language:DE"><br>
Garz &amp; Fricke GmbH<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-family:&quot=
;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE"><br>
21079 Hamburg<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-family:&quot=
;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">Direct: &#43;4=
9 40 791899 - 477<br>
Fax: &#43;49 40 791899 - 39<br>
Norman.Stetter@garz-fricke.com<br>
</span><span style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-fareast-language:DE"><a href=3D"http:/=
/www.garz-fricke.com/" title=3D"www.garz-fricke.com"><span lang=3D"EN-US" s=
tyle=3D"color:black;text-decoration:none">www.garz-fricke.com</span></a></s=
pan><span lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 style=3D"font-size:10.0pt;line-height:106%;font-family:&quot;Arial&quot;,s=
ans-serif;color:black;mso-fareast-language:DE">WE MAKE IT YOURS!<br>
</span><span style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-fareast-language:DE"><img border=3D"0"=
 width=3D"183" height=3D"31" id=3D"Grafik_x0020_1" src=3D"cid:image001.jpg@=
01D510A9.7F9CD640"></span><span style=3D"font-size:10.0pt;line-height:106%;=
font-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:D=
E"><br>
</span><span style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-fareast-language:DE">Sitz der Gesellsc=
haft: D-21079 Hamburg<br>
Registergericht: Amtsgericht Hamburg, HRB 60514<br>
Gesch=E4ftsf=FChrer: Matthias Fricke, Manfred Garz, Marc-Michael Braun<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1SRV24hamburggarzf_--

--_004_A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1SRV24hamburggarzf_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=14804;
	creation-date="Wed, 22 May 2019 12:36:18 GMT";
	modification-date="Wed, 22 May 2019 12:36:18 GMT"
Content-ID: <image001.jpg@01D510A9.7F9CD640>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/7QBkUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAACwcAVoAAxsl
RxwCAAACAAQcAj4ACDIwMTcwODI1HAI/AAswOTUyNDYrMDIwMDhCSU0EJQAAAAAAEM90ldQ+UsUF
pLPvuQOa/Bz/4QAsY29tLmFkb2JlLmNhcm91c2VsLnJlZmVyZW5jZV9zaXplAAAAAMsAAAAi/+EA
tEV4aWYAAE1NACoAAAAIAAQBEgADAAAAAQABAAABMQACAAAAJgAAAD4BMgACAAAAFAAAAGSHaQAE
AAAAAQAAAHgAAAAAQWRvYmUgUGhvdG9zaG9wIEV4cHJlc3MgOS4wIChXaW5kb3dzKQAyMDE3OjA4
OjI1IDExOjM5OjQ0AAACkAAABwAAAAQwMjMwkAQAAgAAABQAAACWAAAAADIwMTc6MDg6MjUgMDk6
NTI6NDYAAAD/4gxYSUNDX1BST0ZJTEUAAQEAAAxITGlubwIQAABtbnRyUkdCIFhZWiAHzgACAAkA
BgAxAABhY3NwTVNGVAAAAABJRUMgc1JHQgAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLUhQICAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFjcHJ0AAABUAAAADNk
ZXNjAAABhAAAAGx3dHB0AAAB8AAAABRia3B0AAACBAAAABRyWFlaAAACGAAAABRnWFlaAAACLAAA
ABRiWFlaAAACQAAAABRkbW5kAAACVAAAAHBkbWRkAAACxAAAAIh2dWVkAAADTAAAAIZ2aWV3AAAD
1AAAACRsdW1pAAAD+AAAABRtZWFzAAAEDAAAACR0ZWNoAAAEMAAAAAxyVFJDAAAEPAAACAxnVFJD
AAAEPAAACAxiVFJDAAAEPAAACAx0ZXh0AAAAAENvcHlyaWdodCAoYykgMTk5OCBIZXdsZXR0LVBh
Y2thcmQgQ29tcGFueQAAZGVzYwAAAAAAAAASc1JHQiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAABJz
UkdCIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAWFlaIAAAAAAAAPNRAAEAAAABFsxYWVogAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAA
AABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z2Rlc2MA
AAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5jaAAAAAAAAAAAAAAAFklFQyBodHRwOi8vd3d3Lmll
Yy5jaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkZXNjAAAA
AAAAAC5JRUMgNjE5NjYtMi4xIERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAA
AAAAAC5JRUMgNjE5NjYtMi4xIERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAZGVzYwAAAAAAAAAsUmVmZXJlbmNlIFZpZXdpbmcgQ29uZGl0aW9uIGlu
IElFQzYxOTY2LTIuMQAAAAAAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJ
RUM2MTk2Ni0yLjEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHZpZXcAAAAAABOk/gAUXy4AEM8U
AAPtzAAEEwsAA1yeAAAAAVhZWiAAAAAAAEwJVgBQAAAAVx/nbWVhcwAAAAAAAAABAAAAAAAAAAAA
AAAAAAAAAAAAAo8AAAACc2lnIAAAAABDUlQgY3VydgAAAAAAAAQAAAAABQAKAA8AFAAZAB4AIwAo
AC0AMgA3ADsAQABFAEoATwBUAFkAXgBjAGgAbQByAHcAfACBAIYAiwCQAJUAmgCfAKQAqQCuALIA
twC8AMEAxgDLANAA1QDbAOAA5QDrAPAA9gD7AQEBBwENARMBGQEfASUBKwEyATgBPgFFAUwBUgFZ
AWABZwFuAXUBfAGDAYsBkgGaAaEBqQGxAbkBwQHJAdEB2QHhAekB8gH6AgMCDAIUAh0CJgIvAjgC
QQJLAlQCXQJnAnECegKEAo4CmAKiAqwCtgLBAssC1QLgAusC9QMAAwsDFgMhAy0DOANDA08DWgNm
A3IDfgOKA5YDogOuA7oDxwPTA+AD7AP5BAYEEwQgBC0EOwRIBFUEYwRxBH4EjASaBKgEtgTEBNME
4QTwBP4FDQUcBSsFOgVJBVgFZwV3BYYFlgWmBbUFxQXVBeUF9gYGBhYGJwY3BkgGWQZqBnsGjAad
Bq8GwAbRBuMG9QcHBxkHKwc9B08HYQd0B4YHmQesB78H0gflB/gICwgfCDIIRghaCG4IggiWCKoI
vgjSCOcI+wkQCSUJOglPCWQJeQmPCaQJugnPCeUJ+woRCicKPQpUCmoKgQqYCq4KxQrcCvMLCwsi
CzkLUQtpC4ALmAuwC8gL4Qv5DBIMKgxDDFwMdQyODKcMwAzZDPMNDQ0mDUANWg10DY4NqQ3DDd4N
+A4TDi4OSQ5kDn8Omw62DtIO7g8JDyUPQQ9eD3oPlg+zD88P7BAJECYQQxBhEH4QmxC5ENcQ9RET
ETERTxFtEYwRqhHJEegSBxImEkUSZBKEEqMSwxLjEwMTIxNDE2MTgxOkE8UT5RQGFCcUSRRqFIsU
rRTOFPAVEhU0FVYVeBWbFb0V4BYDFiYWSRZsFo8WshbWFvoXHRdBF2UXiReuF9IX9xgbGEAYZRiK
GK8Y1Rj6GSAZRRlrGZEZtxndGgQaKhpRGncanhrFGuwbFBs7G2MbihuyG9ocAhwqHFIcexyjHMwc
9R0eHUcdcB2ZHcMd7B4WHkAeah6UHr4e6R8THz4faR+UH78f6iAVIEEgbCCYIMQg8CEcIUghdSGh
Ic4h+yInIlUigiKvIt0jCiM4I2YjlCPCI/AkHyRNJHwkqyTaJQklOCVoJZclxyX3JicmVyaHJrcm
6CcYJ0kneierJ9woDSg/KHEooijUKQYpOClrKZ0p0CoCKjUqaCqbKs8rAis2K2krnSvRLAUsOSxu
LKIs1y0MLUEtdi2rLeEuFi5MLoIuty7uLyQvWi+RL8cv/jA1MGwwpDDbMRIxSjGCMbox8jIqMmMy
mzLUMw0zRjN/M7gz8TQrNGU0njTYNRM1TTWHNcI1/TY3NnI2rjbpNyQ3YDecN9c4FDhQOIw4yDkF
OUI5fzm8Ofk6Njp0OrI67zstO2s7qjvoPCc8ZTykPOM9Ij1hPaE94D4gPmA+oD7gPyE/YT+iP+JA
I0BkQKZA50EpQWpBrEHuQjBCckK1QvdDOkN9Q8BEA0RHRIpEzkUSRVVFmkXeRiJGZ0arRvBHNUd7
R8BIBUhLSJFI10kdSWNJqUnwSjdKfUrESwxLU0uaS+JMKkxyTLpNAk1KTZNN3E4lTm5Ot08AT0lP
k0/dUCdQcVC7UQZRUFGbUeZSMVJ8UsdTE1NfU6pT9lRCVI9U21UoVXVVwlYPVlxWqVb3V0RXklfg
WC9YfVjLWRpZaVm4WgdaVlqmWvVbRVuVW+VcNVyGXNZdJ114XcleGl5sXr1fD19hX7NgBWBXYKpg
/GFPYaJh9WJJYpxi8GNDY5dj62RAZJRk6WU9ZZJl52Y9ZpJm6Gc9Z5Nn6Wg/aJZo7GlDaZpp8WpI
ap9q92tPa6dr/2xXbK9tCG1gbbluEm5rbsRvHm94b9FwK3CGcOBxOnGVcfByS3KmcwFzXXO4dBR0
cHTMdSh1hXXhdj52m3b4d1Z3s3gReG54zHkqeYl553pGeqV7BHtje8J8IXyBfOF9QX2hfgF+Yn7C
fyN/hH/lgEeAqIEKgWuBzYIwgpKC9INXg7qEHYSAhOOFR4Wrhg6GcobXhzuHn4gEiGmIzokziZmJ
/opkisqLMIuWi/yMY4zKjTGNmI3/jmaOzo82j56QBpBukNaRP5GokhGSepLjk02TtpQglIqU9JVf
lcmWNJaflwqXdZfgmEyYuJkkmZCZ/JpomtWbQpuvnByciZz3nWSd0p5Anq6fHZ+Ln/qgaaDYoUeh
tqImopajBqN2o+akVqTHpTilqaYapoum/adup+CoUqjEqTepqaocqo+rAqt1q+msXKzQrUStuK4t
rqGvFq+LsACwdbDqsWCx1rJLssKzOLOutCW0nLUTtYq2AbZ5tvC3aLfguFm40blKucK6O7q1uy67
p7whvJu9Fb2Pvgq+hL7/v3q/9cBwwOzBZ8Hjwl/C28NYw9TEUcTOxUvFyMZGxsPHQce/yD3IvMk6
ybnKOMq3yzbLtsw1zLXNNc21zjbOts83z7jQOdC60TzRvtI/0sHTRNPG1EnUy9VO1dHWVdbY11zX
4Nhk2OjZbNnx2nba+9uA3AXcit0Q3ZbeHN6i3ynfr+A24L3hROHM4lPi2+Nj4+vkc+T85YTmDeaW
5x/nqegy6LzpRunQ6lvq5etw6/vshu0R7ZzuKO6070DvzPBY8OXxcvH/8ozzGfOn9DT0wvVQ9d72
bfb794r4Gfio+Tj5x/pX+uf7d/wH/Jj9Kf26/kv+3P9t////4RldaHR0cDovL25zLmFkb2JlLmNv
bS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6
a2M5ZCI/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRv
YmUgWE1QIENvcmUgNS41LWMwMDIgMS4xNDgwMjIsIDIwMTIvMDcvMTUtMTg6MDY6NDUgICAgICAg
ICI+DQoJPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJk
Zi1zeW50YXgtbnMjIj4NCgkJPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1w
PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3Jn
L2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8x
LjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jl
c291cmNlRXZlbnQjIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NU
eXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEu
MC8iIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIEV4cHJlc3MgOS4wIChXaW5kb3dz
KSIgeG1wOkNyZWF0ZURhdGU9IjIwMTctMDgtMjVUMDk6NTI6NDYrMDI6MDAiIHhtcDpNb2RpZnlE
YXRlPSIyMDE3LTA4LTI1VDExOjM5OjQ0KzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDE3LTA4
LTI1VDExOjM5OjQ0KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL2pwZWciIHhtcE1NOkluc3RhbmNl
SUQ9InhtcC5paWQ6NjZmZWViMTUtOTllZC1hZDQ0LWExNmUtZmVhY2YyODNhM2UxIiB4bXBNTTpE
b2N1bWVudElEPSJ4bXAuZGlkOjY2ZmVlYjE1LTk5ZWQtYWQ0NC1hMTZlLWZlYWNmMjgzYTNlMSIg
eG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOjc3N2IzNTcyLTdiNjAtNWI0Ny1hODEw
LTEwYTJiZDhjYjYzOCIgZXhpZjpDb2xvclNwYWNlPSIxIj4NCgkJCTx4bXBNTTpIaXN0b3J5Pg0K
CQkJCTxyZGY6U2VxPg0KCQkJCQk8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6
aW5zdGFuY2VJRD0ieG1wLmlpZDo3NzdiMzU3Mi03YjYwLTViNDctYTgxMC0xMGEyYmQ4Y2I2Mzgi
IHN0RXZ0OndoZW49IjIwMTctMDgtMjVUMDk6NTI6NDYrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdl
bnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE3IChXaW5kb3dzKSIvPg0KCQkJCQk8cmRmOmxpIHN0
RXZ0OmFjdGlvbj0iY29udmVydGVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJmcm9tIGltYWdlL2dpZiB0
byBpbWFnZS9wbmciLz4NCgkJCQkJPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDpp
bnN0YW5jZUlEPSJ4bXAuaWlkOmI3ZWQwOGM2LWRjMTMtNDA0NS1hYzdhLTIyZjYxOTYwYzE1MiIg
c3RFdnQ6d2hlbj0iMjAxNy0wOC0yNVQwOTo1NTo0OCswMjowMCIgc3RFdnQ6c29mdHdhcmVBZ2Vu
dD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+
DQoJCQkJCTxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJkZXJpdmVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJj
b252ZXJ0ZWQgZnJvbSBpbWFnZS9wbmcgdG8gaW1hZ2UvanBlZywgc2F2ZWQgdG8gbmV3IGxvY2F0
aW9uIi8+DQoJCQkJCTxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJ
RD0ieG1wLmlpZDo2NmZlZWIxNS05OWVkLWFkNDQtYTE2ZS1mZWFjZjI4M2EzZTEiIHN0RXZ0Ondo
ZW49IjIwMTctMDgtMjVUMTE6Mzk6NDQrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2Jl
IFBob3Rvc2hvcCBFeHByZXNzIDkuMCAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4NCgkJ
CQk8L3JkZjpTZXE+DQoJCQk8L3htcE1NOkhpc3Rvcnk+DQoJCQk8eG1wTU06RGVyaXZlZEZyb20g
c3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpiN2VkMDhjNi1kYzEzLTQwNDUtYWM3YS0yMmY2MTk2
MGMxNTIiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpiZWQzYjdjNi04
OTZhLTExZTctOWE5NC04MTVmZTgyYjY3ZjYiIHN0UmVmOm9yaWdpbmFsRG9jdW1lbnRJRD0ieG1w
LmRpZDo3NzdiMzU3Mi03YjYwLTViNDctYTgxMC0xMGEyYmQ4Y2I2MzgiLz4NCgkJPC9yZGY6RGVz
Y3JpcHRpb24+DQoJPC9yZGY6UkRGPg0KPC94OnhtcG1ldGE+DQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAogICAgICAgIDw/eHBhY2tldCBlbmQ9J3cnPz7/2wBDAAIBAQIBAQICAgICAgICAwUDAwMD
AwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYD
AwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/
wAARCAAfALcDASIAAhEBAxEB/8QAHQAAAgEFAQEAAAAAAAAAAAAABwkIAAQFBgoCA//EAD4QAAED
AwMDAgUBBAUNAAAAAAECAwQFBhEHCBIACSETMQoUIjJBURUjQmEWGXGR0yQ3Q0RXYmSBgoOSlqP/
xAAaAQADAAMBAAAAAAAAAAAAAAAAAQIDBQgH/8QAJxEAAQMEAQMDBQAAAAAAAAAAAQACEgMEBREh
BjFBExRRQmGx0fD/2gAMAwEAAhEDEQA/AHBbqe5FoVsirMGm6p6n25Z1TqbXrRoMl1b0tbWSA4WW
krWlGQQFqASeJ8nB63zQLcVYu6XTeHeGnN10W8LbmqKGp9MkB5tKxjk2ofchYyMoUEqGRkdJL7ce
hui+9reVvd153RQ6bdlFsG65kVtdxOLcptFgplS20H0wfZqOwy0jlnglOQAolXTBez1WNmWlzF1a
cbWbut+uTKnKkXVVo7Mx2bO9JToQ2guuJ5liOlaGWkEkpSASVrU4tRoeEi1SW1n3i6Y7etSrHs+9
bypNt3NqRIciW1T5RX6lVdbU2laUFKSkYU62MqIBKh7/AI2zVbVC39ENOa5d12VRiiW1bMJyo1Oe
+FFuHHbTyWtXEE4SBnwD1zs97C7r6329x3cBqDYMxRouzCjUxiG6hKziRHnNmSUjOA4Jq5QUf426
eP08Nq3i7h6fu57AGoWplLWhyHeulEqqYGP3bi4h9RBx+UuBaSPwU4/HQWoitio3fq2e1yqR4sfX
2yfWlLShsufMMoJV7ZWtoJSP5kgD8no+a17o9PdvGhknUy8btpVFsGImM45XeRkRCiQ62ywpKmgr
kla3WwFJBH1A5x5659do7vb0PZwxrDHtBWvQoVU9cwA+m5Pm/We+SLZR9HqcSzgH6OIwoFOQWF/D
8bblbmOxjbdia72wLntGtVOU9TqRWUuem9Tm5aX4uASFBpLqCpsA44hOMjoLQnEI9O/EA7N2ElSt
e7RSlIKj+5mew/7PUt7XuKDd9tU+rU2S3MptVjNzIj6AeL7LiQtCxnzhSVA+f165+t13b50X3194
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

--_004_A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1SRV24hamburggarzf_--
