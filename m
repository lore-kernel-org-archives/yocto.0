Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2F2FE00777
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 08:24:19 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fa1so2107805pad.35
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 08:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=70tD616ydgXxmA57Ls+FA4f350ZNOgYuobiLJXCEPAA=;
	b=vGUToHSNI7nIE4H8WVKwv1+5ZSw4O8cVCNgP0Pa2MhSLYQ/tR539h8mOCO85uvGB8N
	lpGZSiIK8FxyuM4qwqtIpizzHB42qX5YqxrBNS0KxgW20hoj7ZIHkaL1VaQNutg0EpM2
	3fxlB6pYSaMxmfdvednZra0dfmO1eeRTZwImUfxqvh8fEBnmdrFpJMdH03wpTxnTrqil
	S2HXw46lxq9jbIJpk4PnOxQ4bFUsXIjydA9fnwAAH/yshzFeWhK46F7IzXO0sPAJZoaJ
	gQ/fHAV7TOJUMvXyqvAApL4pkA5gML4SgT1jp0cBca2DwDMDG+q1VDvzeEWYtJtGyjvE
	Zi6g==
Received: by 10.66.79.195 with SMTP id l3mr36910788pax.82.1355156659722;
	Mon, 10 Dec 2012 08:24:19 -0800 (PST)
Received: from [192.168.1.100] ([94.205.107.244])
	by mx.google.com with ESMTPS id t10sm12144243paz.5.2012.12.10.08.24.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 10 Dec 2012 08:24:19 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <59D68E77-3CC6-41B7-99C4-B261F2C2F50D@gmail.com>
Date: Mon, 10 Dec 2012 20:24:14 +0400
Message-Id: <30E8E8A7-D5FC-414B-97AC-070BF1BBBCDF@gmail.com>
References: <59D68E77-3CC6-41B7-99C4-B261F2C2F50D@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1499)
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
X-List-Received-Date: Mon, 10 Dec 2012 16:24:20 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_93E65E0E-F1BE-488B-8A22-2491619123BA"

--Apple-Mail=_93E65E0E-F1BE-488B-8A22-2491619123BA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On Dec 9, 2012, at 10:58 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:

> I get the following error while attempting to backport support for the =
older eglibc-2.13 recipe and gcc-4.5.4, to make it work with the latest =
poky master.
>=20
> I got the image to build and execute correctly, temporarily by =
commenting out the parts relating to sotruss, and it worked on my =
powerpc 440 target with softfloat.
>=20
> Now, I just want to update the eglibc-2.13 recipe, so that it works =
correctly with poky master. I patched the eglibc-2.13 sources and it =
builds the required files.
>=20
> However, during the installation phase, I get a problem, in that the =
scripts attempt to install libsotruss.so to the root folder on my host =
machine, instead of the yocto build folder:
>=20
> /usr/bin/install -c =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/sotruss-lib.so /sotruss-lib.so.new
> /usr/bin/install -c =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/sprof =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/image/us=
r/bin/sprof.new
>=20
> (cd =
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
> 	gawk '/\.gnu\.glibc-stub\./ { \
> 		  sub(/\.gnu\.glibc-stub\./, "", $2); \
> 		  stubs[$2] =3D 1; } \
> 		END { for (s in stubs) print "#define __stub_" s }' > =
/tool/yocto/poky/build/tmp/work/ppc405-poky-linux/eglibc/2.13-r32/build-po=
werpc-poky-linux/elf/stubsT
> /usr/bin/install: cannot create regular file `/sotruss-lib.so.new': =
Permission denied
>=20
> How can I get past this error?
>=20

I got solved this error.

Apparently, I needed to ensure that the eglibc-2.13 libc/Makeconfig file =
had a definition for auditdir . Since that was missing, the expression =
${auditor}/libsotruss.so ended up evaluating to /libsotruss.so, which =
cause the build error, with bitbake trying to install it to the host =
root directory.

Best regards,

Elvis Dowson


--Apple-Mail=_93E65E0E-F1BE-488B-8A22-2491619123BA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div><br><div><div>On Dec 9, 2012, at 10:58 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>I get the following error while attempting to backport support =
for the older eglibc-2.13 recipe and gcc-4.5.4, to make it work with the =
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
error?</div><div><br></div></div></blockquote><br></div><div>I got =
solved this error.</div><div><br></div><div>Apparently, I needed to =
ensure that the eglibc-2.13 libc/Makeconfig file had a definition for =
auditdir . Since that was missing, the expression =
${auditor}/libsotruss.so ended up evaluating to /libsotruss.so, which =
cause the build error, with bitbake trying to install it to the host =
root directory.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><br></div></body></html>=

--Apple-Mail=_93E65E0E-F1BE-488B-8A22-2491619123BA--
