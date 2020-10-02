Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web10.8256.1601620234784160785
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 23:30:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qxZte05m;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id g72so344470qke.8
        for <yocto@lists.yoctoproject.org>; Thu, 01 Oct 2020 23:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0OXGWW004voNIjn6SR/k3fnl84YpqZrLVb4mXTU9sFU=;
        b=qxZte05mnn4kj6se2qsEcdmkuldYA82PDlVRRM3QCmT4TdXgvVc6EVOZiTbRLF2XIH
         jtO49f5j6GPpf4wOdN4/xdBG6lZRC60BGxWljs4o1yP1KmKP2QNGvd7bLXAIVISUF4Y2
         V+P6p2YXqDbfueSl0VoXPAJPcJjJ/aP/GR4CTEFyZJHShAu66VSapwbvjZKuitN6yNAK
         Duyne5dS0X95SiRd7/UZqnYuN8v8RrwfQEoMEafTMStdnEk97O8Is+D6+wlS4tE4kauL
         H4fyOQ4Jw22sePVZF+wI/HQSedtMGogpClNsj7OWy8vluttVmeGeJ/9I5KpZ3MWHjX1G
         CYEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0OXGWW004voNIjn6SR/k3fnl84YpqZrLVb4mXTU9sFU=;
        b=VK+ua1iDIw2bH3u7K7abmBlaROgkE7N1OzY6jGQUi83iv55lw3ypMPEn2k38Dvxw4Y
         c7wufEXchly6ZQrk6ceulGmsYkpfbhUK5xNDzkECZjYfLHignMg4brQTYD8UvYg+N2SH
         VgXTtr3pb/YgOl0cUKiVXPSkx176AU10WDqsAkfZlOOnDzJCA+lyInPyMpqRPU/NrThe
         JHf4t29bIiRa/fUBKqNghA6LSU/aENMy1Sgnz7wCDF0ZtvcsQkAMZqzW1SvU69Zu31Wm
         SGtRUvlM/D8khlXFmI4o2NA+FI+TnCA13PuuOSfjvHY4bfqxlyDoe7Uy3XpcYa1Tlssh
         hCOA==
X-Gm-Message-State: AOAM533SA/NB1xw6rsXusuqu6TD9F1GbXX4NT+CHHVuijScTt7AgTFfJ
	m/WwlbYg2E5iJI8mpIhUv3JJbw0PGfv0KOKh/lA=
X-Google-Smtp-Source: ABdhPJw23/WFiBHlSb1t9ssfG5Rrk8trOY05Y2FrAaZPNWDA/FWMWkcBnjLaImV3UJvew8TAnBD1xbxCeT55BSZtDqA=
X-Received: by 2002:a05:620a:1670:: with SMTP id d16mr716546qko.474.1601620233753;
 Thu, 01 Oct 2020 23:30:33 -0700 (PDT)
MIME-Version: 1.0
References: <Wy00.1601555124900901736.R4KA@lists.yoctoproject.org>
In-Reply-To: <Wy00.1601555124900901736.R4KA@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 1 Oct 2020 23:30:07 -0700
Message-ID: <CAMKF1so8O0vQMbFiWGOaqUQyk=yWdU0hrCgRgBfdHjqqmZYyGg@mail.gmail.com>
Subject: Re: [yocto] Help creating a recipe for bro (zeek)
To: seshu.pyla@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 1, 2020 at 5:25 AM <seshu.pyla@gmail.com> wrote:
>
> Hi all,
>
> I am creating recipe for the bro version 2.5.5.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> SUMMARY =3D "Passive network traffic analyzer"
> HOMEPAGE =3D "http://www.bro.org"
>
> LICENSE =3D "GPL-2.0"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D7ffedb422684eb346c1fb5bb8fc5f=
e45"
>
> inherit debian-package
> require recipes-debian/sources/bro.inc
> inherit autotools cmake pythonnative
> DEBIAN_UNPACK_DIR =3D "${WORKDIR}/bro-${PV}-minimal"
> S =3D "${WORKDIR}/bro-${PV}-minimal"
>
> #It will look for and find the binary in sysroot bin directory.
> OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D "BOTH"
> EXTRA_OECMAKE +=3D "-DOPENSSL_CORRECT_VERSION_NUMBER=3DTRUE "
>
> DEPENDS +=3D "bind binpac-native openssl  libpcap swig-native  bison-nat=
ive flex-native zlib sed-native"
>
> RDEPENDS_${PN} +=3D "bash bind libpcap openssl zlib python"
>
> BBCLASSEXTEND =3D "native nativesdk"
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> I got the below error while building:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> | DEBUG: Executing shell function do_compile
> | NOTE: VERBOSE=3D1 cmake --build /work/build/tmp/work/core2-64-deby-lin=
ux/bro/2.5.5-r0/build --target all -- -j 4
> | [1/785] [BIFCL] Processing event.bif
> | FAILED: src/event.bif.func_def src/event.bif.func_h src/event.bif.func=
_init src/event.bif.netvar_def src/event.bif.netvar_h src/event.bif.netvar_=
init scripts/base/bif/event.bif.bro
> | cd /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/build/src && =
bifcl /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/bro-2.5.5-minim=
al/src/event.bif || ( rm -f /work/build/tmp/work/core2-64-deby-linux/bro/2.=
5.5-r0/build/src/event.bif.func_def /work/build/tmp/work/core2-64-deby-linu=
x/bro/2.5.5-r0/build/src/event.bif.func_h /work/build/tmp/work/core2-64-deb=
y-linux/bro/2.5.5-r0/build/src/event.bif.func_init /work/build/tmp/work/cor=
e2-64-deby-linux/bro/2.5.5-r0/build/src/event.bif.netvar_def /work/build/tm=
p/work/core2-64-deby-linux/bro/2.5.5-r0/build/src/event.bif.netvar_h /work/=
build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/build/src/event.bif.netvar_=
init && exit 1 ) && /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/r=
ecipe-sysroot-native/usr/bin/cmake -E copy event.bif.bro /work/build/tmp/wo=
rk/core2-64-deby-linux/bro/2.5.5-r0/build/scripts/base/bif/event.bif.bro &&=
 /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/recipe-sysroot-nativ=
e/usr/bin/cmake -E remove -f event.bif.bro
> | /bin/sh: 1: bifcl: not found

you need bifcl compiler perhaps cross compiler, so you might need to
build bro-native and add bro-native to depends for bro recipe.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> I did not get why 'bifcl' is not foud, i have checked inside folder 'bui=
ld/src/' the binary is present.
> I have debugged with command `bitbake -d devshell bro`
> even there i have got the same error even the binary file is exist
> also checked the 'file bifcl' inside devshell, below is the output
> bifcl: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamical=
ly linked, interpreter /lib/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, Buil=
dID[sha1]=3D9165d27cdaa9bfe77fb8a72081302b0469feda72, with debug_info, not =
stripped
>
> can any one has suggestion for me?
>
> Thanks
> seshu
>=20
>
