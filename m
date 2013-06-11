Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF7CE014F1
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 12:05:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jun 2013 12:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,846,1363158000"; 
	d="scan'208,217";a="351633239"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jun 2013 12:05:39 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 11 Jun 2013 12:05:39 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.91]) with mapi id
	14.03.0123.003; Tue, 11 Jun 2013 12:05:39 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>, Jeff Osier-Mixon
	<jefro@jefro.net>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] No crosscompiler in Toolchain
Thread-Index: AQHOZqOPiJG6l+V0REyK3+Gu8PiLqZkxP9gAgAASrYD//4tR8A==
Date: Tue, 11 Jun 2013 19:05:38 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C39CA0@ORSMSX103.amr.corp.intel.com>
References: <CAFMfyz+_j-mWj4C0YJUnOBcCX-oMGc8196pmPcQcD8XbK6r0xA@mail.gmail.com>
	<CA+YB3rYq6_o_Sc50t0TVm5rnEeG2MD2qo=Ya6WKyG=c5vy_vHg@mail.gmail.com>
	<CAFMfyzKzvBDTxPoLN6=fFkP=Rbd_KWVpLk=352F6OxB3e5-iWg@mail.gmail.com>
In-Reply-To: <CAFMfyzKzvBDTxPoLN6=fFkP=Rbd_KWVpLk=352F6OxB3e5-iWg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: No crosscompiler in Toolchain
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
X-List-Received-Date: Tue, 11 Jun 2013 19:05:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C39CA0ORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C39CA0ORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Satya,



What is your cross compiler that you said it's not installed? For example, =
on my development host e.g. x86, after I install the toolchain, there's an =
environment-setup-*** file, inside it specifies what is your cross compiler=
, e.g. arm-poky-linux-gnueabi-gcc for my case, after I source the environme=
nt file, and do which arm-poky-linux-gnueabi-gcc, I can see it's under path=
_to_toolchain/sysroots/i686_pokysdk_linux/usr/bin/armv5te-poky-linux-gnueab=
i/arm-poky-linux-gnueabi-gcc... so you're seeing things differently?



Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of DAMARLA Satya Swaroop
Sent: Tuesday, June 11, 2013 11:55 AM
To: Jeff Osier-Mixon; yocto@yoctoproject.org
Subject: Re: [yocto] No crosscompiler in Toolchain



First I am sorry about the Gentlemen.... Next time it would be Ladies & Gen=
tlemen... ;-)



Let me explain the situation better ... core-image-skidata (arm) is customi=
zed image which I build and I want to build a toolchain for this image on m=
y x86_64 with should consist of cross compiler (which I assume a toolchain =
should contain). The build for the toolchain went successfull but when I in=
stalled the toolchain on my system, I didnot find the crosscompiler install=
ed...



Hope you understood my problem..



Greets,

Satya



On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon <jefro@jefro.net<mailto:j=
efro@jefro.net>> wrote:

On Tue, Jun 11, 2013 at 5:59 AM, DAMARLA Satya Swaroop
<swaroop.damarla@gmail.com<mailto:swaroop.damarla@gmail.com>> wrote:
> Gentlemen! We have a problem here...

Not all here are gentlemen :)


> I compiled the toolchain using the command bitbake core-image-skidata -c
> populate_sdk and installed the toolchain but I have to tell you that I do=
nt
> see any cross-compiler installed with the toolchain...
>
> Any guesses what could be the reason.. The image is customized x11 image.=
..

I'm not sure I understand. It looks like you are using Host A to build
a toolchain and install it into an image (core-image-skidata) on
Target A. Are you then expecting to use Target A as Host B to compile
for Target B?  Is it possible that the skidata image recipe does not
contain the cross-compiler recipes?

--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org




--_000_C6510F6D410BB64A8C15398EDC6B847C73C39CA0ORSMSX103amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Satya,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">What is your cross compil=
er that you said it&#8217;s not installed? For example, on my development h=
ost e.g. x86, after I install the toolchain, there&#8217;s an environment-s=
etup-***
 file, inside it specifies what is your cross compiler, e.g. arm-poky-linux=
-gnueabi-gcc for my case, after I source the environment file, and do which=
 arm-poky-linux-gnueabi-gcc, I can see it&#8217;s under path_to_toolchain/s=
ysroots/i686_pokysdk_linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linu=
x-gnueabi-gcc&#8230;
 so you&#8217;re seeing things differently?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>DAMARLA Satya Swaroop<br>
<b>Sent:</b> Tuesday, June 11, 2013 11:55 AM<br>
<b>To:</b> Jeff Osier-Mixon; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] No crosscompiler in Toolchain<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">First I am sorry about the Gentlemen.... Next time i=
t would be Ladies &amp; Gentlemen... ;-)<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Let me explain the situation better ... <i>core-imag=
e-skidata</i>&nbsp;(arm) is customized image which I build and I want to bu=
ild a toolchain for this image on my x86_64 with should consist of cross co=
mpiler (which I assume a toolchain should
 contain). The build for the toolchain went successfull but when I installe=
d the toolchain on my system, I didnot find the crosscompiler installed...<=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Hope you understood my problem..<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Greets,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Satya<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon &l=
t;<a href=3D"mailto:jefro@jefro.net" target=3D"_blank">jefro@jefro.net</a>&=
gt; wrote:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Tue, Jun 11, 2013 =
at 5:59 AM, DAMARLA Satya Swaroop<br>
&lt;<a href=3D"mailto:swaroop.damarla@gmail.com">swaroop.damarla@gmail.com<=
/a>&gt; wrote:<br>
&gt; Gentlemen! We have a problem here...<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">Not all here are gentlemen :)<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
&gt; I compiled the toolchain using the command bitbake core-image-skidata =
-c<br>
&gt; populate_sdk and installed the toolchain but I have to tell you that I=
 dont<br>
&gt; see any cross-compiler installed with the toolchain...<br>
&gt;<br>
&gt; Any guesses what could be the reason.. The image is customized x11 ima=
ge...<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">I'm not sure I understand. It looks like you are usi=
ng Host A to build<br>
a toolchain and install it into an image (core-image-skidata) on<br>
Target A. Are you then expecting to use Target A as Host B to compile<br>
for Target B? &nbsp;Is it possible that the skidata image recipe does not<b=
r>
contain the cross-compiler recipes?<br>
<br>
--<br>
Jeff Osier-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">http:/=
/jefro.net/blog</a><br>
Yocto Project Community Manager @Intel <a href=3D"http://yoctoproject.org" =
target=3D"_blank">
http://yoctoproject.org</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C39CA0ORSMSX103amrcor_--
