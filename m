Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46581E00770
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 10:58:50 -0800 (PST)
Received: by mail-da0-f48.google.com with SMTP id k18so898626dae.35
	for <yocto@yoctoproject.org>; Sun, 09 Dec 2012 10:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:cc:to:mime-version
	:x-mailer; bh=GHB6XfROCrjxtekRpF2br7HgOlC892lUcXOYXBgvta8=;
	b=AsiEUfXp9G8CAfL9IkQMT28zjztY5KHGIpzdmpsaKirinFVkintTNtph9WlGVrwmHk
	kNASdY+v1vqTjFNG1NjvmqRSdBuxgj0qHDFv8FO4yfpIbJmf2uPdc5AgUXGqFncatfk0
	0JpAJWSjwVTfQSiOitiR3q63Euv97QA/HOjT2ByUuISoW1sZwohqYgkU8Je7QG2uQMdP
	IbveAemu1lXlfdxaSs6AvcYEt4BO8gIspiV+r8MeO0IXSvEdO9lAg2nWBeN6nUZYGI2t
	OLHAID0rMb2njIZIise3MTIGwDvsOz9/osDSpjZVEhPKgX8Aak8GGZK90kbr8jXeuC7L
	En8w==
Received: by 10.69.1.73 with SMTP id be9mr33135463pbd.116.1355079529613;
	Sun, 09 Dec 2012 10:58:49 -0800 (PST)
Received: from [192.168.1.100] ([94.205.107.244])
	by mx.google.com with ESMTPS id p10sm10434821pax.27.2012.12.09.10.58.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 09 Dec 2012 10:58:49 -0800 (PST)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sun, 9 Dec 2012 22:58:44 +0400
Message-Id: <59D68E77-3CC6-41B7-99C4-B261F2C2F50D@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: eglibc-2.13: backport sotruss from eglibc-2.16
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
X-List-Received-Date: Sun, 09 Dec 2012 18:58:50 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BD0DB9A6-75C5-4C91-8498-19AE91D12715"

--Apple-Mail=_BD0DB9A6-75C5-4C91-8498-19AE91D12715
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,
                 I get the following error while attempting to backport =
support for the older eglibc-2.13 recipe and gcc-4.5.4, to make it work =
with the latest poky master.

I got the image to build and execute correctly, temporarily by =
commenting out the parts relating to sotruss, and it worked on my =
powerpc 440 target with softfloat.

Now, I just want to update the eglibc-2.13 recipe, so that it works =
correctly with poky master. I patched the eglibc-2.13 sources and it =
builds the required files.

However, during the installation phase, I get a problem, in that the =
scripts attempt to install libsotruss.so to the root folder on my host =
machine, instead of the yocto build folder:

/usr/bin/install -c =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/sotruss-lib.so /sotruss-lib.so.new
/usr/bin/install -c =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/sprof =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/image/us=
r/bin/sprof.new

(cd =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/.; =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/libexec/ppc405-poky-l=
inux.gcc-cross-initial/gcc/powerpc-poky-linux/4.5.4/objdump -h dl-load.o =
dl-cache.o dl-lookup.o dl-object.o dl-reloc.o dl-deps.o dl-runtime.o =
dl-error.o dl-init.o dl-fini.o dl-debug.o dl-misc.o dl-version.o =
dl-profile.o dl-conflict.o dl-tls.o dl-origin.o dl-scope.o =
dl-execstack.o dl-open.o dl-close.o dl-trampoline.o dl-support.o =
dl-iteratephdr.o dl-addr.o enbl-secure.o dl-profstub.o dl-libc.o =
dl-sym.o dl-tsd.o dl-sysdep.o dl-vdso.o dl-machine.o dl-iteratephdr.os =
dl-addr.os dl-profstub.os dl-libc.os dl-sym.os dl-tsd.os =
unwind-dw2-fde-glibc.os dl-vdso.os framestate.os unwind-pe.os rtld.os =
dl-load.os dl-cache.os dl-lookup.os dl-object.os dl-reloc.os dl-deps.os =
dl-runtime.os dl-error.os dl-init.os dl-fini.os dl-debug.os dl-misc.os =
dl-version.os dl-profile.os dl-conflict.os dl-tls.os dl-origin.os =
dl-scope.os dl-execstack.os dl-caller.os dl-open.os dl-close.os =
dl-trampoline.os dl-sysdep.os dl-environ.os dl-minimal.os dl-brk.os =
dl-sbrk.os dl-start.os dl-machine.os soinit.os sofini.os interp.os =
static-stubs.o cache.o readlib.o xmalloc.o xstrdup.o chroot_canon.o =
sotruss-lib.os sotruss-lib.so) | \
	gawk '/\.gnu\.glibc-stub\./ { \
		  sub(/\.gnu\.glibc-stub\./, "", $2); \
		  stubs[$2] =3D 1; } \
		END { for (s in stubs) print "#define __stub_" s }' > =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/stubsT
/usr/bin/install: cannot create regular file `/sotruss-lib.so.new': =
Permission denied

How can I get past this error?

Best regards,

Elvis Dowson=

--Apple-Mail=_BD0DB9A6-75C5-4C91-8498-19AE91D12715
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;I get the following error while attempting to backport support for =
the older eglibc-2.13 recipe and gcc-4.5.4, to make it work with the =
latest poky master.</div><div><br></div><div>I got the image to build =
and execute correctly, temporarily by commenting out the parts relating =
to sotruss, and it worked on my powerpc 440 target with =
softfloat.</div><div><br></div><div>Now, I just want to update the =
eglibc-2.13 recipe, so that it works correctly with poky master. I =
patched the eglibc-2.13 sources and it builds the required =
files.</div><div><br></div><div>However, during the installation phase, =
I get a problem, in that the scripts attempt to install libsotruss.so to =
the root folder on my host machine, instead of the yocto build =
folder:</div><div><div><br></div><div>/usr/bin/install -c =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/sotruss-lib.so <font =
color=3D"#ff2600">/sotruss-lib.so.new</font></div><div>/usr/bin/install =
-c =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/sprof =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/image/us=
r/bin/sprof.new</div></div><div><br></div><div><div>(cd =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/.; =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/libexec/ppc405-poky-l=
inux.gcc-cross-initial/gcc/powerpc-poky-linux/4.5.4/objdump -h dl-load.o =
dl-cache.o dl-lookup.o dl-object.o dl-reloc.o dl-deps.o dl-runtime.o =
dl-error.o dl-init.o dl-fini.o dl-debug.o dl-misc.o dl-version.o =
dl-profile.o dl-conflict.o dl-tls.o dl-origin.o dl-scope.o =
dl-execstack.o dl-open.o dl-close.o dl-trampoline.o dl-support.o =
dl-iteratephdr.o dl-addr.o enbl-secure.o dl-profstub.o dl-libc.o =
dl-sym.o dl-tsd.o dl-sysdep.o dl-vdso.o dl-machine.o dl-iteratephdr.os =
dl-addr.os dl-profstub.os dl-libc.os dl-sym.os dl-tsd.os =
unwind-dw2-fde-glibc.os dl-vdso.os framestate.os unwind-pe.os rtld.os =
dl-load.os dl-cache.os dl-lookup.os dl-object.os dl-reloc.os dl-deps.os =
dl-runtime.os dl-error.os dl-init.os dl-fini.os dl-debug.os dl-misc.os =
dl-version.os dl-profile.os dl-conflict.os dl-tls.os dl-origin.os =
dl-scope.os dl-execstack.os dl-caller.os dl-open.os dl-close.os =
dl-trampoline.os dl-sysdep.os dl-environ.os dl-minimal.os dl-brk.os =
dl-sbrk.os dl-start.os dl-machine.os soinit.os sofini.os interp.os =
static-stubs.o cache.o readlib.o xmalloc.o xstrdup.o chroot_canon.o =
sotruss-lib.os sotruss-lib.so) | \</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>gawk =
'/\.gnu\.glibc-stub\./ { \</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span> =
&nbsp;sub(/\.gnu\.glibc-stub\./, "", $2); \</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		</span> =
&nbsp;stubs[$2] =3D 1; } \</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>END { for (s in stubs) =
print "#define __stub_" s }' &gt; =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/stubsT</div><div>/usr/bin/install: cannot create =
regular file `/sotruss-lib.so.new': Permission =
denied</div></div><div><br></div><div>How can I get past this =
error?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_BD0DB9A6-75C5-4C91-8498-19AE91D12715--
