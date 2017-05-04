Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E47DAE00852; Wed,  3 May 2017 20:46:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5256FE0053A
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 20:46:54 -0700 (PDT)
Received: from nbhjo (203-69-87-74.HINET-IP.hinet.net [203.69.87.74])
	by msfrf2615.sfr.fr (SMTP Server) with ESMTP id AA14B1C000889;
	Thu,  4 May 2017 05:46:52 +0200 (CEST)
Received: from nbhjo (203-69-87-74.HINET-IP.hinet.net [203.69.87.74])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2615.sfr.fr (SMTP Server) with ESMTPSA;
	Thu,  4 May 2017 05:46:50 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Luca Carlon' <carlon.luca@gmail.com>, 'Khem Raj' <raj.khem@gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
	<CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
	<CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
	<CAC+thW0Lcmkn-zL_AyQXztQNywLxPAW0zFUM2YVCDvE8YcTFfw@mail.gmail.com>
	<CAMC=D=ts+93_6zoOgXtv9HkQ4GE897SiwJKHpEJbxt-KeO6J=A@mail.gmail.com>
	<CAMKF1srH1kLEKaG1rd7hQTyPn+6PVYkvddzpg-xj0KKEhVWDFw@mail.gmail.com>
	<CAMC=D=sMPe65F2gf2KwJXTaUkwBgtqv94X9H8n9Aj+Bqyx+r8A@mail.gmail.com>
In-Reply-To: <CAMC=D=sMPe65F2gf2KwJXTaUkwBgtqv94X9H8n9Aj+Bqyx+r8A@mail.gmail.com>
Date: Thu, 4 May 2017 05:46:40 +0200
Message-ID: <007401d2c489$0d6915c0$283b4140$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQICtE4aOsx9V1dHqKULsnM9ccfO4QJgvK6DAnPNcq4CKf5nrQHIJo0TAWKSIbQB/WniAwHIYGk6AhaeN4KhA3lvAA==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: ***SPAM*** Re: [meta-raspberrypi] Building rpi-test-image for Pi3 64	bit
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
X-List-Received-Date: Thu, 04 May 2017 03:46:58 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0075_01D2C499.D0F42FB0"
Content-Language: fr

------=_NextPart_000_0075_01D2C499.D0F42FB0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca,

=20

The userland libraries do not support 64 bits. It=E2=80=99s not just a =
problem of compiling the libraries with a 64bits compiler, it=E2=80=99s =
because they interface with some FW in the Videocore IV that supports =
only 32 bits addressing, and that communicates with the userland through =
32 bits =E2=80=9Cpointers=E2=80=9D (at least for the HW decoding parts).
And this is proprietary FW, that AFAIK will not be rebuilt to support 64 =
bits.

So the only thing that should be possible in 64 bits is to use the VC4 =
driver (open source), and disable the userland. The VC4 driver works =
fine, however you lose the HW decoding capabilities that the userland =
provides (H.264/MPEG2, + some audio).

As a consequence, anything that uses those or other userland features =
(gst-omx/omxplayer/=E2=80=A6) can=E2=80=99t be compiled or run in =
64bits.

What should work, though, is Wayland in 64bits using VC4 driver (at =
least, I had that working with a previous kernel version). But anything =
playing AV will have to resort back to using SW decode, AFAIK.

=20

Cheers,
Herve

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Luca Carlon
Sent: mercredi 3 mai 2017 18:19
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi] Building =
rpi-test-image for Pi3 64 bit

=20

What I'd like to be able to do is setup is a 64bit system including the =
libraries from the userland repo: =
https://github.com/raspberrypi/userland. I suspect vc4graphic is =
something different, isn't it?
But maybe you're right and those libs will never be built, as I see that =
according to https://github.com/raspberrypi/userland/pull/347 not =
everything builds in userland. In the recipe I however see that the =
ARM64 macro is defined and so I'm asking myself which libraries are =
currently supported and which are not. Anyone who knows?
Thank you!

Luca

=20

On Wed, May 3, 2017 at 2:35 PM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com> > wrote:

=20

On Wed, May 3, 2017 at 8:28 AM Luca Carlon <carlon.luca@gmail.com =
<mailto:carlon.luca@gmail.com> > wrote:

Hello,

thank you for your help. I followed your advice and I'm now able to =
build rpi-test-image for raspberrypi2 and raspberrypi3. When I try =
raspberrypi3-64 instead I'm getting a few errors. I fixed one build =
error, but then I got: https://pastebin.com/pL2mei9s. It seems that =
those libs were not added to the sysroot for some reason. I think those =
come from the userspace package probably. As it seems to work for the =
other machines I'm trying to determine what difference raspberrypi3-64 =
is introducing but for the moment I'm failing. Any idea what is causing =
this error? Are you able to build rpi-test-image? rpi-basic-image seems =
to work but not rpi-test-image, which includes omxplayer and other libs =
that I need like libEGL, libGLESv2, libopenmax etc...

=20

These are my current conf files:

=20

https://pastebin.com/LJnRfDUj

https://pastebin.com/axt9RLQS

=20

Any idea why those libs cannot be found?

Thank you!

Regards.

=20

I don't know if anyone here has got GUI up with rpi64 using yocto yet =
however you could try to use vc4 graphics drivers by adding "vc4graphic" =
to MACHINE_FEATURES

=20

Luca

=20

On Sat, Apr 29, 2017 at 9:40 AM, Andrea Galbusera <gizero@gmail.com =
<mailto:gizero@gmail.com> > wrote:

On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon <carlon.luca@gmail.com =
<mailto:carlon.luca@gmail.com> > wrote:

Hello,
thank you very much for your advice. It seems I can build both a minimal =
image and rpi-basic-image. I would like to test to see if the Pi is able =
to boot with these images but it seems that the images directory does =
not contain any sdimg file. By reading =
https://github.com/agherzan/meta-raspberrypi and =
https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Embedded-Syste=
m-Images-with-Yocto it seems I should find a sdimg file to flash to the =
sdcard. I suppose this image file contains both the boot and rootfs =
partitions. But it seems I do not see this image at all, this is a list =
of what I can see in tmp/deploy/images/raspberrypi3-64: =
https://pastebin.com/8XsRHzUY. I see the rootfs filesystem that I can =
extract in a partition, but not the boot partition the Pi needs. Maybe =
I'm missing some line in the conf files?

=20

If you are using the local.conf you previously posted, the line:

=20

IMAGE_FSTYPES =3D "tar.xz"

=20

is overriding default configuration from rpi-base.inc in =
meta-raspberrypi which is:

=20

IMAGE_FSTYPES ?=3D "tar.bz2 ext3 rpi-sdimg"

=20

You can also consider using wic image format to generate a flashable =
image (see Yocto documentation on how to do that).

=20

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>=20
https://lists.yoctoproject.org/listinfo/yocto

=20


------=_NextPart_000_0075_01D2C499.D0F42FB0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.hoenzb
	{mso-style-name:hoenzb;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DFR link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Hi Luca,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>The userland libraries do not support 64 =
bits. It=E2=80=99s not just a problem of compiling the libraries with a =
64bits compiler, it=E2=80=99s because they interface with some FW in the =
Videocore IV that supports only 32 bits addressing, and that =
communicates with the userland through 32 bits =
=E2=80=9Cpointers=E2=80=9D (at least for the HW decoding parts).<br>And =
this is proprietary FW, that AFAIK will not be rebuilt to support 64 =
bits.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>So the only thing that should be possible in =
64 bits is to use the VC4 driver (open source), and disable the =
userland. The VC4 driver works fine, however you lose the HW decoding =
capabilities that the userland provides (H.264/MPEG2, + some =
audio).<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>As a consequence, anything that uses those =
or other userland features (gst-omx/omxplayer/=E2=80=A6) can=E2=80=99t =
be compiled or run in 64bits.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>What should work, though, is Wayland in =
64bits using VC4 driver (at least, I had that working with a previous =
kernel version). But anything playing AV will have to resort back to =
using SW decode, AFAIK.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Cheers,<br>Herve<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Luca Carlon<br><b>Sent:</b> mercredi 3 mai 2017 =
18:19<br><b>To:</b> Khem Raj &lt;raj.khem@gmail.com&gt;<br><b>Cc:</b> =
yocto@yoctoproject.org<br><b>Subject:</b> ***SPAM*** Re: [yocto] =
[meta-raspberrypi] Building rpi-test-image for Pi3 64 =
bit<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>What =
I'd like to be able to do is setup is a 64bit system including the =
libraries from the userland repo: <a =
href=3D"https://github.com/raspberrypi/userland">https://github.com/raspb=
errypi/userland</a>. I suspect vc4graphic is something different, isn't =
it?<br>But maybe you're right and those libs will never be built, as I =
see that according to <a =
href=3D"https://github.com/raspberrypi/userland/pull/347">https://github.=
com/raspberrypi/userland/pull/347</a> not everything builds in userland. =
In the recipe I however see that the ARM64 macro is defined and so I'm =
asking myself which libraries are currently supported and which are not. =
Anyone who knows?<br>Thank you!<br><br>Luca<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On Wed, =
May 3, 2017 at 2:35 PM, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" =
target=3D"_blank">raj.khem@gmail.com</a>&gt; =
wrote:<o:p></o:p></p><blockquote style=3D'border:none;border-left:solid =
#CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Wed, May 3, 2017 at 8:28 AM Luca Carlon &lt;<a =
href=3D"mailto:carlon.luca@gmail.com" =
target=3D"_blank">carlon.luca@gmail.com</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><div><p class=3DMsoNormal>thank =
you for your help. I followed your advice and I'm now able to build =
rpi-test-image for raspberrypi2 and raspberrypi3. When I try =
raspberrypi3-64 instead I'm getting a few errors. I fixed one build =
error, but then I got:&nbsp;<a href=3D"https://pastebin.com/pL2mei9s" =
target=3D"_blank">https://pastebin.com/pL2mei9s</a>. It seems that those =
libs were not added to the sysroot for some reason. I think those come =
from the userspace package probably. As it seems to work for the other =
machines I'm trying to determine what difference raspberrypi3-64 is =
introducing but for the moment I'm failing. Any idea what is causing =
this error? Are you able to build rpi-test-image? rpi-basic-image seems =
to work but not rpi-test-image, which includes omxplayer and other libs =
that I need like libEGL, libGLESv2, libopenmax =
etc...<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>These are my current conf =
files:<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><a href=3D"https://pastebin.com/LJnRfDUj" =
target=3D"_blank">https://pastebin.com/LJnRfDUj</a><o:p></o:p></p></div><=
div><p class=3DMsoNormal><a href=3D"https://pastebin.com/axt9RLQS" =
target=3D"_blank">https://pastebin.com/axt9RLQS</a><o:p></o:p></p></div><=
div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Any idea why those libs cannot be =
found?<o:p></o:p></p></div><div><p class=3DMsoNormal>Thank =
you!<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Regards.<o:p></o:p></p></div></div></blockquote><div><p=
 class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>I don't know if anyone here has got GUI up with rpi64 =
using yocto yet however you could try to use vc4 graphics drivers by =
adding &quot;vc4graphic&quot; to =
MACHINE_FEATURES<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Luca<o:p></o:p></p></div></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On Sat, =
Apr 29, 2017 at 9:40 AM, Andrea Galbusera &lt;<a =
href=3D"mailto:gizero@gmail.com" =
target=3D"_blank">gizero@gmail.com</a>&gt; =
wrote:<o:p></o:p></p><blockquote style=3D'border:none;border-left:solid =
#CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><p =
class=3DMsoNormal>On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon &lt;<a =
href=3D"mailto:carlon.luca@gmail.com" =
target=3D"_blank">carlon.luca@gmail.com</a>&gt; =
wrote:<o:p></o:p></p><blockquote style=3D'border:none;border-left:solid =
#CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><p =
class=3DMsoNormal>Hello,<br>thank you very much for your advice. It =
seems I can build both a minimal image and rpi-basic-image. I would like =
to test to see if the Pi is able to boot with these images but it seems =
that the images directory does not contain any sdimg file. By reading <a =
href=3D"https://github.com/agherzan/meta-raspberrypi" =
target=3D"_blank">https://github.com/agherzan/meta-raspberrypi</a> and =
<a =
href=3D"https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Embedd=
ed-System-Images-with-Yocto" =
target=3D"_blank">https://github.com/Nuand/bladeRF/wiki/Creating-Linux-ba=
sed-Embedded-System-Images-with-Yocto</a> it seems I should find a sdimg =
file to flash to the sdcard. I suppose this image file contains both the =
boot and rootfs partitions. But it seems I do not see this image at all, =
this is a list of what I can see in tmp/deploy/images/raspberrypi3-64: =
<a href=3D"https://pastebin.com/8XsRHzUY" =
target=3D"_blank">https://pastebin.com/8XsRHzUY</a>. I see the rootfs =
filesystem that I can extract in a partition, but not the boot partition =
the Pi needs. Maybe I'm missing some line in the conf =
files?<o:p></o:p></p></div></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>If you are using the local.conf you previously posted, =
the line:<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>IMAGE_FSTYPES =3D =
&quot;tar.xz&quot;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>is overriding default configuration from rpi-base.inc =
in meta-raspberrypi which is:<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>IMAGE_FSTYPES ?=3D &quot;tar.bz2 ext3 =
rpi-sdimg&quot;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>You can also consider using wic image format to =
generate a flashable image (see Yocto documentation on how to do =
that).<o:p></o:p></p></div></div></div></div></blockquote></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p class=3DMsoNormal><span =
class=3Dhoenzb><span style=3D'color:#888888'>--</span></span><span =
style=3D'color:#888888'><br><span =
class=3Dhoenzb>_______________________________________________</span><br>=
<span class=3Dhoenzb>yocto mailing list</span><br><span =
class=3Dhoenzb><a href=3D"mailto:yocto@yoctoproject.org" =
target=3D"_blank">yocto@yoctoproject.org</a></span><br><span =
class=3Dhoenzb><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a></span=
></span><o:p></o:p></p></blockquote></div></div></blockquote></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></body></html>

------=_NextPart_000_0075_01D2C499.D0F42FB0--
