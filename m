Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70FD9E01560
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 22:12:40 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id gf11so3835653vcb.25
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 22:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=OgkBt8Th+ZFLN4dQoMREEjIrjVsHielInb741xvMGbM=;
	b=wNDPc3mrhqIqEzNA2Zo96BX1jILTNgk/KDZSaqY1i/vl4rfF0S+rAioI+LYpzgiIIm
	FPPIGF6+f79EpmRzHhUII0IkrSK9RrUTgho4jGIFyqXMc4iW/tmXegh0lPDQlwlPQg8d
	5KnJzEwmUlMUEMLpVYZMvW8NkeupZvXrFHB4UEqfxfTohhpH99k0YdYb36vL98zz5mLl
	j9L+C75YQMvKUBeWodWK6K5Whwv1B+GAUYPLy62MAEbRwiO+wcwEpDQdADUzUAmMxoBk
	mY6rdrjVN2iREoiHsYV9IxnorOwE7voroDt19IYbWzmPzaDNoTbyhWL4KLCUzIyhCRvx
	QCcg==
MIME-Version: 1.0
X-Received: by 10.52.228.67 with SMTP id sg3mr7879906vdc.55.1371013960103;
	Tue, 11 Jun 2013 22:12:40 -0700 (PDT)
Received: by 10.52.179.33 with HTTP; Tue, 11 Jun 2013 22:12:39 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C39CA0@ORSMSX103.amr.corp.intel.com>
References: <CAFMfyz+_j-mWj4C0YJUnOBcCX-oMGc8196pmPcQcD8XbK6r0xA@mail.gmail.com>
	<CA+YB3rYq6_o_Sc50t0TVm5rnEeG2MD2qo=Ya6WKyG=c5vy_vHg@mail.gmail.com>
	<CAFMfyzKzvBDTxPoLN6=fFkP=Rbd_KWVpLk=352F6OxB3e5-iWg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C39CA0@ORSMSX103.amr.corp.intel.com>
Date: Wed, 12 Jun 2013 07:12:39 +0200
Message-ID: <CAFMfyz+km6mQctRO5d52+p4+4hKuE9qzv755EjTOW7Zc3KEb0Q@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 12 Jun 2013 05:12:41 -0000
Content-Type: multipart/alternative; boundary=089e01183d4e12fc9504deee10b9

--089e01183d4e12fc9504deee10b9
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

By the sentence "No crosscompiler for my target installed in my toolchain",
I mean I don't find the binaries for crosscompiling which are usually
present in the directory as shown below

*damarla@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux/us=
r/bin$
ls*
*aclocal        autoreconf        flash2raw.terrier       opkg-key
 pseudolog  qemu-mipsel       qemu-system-mipsel  raw2flash.terrier
 runqemu-ifup*
*aclocal-1.12   autoscan          gnu-configize           perl
 qemu-arm   qemu-mips.real    qemu-system-ppc     runqemu
 runqemu-internal*
*autoconf       autoupdate        ifnames                 perl5.14.3
 qemu-ga    qemu-nbd          qemu-system-x86_64  runqemu-addptable2image
 tunctl*
*autoheader     dtc               libtoolize              perl.real
qemu-i386  qemu-ppc          qemu-x86_64         runqemu-export-rootfs
 update-alternatives*
*autom4te       flash2raw.akita   m4                      pkg-config
 qemu-img   qemu-system-arm   raw2flash.akita     runqemu-extract-sdk
 x86_64-pokysdk-linux-libtool*
*automake       flash2raw.borzoi  oe-find-native-sysroot  pseudo
 qemu-io    qemu-system-i386  raw2flash.borzoi    runqemu-gen-tapdevs*
*automake-1.12  flash2raw.spitz   opkg-cl                 pseudodb
 qemu-mips  qemu-system-mips  raw2flash.spitz     runqemu-ifdown*


I don't have a directory and the list is empty

*damarla@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux/us=
r/bin$
ls -la| egrep '^d'*
*drwxr-xr-x 2 damarla damarla    4096 Jun 11 14:27 .*
*drwxr-xr-x 7 damarla damarla    4096 Jun 11 14:15 ..*
*
*
I want to know what could be the potential issue that my toolchain has no
crosscompiler for my target

Greets,
Satya


On Tue, Jun 11, 2013 at 9:05 PM, Zhang, Jessica <jessica.zhang@intel.com>wr=
ote:

>  Hi Satya,****
>
> ** **
>
> What is your cross compiler that you said it=92s not installed? For examp=
le,
> on my development host e.g. x86, after I install the toolchain, there=92s=
 an
> environment-setup-*** file, inside it specifies what is your cross
> compiler, e.g. arm-poky-linux-gnueabi-gcc for my case, after I source the
> environment file, and do which arm-poky-linux-gnueabi-gcc, I can see it=
=92s
> under
> path_to_toolchain/sysroots/i686_pokysdk_linux/usr/bin/armv5te-poky-linux-=
gnueabi/arm-poky-linux-gnueabi-gcc=85
> so you=92re seeing things differently?****
>
> ** **
>
> Jessica****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *DAMARLA Satya Swaroop
> *Sent:* Tuesday, June 11, 2013 11:55 AM
> *To:* Jeff Osier-Mixon; yocto@yoctoproject.org
> *Subject:* Re: [yocto] No crosscompiler in Toolchain****
>
> ** **
>
> First I am sorry about the Gentlemen.... Next time it would be Ladies &
> Gentlemen... ;-)****
>
> ** **
>
> Let me explain the situation better ... *core-image-skidata* (arm) is
> customized image which I build and I want to build a toolchain for this
> image on my x86_64 with should consist of cross compiler (which I assume =
a
> toolchain should contain). The build for the toolchain went successfull b=
ut
> when I installed the toolchain on my system, I didnot find the
> crosscompiler installed...****
>
> ** **
>
> Hope you understood my problem..****
>
> ** **
>
> Greets,****
>
> Satya****
>
> ** **
>
> On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote=
:
> ****
>
> On Tue, Jun 11, 2013 at 5:59 AM, DAMARLA Satya Swaroop
> <swaroop.damarla@gmail.com> wrote:
> > Gentlemen! We have a problem here...****
>
> Not all here are gentlemen :)****
>
>
> > I compiled the toolchain using the command bitbake core-image-skidata -=
c
> > populate_sdk and installed the toolchain but I have to tell you that I
> dont
> > see any cross-compiler installed with the toolchain...
> >
> > Any guesses what could be the reason.. The image is customized x11
> image...****
>
> I'm not sure I understand. It looks like you are using Host A to build
> a toolchain and install it into an image (core-image-skidata) on
> Target A. Are you then expecting to use Target A as Host B to compile
> for Target B?  Is it possible that the skidata image recipe does not
> contain the cross-compiler recipes?
>
> --
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org****
>
> ** **
>

--089e01183d4e12fc9504deee10b9
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jessica,<div><br></div><div>By the sentence &quot;No cr=
osscompiler for my target installed in my toolchain&quot;, I mean I don&#39=
;t find the binaries for crosscompiling which are usually present in the di=
rectory as shown below</div>
<div><br></div><div><div><i>damarla@linuxbuildsrv:~/yocto/myToolchain/sysro=
ots/x86_64-pokysdk-linux/usr/bin$ ls</i></div><div><i>aclocal =A0 =A0 =A0 =
=A0autoreconf =A0 =A0 =A0 =A0flash2raw.terrier =A0 =A0 =A0 opkg-key =A0 =A0=
pseudolog =A0qemu-mipsel =A0 =A0 =A0 qemu-system-mipsel =A0raw2flash.terrie=
r =A0 =A0 =A0 =A0runqemu-ifup</i></div>
<div><i>aclocal-1.12 =A0 autoscan =A0 =A0 =A0 =A0 =A0gnu-configize =A0 =A0 =
=A0 =A0 =A0 perl =A0 =A0 =A0 =A0qemu-arm =A0 qemu-mips.real =A0 =A0qemu-sys=
tem-ppc =A0 =A0 runqemu =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0runqemu-internal=
</i></div><div><i>autoconf =A0 =A0 =A0 autoupdate =A0 =A0 =A0 =A0ifnames =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 perl5.14.3 =A0qemu-ga =A0 =A0qemu-nbd =A0 =
=A0 =A0 =A0 =A0qemu-system-x86_64 =A0runqemu-addptable2image =A0tunctl</i><=
/div>
<div><i>autoheader =A0 =A0 dtc =A0 =A0 =A0 =A0 =A0 =A0 =A0 libtoolize =A0 =
=A0 =A0 =A0 =A0 =A0 =A0perl.real =A0 qemu-i386 =A0qemu-ppc =A0 =A0 =A0 =A0 =
=A0qemu-x86_64 =A0 =A0 =A0 =A0 runqemu-export-rootfs =A0 =A0update-alternat=
ives</i></div><div><i>autom4te =A0 =A0 =A0 flash2raw.akita =A0 m4 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0pkg-config =A0qemu-img =A0 qemu-system-a=
rm =A0 raw2flash.akita =A0 =A0 runqemu-extract-sdk =A0 =A0 =A0x86_64-pokysd=
k-linux-libtool</i></div>
<div><i>automake =A0 =A0 =A0 flash2raw.borzoi =A0oe-find-native-sysroot =A0=
pseudo =A0 =A0 =A0qemu-io =A0 =A0qemu-system-i386 =A0raw2flash.borzoi =A0 =
=A0runqemu-gen-tapdevs</i></div><div><i>automake-1.12 =A0flash2raw.spitz =
=A0 opkg-cl =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 pseudodb =A0 =A0qemu-mips =A0qe=
mu-system-mips =A0raw2flash.spitz =A0 =A0 runqemu-ifdown</i></div>
</div><div><br></div><div><br></div><div style>I don&#39;t have a directory=
 and the list is empty</div><div style><br></div><div style><div><i>damarla=
@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux/usr/bin$ l=
s -la| egrep &#39;^d&#39;</i></div>
<div><i>drwxr-xr-x 2 damarla damarla =A0 =A04096 Jun 11 14:27 .</i></div><d=
iv><i>drwxr-xr-x 7 damarla damarla =A0 =A04096 Jun 11 14:15 ..</i></div><di=
v><i><br></i></div><div style>I want to know what could be the potential is=
sue that my toolchain has no crosscompiler for my target</div>
<div style><br></div><div style>Greets,</div><div style>Satya</div></div></=
div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, J=
un 11, 2013 at 9:05 PM, Zhang, Jessica <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@intel.com</a>&=
gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Satya,<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">What is your cross compil=
er that you said it=92s not installed? For example, on my development host =
e.g. x86, after I install the toolchain, there=92s an environment-setup-***
 file, inside it specifies what is your cross compiler, e.g. arm-poky-linux=
-gnueabi-gcc for my case, after I source the environment file, and do which=
 arm-poky-linux-gnueabi-gcc, I can see it=92s under path_to_toolchain/sysro=
ots/i686_pokysdk_linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gn=
ueabi-gcc=85
 so you=92re seeing things differently?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jessica<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>DAMARLA Satya Swaroop<br>
<b>Sent:</b> Tuesday, June 11, 2013 11:55 AM<br>
<b>To:</b> Jeff Osier-Mixon; <a href=3D"mailto:yocto@yoctoproject.org" targ=
et=3D"_blank">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] No crosscompiler in Toolchain<u></u><u></u></sp=
an></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">First I am sorry about the Gentlemen.... Next time i=
t would be Ladies &amp; Gentlemen... ;-)<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Let me explain the situation better ... <i>core-imag=
e-skidata</i>=A0(arm) is customized image which I build and I want to build=
 a toolchain for this image on my x86_64 with should consist of cross compi=
ler (which I assume a toolchain should
 contain). The build for the toolchain went successfull but when I installe=
d the toolchain on my system, I didnot find the crosscompiler installed...<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Hope you understood my problem..<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Greets,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Satya<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon &l=
t;<a href=3D"mailto:jefro@jefro.net" target=3D"_blank">jefro@jefro.net</a>&=
gt; wrote:<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Tue, Jun 11, 2013 =
at 5:59 AM, DAMARLA Satya Swaroop<br>
&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.=
damarla@gmail.com</a>&gt; wrote:<br>
&gt; Gentlemen! We have a problem here...<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Not all here are gentlemen :)<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
&gt; I compiled the toolchain using the command bitbake core-image-skidata =
-c<br>
&gt; populate_sdk and installed the toolchain but I have to tell you that I=
 dont<br>
&gt; see any cross-compiler installed with the toolchain...<br>
&gt;<br>
&gt; Any guesses what could be the reason.. The image is customized x11 ima=
ge...<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">I&#39;m not sure I understand. It looks like you are=
 using Host A to build<br>
a toolchain and install it into an image (core-image-skidata) on<br>
Target A. Are you then expecting to use Target A as Host B to compile<br>
for Target B? =A0Is it possible that the skidata image recipe does not<br>
contain the cross-compiler recipes?<br>
<br>
--<br>
Jeff Osier-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">http:/=
/jefro.net/blog</a><br>
Yocto Project Community Manager @Intel <a href=3D"http://yoctoproject.org" =
target=3D"_blank">
http://yoctoproject.org</a><u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--089e01183d4e12fc9504deee10b9--
