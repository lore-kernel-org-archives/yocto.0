Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web12.10681.1600329805318354089
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 01:03:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kZuzgKmo;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id v8so416716uaq.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2020 01:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6nHuSz/EDrRdgafpgc/uHTNDKFKZiyb7d5TJhvknsuU=;
        b=kZuzgKmoGlTLMEjz5Zw6Gnswv1MGAGK452FsxmYKioIfQj+9EdXgoI9p6JvZUME9i+
         G0lAv3Qeuo1GcC8Ui7T2okF+L2BfHBJnJFiyyEAsDw/F5Xt8r99r/HRVTBBu4Yv7Mayu
         bKv5ZVpM4hvgenyF3Ab4ZDhLYOpmFv+rQgW7UMtW5GZJbOVSK4rCsCMtRYNuJfNEQ0bE
         onDK7BDzysuOeNabSsidRF9u/nlAyoN1tuS3ozi2f822Evds22kNaLmBtjmRQ06b3g8L
         2n7TLXNwGkHZymtnqNzbn0LhOKBXW/ByzqfliNFLt2olSD7GBmvg6IxsOmFZKZY5XaZ4
         FbJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6nHuSz/EDrRdgafpgc/uHTNDKFKZiyb7d5TJhvknsuU=;
        b=T2UkLgGDznfUiWkLctCW1wSVAWeW/Zmxsl315Y0n2LRhJdlQpOoggecz5wUbmfdP2J
         K6PG9r6LHzxEDrD1Dgn1yFw35GUNZhneQYw918/msE/aHNKmZRNKswGhRzNWR0c2Vus4
         JXCF4HqVR9YEgG1BPj3MhG21XMdENYl1OP7N1d7nHuh57bUKJku6XjcSY2ExoGePRW2U
         EvDjYaN7sNQ9liGM7MJQUdG2rA3mJ4iNe8srTpC+307/QEb+nf1QARLPcINyqSVf2PhW
         oszFRDH0yYMLjjcUDk+8FHesijELnCuFMBsGeKME6M4Hns92/rpWJmQfyhDbFNqs3UA7
         kCeQ==
X-Gm-Message-State: AOAM533/kZwk+TNgoYjw3WD3JO6ibaa1gVNChFDmXocnwsiNJWJUM/oA
	mkIDLDlUair47C1vDSm2PIB3xtqRlEm03XfwCUxpDDABSTYVwJSR
X-Google-Smtp-Source: ABdhPJxbQaSuakwpGZroRLTRCiYwmemoa/Fa4lRlFVvCIVDlq0FEsAkX/jRIIFup0+i6ovl0S2kgfdBML+No2diKZiw=
X-Received: by 2002:ab0:4284:: with SMTP id j4mr14957304uaj.68.1600329803733;
 Thu, 17 Sep 2020 01:03:23 -0700 (PDT)
MIME-Version: 1.0
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Thu, 17 Sep 2020 10:02:47 +0200
Message-ID: <CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail.com>
Subject: wvdial
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000079a16b05af7dd180"

--00000000000079a16b05af7dd180
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Here is the error now, all the files are there, it says that
*04_signed_request.diff* is not there:

























*WARNING: wvstreams-4.6.1-r0 do_fetch: Failed to fetch URL
file://04_signed_request.diff, attempting MIRRORS if availableERROR:
wvstreams-4.6.1-r0 do_fetch: Fetcher failure: Unable to find file
file://04_signed_request.diff anywhere. The paths that were searched were:

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams-4.6.1/nodistro

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams/nodistro

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/files/nodistro

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams-4.6.1/barix-ipam400

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams/barix-ipam400

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/files/barix-ipam400

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams-4.6.1/sun8i

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams/sun8i

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/files/sun8i

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams-4.6.1/armv7ve

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams/armv7ve

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/files/armv7ve

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams-4.6.1/arm

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams/arm

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/files/arm

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams-4.6.1/

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/wvstreams/

/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvstreams/files/
  /home/kerenyiz/oe-core/build/downloadsERROR: wvstreams-4.6.1-r0 do_fetch:
Fetcher failure for URL: 'file://04_signed_request.diff'. Unable to fetch
URL from any source.ERROR: wvstreams-4.6.1-r0 do_fetch: Function failed:
base_do_fetchERROR: Logfile of failure stored in:
/home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-linux-=
gnueabi/wvstreams/4.6.1-r0/temp/log.do_fetch.8864ERROR:
Task
(/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams_4.6.1.bb:do_fetch)
failed with exit code '1'*

*Here i sthe folder structure:*

=E2=94=9C=E2=94=80=E2=94=80 file
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0001-build-fix-parallel-make.patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0001-Check-for-limits.h-during-conf=
igure.patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0001-Forward-port-to-OpenSSL-1.1.x.=
patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0002-wvrules.mk-Use-_DEFAULT_SOURCE=
.patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0002-wvtask-Dont-use-ucontext-on-no=
n-glibc-systems.patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0003-wvtask-Check-for-HAVE_LIBC_STA=
CK_END-only-on-glibc-s.patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0004-wvcrash-Replace-use-of-basenam=
e-API.patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0005-check-for-libexecinfo-during-c=
onfigure.patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 04_signed_request.diff
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 05_gcc.diff
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 06_gcc-4.7.diff
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 07_buildflags.diff
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 argp.patch
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 gcc-6.patch
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 openssl-buildfix.patch
=E2=94=94=E2=94=80=E2=94=80 wvstreams_4.6.1.bb

*And this is the recipie file:*
























































*HOMEPAGE =3D "http://alumnit.ca/wiki/index.php?page=3DWvStreams
<http://alumnit.ca/wiki/index.php?page=3DWvStreams>"SUMMARY =3D "WvStreams =
is a
network programming library in C++"LICENSE =3D "LGPLv2"LIC_FILES_CHKSUM =3D
"file://LICENSE;md5=3D55ca817ccb7d5b5b66355690e9abc605"DEPENDS =3D "zlib
openssl (>=3D 0.9.8) dbus readline"DEPENDS_append_libc-musl =3D "
argp-standalone libexecinfo"SRC_URI =3D
"http://${BPN}.googlecode.com/files/${BP}.tar.gz
<http://googlecode.com/files/$%7BBP%7D.tar.gz> \
 file://04_signed_request.diff \           file://05_gcc.diff \
 file://06_gcc-4.7.diff \           file://07_buildflags.diff \
 file://gcc-6.patch \           file://argp.patch \
 file://0001-Check-for-limits.h-during-configure.patch \
 file://0002-wvtask-Dont-use-ucontext-on-non-glibc-systems.patch \
 file://0003-wvtask-Check-for-HAVE_LIBC_STACK_END-only-on-glibc-s.patch \
         file://0004-wvcrash-Replace-use-of-basename-API.patch \
 file://0005-check-for-libexecinfo-during-configure.patch \
 file://0001-build-fix-parallel-make.patch \
 file://0002-wvrules.mk-Use-_DEFAULT_SOURCE.patch \
 file://openssl-buildfix.patch \
 file://0001-Forward-port-to-OpenSSL-1.1.x.patch \
 "SRC_URI[md5sum] =3D "2760dac31a43d452a19a3147bfde571c"SRC_URI[sha256sum] =
=3D
"8403f5fbf83aa9ac0c6ce15d97fd85607488152aa84e007b7d0621b8ebc07633"inherit
autotools-brokensep pkgconfigTARGET_CFLAGS_append =3D " -fno-tree-dce
-fno-optimize-sibling-calls"LDFLAGS_append =3D "
-Wl,-rpath-link,${CROSS_DIR}/${TARGET_SYS}/lib"EXTRA_OECONF =3D "
--without-tcl --without-qt --without-pam
--without-valgrind"PACKAGES_prepend =3D "libuniconf "PACKAGES_prepend =3D
"uniconfd "PACKAGES_prepend =3D "libwvstreams-base "PACKAGES_prepend =3D
"libwvstreams-extras "PACKAGES_prepend =3D "${PN}-valgrind
"RPROVIDES_${PN}-dbg +=3D "libuniconf-dbg uniconfd-dbg libwvstreams-base-db=
g
libwvstreams-extras-dbg"FILES_libuniconf     =3D
"${libdir}/libuniconf.so.*"FILES_uniconfd     =3D "${sbindir}/uniconfd
${sysconfdir}/uniconf.conf ${localstatedir}/uniconf"FILES_libwvstreams-base
    =3D "${libdir}/libwvutils.so.*"FILES_libwvstreams-extras     =3D
"${libdir}/libwvbase.so.* ${libdir}/libwvstreams.so.*"FILES_${PN}-valgrind
=3D "${libdir}/valgrind/wvstreams.supp"RDEPENDS_${PN} +=3D "perl"*

--00000000000079a16b05af7dd180
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:#333399"><div =
dir=3D"ltr"><div style=3D"color:rgb(51,51,153)" class=3D"gmail_default">Hi,=
</div><div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><br></div=
><div style=3D"color:rgb(51,51,153)" class=3D"gmail_default">Here is the er=
ror now, all the files are there, it says that <b>04_signed_request.diff</b=
> is not there:<b><br></b></div><div style=3D"color:rgb(51,51,153)" class=
=3D"gmail_default"><br></div><div style=3D"color:rgb(51,51,153)" class=3D"g=
mail_default"><i>WARNING: wvstreams-4.6.1-r0 do_fetch: Failed to fetch URL =
file://04_signed_request.diff, attempting MIRRORS if available<br>ERROR:
 wvstreams-4.6.1-r0 do_fetch: Fetcher failure: Unable to find file=20
file://04_signed_request.diff anywhere. The paths that were searched=20
were:<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/meta-openembed=
ded/meta-oe/recipes-connectivity/wvstreams/wvstreams-4.6.1/nodistro<br>=C2=
=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/=
recipes-connectivity/wvstreams/wvstreams/nodistro<br>=C2=A0 =C2=A0 /home/ke=
renyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivit=
y/wvstreams/files/nodistro<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/..=
/stuff/meta-openembedded/meta-oe/recipes-connectivity/wvstreams/wvstreams-4=
.6.1/barix-ipam400<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/m=
eta-openembedded/meta-oe/recipes-connectivity/wvstreams/wvstreams/barix-ipa=
m400<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/meta-openembedd=
ed/meta-oe/recipes-connectivity/wvstreams/files/barix-ipam400<br>=C2=A0 =C2=
=A0 /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams-4.6.1/sun8i<br>=C2=A0 =C2=A0 /home/kereny=
iz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wv=
streams/wvstreams/sun8i<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../st=
uff/meta-openembedded/meta-oe/recipes-connectivity/wvstreams/files/sun8i<br=
>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta=
-oe/recipes-connectivity/wvstreams/wvstreams-4.6.1/armv7ve<br>=C2=A0 =C2=A0=
 /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvstreams/wvstreams/armv7ve<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-c=
ore/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wvstreams=
/files/armv7ve<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/meta-=
openembedded/meta-oe/recipes-connectivity/wvstreams/wvstreams-4.6.1/arm<br>=
=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-=
oe/recipes-connectivity/wvstreams/wvstreams/arm<br>=C2=A0 =C2=A0 /home/kere=
nyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/=
wvstreams/files/arm<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/=
meta-openembedded/meta-oe/recipes-connectivity/wvstreams/wvstreams-4.6.1/<b=
r>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/met=
a-oe/recipes-connectivity/wvstreams/wvstreams/<br>=C2=A0 =C2=A0 /home/keren=
yiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/w=
vstreams/files/<br>=C2=A0 =C2=A0 /home/kerenyiz/oe-core/build/downloads<br>=
ERROR: wvstreams-4.6.1-r0 do_fetch: Fetcher failure for URL: &#39;file://04=
_signed_request.diff&#39;. Unable to fetch URL from any source.<br>ERROR: w=
vstreams-4.6.1-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfil=
e of failure stored in: /home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa=
7hf-neon-vfpv4-oe-linux-gnueabi/wvstreams/4.6.1-r0/temp/log.do_fetch.8864<b=
r>ERROR: Task (/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta=
-oe/recipes-connectivity/wvstreams/wvstreams_4.6.1.bb:do_fetch) failed with=
 exit code &#39;1&#39;</i></div><div style=3D"color:rgb(51,51,153)" class=
=3D"gmail_default"><br></div><div style=3D"color:rgb(51,51,153)" class=3D"g=
mail_default"><b>Here i sthe folder structure:</b><br></div><div style=3D"c=
olor:rgb(51,51,153)" class=3D"gmail_default"><br></div><div style=3D"color:=
rgb(51,51,153)" class=3D"gmail_default">=E2=94=9C=E2=94=80=E2=94=80 file<br=
>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0001-build-fix-parallel-=
make.patch<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0001-Check-=
for-limits.h-during-configure.patch<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=
=94=80=E2=94=80 0001-Forward-port-to-OpenSSL-1.1.x.patch<br>=E2=94=82=C2=A0=
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0002-wvrules.mk-Use-_DEFAULT_SOURCE.patc=
h<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0002-wvtask-Dont-use=
-ucontext-on-non-glibc-systems.patch<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=
=94=80=E2=94=80 0003-wvtask-Check-for-HAVE_LIBC_STACK_END-only-on-glibc-s.p=
atch<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 0004-wvcrash-Repl=
ace-use-of-basename-API.patch<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=
=E2=94=80 0005-check-for-libexecinfo-during-configure.patch<br>=E2=94=82=C2=
=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 04_signed_request.diff<br>=E2=94=82=
=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 05_gcc.diff<br>=E2=94=82=C2=A0=C2=
=A0 =E2=94=9C=E2=94=80=E2=94=80 06_gcc-4.7.diff<br>=E2=94=82=C2=A0=C2=A0 =
=E2=94=9C=E2=94=80=E2=94=80 07_buildflags.diff<br>=E2=94=82=C2=A0=C2=A0 =E2=
=94=9C=E2=94=80=E2=94=80 argp.patch<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=
=94=80=E2=94=80 gcc-6.patch<br>=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=
=94=80 openssl-buildfix.patch<br>=E2=94=94=E2=94=80=E2=94=80 <a href=3D"htt=
p://wvstreams_4.6.1.bb" target=3D"_blank">wvstreams_4.6.1.bb</a></div><div =
style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><br></div><div style=
=3D"color:rgb(51,51,153)" class=3D"gmail_default"><b>And this is the recipi=
e file:</b></div><div style=3D"color:rgb(51,51,153)" class=3D"gmail_default=
"><br></div><div style=3D"color:rgb(51,51,153)" class=3D"gmail_default"><i>=
HOMEPAGE =3D &quot;<a href=3D"http://alumnit.ca/wiki/index.php?page=3DWvStr=
eams" target=3D"_blank">http://alumnit.ca/wiki/index.php?page=3DWvStreams</=
a>&quot;<br>SUMMARY =3D &quot;WvStreams is a network programming library in=
 C++&quot;<br><br>LICENSE =3D &quot;LGPLv2&quot;<br>LIC_FILES_CHKSUM =3D &q=
uot;file://LICENSE;md5=3D55ca817ccb7d5b5b66355690e9abc605&quot;<br><br>DEPE=
NDS =3D &quot;zlib openssl (&gt;=3D 0.9.8) dbus readline&quot;<br>DEPENDS_a=
ppend_libc-musl =3D &quot; argp-standalone libexecinfo&quot;<br><br>SRC_URI=
 =3D &quot;http://${BPN}.<a href=3D"http://googlecode.com/files/$%7BBP%7D.t=
ar.gz" target=3D"_blank">googlecode.com/files/${BP}.tar.gz</a> \<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://04_signed_request.diff \<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://05_gcc.diff \<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0file://06_gcc-4.7.diff \<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0file://07_buildflags.diff \<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0file://gcc-6.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0file://argp.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0f=
ile://0001-Check-for-limits.h-during-configure.patch \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0file://0002-wvtask-Dont-use-ucontext-on-non-glibc-s=
ystems.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0003-wvta=
sk-Check-for-HAVE_LIBC_STACK_END-only-on-glibc-s.patch \<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0file://0004-wvcrash-Replace-use-of-basename-API.=
patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0005-check-for-l=
ibexecinfo-during-configure.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0file://0001-build-fix-parallel-make.patch \<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0file://0002-wvrules.mk-Use-_DEFAULT_SOURCE.patch \<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://openssl-buildfix.patch \<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Forward-port-to-OpenS=
SL-1.1.x.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br><br>=
SRC_URI[md5sum] =3D &quot;2760dac31a43d452a19a3147bfde571c&quot;<br>SRC_URI=
[sha256sum] =3D &quot;8403f5fbf83aa9ac0c6ce15d97fd85607488152aa84e007b7d062=
1b8ebc07633&quot;<br><br>inherit autotools-brokensep pkgconfig<br><br>TARGE=
T_CFLAGS_append =3D &quot; -fno-tree-dce -fno-optimize-sibling-calls&quot;<=
br><br>LDFLAGS_append =3D &quot; -Wl,-rpath-link,${CROSS_DIR}/${TARGET_SYS}=
/lib&quot;<br><br>EXTRA_OECONF =3D &quot; --without-tcl --without-qt --with=
out-pam --without-valgrind&quot;<br><br>PACKAGES_prepend =3D &quot;libunico=
nf &quot;<br>PACKAGES_prepend =3D &quot;uniconfd &quot;<br>PACKAGES_prepend=
 =3D &quot;libwvstreams-base &quot;<br>PACKAGES_prepend =3D &quot;libwvstre=
ams-extras &quot;<br>PACKAGES_prepend =3D &quot;${PN}-valgrind &quot;<br><b=
r>RPROVIDES_${PN}-dbg +=3D &quot;libuniconf-dbg uniconfd-dbg libwvstreams-b=
ase-dbg libwvstreams-extras-dbg&quot;<br><br>FILES_libuniconf =C2=A0 =C2=A0=
 =3D &quot;${libdir}/libuniconf.so.*&quot;<br><br>FILES_uniconfd =C2=A0 =C2=
=A0 =3D &quot;${sbindir}/uniconfd ${sysconfdir}/uniconf.conf ${localstatedi=
r}/uniconf&quot;<br><br>FILES_libwvstreams-base =C2=A0 =C2=A0 =3D &quot;${l=
ibdir}/libwvutils.so.*&quot;<br><br>FILES_libwvstreams-extras =C2=A0 =C2=A0=
 =3D &quot;${libdir}/libwvbase.so.* ${libdir}/libwvstreams.so.*&quot;<br><b=
r>FILES_${PN}-valgrind =3D &quot;${libdir}/valgrind/wvstreams.supp&quot;<br=
>RDEPENDS_${PN} +=3D &quot;perl&quot;</i></div><div class=3D"gmail-adL"><br=
><br></div></div></div></div>

--00000000000079a16b05af7dd180--
