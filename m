Return-Path: <gustavowalbon@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A6F5E00AF2
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 06:19:01 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id jz11so5751259veb.11
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 06:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=Bmckq49e3jXYdDOUoitt2TyAvZ6ZETSRdVRInGsgnDo=;
	b=FzWF7xvXEooeAEejScDuLsfBoq0Sf2jM6OdEo0ld3/SERiipO7H0H5xztY4QM0NKpF
	fL8m0RWdjKZ9quUbLz64rpNdfGsjboWbATCe2WlQI3ZUPVoXOCxd13ep1yva0bqpes7A
	s/MdhlCTU05OU+8Hx3CmpjAdPh5jkhUEwWgvIgR5ePutGM/zrcsTL36x7SLyO2TClU90
	Df0VdCQT3S9Uw5obRL3E2UG0OiMVvGZJXI5arPY4lYlVXWd7OQKCq7A2ynZBK66ADTU5
	fYZKb1ytdyZCIZnkXZayEvHzi2SrkQoOyNU9NZIYktafNzdtWcsgcTX0/lDeJniXiXCn
	Z9/A==
X-Received: by 10.58.37.232 with SMTP id b8mr1172118vek.27.1395062340934; Mon,
	17 Mar 2014 06:19:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.127.69 with HTTP; Mon, 17 Mar 2014 06:18:40 -0700 (PDT)
From: Gustavo Walbon <gustavowalbon@gmail.com>
Date: Mon, 17 Mar 2014 10:18:40 -0300
Message-ID: <CAAU+_hRv_obVU5T4aU+aao8O=3Vj8120g2myxXXqE3=4pdwFbA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Dora vs Dylan: Poppler + Qt 4.8.5
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
X-List-Received-Date: Mon, 17 Mar 2014 13:19:04 -0000
Content-Type: multipart/alternative; boundary=089e01176de54565ce04f4cd43cd

--089e01176de54565ce04f4cd43cd
Content-Type: text/plain; charset=UTF-8

Hi,

When I tried this recipe for Poppler:

*DESCRIPTION = "Poppler is a PDF rendering library based on the xpdf-3.0
code base."*
*HOMEPAGE = "http://poppler.freedesktop.org
<http://poppler.freedesktop.org>"*

*LICENSE = "GPLv2"*
*LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"*
*PR = "r3"*

 *SECTION = "x11/libs"*

*DEPENDS = "qt4-x11-free jpeg zlib cairo pth libassuan libksba"*
*RDEPENDS_${PN} = "poppler-data"*

*SRC_URI = "http://poppler.freedesktop.org/${BPN}-${PV}.tar.gz
<http://poppler.freedesktop.org/${BPN}-${PV}.tar.gz>"*

*SRC_URI[md5sum] = "a61e3b844061f5324512a16d6d16984c" *
*SRC_URI[sha256sum] =
"b4620f645319f4a8790465730bc472d5745155d0780809406fb29c62316d49a8"*

*inherit autotools pkgconfig*

*EXTRA_OECONF = " --enable-xpdf-headers \*
* --disable-gtk-test \*
* --disable-qt4-test \*
* --disable-qt-test \*
* --enable-zlib \*
*       "*
*def get_poppler_fpu_setting(bb, d):*
*    if d.getVar('TARGET_FPU', 1) in [ 'soft' ]:*
*        return "--enable-fixedpoint"*
*    return ""*

*#check for TARGET_FPU=soft and inform configure of the result so it can
disable some floating points*
*EXTRA_OECONF += "${@get_poppler_fpu_setting(bb, d)}"*

*The error from bitbake was:*

*| make  all-am*
*| make[4]: Entering directory
`/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1/qt4/src'*
*| ../../arm-projectos-linux-gnueabi-libtool  --tag=CXX   --mode=link
arm-projectos-linux-gnueabi-g++  -march=armv7-a -mthumb-interwork
-mfloat-abi=hard -mfpu=neon -mtune=cortex-a9
--sysroot=/project/dora/build/tmp/sysroots/imx6qsabrelite
-Dpoppler_qt4_EXPORTS -Wall -Woverloaded-virtual -Wnon-virtual-dtor
-Wcast-align -fno-exceptions -fno-check-new -fno-common  -O2 -pipe -g
-feliminate-unused-debug-types -fpermissive -fvisibility-inlines-hidden
-ansi -version-info 4:0:0   -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o
libpoppler-qt4.la <http://libpoppler-qt4.la> -rpath /usr/lib
libpoppler_qt4_la-poppler-document.lo libpoppler_qt4_la-poppler-page.lo
libpoppler_qt4_la-poppler-fontinfo.lo
libpoppler_qt4_la-poppler-embeddedfile.lo
libpoppler_qt4_la-poppler-textbox.lo libpoppler_qt4_la-poppler-link.lo
libpoppler_qt4_la-poppler-annotation.lo
libpoppler_qt4_la-poppler-link-extractor.lo
libpoppler_qt4_la-poppler-optcontent.lo
libpoppler_qt4_la-poppler-page-transition.lo
libpoppler_qt4_la-poppler-sound.lo libpoppler_qt4_la-poppler-form.lo
libpoppler_qt4_la-poppler-base-converter.lo
libpoppler_qt4_la-poppler-ps-converter.lo
libpoppler_qt4_la-poppler-pdf-converter.lo
libpoppler_qt4_la-poppler-qiodeviceoutstream.lo
libpoppler_qt4_la-poppler-private.lo libpoppler_qt4_la-poppler-movie.lo
libpoppler_qt4_la-poppler-media.lo ../../poppler/libpoppler.la
<http://libpoppler.la> ../../poppler/libpoppler-arthur.la
<http://libpoppler-arthur.la> -lfontconfig  -lQtGui -lQtXml -lQtCore  -lz
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed*
*| arm-projectos-linux-gnueabi-libtool: link: cannot find the library `' or
unhandled argument `-DLINUX=1'*
*| make[4]: *** [libpoppler-qt4.la <http://libpoppler-qt4.la>] Error 1*
*| make[4]: Leaving directory
`/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1/qt4/src'*
*| make[3]: *** [all] Error 2*
*| make[3]: Leaving directory
`/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1/qt4/src'*
*| make[2]: *** [all-recursive] Error 1*
*| make[2]: Leaving directory
`/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1/qt4'*
*| make[1]: *** [all-recursive] Error 1*
*| make[1]: Leaving directory
`/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1'*
*| make: *** [all] Error 2*
*| ERROR: oe_runmake failed*
*| WARNING: exit code 1 from a shell command.*
*| ERROR: Function failed: do_compile (log file is located at
/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi/poppler/0.20.1-r3/temp/log.do_compile.19063)*
*ERROR: Task 6
(/project/dora/meta-omnimed/common/recipes-libs/poppler/poppler_0.20.1.bb
<http://poppler_0.20.1.bb>, do_compile) failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 2274 tasks of which 2273 didn't need to be
rerun and 1 failed.*
*No currently running tasks (1704 of 2281)*

*Summary: 1 task failed:*
*  /project/dora/meta-omnimed/common/recipes-libs/poppler/poppler_0.20.1.bb
<http://poppler_0.20.1.bb>, do_compile*
*Summary: There was 1 ERROR message shown, returning a non-zero exit code.*


In Dylan Branch this not happened, but in Dora Branch is the same recipe
and version of Poppler.

My application using Poppler + Qt.



Thanks

--089e01176de54565ce04f4cd43cd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>When I tried this recipe for Popple=
r:</div><div><br></div><div><div><i>DESCRIPTION =3D &quot;Poppler is a PDF =
rendering library based on the xpdf-3.0 code base.&quot;</i></div><div><i>H=
OMEPAGE =3D &quot;<a href=3D"http://poppler.freedesktop.org">http://poppler=
.freedesktop.org</a>&quot;</i></div>

<div><i><br></i></div><div><i>LICENSE =3D &quot;GPLv2&quot;</i></div><div><=
i>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D751419260aa954499f7abaaba=
a882bbe&quot;</i></div><div><i>PR =3D &quot;r3&quot;</i></div><div><i><br><=
/i></div>

<div><i>SECTION =3D &quot;x11/libs&quot;</i></div><div><i><br></i></div><di=
v><i>DEPENDS =3D &quot;qt4-x11-free jpeg zlib cairo pth libassuan libksba&q=
uot;</i></div><div><i>RDEPENDS_${PN} =3D &quot;poppler-data&quot;</i></div>=
<div>

<i><br></i></div><div><i>SRC_URI =3D &quot;<a href=3D"http://poppler.freede=
sktop.org/${BPN}-${PV}.tar.gz">http://poppler.freedesktop.org/${BPN}-${PV}.=
tar.gz</a>&quot;</i></div><div><i>SRC_URI[md5sum] =3D &quot;a61e3b844061f53=
24512a16d6d16984c&quot;<br>

</i></div><div><i>SRC_URI[sha256sum] =3D &quot;b4620f645319f4a8790465730bc4=
72d5745155d0780809406fb29c62316d49a8&quot;</i></div><div><i><br></i></div><=
div><i>inherit autotools pkgconfig</i></div><div><i><br></i></div><div><i>E=
XTRA_OECONF =3D &quot; --enable-xpdf-headers \</i></div>

<div><i><span class=3D"" style=3D"white-space:pre">		</span> --disable-gtk-=
test \</i></div><div><i><span class=3D"" style=3D"white-space:pre">		</span=
> --disable-qt4-test \</i></div><div><i><span class=3D"" style=3D"white-spa=
ce:pre">		</span> --disable-qt-test \</i></div>

<div><i><span class=3D"" style=3D"white-space:pre">		</span> --enable-zlib =
\</i></div><div><i><span class=3D"" style=3D"white-space:pre">	</span> =C2=
=A0 =C2=A0 =C2=A0 &quot;</i></div><div><i>def get_poppler_fpu_setting(bb, d=
):</i><br></div><div>

<i>=C2=A0 =C2=A0 if d.getVar(&#39;TARGET_FPU&#39;, 1) in [ &#39;soft&#39; ]=
:</i></div><div><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return &quot;--enable-fixedp=
oint&quot;</i></div><div><i>=C2=A0 =C2=A0 return &quot;&quot;</i></div><div=
><i><br></i></div><div><i>#check for TARGET_FPU=3Dsoft and inform configure=
 of the result so it can disable some floating points</i></div>

<div><i>EXTRA_OECONF +=3D &quot;${@get_poppler_fpu_setting(bb, d)}&quot;</i=
></div></div><div><br></div><div><b>The error from bitbake was:</b></div><d=
iv><br><div><i>| make =C2=A0all-am</i></div><div><i>| make[4]: Entering dir=
ectory `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gn=
ueabi/poppler/0.20.1-r3/poppler-0.20.1/qt4/src&#39;</i></div>

<div><i>| ../../arm-projectos-linux-gnueabi-libtool =C2=A0--tag=3DCXX =C2=
=A0 --mode=3Dlink arm-projectos-linux-gnueabi-g++ =C2=A0-march=3Darmv7-a -m=
thumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9 --sysroo=
t=3D/project/dora/build/tmp/sysroots/imx6qsabrelite -Dpoppler_qt4_EXPORTS -=
Wall -Woverloaded-virtual -Wnon-virtual-dtor -Wcast-align -fno-exceptions -=
fno-check-new -fno-common =C2=A0-O2 -pipe -g -feliminate-unused-debug-types=
 -fpermissive -fvisibility-inlines-hidden -ansi -version-info 4:0:0 =C2=A0 =
-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o <a href=3D"http://libpopp=
ler-qt4.la">libpoppler-qt4.la</a> -rpath /usr/lib libpoppler_qt4_la-poppler=
-document.lo libpoppler_qt4_la-poppler-page.lo libpoppler_qt4_la-poppler-fo=
ntinfo.lo libpoppler_qt4_la-poppler-embeddedfile.lo libpoppler_qt4_la-poppl=
er-textbox.lo libpoppler_qt4_la-poppler-link.lo libpoppler_qt4_la-poppler-a=
nnotation.lo libpoppler_qt4_la-poppler-link-extractor.lo libpoppler_qt4_la-=
poppler-optcontent.lo libpoppler_qt4_la-poppler-page-transition.lo libpoppl=
er_qt4_la-poppler-sound.lo libpoppler_qt4_la-poppler-form.lo libpoppler_qt4=
_la-poppler-base-converter.lo libpoppler_qt4_la-poppler-ps-converter.lo lib=
poppler_qt4_la-poppler-pdf-converter.lo libpoppler_qt4_la-poppler-qiodevice=
outstream.lo libpoppler_qt4_la-poppler-private.lo libpoppler_qt4_la-poppler=
-movie.lo libpoppler_qt4_la-poppler-media.lo ../../poppler/<a href=3D"http:=
//libpoppler.la">libpoppler.la</a> ../../poppler/<a href=3D"http://libpoppl=
er-arthur.la">libpoppler-arthur.la</a> -lfontconfig =C2=A0-lQtGui -lQtXml -=
lQtCore =C2=A0-lz -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed</i></div>

<div><i>| arm-projectos-linux-gnueabi-libtool: link: cannot find the librar=
y `&#39; or unhandled argument `-DLINUX=3D1&#39;</i></div><div><i>| make[4]=
: *** [<a href=3D"http://libpoppler-qt4.la">libpoppler-qt4.la</a>] Error 1<=
/i></div>

<div><i>| make[4]: Leaving directory `/project/dora/build/tmp/work/cortexa9=
hf-vfp-neon-projectos-linux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1/qt4/sr=
c&#39;</i></div><div><i>| make[3]: *** [all] Error 2</i></div><div><i>| mak=
e[3]: Leaving directory `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-p=
rojectos-linux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1/qt4/src&#39;</i></d=
iv>

<div><i>| make[2]: *** [all-recursive] Error 1</i></div><div><i>| make[2]: =
Leaving directory `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-project=
os-linux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1/qt4&#39;</i></div><div>

<i>| make[1]: *** [all-recursive] Error 1</i></div><div><i>| make[1]: Leavi=
ng directory `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-li=
nux-gnueabi/poppler/0.20.1-r3/poppler-0.20.1&#39;</i></div><div><i>| make: =
*** [all] Error 2</i></div>

<div><i>| ERROR: oe_runmake failed</i></div><div><i>| WARNING: exit code 1 =
from a shell command.</i></div><div><i>| ERROR: Function failed: do_compile=
 (log file is located at /project/dora/build/tmp/work/cortexa9hf-vfp-neon-p=
rojectos-linux-gnueabi/poppler/0.20.1-r3/temp/log.do_compile.19063)</i></di=
v>

<div><i>ERROR: Task 6 (/project/dora/meta-omnimed/common/recipes-libs/poppl=
er/<a href=3D"http://poppler_0.20.1.bb">poppler_0.20.1.bb</a>, do_compile) =
failed with exit code &#39;1&#39;</i></div><div><i>NOTE: Tasks Summary: Att=
empted 2274 tasks of which 2273 didn&#39;t need to be rerun and 1 failed.</=
i></div>

<div><i>No currently running tasks (1704 of 2281)</i></div><div><i><br></i>=
</div><div><i>Summary: 1 task failed:</i></div><div><i>=C2=A0 /project/dora=
/meta-omnimed/common/recipes-libs/poppler/<a href=3D"http://poppler_0.20.1.=
bb">poppler_0.20.1.bb</a>, do_compile</i></div>

<div><i>Summary: There was 1 ERROR message shown, returning a non-zero exit=
 code.</i></div></div><div><br></div><div><br></div><div>In Dylan Branch th=
is not happened, but in Dora Branch is the same recipe and version of Poppl=
er.</div>

<div><br></div><div>My application using Poppler + Qt.</div><div><br></div>=
<div><br></div><div><br></div><div>Thanks</div></div>

--089e01176de54565ce04f4cd43cd--
