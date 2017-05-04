Return-Path: <carlon.luca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91484E00852; Wed,  3 May 2017 23:52:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (carlon.luca[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4BDFE0053A
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 23:52:40 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id o5so8394566ith.1
	for <yocto@yoctoproject.org>; Wed, 03 May 2017 23:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uRF4fH+7Lu6BxRlCTdSfZ72vzIo44gMDMc+CD3btjHk=;
	b=ZIhqS3452CFAVRR/yRWZZtCFeBuNQg2nUEJuRl62hbaivpffZWjqNgr4GqqqFk8pMv
	Pg/qTcW87Wbn+gGMgOz8H+7RrrjLfNrn5oOLiQw/z3qv9wBAKCIuZOYbEQFDy7PVeLou
	x/u3NjCWkQnVpXPq50IIpQxwBidJoLUVcHzezQBScoOoNpjySsfil/qkJmTS+XqKxs83
	twu8k9Uv4bm8yNT487d4vgiZJwGr37Vb1ip2AcSMzTcbHsSHISQ8GVjc3HHsM0q/pV+O
	oNRWkEkgLPtbAdbgZD746EeyLYvexyZbbRhacQeZrUe/8zXZBEVfbgzo8t3MD30X1M6h
	g0tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uRF4fH+7Lu6BxRlCTdSfZ72vzIo44gMDMc+CD3btjHk=;
	b=ADPE0BZDpvVIb45Vl2X+4Ed149WsNT/2z/R+s4t3jdP1IfGUnb1opHN2sr79/CuV82
	HM8iRL6aQ8oFqbA6xjxZ+gFK9I1edbnBl4ZTKOeOzQ64SxQcsgq46VdoZD6VX4af+idL
	+qAvmc1xk1D6g+EaC3qw72d2Y/DO61XOs/Cb2g+W5BQwNViFNxe9fUHfyPOiaIVSEn2A
	CdP1cedy6mXZKaJXXC1c0ogZrVkxavlS2V9tYaPj6wBsatJGaEAIGTj5cpykwIwwRq1V
	z17+DF9lUt31SpdBu9M0gWCJv8qIcGcCF2K+S8TxbdyqpbYK/j7jU3hxWoExwIVjSFUJ
	ODag==
X-Gm-Message-State: AN3rC/5T1BZ74u87nGIZDk5wzRAR4MEsu5SidYJ8UPzJZCd8/iCjcgUL
	3Oo/FUJ3FWEx3IlQSfl0IFXuGssz3Q==
X-Received: by 10.202.73.3 with SMTP id w3mr676025oia.109.1493880760226; Wed,
	03 May 2017 23:52:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.63.197 with HTTP; Wed, 3 May 2017 23:52:39 -0700 (PDT)
Received: by 10.202.63.197 with HTTP; Wed, 3 May 2017 23:52:39 -0700 (PDT)
In-Reply-To: <007401d2c489$0d6915c0$283b4140$@neuf.fr>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
	<CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
	<CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
	<CAC+thW0Lcmkn-zL_AyQXztQNywLxPAW0zFUM2YVCDvE8YcTFfw@mail.gmail.com>
	<CAMC=D=ts+93_6zoOgXtv9HkQ4GE897SiwJKHpEJbxt-KeO6J=A@mail.gmail.com>
	<CAMKF1srH1kLEKaG1rd7hQTyPn+6PVYkvddzpg-xj0KKEhVWDFw@mail.gmail.com>
	<CAMC=D=sMPe65F2gf2KwJXTaUkwBgtqv94X9H8n9Aj+Bqyx+r8A@mail.gmail.com>
	<007401d2c489$0d6915c0$283b4140$@neuf.fr>
From: Luca Carlon <carlon.luca@gmail.com>
Date: Thu, 4 May 2017 08:52:39 +0200
Message-ID: <CAMC=D=tGx4q+8D49hjsu-H8QRknUZqo13M8qWfC4QFG93UJN3Q@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: ***SPAM*** Re: [meta-raspberrypi] Building rpi-test-image for Pi3 64 bit
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
X-List-Received-Date: Thu, 04 May 2017 06:52:44 -0000
Content-Type: multipart/alternative; boundary=001a113dbf240cd99b054ead383f

--001a113dbf240cd99b054ead383f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
thank you very much for your answer. I read about the fw limitations but I
couldn't find what exactly is working and what is not. This explains the
error that I was getting.
Thank you for your help!

Luca

Il 04 Mag 2017 05:46, "Herve Jourdain" <herve.jourdain@neuf.fr> ha scritto:

> Hi Luca,
>
>
>
> The userland libraries do not support 64 bits. It=E2=80=99s not just a pr=
oblem of
> compiling the libraries with a 64bits compiler, it=E2=80=99s because they=
 interface
> with some FW in the Videocore IV that supports only 32 bits addressing, a=
nd
> that communicates with the userland through 32 bits =E2=80=9Cpointers=E2=
=80=9D (at least
> for the HW decoding parts).
> And this is proprietary FW, that AFAIK will not be rebuilt to support 64
> bits.
>
> So the only thing that should be possible in 64 bits is to use the VC4
> driver (open source), and disable the userland. The VC4 driver works fine=
,
> however you lose the HW decoding capabilities that the userland provides
> (H.264/MPEG2, + some audio).
>
> As a consequence, anything that uses those or other userland features
> (gst-omx/omxplayer/=E2=80=A6) can=E2=80=99t be compiled or run in 64bits.
>
> What should work, though, is Wayland in 64bits using VC4 driver (at least=
,
> I had that working with a previous kernel version). But anything playing =
AV
> will have to resort back to using SW decode, AFAIK.
>
>
>
> Cheers,
> Herve
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:yocto-bounces@
> yoctoproject.org] *On Behalf Of *Luca Carlon
> *Sent:* mercredi 3 mai 2017 18:19
> *To:* Khem Raj <raj.khem@gmail.com>
> *Cc:* yocto@yoctoproject.org
> *Subject:* ***SPAM*** Re: [yocto] [meta-raspberrypi] Building
> rpi-test-image for Pi3 64 bit
>
>
>
> What I'd like to be able to do is setup is a 64bit system including the
> libraries from the userland repo: https://github.com/raspberrypi/userland=
.
> I suspect vc4graphic is something different, isn't it?
> But maybe you're right and those libs will never be built, as I see that
> according to https://github.com/raspberrypi/userland/pull/347 not
> everything builds in userland. In the recipe I however see that the ARM64
> macro is defined and so I'm asking myself which libraries are currently
> supported and which are not. Anyone who knows?
> Thank you!
>
> Luca
>
>
>
> On Wed, May 3, 2017 at 2:35 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On Wed, May 3, 2017 at 8:28 AM Luca Carlon <carlon.luca@gmail.com> wrote:
>
> Hello,
>
> thank you for your help. I followed your advice and I'm now able to build
> rpi-test-image for raspberrypi2 and raspberrypi3. When I try
> raspberrypi3-64 instead I'm getting a few errors. I fixed one build error=
,
> but then I got: https://pastebin.com/pL2mei9s. It seems that those libs
> were not added to the sysroot for some reason. I think those come from th=
e
> userspace package probably. As it seems to work for the other machines I'=
m
> trying to determine what difference raspberrypi3-64 is introducing but fo=
r
> the moment I'm failing. Any idea what is causing this error? Are you able
> to build rpi-test-image? rpi-basic-image seems to work but not
> rpi-test-image, which includes omxplayer and other libs that I need like
> libEGL, libGLESv2, libopenmax etc...
>
>
>
> These are my current conf files:
>
>
>
> https://pastebin.com/LJnRfDUj
>
> https://pastebin.com/axt9RLQS
>
>
>
> Any idea why those libs cannot be found?
>
> Thank you!
>
> Regards.
>
>
>
> I don't know if anyone here has got GUI up with rpi64 using yocto yet
> however you could try to use vc4 graphics drivers by adding "vc4graphic" =
to
> MACHINE_FEATURES
>
>
>
> Luca
>
>
>
> On Sat, Apr 29, 2017 at 9:40 AM, Andrea Galbusera <gizero@gmail.com>
> wrote:
>
> On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon <carlon.luca@gmail.com>
> wrote:
>
> Hello,
> thank you very much for your advice. It seems I can build both a minimal
> image and rpi-basic-image. I would like to test to see if the Pi is able =
to
> boot with these images but it seems that the images directory does not
> contain any sdimg file. By reading https://github.com/agherzan/
> meta-raspberrypi and https://github.com/Nuand/bladeRF/wiki/Creating-Linux=
-
> based-Embedded-System-Images-with-Yocto it seems I should find a sdimg
> file to flash to the sdcard. I suppose this image file contains both the
> boot and rootfs partitions. But it seems I do not see this image at all,
> this is a list of what I can see in tmp/deploy/images/raspberrypi3-64:
> https://pastebin.com/8XsRHzUY. I see the rootfs filesystem that I can
> extract in a partition, but not the boot partition the Pi needs. Maybe I'=
m
> missing some line in the conf files?
>
>
>
> If you are using the local.conf you previously posted, the line:
>
>
>
> IMAGE_FSTYPES =3D "tar.xz"
>
>
>
> is overriding default configuration from rpi-base.inc in meta-raspberrypi
> which is:
>
>
>
> IMAGE_FSTYPES ?=3D "tar.bz2 ext3 rpi-sdimg"
>
>
>
> You can also consider using wic image format to generate a flashable imag=
e
> (see Yocto documentation on how to do that).
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a113dbf240cd99b054ead383f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto">thank you very much for your answ=
er. I read about the fw limitations but I couldn&#39;t find what exactly is=
 working and what is not. This explains the error that I was getting.</div>=
<div dir=3D"auto">Thank you for your help!</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Luca</div></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">Il 04 Mag 2017 05:46, &quot;Herve Jourdain&quot; &lt;<a h=
ref=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt; ha scr=
itto:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"F=
R" link=3D"blue" vlink=3D"purple"><div class=3D"m_1583600550908207611WordSe=
ction1"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1f497d">Hi Luca,<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1f497d">The userland libraries d=
o not support 64 bits. It=E2=80=99s not just a problem of compiling the lib=
raries with a 64bits compiler, it=E2=80=99s because they interface with som=
e FW in the Videocore IV that supports only 32 bits addressing, and that co=
mmunicates with the userland through 32 bits =E2=80=9Cpointers=E2=80=9D (at=
 least for the HW decoding parts).<br>And this is proprietary FW, that AFAI=
K will not be rebuilt to support 64 bits.<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:#1f497d">So the only thing that should =
be possible in 64 bits is to use the VC4 driver (open source), and disable =
the userland. The VC4 driver works fine, however you lose the HW decoding c=
apabilities that the userland provides (H.264/MPEG2, + some audio).<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">As a =
consequence, anything that uses those or other userland features (gst-omx/o=
mxplayer/=E2=80=A6) can=E2=80=99t be compiled or run in 64bits.<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">What shou=
ld work, though, is Wayland in 64bits using VC4 driver (at least, I had tha=
t working with a previous kernel version). But anything playing AV will hav=
e to resort back to using SW decode, AFAIK.<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Cheers,<br>Herve<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"f=
ont-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><=
u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span lang=3D"EN-US=
" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">Fro=
m:</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif"> <a href=3D"mailto:yocto-bounces@yoctoproject.=
org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
<wbr>yoctoproject.org</a>] <b>On Behalf Of </b>Luca Carlon<br><b>Sent:</b> =
mercredi 3 mai 2017 18:19<br><b>To:</b> Khem Raj &lt;<a href=3D"mailto:raj.=
khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;<br><b>Cc:</b> =
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br><b>Subject:</b> ***SPAM*** Re: [yocto] [meta-raspberrypi] Bu=
ilding rpi-test-image for Pi3 64 bit<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><div><p class=3D"MsoNormal">What I&#39;d l=
ike to be able to do is setup is a 64bit system including the libraries fro=
m the userland repo: <a href=3D"https://github.com/raspberrypi/userland" ta=
rget=3D"_blank">https://github.com/<wbr>raspberrypi/userland</a>. I suspect=
 vc4graphic is something different, isn&#39;t it?<br>But maybe you&#39;re r=
ight and those libs will never be built, as I see that according to <a href=
=3D"https://github.com/raspberrypi/userland/pull/347" target=3D"_blank">htt=
ps://github.com/<wbr>raspberrypi/userland/pull/347</a> not everything build=
s in userland. In the recipe I however see that the ARM64 macro is defined =
and so I&#39;m asking myself which libraries are currently supported and wh=
ich are not. Anyone who knows?<br>Thank you!<br><br>Luca<u></u><u></u></p><=
/div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><p class=3D"M=
soNormal">On Wed, May 3, 2017 at 2:35 PM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<u></u=
><u></u></p><blockquote style=3D"border:none;border-left:solid #cccccc 1.0p=
t;padding:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm"><div><p cla=
ss=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">O=
n Wed, May 3, 2017 at 8:28 AM Luca Carlon &lt;<a href=3D"mailto:carlon.luca=
@gmail.com" target=3D"_blank">carlon.luca@gmail.com</a>&gt; wrote:<u></u><u=
></u></p></div><blockquote style=3D"border:none;border-left:solid #cccccc 1=
.0pt;padding:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm"><div><p =
class=3D"MsoNormal">Hello,<u></u><u></u></p><div><p class=3D"MsoNormal">tha=
nk you for your help. I followed your advice and I&#39;m now able to build =
rpi-test-image for raspberrypi2 and raspberrypi3. When I try raspberrypi3-6=
4 instead I&#39;m getting a few errors. I fixed one build error, but then I=
 got:=C2=A0<a href=3D"https://pastebin.com/pL2mei9s" target=3D"_blank">http=
s://pastebin.com/<wbr>pL2mei9s</a>. It seems that those libs were not added=
 to the sysroot for some reason. I think those come from the userspace pack=
age probably. As it seems to work for the other machines I&#39;m trying to =
determine what difference raspberrypi3-64 is introducing but for the moment=
 I&#39;m failing. Any idea what is causing this error? Are you able to buil=
d rpi-test-image? rpi-basic-image seems to work but not rpi-test-image, whi=
ch includes omxplayer and other libs that I need like libEGL, libGLESv2, li=
bopenmax etc...<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">These are my current con=
f files:<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u=
></u></p></div><div><p class=3D"MsoNormal"><a href=3D"https://pastebin.com/=
LJnRfDUj" target=3D"_blank">https://pastebin.com/LJnRfDUj</a><u></u><u></u>=
</p></div><div><p class=3D"MsoNormal"><a href=3D"https://pastebin.com/axt9R=
LQS" target=3D"_blank">https://pastebin.com/axt9RLQS</a><u></u><u></u></p><=
/div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p clas=
s=3D"MsoNormal">Any idea why those libs cannot be found?<u></u><u></u></p><=
/div><div><p class=3D"MsoNormal">Thank you!<u></u><u></u></p></div><div><p =
class=3D"MsoNormal">Regards.<u></u><u></u></p></div></div></blockquote><div=
><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoN=
ormal">I don&#39;t know if anyone here has got GUI up with rpi64 using yoct=
o yet however you could try to use vc4 graphics drivers by adding &quot;vc4=
graphic&quot; to MACHINE_FEATURES<u></u><u></u></p></div><blockquote style=
=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0cm 0cm 0cm 6.0pt;m=
argin-left:4.8pt;margin-right:0cm"><div><div><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Luca<u></u><u></u></p></=
div></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><p class=
=3D"MsoNormal">On Sat, Apr 29, 2017 at 9:40 AM, Andrea Galbusera &lt;<a hre=
f=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt; wr=
ote:<u></u><u></u></p><blockquote style=3D"border:none;border-left:solid #c=
ccccc 1.0pt;padding:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm"><=
div><div><div><p class=3D"MsoNormal">On Sat, Apr 29, 2017 at 2:39 AM, Luca =
Carlon &lt;<a href=3D"mailto:carlon.luca@gmail.com" target=3D"_blank">carlo=
n.luca@gmail.com</a>&gt; wrote:<u></u><u></u></p><blockquote style=3D"borde=
r:none;border-left:solid #cccccc 1.0pt;padding:0cm 0cm 0cm 6.0pt;margin-lef=
t:4.8pt;margin-right:0cm"><div><p class=3D"MsoNormal">Hello,<br>thank you v=
ery much for your advice. It seems I can build both a minimal image and rpi=
-basic-image. I would like to test to see if the Pi is able to boot with th=
ese images but it seems that the images directory does not contain any sdim=
g file. By reading <a href=3D"https://github.com/agherzan/meta-raspberrypi"=
 target=3D"_blank">https://github.com/agherzan/<wbr>meta-raspberrypi</a> an=
d <a href=3D"https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Emb=
edded-System-Images-with-Yocto" target=3D"_blank">https://github.com/Nuand/=
<wbr>bladeRF/wiki/Creating-Linux-<wbr>based-Embedded-System-Images-<wbr>wit=
h-Yocto</a> it seems I should find a sdimg file to flash to the sdcard. I s=
uppose this image file contains both the boot and rootfs partitions. But it=
 seems I do not see this image at all, this is a list of what I can see in =
tmp/deploy/images/<wbr>raspberrypi3-64: <a href=3D"https://pastebin.com/8Xs=
RHzUY" target=3D"_blank">https://pastebin.com/8XsRHzUY</a>. I see the rootf=
s filesystem that I can extract in a partition, but not the boot partition =
the Pi needs. Maybe I&#39;m missing some line in the conf files?<u></u><u><=
/u></p></div></blockquote><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u><=
/p></div><div><p class=3D"MsoNormal">If you are using the local.conf you pr=
eviously posted, the line:<u></u><u></u></p></div><div><p class=3D"MsoNorma=
l"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">IMAGE_FSTYPES =
=3D &quot;tar.xz&quot;<u></u><u></u></p></div><div><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">is overriding defa=
ult configuration from rpi-base.inc in meta-raspberrypi which is:<u></u><u>=
</u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><di=
v><p class=3D"MsoNormal">IMAGE_FSTYPES ?=3D &quot;tar.bz2 ext3 rpi-sdimg&qu=
ot;<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u>=
</p></div><div><p class=3D"MsoNormal">You can also consider using wic image=
 format to generate a flashable image (see Yocto documentation on how to do=
 that).<u></u><u></u></p></div></div></div></div></blockquote></div><p clas=
s=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><p class=3D"MsoNormal"><span =
class=3D"m_1583600550908207611hoenzb"><span style=3D"color:#888888">--</spa=
n></span><span style=3D"color:#888888"><br><span class=3D"m_158360055090820=
7611hoenzb">______________________________<wbr>_________________</span><br>=
<span class=3D"m_1583600550908207611hoenzb">yocto mailing list</span><br><s=
pan class=3D"m_1583600550908207611hoenzb"><a href=3D"mailto:yocto@yoctoproj=
ect.org" target=3D"_blank">yocto@yoctoproject.org</a></span><br><span class=
=3D"m_1583600550908207611hoenzb"><a href=3D"https://lists.yoctoproject.org/=
listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a></span></span><u></u><u></u></p></blockquote></div></div></blo=
ckquote></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div></=
div></blockquote></div></div>

--001a113dbf240cd99b054ead383f--
