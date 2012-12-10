Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2584DE00294
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 11:26:14 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id k10so9368959iea.15
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 11:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mSjX0bqc8bmUjEdM/BMYykYKRAw6eSpkKubLraCtKn4=;
	b=WOqYtaWyR7/4OcT2W1ZBl9+oUNaKUd2F16D97+CevZbuQH1gPRyrpZQVCp8dgDOE/a
	MxbhNIzdKqo97okbypHBQxYw/yjK6XXECmkpNKwwYKW0s07PDpm9UzGDe7m89KN+Japs
	d7VT90F++MxLIIgigm7ErSieTo/kltXxbLmGT7O9xnrYreSk0Qkf3UfQWH6958QIB91q
	Sc+adjhKm+6ByPdWGKy8AOZn/CXjEbUiObx6o0OosI8tFSKNDZF2WsVF7SBMSuBbIqSZ
	MrqSYTSPWFwv85wDTzaqkgFf7yvRnvRyzykTtvmsKAw8TGgISJ7//8GC72Qga6+3e3/X
	AwPA==
Received: by 10.50.187.197 with SMTP id fu5mr7522170igc.70.1355167573584; Mon,
	10 Dec 2012 11:26:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.19.8 with HTTP; Mon, 10 Dec 2012 11:25:42 -0800 (PST)
In-Reply-To: <30E8E8A7-D5FC-414B-97AC-070BF1BBBCDF@gmail.com>
References: <59D68E77-3CC6-41B7-99C4-B261F2C2F50D@gmail.com>
	<30E8E8A7-D5FC-414B-97AC-070BF1BBBCDF@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 10 Dec 2012 11:25:42 -0800
Message-ID: <CAMKF1sr0_iFOQ5Q_G388edL205R=j79B1b_AH2PJDJ05x-rb9w@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: eglibc-2.13: backport sotruss from eglibc-2.16
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
X-List-Received-Date: Mon, 10 Dec 2012 19:26:14 -0000
Content-Type: multipart/alternative; boundary=14dae9340a95d5acc704d08489da

--14dae9340a95d5acc704d08489da
Content-Type: text/plain; charset=UTF-8

good. I was about to send you email about auditdir but your email
did not convey lot of what was going on.


On Mon, Dec 10, 2012 at 8:24 AM, Elvis Dowson <elvis.dowson@gmail.com>wrote:

> Hi Khem,
>
> On Dec 9, 2012, at 10:58 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> I get the following error while attempting to backport support for the
> older eglibc-2.13 recipe and gcc-4.5.4, to make it work with the latest
> poky master.
>
> I got the image to build and execute correctly, temporarily by commenting
> out the parts relating to sotruss, and it worked on my powerpc 440 target
> with softfloat.
>
> Now, I just want to update the eglibc-2.13 recipe, so that it works
> correctly with poky master. I patched the eglibc-2.13 sources and it builds
> the required files.
>
> However, during the installation phase, I get a problem, in that the
> scripts attempt to install libsotruss.so to the root folder on my host
> machine, instead of the yocto build folder:
>
> /usr/bin/install -c
> /tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-powerpc-poky-linux/elf/sotruss-lib.so
> /sotruss-lib.so.new
> /usr/bin/install -c
> /tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-powerpc-poky-linux/elf/sprof
> /tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/image/usr/bin/sprof.new
>
> (cd
> /tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-powerpc-poky-linux/elf/.;
> /tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/libexec/ppc405-poky-linux.gcc-cross-initial/gcc/powerpc-poky-linux/4.5.4/objdump
> -h dl-load.o dl-cache.o dl-lookup.o dl-object.o dl-reloc.o dl-deps.o
> dl-runtime.o dl-error.o dl-init.o dl-fini.o dl-debug.o dl-misc.o
> dl-version.o dl-profile.o dl-conflict.o dl-tls.o dl-origin.o dl-scope.o
> dl-execstack.o dl-open.o dl-close.o dl-trampoline.o dl-support.o
> dl-iteratephdr.o dl-addr.o enbl-secure.o dl-profstub.o dl-libc.o dl-sym.o
> dl-tsd.o dl-sysdep.o dl-vdso.o dl-machine.o dl-iteratephdr.os dl-addr.os
> dl-profstub.os dl-libc.os dl-sym.os dl-tsd.os unwind-dw2-fde-glibc.os
> dl-vdso.os framestate.os unwind-pe.os rtld.os dl-load.os dl-cache.os
> dl-lookup.os dl-object.os dl-reloc.os dl-deps.os dl-runtime.os dl-error.os
> dl-init.os dl-fini.os dl-debug.os dl-misc.os dl-version.os dl-profile.os
> dl-conflict.os dl-tls.os dl-origin.os dl-scope.os dl-execstack.os
> dl-caller.os dl-open.os dl-close.os dl-trampoline.os dl-sysdep.os
> dl-environ.os dl-minimal.os dl-brk.os dl-sbrk.os dl-start.os dl-machine.os
> soinit.os sofini.os interp.os static-stubs.o cache.o readlib.o xmalloc.o
> xstrdup.o chroot_canon.o sotruss-lib.os sotruss-lib.so) | \
>  gawk '/\.gnu\.glibc-stub\./ { \
>   sub(/\.gnu\.glibc-stub\./, "", $2); \
>   stubs[$2] = 1; } \
>  END { for (s in stubs) print "#define __stub_" s }' >
> /tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-powerpc-poky-linux/elf/stubsT
> /usr/bin/install: cannot create regular file `/sotruss-lib.so.new':
> Permission denied
>
> How can I get past this error?
>
>
> I got solved this error.
>
> Apparently, I needed to ensure that the eglibc-2.13 libc/Makeconfig file
> had a definition for auditdir . Since that was missing, the expression
> ${auditor}/libsotruss.so ended up evaluating to /libsotruss.so, which cause
> the build error, with bitbake trying to install it to the host root
> directory.
>
> Best regards,
>
> Elvis Dowson
>
>

--14dae9340a95d5acc704d08489da
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<font><font face=3D"courier new,monospace">good. I<font> was about to send =
you email ab<font>out audit<font>dir but your <font>email<br><font>did not =
conve<font>y lot of what <font>was going on.</font></font></font><br></font=
></font></font></font></font></font><div class=3D"gmail_extra">

<br><br><div class=3D"gmail_quote">On Mon, Dec 10, 2012 at 8:24 AM, Elvis D=
owson <span dir=3D"ltr">&lt;<a href=3D"mailto:elvis.dowson@gmail.com" targe=
t=3D"_blank">elvis.dowson@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">

<div style=3D"word-wrap:break-word">Hi Khem,<div><div><div class=3D"h5"><br=
><div><div>On Dec 9, 2012, at 10:58 PM, Elvis Dowson &lt;<a href=3D"mailto:=
elvis.dowson@gmail.com" target=3D"_blank">elvis.dowson@gmail.com</a>&gt; wr=
ote:</div>

<br><blockquote type=3D"cite"><div style=3D"word-wrap:break-word"><div>I ge=
t the following error while attempting to backport support for the older eg=
libc-2.13 recipe and gcc-4.5.4, to make it work with the latest poky master=
.</div>

<div><br></div><div>I got the image to build and execute correctly, tempora=
rily by commenting out the parts relating to sotruss, and it worked on my p=
owerpc 440 target with softfloat.</div><div><br></div><div>Now, I just want=
 to update the eglibc-2.13 recipe, so that it works correctly with poky mas=
ter. I patched the eglibc-2.13 sources and it builds the required files.</d=
iv>

<div><br></div><div>However, during the installation phase, I get a problem=
, in that the scripts attempt to install libsotruss.so to the root folder o=
n my host machine, instead of the yocto build folder:</div><div><div><br>

</div><div>/usr/bin/install -c /tool/yocto/poky/build/tmp/work/ppc405-poky-=
linux/eglibc/2.13-r32/build-powerpc-poky-linux/elf/sotruss-lib.so <font col=
or=3D"#ff2600">/sotruss-lib.so.new</font></div><div>/usr/bin/install -c /to=
ol/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-powerp=
c-poky-linux/elf/sprof /tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eg=
libc/2.13-r32/image/usr/bin/sprof.new</div>

</div><div><br></div><div><div>(cd /tool/yocto/poky/build/tmp/work/ppc405-p=
oky-linux/eglibc/2.13-r32/build-powerpc-poky-linux/elf/.; /tool/yocto/poky/=
build/tmp/sysroots/x86_64-linux/usr/libexec/ppc405-poky-linux.gcc-cross-ini=
tial/gcc/powerpc-poky-linux/4.5.4/objdump -h dl-load.o dl-cache.o dl-lookup=
.o dl-object.o dl-reloc.o dl-deps.o dl-runtime.o dl-error.o dl-init.o dl-fi=
ni.o dl-debug.o dl-misc.o dl-version.o dl-profile.o dl-conflict.o dl-tls.o =
dl-origin.o dl-scope.o dl-execstack.o dl-open.o dl-close.o dl-trampoline.o =
dl-support.o dl-iteratephdr.o dl-addr.o enbl-secure.o dl-profstub.o dl-libc=
.o dl-sym.o dl-tsd.o dl-sysdep.o dl-vdso.o dl-machine.o dl-iteratephdr.os d=
l-addr.os dl-profstub.os dl-libc.os dl-sym.os dl-tsd.os unwind-dw2-fde-glib=
c.os dl-vdso.os framestate.os unwind-pe.os rtld.os dl-load.os dl-cache.os d=
l-lookup.os dl-object.os dl-reloc.os dl-deps.os dl-runtime.os dl-error.os d=
l-init.os dl-fini.os dl-debug.os dl-misc.os dl-version.os dl-profile.os dl-=
conflict.os dl-tls.os dl-origin.os dl-scope.os dl-execstack.os dl-caller.os=
 dl-open.os dl-close.os dl-trampoline.os dl-sysdep.os dl-environ.os dl-mini=
mal.os dl-brk.os dl-sbrk.os dl-start.os dl-machine.os soinit.os sofini.os i=
nterp.os static-stubs.o cache.o readlib.o xmalloc.o xstrdup.o chroot_canon.=
o sotruss-lib.os sotruss-lib.so) | \</div>

<div><span style=3D"white-space:pre-wrap">	</span>gawk &#39;/\.gnu\.glibc-s=
tub\./ { \</div><div><span style=3D"white-space:pre-wrap">		</span> =C2=A0s=
ub(/\.gnu\.glibc-stub\./, &quot;&quot;, $2); \</div><div><span style=3D"whi=
te-space:pre-wrap">		</span> =C2=A0stubs[$2] =3D 1; } \</div>

<div><span style=3D"white-space:pre-wrap">		</span>END { for (s in stubs) p=
rint &quot;#define __stub_&quot; s }&#39; &gt; /tool/yocto/poky/build/tmp/w=
ork/ppc405-poky-linux/eglibc/2.13-r32/build-powerpc-poky-linux/elf/stubsT</=
div>

<div>/usr/bin/install: cannot create regular file `/sotruss-lib.so.new&#39;=
: Permission denied</div></div><div><br></div><div>How can I get past this =
error?</div><div><br></div></div></blockquote><br></div></div></div><div>

I got solved this error.</div><div><br></div><div>Apparently, I needed to e=
nsure that the eglibc-2.13 libc/Makeconfig file had a definition for auditd=
ir . Since that was missing, the expression ${auditor}/libsotruss.so ended =
up evaluating to /libsotruss.so, which cause the build error, with bitbake =
trying to install it to the host root directory.</div>

<div><br></div><div>Best regards,</div><div><br></div><div>Elvis Dowson</di=
v><br></div></div></blockquote></div><br></div>

--14dae9340a95d5acc704d08489da--
