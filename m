Return-Path: <djszapi@archlinux.us>
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B27DE013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 07:16:47 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id x11so440053pdj.1
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 07:16:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=vSIs4vVjDrqNPeFwc/oFyYBIwnjUyhtHjCwIdS3LGWM=;
	b=pv42wIMew7UURRHzPZ4wdw4KfmSV4lfjnBxv9849Kx7erbKlNKonD+Xc5nkWwqxxut
	pkm+n45Or5lSI3trdLUi4x8aKQctaJUbC3yJcT3N9UivN2ZRaDj+P0TupxGPhoQB8ZYO
	jRXXtPnnc/6bcUHApSVA/yi+SH6vPkKY1Ndtdl5CMEjq2pNxhEdZ9bp4ktWGEPLeZoJz
	asyBqbM+pW3fkrMjMzclipuuMJdlNB+9k6TESeC6AGvL5EaJgVusZrwBINUQKzVpb725
	BsthmEVmNcKMwtCBaSxavOqAbzIjSi+gvdggRj6WM9FFALgawBxHUO2Eo/+gd60qSZcI
	s44g==
MIME-Version: 1.0
X-Received: by 10.66.27.143 with SMTP id t15mr39502430pag.171.1374675406403;
	Wed, 24 Jul 2013 07:16:46 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 07:16:46 -0700 (PDT)
In-Reply-To: <CAOMwXhPTHWBV=BRdrPhFYNKEaX5CEx078LbadSVWNgDTxEEDYg@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<CAOMwXhPTHWBV=BRdrPhFYNKEaX5CEx078LbadSVWNgDTxEEDYg@mail.gmail.com>
Date: Wed, 24 Jul 2013 15:16:46 +0100
X-Google-Sender-Auth: 56se55TXmtzuRyk6EaoihH6aIOo
Message-ID: <CAOMwXhMg+vOTWBMDGWh7r9jny2CSKSgdoxrdX7Bfj9=qioXcMw@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQkqTwxSsl1tkspqH+bqxARiVQMWzMvuwBbL9Xemetac9fa42yxjv3dcY6L9PQVOpfNlErbL
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: FW: FW: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Wed, 24 Jul 2013 14:16:49 -0000
Content-Type: multipart/alternative; boundary=bcaec52bea1947cd4a04e2428f44

--bcaec52bea1947cd4a04e2428f44
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Sorry for the noise. Disregard the busybox issue as that has been now
solved. The problem is with the external sourcery toolchain inside the
platform as it seems. At least, the error message has no any reference to
my custom layer.


On Wed, Jul 24, 2013 at 3:14 PM, Laszlo Papp <lpapp@kde.org> wrote:

> It is a different issue I am facing on another computer, so yet another
> one to be solved, but here it goes:
>
> ERROR: Multiple .bb files are due to be built which each provide busybox =
(/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta-foo/recipes-core/busy=
box/busybox_1.20.2.bb /home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/=
recipes-core/busybox/busybox_1.20.2.bb).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide virtual/=
arm-none-linux-gnueabi-libc-for-gcc (/home/lpapp/Projects/foo/Yocto/poky-dy=
lan-9.0.0/meta/recipes-core/eglibc/eglibc_2.17.bb /home/lpapp/Projects/foo/=
Yocto/poky-dylan-9.0.0/meta/recipes-core/meta/external-sourcery-toolchain.b=
b).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide virtual/=
libc (/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core/egl=
ibc/eglibc_2.17.bb /home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/rec=
ipes-core/meta/external-sourcery-toolchain.bb).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide virtual/=
libiconv (/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core=
/eglibc/eglibc_2.17.bb /home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta=
/recipes-core/meta/external-sourcery-toolchain.bb).
>  This usually means one provides something the other doesn't and should.
>
> Any clue? It worked fine in denzil. :(
>
>
>
> On Wed, Jul 24, 2013 at 8:47 AM, Rifenbark, Scott M <
> scott.m.rifenbark@intel.com> wrote:
>
>>  Hi, ****
>>
>> ** **
>>
>> Can anyone address the toolchain questions here for Laszlo?****
>>
>> ** **
>>
>> Thanks, ****
>>
>> Scott****
>>
>> ** **
>>
>> *From:* djszapi@archlinux.us [mailto:djszapi@archlinux.us] *On Behalf Of
>> *Laszlo Papp
>> *Sent:* Tuesday, July 23, 2013 11:52 PM
>> *To:* Rifenbark, Scott M
>> *Cc:* Wold, Saul
>> *Subject:* Re: FW: [OE-core] Doc: external toolchain****
>>
>> ** **
>>
>> OK, thanks.****
>>
>> ** **
>>
>> I am facing this issue, any clue?****
>>
>> ** **
>>
>> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
>> '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found****
>>
>> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
>> '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found****
>>
>> ** **
>>
>> This is what I have in my build/conf/local.conf:****
>>
>> ** **
>>
>> ...****
>>
>> TCMODE =3D "external-sourcery"****
>>
>> EXTERNAL_TOOLCHAIN =3D "/usr"****
>>
>> TARGET_PREFIX =3D "arm-none-linux-gnueabi-"****
>>
>> ...****
>>
>> ** **
>>
>> The external toolchain does exist:****
>>
>> ** **
>>
>> /usr/bin/arm-none-linux-gnueabi-gcc -v****
>>
>> Using built-in specs.****
>>
>> COLLECT_GCC=3D/usr/bin/arm-none-linux-gnueabi-gcc****
>>
>>
>> COLLECT_LTO_WRAPPER=3D/usr/bin/../libexec/gcc/arm-none-linux-gnueabi/4.7=
.3/lto-wrapper
>> ****
>>
>> Target: arm-none-linux-gnueabi****
>>
>> Configured with:
>> /scratch/jbrown/2013.05-arm-linux-release/src/gcc-4.7-2013.05/configure
>> --build=3Di686-pc-linux-gnu --host=3Di686-pc-linux-gnu
>> --target=3Darm-none-linux-gnueabi --enable-threads --disable-libmudflap
>> --disable-libssp --disable-libstdcxx-pch --enable-extra-sgxxlite-multili=
bs
>> --with-arch=3Darmv5te --with-gnu-as --with-gnu-ld --with-specs=3D'%{save=
-temps:
>> -fverbose-asm}
>> %{funwind-tables|fno-unwind-tables|mabi=3D*|ffreestanding|nostdlib:;:-fu=
nwind-tables}
>> -D__CS_SOURCERYGXX_MAJ__=3D2013 -D__CS_SOURCERYGXX_MIN__=3D5
>> -D__CS_SOURCERYGXX_REV__=3D24 %{O2:%{!fno-remove-local-statics:
>> -fremove-local-statics}}
>> %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics:
>> -fremove-local-statics}}}' --enable-languages=3Dc,c++ --enable-shared
>> --enable-lto --enable-symvers=3Dgnu --enable-__cxa_atexit
>> --with-pkgversion=3D'Sourcery CodeBench Lite 2013.05-24' --with-bugurl=
=3D
>> https://sourcery.mentor.com/GNUToolchain/ --disable-nls
>> --prefix=3D/opt/codesourcery
>> --with-sysroot=3D/opt/codesourcery/arm-none-linux-gnueabi/libc
>> --with-build-sysroot=3D/scratch/jbrown/2013.05-arm-linux-release/install=
/arm-none-linux-gnueabi/libc
>> --with-gmp=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-2=
4-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-=
libs-i686-pc-linux-gnu/usr
>> --with-mpfr=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-=
24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host=
-libs-i686-pc-linux-gnu/usr
>> --with-mpc=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-2=
4-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-=
libs-i686-pc-linux-gnu/usr
>> --with-ppl=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-2=
4-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-=
libs-i686-pc-linux-gnu/usr
>> --with-host-libstdcxx=3D'-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdynamic =
-lm'
>> --with-cloog=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05=
-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/hos=
t-libs-i686-pc-linux-gnu/usr
>> --with-libelf=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.0=
5-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/ho=
st-libs-i686-pc-linux-gnu/usr
>> --disable-libgomp --disable-libitm --enable-poison-system-directories
>> --with-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-release/inst=
all/arm-none-linux-gnueabi/bin
>> --with-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-release/inst=
all/arm-none-linux-gnueabi/bin
>> ****
>>
>> Thread model: posix****
>>
>> gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24) ****
>>
>> ** **
>>
>> On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M <
>> scott.m.rifenbark@intel.com> wrote:****
>>
>> Laszlo,
>>
>> Saul forwarded me this email regarding external toolchains.  The "In
>> Progress" version of the YP Reference Manual has a new section on
>> toolchains in general.  This section, combined with the TCMODE glossary
>> entry and a FAQ entry, both in the reference manual, comprise our
>> information on the external toolchain topic.  Let me know what specifica=
lly
>> would need additionally addressed and I can get that on my plate to impr=
ove
>> the doc set.
>>
>> Thanks,
>> Scott
>>
>>
>> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross=
-development-toolchain-generation
>>
>> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-T=
CMODE
>>
>> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#idm62=
2640
>>
>>
>>
>>
>> >-----Original Message-----
>> >From: Saul Wold [mailto:sgw@linux.intel.com]
>> >Sent: Tuesday, July 23, 2013 3:52 PM
>> >To: Rifenbark, Scott M
>> >Subject: Fwd: [OE-core] Doc: external toolchain
>> >
>> >
>> >
>> >
>> >-------- Original Message --------
>> >Subject:       [OE-core] Doc: external toolchain
>> >Date:  Tue, 23 Jul 2013 23:45:28 +0100
>> >From:  Laszlo Papp <lpapp@kde.org>
>> >To:    openembedded-core@lists.openembedded.org
>> >
>> >
>> >
>> >Dear gents and ladies,
>> >
>> >it would be nice to get some documentation about this subject. There is
>> >only one presentation with only a few short slides about the topic:
>> >http://events.linuxfoundation.org/images/stories/slides/elc2013_denys.p=
d
>> >f
>> >
>> >I am now having some issues currently, and hard time to figure out what
>> >is going on. Note, this thread is not about getting help with that
>> >particular issue, but encouraging you to document this, for me,
>> >fundamental feature more thoroughly.
>> >
>> >Thank you for your understanding.
>> >
>> >Many thanks,
>> >Laszlo
>> >
>> >
>> >****
>>
>> ** **
>>
>
>

--bcaec52bea1947cd4a04e2428f44
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry for the noise. Disregard the busybox issue as that h=
as been now solved. The problem is with the external sourcery toolchain ins=
ide the platform as it seems. At least, the error message has no any refere=
nce to my custom layer.</div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Jul 2=
4, 2013 at 3:14 PM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpa=
pp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">
<div dir=3D"ltr">It is a different issue I am facing on another computer, s=
o yet another one to be solved, but here it goes:<div><br></div><div><pre s=
tyle=3D"white-space:pre-wrap;word-wrap:break-word">ERROR: Multiple .bb file=
s are due to be built which each provide busybox (/home/lpapp/Projects/foo/=
Yocto/poky-dylan-9.0.0/meta-foo/recipes-core/busybox/<a href=3D"http://busy=
box_1.20.2.bb" target=3D"_blank">busybox_1.20.2.bb</a> /home/lpapp/Projects=
/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core/busybox/<a href=3D"http://bus=
ybox_1.20.2.bb" target=3D"_blank">busybox_1.20.2.bb</a>).
 This usually means one provides something the other doesn&#39;t and should=
.
ERROR: Multiple .bb files are due to be built which each provide virtual/ar=
m-none-linux-gnueabi-libc-for-gcc (/home/lpapp/Projects/foo/Yocto/poky-dyla=
n-9.0.0/meta/recipes-core/eglibc/<a href=3D"http://eglibc_2.17.bb" target=
=3D"_blank">eglibc_2.17.bb</a> /home/lpapp/Projects/foo/Yocto/poky-dylan-9.=
0.0/meta/recipes-core/meta/<a href=3D"http://external-sourcery-toolchain.bb=
" target=3D"_blank">external-sourcery-toolchain.bb</a>).
 This usually means one provides something the other doesn&#39;t and should=
.
ERROR: Multiple .bb files are due to be built which each provide virtual/li=
bc (/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core/eglib=
c/<a href=3D"http://eglibc_2.17.bb" target=3D"_blank">eglibc_2.17.bb</a> /h=
ome/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core/meta/<a hre=
f=3D"http://external-sourcery-toolchain.bb" target=3D"_blank">external-sour=
cery-toolchain.bb</a>).
 This usually means one provides something the other doesn&#39;t and should=
.
ERROR: Multiple .bb files are due to be built which each provide virtual/li=
biconv (/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core/e=
glibc/<a href=3D"http://eglibc_2.17.bb" target=3D"_blank">eglibc_2.17.bb</a=
> /home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core/meta/<a=
 href=3D"http://external-sourcery-toolchain.bb" target=3D"_blank">external-=
sourcery-toolchain.bb</a>).
 This usually means one provides something the other doesn&#39;t and should=
.</pre><pre style=3D"white-space:pre-wrap;word-wrap:break-word">Any clue? I=
t worked fine in denzil. :(</pre></div></div><div class=3D"HOEnZb"><div cla=
ss=3D"h5">
<div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Wed, Jul 24, 2013 at 8:47 AM, Rifenba=
rk, Scott M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel=
.com" target=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">







<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can anyone address the to=
olchain questions here for Laszlo?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks,
<u></u><u></u></span></p><div><div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Scott<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:djszapi@archlinux.us" target=3D"_blank">djszapi@archlinux.us</a>=
 [mailto:<a href=3D"mailto:djszapi@archlinux.us" target=3D"_blank">djszapi@=
archlinux.us</a>]
<b>On Behalf Of </b>Laszlo Papp<br>
<b>Sent:</b> Tuesday, July 23, 2013 11:52 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> Wold, Saul<br>
<b>Subject:</b> Re: FW: [OE-core] Doc: external toolchain<u></u><u></u></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">OK, thanks.<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I am facing this issue, any clue?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">ERROR: Failed to obtain CodeSourcery toolchain versi=
on: Execution of &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; failed: comman=
d not found<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ERROR: Failed to obtain CodeSourcery toolchain versi=
on: Execution of &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; failed: comman=
d not found<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">This is what I have in my build/conf/local.conf:<u><=
/u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">...<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">TCMODE =3D &quot;external-sourcery&quot;<u></u><u></=
u></p>
</div>
<div>
<p class=3D"MsoNormal">EXTERNAL_TOOLCHAIN =3D &quot;/usr&quot;<u></u><u></u=
></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_PREFIX =3D &quot;arm-none-linux-gnueabi-&quot=
;<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">...<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The external toolchain does exist:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">/usr/bin/arm-none-linux-gnueabi-gcc -v<u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal">Using built-in specs.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">COLLECT_GCC=3D/usr/bin/arm-none-linux-gnueabi-gcc<u>=
</u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">COLLECT_LTO_WRAPPER=3D/usr/bin/../libexec/gcc/arm-no=
ne-linux-gnueabi/4.7.3/lto-wrapper<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Target: arm-none-linux-gnueabi<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Configured with: /scratch/jbrown/2013.05-arm-linux-r=
elease/src/gcc-4.7-2013.05/configure --build=3Di686-pc-linux-gnu --host=3Di=
686-pc-linux-gnu --target=3Darm-none-linux-gnueabi --enable-threads --disab=
le-libmudflap --disable-libssp --disable-libstdcxx-pch
 --enable-extra-sgxxlite-multilibs --with-arch=3Darmv5te --with-gnu-as --wi=
th-gnu-ld --with-specs=3D&#39;%{save-temps: -fverbose-asm} %{funwind-tables=
|fno-unwind-tables|mabi=3D*|ffreestanding|nostdlib:;:-funwind-tables} -D__C=
S_SOURCERYGXX_MAJ__=3D2013 -D__CS_SOURCERYGXX_MIN__=3D5
 -D__CS_SOURCERYGXX_REV__=3D24 %{O2:%{!fno-remove-local-statics: -fremove-l=
ocal-statics}} %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics: -fremove=
-local-statics}}}&#39; --enable-languages=3Dc,c++ --enable-shared --enable-=
lto --enable-symvers=3Dgnu --enable-__cxa_atexit
 --with-pkgversion=3D&#39;Sourcery CodeBench Lite 2013.05-24&#39; --with-bu=
gurl=3D<a href=3D"https://sourcery.mentor.com/GNUToolchain/" target=3D"_bla=
nk">https://sourcery.mentor.com/GNUToolchain/</a> --disable-nls --prefix=3D=
/opt/codesourcery --with-sysroot=3D/opt/codesourcery/arm-none-linux-gnueabi=
/libc
 --with-build-sysroot=3D/scratch/jbrown/2013.05-arm-linux-release/install/a=
rm-none-linux-gnueabi/libc --with-gmp=3D/scratch/jbrown/2013.05-arm-linux-r=
elease/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-li=
nux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
 --with-mpfr=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24=
-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-l=
ibs-i686-pc-linux-gnu/usr --with-mpc=3D/scratch/jbrown/2013.05-arm-linux-re=
lease/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-lin=
ux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
 --with-ppl=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-=
arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-li=
bs-i686-pc-linux-gnu/usr --with-host-libstdcxx=3D&#39;-static-libgcc -Wl,-B=
static,-lstdc++,-Bdynamic -lm&#39; --with-cloog=3D/scratch/jbrown/2013.05-a=
rm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-a=
rm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
 --with-libelf=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-=
24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host=
-libs-i686-pc-linux-gnu/usr --disable-libgomp --disable-libitm --enable-poi=
son-system-directories --with-build-time-tools=3D/scratch/jbrown/2013.05-ar=
m-linux-release/install/arm-none-linux-gnueabi/bin
 --with-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-release/instal=
l/arm-none-linux-gnueabi/bin<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thread model: posix<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-2=
4)=A0<u></u><u></u></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M =
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.=
m.rifenbark@intel.com</a>&gt; wrote:<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Laszlo,<br>
<br>
Saul forwarded me this email regarding external toolchains. =A0The &quot;In=
 Progress&quot; version of the YP Reference Manual has a new section on too=
lchains in general. =A0This section, combined with the TCMODE glossary entr=
y and a FAQ entry, both in the reference manual,
 comprise our information on the external toolchain topic. =A0Let me know w=
hat specifically would need additionally addressed and I can get that on my=
 plate to improve the doc set.<br>
<br>
Thanks,<br>
Scott<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.ht=
ml#cross-development-toolchain-generation" target=3D"_blank">http://www.yoc=
toproject.org/docs/latest/ref-manual/ref-manual.html#cross-development-tool=
chain-generation</a><br>


<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.ht=
ml#var-TCMODE" target=3D"_blank">http://www.yoctoproject.org/docs/latest/re=
f-manual/ref-manual.html#var-TCMODE</a><br>
<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.ht=
ml#idm622640" target=3D"_blank">http://www.yoctoproject.org/docs/latest/ref=
-manual/ref-manual.html#idm622640</a><br>
<br>
<br>
<br>
<br>
&gt;-----Original Message-----<br>
&gt;From: Saul Wold [mailto:<a href=3D"mailto:sgw@linux.intel.com" target=
=3D"_blank">sgw@linux.intel.com</a>]<br>
&gt;Sent: Tuesday, July 23, 2013 3:52 PM<br>
&gt;To: Rifenbark, Scott M<br>
&gt;Subject: Fwd: [OE-core] Doc: external toolchain<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;-------- Original Message --------<br>
&gt;Subject: =A0 =A0 =A0 [OE-core] Doc: external toolchain<br>
&gt;Date: =A0Tue, 23 Jul 2013 23:45:28 +0100<br>
&gt;From: =A0Laszlo Papp &lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_bl=
ank">lpapp@kde.org</a>&gt;<br>
&gt;To: =A0 =A0<a href=3D"mailto:openembedded-core@lists.openembedded.org" =
target=3D"_blank">openembedded-core@lists.openembedded.org</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;Dear gents and ladies,<br>
&gt;<br>
&gt;it would be nice to get some documentation about this subject. There is=
<br>
&gt;only one presentation with only a few short slides about the topic:<br>
&gt;<a href=3D"http://events.linuxfoundation.org/images/stories/slides/elc2=
013_denys.pd" target=3D"_blank">http://events.linuxfoundation.org/images/st=
ories/slides/elc2013_denys.pd</a><br>
&gt;f<br>
&gt;<br>
&gt;I am now having some issues currently, and hard time to figure out what=
<br>
&gt;is going on. Note, this thread is not about getting help with that<br>
&gt;particular issue, but encouraging you to document this, for me,<br>
&gt;fundamental feature more thoroughly.<br>
&gt;<br>
&gt;Thank you for your understanding.<br>
&gt;<br>
&gt;Many thanks,<br>
&gt;Laszlo<br>
&gt;<br>
&gt;<br>
&gt;<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--bcaec52bea1947cd4a04e2428f44--
