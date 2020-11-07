Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web12.9107.1604779431760765030
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Nov 2020 12:03:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YhAOQt/0;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id m65so3336285qte.11
        for <yocto@lists.yoctoproject.org>; Sat, 07 Nov 2020 12:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=LC++/xV6bYGrP0fgwEoSf0Ayhre970AMd89FMgXUx3o=;
        b=YhAOQt/0CXEoC8iF2WhpU0MpMehoD847H6HGCJEwvXfighc13JAH77bVK1YcAl/Vbb
         vZFf8H6+UJY3OS7o15IuUBWjPMDdecMnAgYDEFwV4uMkO+YY241ikXSEiqV+hRlXdEQq
         PIP9LJi8+1/hm2ZdRS9vhEKU7SPsfnMeLLYo9FJVFHHzdso/IFFNOTk54/oshIvEKtl2
         UkvaVJW+3B1bJOLdsWiP45Z8YV1ANg+pK8GIxZCQMM3ZsfElIq0mvvMhkS63oX+rTout
         6+azIkVWkvy0zAkrSRVOSfxl1NSqbGsymKz3a1J6RWfOGnriF+TJs1cykcykFRB6QLdT
         r/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=LC++/xV6bYGrP0fgwEoSf0Ayhre970AMd89FMgXUx3o=;
        b=ieG3p46nWpuHlfjkGpalswQK3hqxpOsuJKGa6a3ZA9mvZuRzHuXBK7C8PnukXpu0rp
         4Xns8N7qGZD5IbAVKxwBkR55crnrUzFlqFs4mIiRnB6EdHydkk7lNGcB1Wm+hTbdZkaU
         iY1m1ykmoSEyln3culFm+C5ZOhe9FlZ/6FO7ryTJcwmlL6TnfRl4tt6SUYqKSHjPj6Xy
         WyCSJ05tXZacQpfIyczXJd/xc3ClfcVGxcAFvs1A+hOsuWBhcPgZjF6tSZmYZzL6I9DA
         BVBDL3XQO5pS7txi5G6ekmoQ/kii1XgpLACQrglcKWJ6clfwkSLAWwPVxwb3JKYKy5JF
         8wVw==
X-Gm-Message-State: AOAM531IUW0I7BPDJpo/pWsfGhWmgQfyA2mgKDNOZJYYnvXpHSnb/RYy
	oZh3WB2aQQZBGHwvRq1ZUc3jsWohXXic695pkCs=
X-Google-Smtp-Source: ABdhPJwSn6x2flof0RlvUy6rgpydmXfPe22+WsTT4DVjEeZgosNLbo+ysWQ/laIOoP1/aWmU3ErSylclRVff4KGhhjo=
X-Received: by 2002:a05:622a:1cb:: with SMTP id t11mr7326283qtw.378.1604779430826;
 Sat, 07 Nov 2020 12:03:50 -0800 (PST)
MIME-Version: 1.0
References: <3rpq.1604716265989001199.J0NK@lists.yoctoproject.org>
 <CAMKF1sqd4K_5B7P8QHSC83vCw7CLwsJhV3bYusuq_k8t+yGhgQ@mail.gmail.com> <7BB882DB-349A-4205-AC92-046BCCE9E0FD@hpe.com>
In-Reply-To: <7BB882DB-349A-4205-AC92-046BCCE9E0FD@hpe.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 7 Nov 2020 12:03:24 -0800
Message-ID: <CAMKF1sq2VtUdfsV3Oa3k_HnF6c=1QUGTAaOQD6ti3TbGRd7Zxg@mail.gmail.com>
Subject: Re: [yocto] Trying to compile hping3 from sources #devtool
To: "Muralidharan, Vaijayanthi" <vaijayanthi.muralidharan@hpe.com>
Cc: Vaijayanthi <vaijayanthi@silver-peak.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 7, 2020 at 11:57 AM Muralidharan, Vaijayanthi
<vaijayanthi.muralidharan@hpe.com> wrote:
>
> Khem,
>
> Thanks for responding. I am trying to build hping3 from sources. There i=
s only a bb recipe for hping2.
>

what is your failing recipe called (exact name )

> =EF=BB=BFOn 11/6/20, 9:42 PM, "Khem Raj" <raj.khem@gmail.com> wrote:
>
>     whats the name of your recipe ? secondly hping3 requires libtcl8.6.s=
o
>     seems to be troublesome because its asking
>     for devel package not the original library, I wonder why, can you fi=
nd
>     out the linker cmdline where ping3 is getting linked ?
>
>     On Fri, Nov 6, 2020 at 6:31 PM Vaijayanthi <vaijayanthi@silver-peak.=
com> wrote:
>     >
>     > Hi, I am using devtool add hping3 https://github.com/antirez/hping=
 to add hping3 as part of our custom image. Here is my recipe:
>     >
>     > # Recipe created by recipetool
>     >
>     > # This is the basis of a recipe and may need further editing in or=
der to be fully functional.
>     >
>     > # (Feel free to remove these comments when editing.)
>     >
>     >
>     >
>     > # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are b=
est guesses - it is
>     >
>     > # your responsibility to verify that the values are complete and c=
orrect.
>     >
>     > #
>     >
>     > # The following license files were not able to be identified and a=
re
>     >
>     > # represented as "Unknown" below, you will need to check them your=
self:
>     >
>     > #   COPYING
>     >
>     > LICENSE =3D "GPLv2"
>     >
>     > LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D3728a6c4c9630a9e796ad4b=
82dacd887"
>     >
>     >
>     >
>     > SRC_URI =3D "git://github.com/antirez/hping;protocol=3Dhttps"
>     >
>     >
>     >
>     > # Modify these as desired
>     >
>     > PV =3D "1.0+git${SRCPV}"
>     >
>     > SRCREV =3D "3547c7691742c6eaa31f8402e0ccbb81387c1b99"
>     >
>     >
>     >
>     > S =3D "${WORKDIR}/git"
>     >
>     >
>     >
>     > #DEPENDS =3D "libpcap"
>     >
>     > RDEPENDS_${PN} +=3D " libpcap tcl-lib tcl"
>     >
>     >
>     >
>     > # NOTE: no Makefile found, unable to determine what needs to be do=
ne
>     >
>     >
>     >
>     > do_configure () {
>     >
>     >     # Specify any needed configure commands here
>     >
>     >     CONFIGOSTYPE=3D"LINUX" ./configure
>     >
>     > }
>     >
>     >
>     >
>     > do_compile () {
>     >
>     >     # Specify compilation commands here
>     >
>     >     make
>     >
>     > }
>     >
>     > do_install() {
>     >
>     >     #install -Dm755 ${B}/libpcap.so.0.8 ${D}${libdir}/libpcap.so.0=
.8
>     >
>     >     #ln -sf libpcap.so.0.8 ${D}${libdir}/libpcap.so
>     >
>     >     #install -Dm755 ${B}/libtcl8.6.so ${D}${libdir}/libtcl8.6.so
>     >
>     >     #ln -sf libtcl8.6.so ${D}${libdir}/libtcl8.6.so
>     >
>     >     install -m 0755 -d ${D}${sbindir} ${D}/${mandir} ${D}${docdir}=
/hping3
>     >
>     >     install -m 0755 hping3 ${D}/${sbindir}
>     >
>     >     install -m 0644 docs/hping3.8 ${D}/${mandir}
>     >
>     >     install -m 0644 docs/HPING2-HOWTO.txt docs/HPING2-IS-OPEN \
>     >
>     >         docs/MORE-FUN-WITH-IPID docs/SPOOFED_SCAN.txt \
>     >
>     >         docs/AS-BACKDOOR docs/APD.txt ${D}${docdir}/hping3
>     >
>     > }
>     >
>     >
>     >
>     > #INSANE_SKIP_${PN}-dev =3D "ldflags"
>     >
>     > #INSANE_SKIP_${PN} =3D "ldflags"
>     >
>     > #INSANE_SKIP_${PN} +=3D "file-rdeps dev-deps"
>     >
>     >
>     > How do I add this to my custom bitbake layer? Also, make is compla=
ining about
>     > ERROR: hping3-1.0+git999-r0 do_package_qa: QA Issue: /usr/sbin/hpi=
ng3 contained in package hping3 requires libpcap.so.0.8()(64bit), but no pr=
oviders found in RDEPENDS_hping3? [file-rdeps]
>     > ERROR: hping3-1.0+git999-r0 do_package_qa: QA Issue: /usr/sbin/hpi=
ng3 contained in package hping3 requires libtcl8.6.so()(64bit), but no prov=
iders found in RDEPENDS_hping3? [file-rdeps]
>     > ERROR: hping3-1.0+git999-r0 do_package_qa: QA run found fatal erro=
rs. Please consider fixing them.
>     >
>     > Please let me know what I should I do next to integrate this recip=
e with my custom meta layer and also, address the make failures.
>     >
>     >
>     >
>     >=20
>     >
>
