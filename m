Received: from 8.mo68.mail-out.ovh.net (8.mo68.mail-out.ovh.net [46.105.74.219])
 by mx.groups.io with SMTP id smtpd.web10.10977.1600331061282504711
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 01:24:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.74.219, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player776.ha.ovh.net (unknown [10.108.42.184])
	by mo68.mail-out.ovh.net (Postfix) with ESMTP id EA0CF177BD4
	for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2020 10:24:17 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player776.ha.ovh.net (Postfix) with ESMTPSA id 0B83B164AE6B2;
	Thu, 17 Sep 2020 08:24:15 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-106R006c66cf1d3-7abf-4dc3-9d12-587f6ccdaec5,
                    37FE2FF8CF9CCFB15D81780207FD35F3FBF88097) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] wvdial
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>,
 yocto@lists.yoctoproject.org
References: <CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <bab8de99-f117-7696-879b-d6fcc38e4e4a@3mdeb.com>
Date: Thu, 17 Sep 2020 10:24:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail.com>
X-Ovh-Tracer-Id: 2103462501353991686
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrtdeggddtgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpeetudeigfeukeevffegtdefveffkeegvddtueektddtfeduudefieetledtffeuffenucffohhmrghinhepuddrsggspdgrlhhumhhnihhtrdgtrgdpghhoohhglhgvtghouggvrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------AE594CBB973BFC9E647471DF"
Content-Language: en-US

--------------AE594CBB973BFC9E647471DF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 17.09.2020 10:02, Zoltan Kerenyi Nagy wrote:
> Hi,
>
> Here is the error now, all the files are there, it says that=20
> *04_signed_request.diff* is not there:*
> *
>
> /WARNING: wvstreams-4.6.1-r0 do_fetch: Failed to fetch URL=20
> file://04_signed_request.diff, attempting MIRRORS if available
> ERROR: wvstreams-4.6.1-r0 do_fetch: Fetcher failure: Unable to find=20
> file file://04_signed_request.diff anywhere. The paths that were=20
> searched were:
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/nodistro
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/nodistro
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/nodistro
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/barix-ipam400
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/barix-ipam400
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/barix-ipam400
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/sun8i
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/sun8i
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/sun8i
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/armv7ve
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/armv7ve
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/armv7ve
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/arm
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/arm
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/arm
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/
> =C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/downloads
> ERROR: wvstreams-4.6.1-r0 do_fetch: Fetcher failure for URL:=20
> 'file://04_signed_request.diff'. Unable to fetch URL from any source.
> ERROR: wvstreams-4.6.1-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:=20
> /home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-lin=
ux-gnueabi/wvstreams/4.6.1-r0/temp/log.do_fetch.8864
> ERROR: Task=20
> (/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams_4.6.1.bb:do_fetch)=20
> failed with exit code '1'/
>
> *Here i sthe folder structure:*
>
> =E2=94=9C=E2=94=80=E2=94=80 file
Well, as you can see this directory is not one of the search paths in=20
the log above. Rename file -> files
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 0001-build-fix-parallel-make.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0001-Check-for-limits.=
h-during-configure.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0001-Forward-port-to-O=
penSSL-1.1.x.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0002-wvrules.mk-Use-_D=
EFAULT_SOURCE.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0002-wvtask-Dont-use-u=
context-on-non-glibc-systems.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0003-wvtask-Check-for-=
HAVE_LIBC_STACK_END-only-on-glibc-s.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0004-wvcrash-Replace-u=
se-of-basename-API.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0005-check-for-libexec=
info-during-configure.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 04_signed_request.diff
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 05_gcc.diff
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 06_gcc-4.7.diff
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 07_buildflags.diff
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 argp.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 gcc-6.patch
> =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 openssl-buildfix.patch
> =E2=94=94=E2=94=80=E2=94=80 wvstreams_4.6.1.bb <http://wvstreams_4.6.1.b=
b>
>
> *And this is the recipie file:*
>
> /HOMEPAGE =3D "http://alumnit.ca/wiki/index.php?page=3DWvStreams"
> SUMMARY =3D "WvStreams is a network programming library in C++"
>
> LICENSE =3D "LGPLv2"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D55ca817ccb7d5b5b66355690e9abc=
605"
>
> DEPENDS =3D "zlib openssl (>=3D 0.9.8) dbus readline"
> DEPENDS_append_libc-musl =3D " argp-standalone libexecinfo"
>
> SRC_URI =3D "http://${BPN}.googlecode.com/files/${BP}.tar.gz=20
> <http://googlecode.com/files/$%7BBP%7D.tar.gz> \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://04_signed_request.diff \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://05_gcc.diff \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://06_gcc-4.7.diff \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://07_buildflags.diff \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://gcc-6.patch \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://argp.patch \
> =C2=A0file://0001-Check-for-limits.h-during-configure.patch \
> =C2=A0file://0002-wvtask-Dont-use-ucontext-on-non-glibc-systems.patch \
> =C2=A0file://0003-wvtask-Check-for-HAVE_LIBC_STACK_END-only-on-glibc-s.p=
atch \
> =C2=A0file://0004-wvcrash-Replace-use-of-basename-API.patch \
> =C2=A0file://0005-check-for-libexecinfo-during-configure.patch \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-build-fix-parallel-=
make.patch \
> =C2=A0file://0002-wvrules.mk-Use-_DEFAULT_SOURCE.patch \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://openssl-buildfix.patch \
> =C2=A0file://0001-Forward-port-to-OpenSSL-1.1.x.patch \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"
>
> SRC_URI[md5sum] =3D "2760dac31a43d452a19a3147bfde571c"
> SRC_URI[sha256sum] =3D=20
> "8403f5fbf83aa9ac0c6ce15d97fd85607488152aa84e007b7d0621b8ebc07633"
>
> inherit autotools-brokensep pkgconfig
>
> TARGET_CFLAGS_append =3D " -fno-tree-dce -fno-optimize-sibling-calls"
>
> LDFLAGS_append =3D " -Wl,-rpath-link,${CROSS_DIR}/${TARGET_SYS}/lib"
>
> EXTRA_OECONF =3D " --without-tcl --without-qt --without-pam=20
> --without-valgrind"
>
> PACKAGES_prepend =3D "libuniconf "
> PACKAGES_prepend =3D "uniconfd "
> PACKAGES_prepend =3D "libwvstreams-base "
> PACKAGES_prepend =3D "libwvstreams-extras "
> PACKAGES_prepend =3D "${PN}-valgrind "
>
> RPROVIDES_${PN}-dbg +=3D "libuniconf-dbg uniconfd-dbg=20
> libwvstreams-base-dbg libwvstreams-extras-dbg"
>
> FILES_libuniconf =C2=A0 =C2=A0 =3D "${libdir}/libuniconf.so.*"
>
> FILES_uniconfd =C2=A0 =C2=A0 =3D "${sbindir}/uniconfd ${sysconfdir}/unic=
onf.conf=20
> ${localstatedir}/uniconf"
>
> FILES_libwvstreams-base =C2=A0 =C2=A0 =3D "${libdir}/libwvutils.so.*"
>
> FILES_libwvstreams-extras =C2=A0 =C2=A0 =3D "${libdir}/libwvbase.so.*=20
> ${libdir}/libwvstreams.so.*"
>
> FILES_${PN}-valgrind =3D "${libdir}/valgrind/wvstreams.supp"
> RDEPENDS_${PN} +=3D "perl"/
>
>
>
>=20
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------AE594CBB973BFC9E647471DF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 17.09.2020 10:02, Zoltan Kerenyi
      Nagy wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"color:#333399">
          <div dir=3D"ltr">
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default">Hi=
,</div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b=
r>
            </div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default">He=
re
              is the error now, all the files are there, it says that <b>0=
4_signed_request.diff</b>
              is not there:<b><br>
              </b></div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b=
r>
            </div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><i=
>WARNING:
                wvstreams-4.6.1-r0 do_fetch: Failed to fetch URL
                <a class=3D"moz-txt-link-freetext" href=3D"file://04_signe=
d_request.diff">file://04_signed_request.diff</a>, attempting MIRRORS if
                available<br>
                ERROR: wvstreams-4.6.1-r0 do_fetch: Fetcher failure:
                Unable to find file <a class=3D"moz-txt-link-freetext" hre=
f=3D"file://04_signed_request.diff">file://04_signed_request.diff</a>
                anywhere. The paths that were searched were:<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams-4.6.1/nodistro<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams/nodistro<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/files/nodistro<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams-4.6.1/barix-ipam400<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams/barix-ipam400<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/files/barix-ipam400<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams-4.6.1/sun8i<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams/sun8i<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/files/sun8i<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams-4.6.1/armv7ve<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams/armv7ve<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/files/armv7ve<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams-4.6.1/arm<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams/arm<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/files/arm<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams-4.6.1/<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams/<br>
                =C2=A0 =C2=A0
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/files/<br>
                =C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/downloads<br>
                ERROR: wvstreams-4.6.1-r0 do_fetch: Fetcher failure for
                URL: '<a class=3D"moz-txt-link-freetext" href=3D"file://04=
_signed_request.diff">file://04_signed_request.diff</a>'. Unable to fetch
                URL from any source.<br>
                ERROR: wvstreams-4.6.1-r0 do_fetch: Function failed:
                base_do_fetch<br>
                ERROR: Logfile of failure stored in:
/home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-linux=
-gnueabi/wvstreams/4.6.1-r0/temp/log.do_fetch.8864<br>
                ERROR: Task
(/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-c=
onnectivity/wvstreams/wvstreams_4.6.1.bb:do_fetch)
                failed with exit code '1'</i></div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b=
r>
            </div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b=
>Here
                i sthe folder structure:</b><br>
            </div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b=
r>
            </div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default">=
=E2=94=9C=E2=94=80=E2=94=80
              file<br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Well, as you can see this directory is not one of the search paths
    in the log above. Rename file -&gt; files<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"color:#333399">
          <div dir=3D"ltr">
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default">=
=E2=94=82=C2=A0=C2=A0
              =E2=94=9C=E2=94=80=E2=94=80 0001-build-fix-parallel-make.pat=
ch<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0001-Check=
-for-limits.h-during-configure.patch<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0001-Forwa=
rd-port-to-OpenSSL-1.1.x.patch<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0002-wvrul=
es.mk-Use-_DEFAULT_SOURCE.patch<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80
              0002-wvtask-Dont-use-ucontext-on-non-glibc-systems.patch<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80
              0003-wvtask-Check-for-HAVE_LIBC_STACK_END-only-on-glibc-s.pa=
tch<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0004-wvcra=
sh-Replace-use-of-basename-API.patch<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0005-check=
-for-libexecinfo-during-configure.patch<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 04_signed_=
request.diff<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 05_gcc.dif=
f<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 06_gcc-4.7=
.diff<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 07_buildfl=
ags.diff<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 argp.patch=
<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 gcc-6.patc=
h<br>
              =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 openssl-bu=
ildfix.patch<br>
              =E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://wvstreams_4.6.=
1.bb" target=3D"_blank"
                moz-do-not-send=3D"true">wvstreams_4.6.1.bb</a></div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b=
r>
            </div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b=
>And
                this is the recipie file:</b></div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b=
r>
            </div>
            <div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><i=
>HOMEPAGE
                =3D "<a
                  href=3D"http://alumnit.ca/wiki/index.php?page=3DWvStream=
s"
                  target=3D"_blank" moz-do-not-send=3D"true">http://alumni=
t.ca/wiki/index.php?page=3DWvStreams</a>"<br>
                SUMMARY =3D "WvStreams is a network programming library in
                C++"<br>
                <br>
                LICENSE =3D "LGPLv2"<br>
                LIC_FILES_CHKSUM =3D
                <a class=3D"moz-txt-link-rfc2396E" href=3D"file://LICENSE;=
md5=3D55ca817ccb7d5b5b66355690e9abc605">"file://LICENSE;md5=3D55ca817ccb7d5=
b5b66355690e9abc605"</a><br>
                <br>
                DEPENDS =3D "zlib openssl (&gt;=3D 0.9.8) dbus readline"<b=
r>
                DEPENDS_append_libc-musl =3D " argp-standalone
                libexecinfo"<br>
                <br>
                SRC_URI =3D "<a class=3D"moz-txt-link-freetext" href=3D"ht=
tp://$">http://$</a>{BPN}.<a
                  href=3D"http://googlecode.com/files/$%7BBP%7D.tar.gz"
                  target=3D"_blank" moz-do-not-send=3D"true">googlecode.co=
m/files/${BP}.tar.gz</a>
                \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a class=3D"moz-t=
xt-link-freetext" href=3D"file://04_signed_request.diff">file://04_signed_r=
equest.diff</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a class=3D"moz-t=
xt-link-freetext" href=3D"file://05_gcc.diff">file://05_gcc.diff</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a class=3D"moz-t=
xt-link-freetext" href=3D"file://06_gcc-4.7.diff">file://06_gcc-4.7.diff</a=
> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a class=3D"moz-t=
xt-link-freetext" href=3D"file://07_buildflags.diff">file://07_buildflags.d=
iff</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a class=3D"moz-t=
xt-link-freetext" href=3D"file://gcc-6.patch">file://gcc-6.patch</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a class=3D"moz-t=
xt-link-freetext" href=3D"file://argp.patch">file://argp.patch</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://00=
01-Check-for-limits.h-during-configure.patch">file://0001-Check-for-limits.=
h-during-configure.patch</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://00=
02-wvtask-Dont-use-ucontext-on-non-glibc-systems.patch">file://0002-wvtask-=
Dont-use-ucontext-on-non-glibc-systems.patch</a>
                \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://00=
03-wvtask-Check-for-HAVE_LIBC_STACK_END-only-on-glibc-s.patch">file://0003-=
wvtask-Check-for-HAVE_LIBC_STACK_END-only-on-glibc-s.patch</a>
                \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://00=
04-wvcrash-Replace-use-of-basename-API.patch">file://0004-wvcrash-Replace-u=
se-of-basename-API.patch</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://00=
05-check-for-libexecinfo-during-configure.patch">file://0005-check-for-libe=
xecinfo-during-configure.patch</a>
                \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a class=3D"moz-t=
xt-link-freetext" href=3D"file://0001-build-fix-parallel-make.patch">file:/=
/0001-build-fix-parallel-make.patch</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://00=
02-wvrules.mk-Use-_DEFAULT_SOURCE.patch">file://0002-wvrules.mk-Use-_DEFAUL=
T_SOURCE.patch</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a class=3D"moz-t=
xt-link-freetext" href=3D"file://openssl-buildfix.patch">file://openssl-bui=
ldfix.patch</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://00=
01-Forward-port-to-OpenSSL-1.1.x.patch">file://0001-Forward-port-to-OpenSSL=
-1.1.x.patch</a> \<br>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"<br>
                <br>
                SRC_URI[md5sum] =3D "2760dac31a43d452a19a3147bfde571c"<br>
                SRC_URI[sha256sum] =3D
                "8403f5fbf83aa9ac0c6ce15d97fd85607488152aa84e007b7d0621b8e=
bc07633"<br>
                <br>
                inherit autotools-brokensep pkgconfig<br>
                <br>
                TARGET_CFLAGS_append =3D " -fno-tree-dce
                -fno-optimize-sibling-calls"<br>
                <br>
                LDFLAGS_append =3D "
                -Wl,-rpath-link,${CROSS_DIR}/${TARGET_SYS}/lib"<br>
                <br>
                EXTRA_OECONF =3D " --without-tcl --without-qt
                --without-pam --without-valgrind"<br>
                <br>
                PACKAGES_prepend =3D "libuniconf "<br>
                PACKAGES_prepend =3D "uniconfd "<br>
                PACKAGES_prepend =3D "libwvstreams-base "<br>
                PACKAGES_prepend =3D "libwvstreams-extras "<br>
                PACKAGES_prepend =3D "${PN}-valgrind "<br>
                <br>
                RPROVIDES_${PN}-dbg +=3D "libuniconf-dbg uniconfd-dbg
                libwvstreams-base-dbg libwvstreams-extras-dbg"<br>
                <br>
                FILES_libuniconf =C2=A0 =C2=A0 =3D "${libdir}/libuniconf.s=
o.*"<br>
                <br>
                FILES_uniconfd =C2=A0 =C2=A0 =3D "${sbindir}/uniconfd
                ${sysconfdir}/uniconf.conf ${localstatedir}/uniconf"<br>
                <br>
                FILES_libwvstreams-base =C2=A0 =C2=A0 =3D
                "${libdir}/libwvutils.so.*"<br>
                <br>
                FILES_libwvstreams-extras =C2=A0 =C2=A0 =3D
                "${libdir}/libwvbase.so.* ${libdir}/libwvstreams.so.*"<br>
                <br>
                FILES_${PN}-valgrind =3D
                "${libdir}/valgrind/wvstreams.supp"<br>
                RDEPENDS_${PN} +=3D "perl"</i></div>
            <div class=3D"gmail-adL"><br>
              <br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------AE594CBB973BFC9E647471DF--
