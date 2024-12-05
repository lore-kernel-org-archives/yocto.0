Return-Path: <posinaaravind0205@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 349F6E7716D
	for <webhook@archiver.kernel.org>; Thu,  5 Dec 2024 12:34:53 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.9777.1733402087925475535
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2024 04:34:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MLLxkq30;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: posinaaravind0205@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-215bd2c32a6so6341365ad.1
        for <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 04:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733402087; x=1734006887; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3/aDY/QeG+sUdcGz1RK4PRKWlxoZs5ci4w0S0qkhBdA=;
        b=MLLxkq30rx1lN6ouALzoN62e+Y1MHlsvFEBLVBZczXUnUe1X/K5dr+ULgNgNSbB/U3
         NPJjPneufVHt6ZdIfHh2w511m3wcjl6ob6HIYtcBBNrJIL0iUPduGap+B6gIDc6bEq33
         R2Do7UGH9/weeoGj935BE8C5zqFFhT+37Y0JCBZXYB8Yrk+Dnl1wyKzno1z2ilzgaK8o
         /XzzVnLocLSZQWkrqrN8WKAYC3xobI1bC951D2l1ToMhQxelD0PzGfXi5OShE6hsYX+Q
         ubuzsX7sTG5d1GSpnlR58q7dFGmQB8tYlihTMCnpVAYrd3DBhNsZxzonGGjvwWxHWiqx
         Fc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733402087; x=1734006887;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3/aDY/QeG+sUdcGz1RK4PRKWlxoZs5ci4w0S0qkhBdA=;
        b=rMjYOF7Lr6l02bifGl1VAPq9pD0GPnRzNWAy3GKuAuNUmW9Cy/WK1KaqOBE9qg82BI
         uP1OLYLrqxSBLdAR044LWNdRhKeOACqH8Xc/aD0sgDN4MFbFMtnecScCSPJ6Uucdb/fF
         0SLEef5QjJ4G0FYQt7fnsKQTHdxxWlaGw0ZaAz7gvnELt+JypCCE4/2R8PStvv7SyXNJ
         2vM5Sec2XvvZgKu6t9UOY2AOLc3Y9YDG67eGARZE9+YyZb1Aw8UNgGBcXSKaq1dv5OaH
         h3dD96HRo933xKLxfnWKC2BrKlVGnWB5vS6sl4z9BGDe1NyBMo83QcXsZkiEFkH1dVvi
         GEag==
X-Gm-Message-State: AOJu0YwFMR8jCsL9J1KNg8DqrFdm4FwOL8VEMHFqZ5uCJCKuqVTIPB13
	D+pOTgd9HiFhrUBMze23ey0IxWpAkuvzR+nxHe7Tt9E5EM14o5dz4w/lrf1sF2VbwJqkCAN3oQl
	7qo4jzzgG9I/DqRpbIPTvYYkb6qw=
X-Gm-Gg: ASbGncvbxjiw5yjlYkiJu2LiEXWMwtIjjVzYFI8OeF50tRjfBOaCj9A3OCHi1UHMzdt
	8zsQU0tjCWJtxmkwySwlKwJ5f0raW5g==
X-Google-Smtp-Source: AGHT+IGLw3+g6tU4PM3Qc+F2r2/5uWyul8i/wVfcfyDm6IQOX87TAAsdfpZ38DzFNTieDOPFhCBQ7/nl79aTbbUcLqk=
X-Received: by 2002:a17:902:e846:b0:215:ba2b:cd51 with SMTP id
 d9443c01a7336-215bd0d71e4mr130836045ad.15.1733402087120; Thu, 05 Dec 2024
 04:34:47 -0800 (PST)
MIME-Version: 1.0
References: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
 <465a05d1-4268-476e-bd83-5eb82bd62922@cherry.de> <CALvuYr=6J5C4U6H4teLpa9HvKqto7wn5COfk9f9iJBWeK2dRDg@mail.gmail.com>
 <a7e30b47-4e2a-477d-b7b3-ab059af37c4d@cherry.de> <CALvuYrnJKAC7OPAD=LZCmNKMSH2nMT5rCiSWhYM3VDP7qd93UQ@mail.gmail.com>
 <4939a682-8a6b-4a55-aa40-cf29dfca274c@cherry.de>
In-Reply-To: <4939a682-8a6b-4a55-aa40-cf29dfca274c@cherry.de>
From: aravind posina <posinaaravind0205@gmail.com>
Date: Thu, 5 Dec 2024 18:04:35 +0530
Message-ID: <CALvuYrkNnCpE80EPX47Qp3cY6q5nBQcohWkiCtY5hGwv7P+fMA@mail.gmail.com>
Subject: Re: [yocto] Backporting in Yocto
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a7e7670628851ff9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 12:34:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64406

--000000000000a7e7670628851ff9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

SUMMARY =3D "Cypress Wi-Fi backports package"
DESCRIPTION =3D "Backports of Cypress Wi-Fi drivers from a newer kernel
version to be used with an older kernel."
LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Db4425e8d7d63055b514bf7732284231a=
"

SRC_URI =3D "file://cypress-fmac-v5.15.58-2024_0118.tar.gz"
#SRC_URI[sha256sum] =3D
"5b58e4f4e3182b60575dbbd1c5a91f55f50fefcbeef48666ceb279fa1b6db49d"
SRC_URI[sha256sum] =3D
"062574e1e63ffb4d9b1a67e68267126e49615d15bfeef4aea1cd14e063882eea"

S =3D
"${WORKDIR}/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024=
_0118-module-src/v5.15.58-backports"
KERNEL_VERSION =3D "5.10.76-bsp-yocto-ampliphy-i.mx6ul-pd21.2.1"

#CFLAGS +=3D -falign-functions=3D16
CFLAGS_append =3D " -falign-functions=3D32"
#EXTRA_OEMAKE +=3D "CFLAGS+=3D-falign-functions=3D32"

# Define the kernel sources and build directories
KERNEL_SRC =3D "${STAGING_KERNEL_DIR}"
KERNEL_BUILD =3D "${STAGING_KERNEL_BUILDDIR}"

EXTRA_CFLAGS:remove =3D "-falign-functions"
EXTRA_CFLAGS:append =3D "-falign-functions=3D4"


# Inherit the module class to build kernel modules
inherit module

do_configure() {
    oe_runmake KLIB=3D${KERNEL_SRC} KLIB_BUILD=3D${KERNEL_BUILD}
defconfig-brcmfmac
    oe_runmake KLIB=3D${KERNEL_SRC} KLIB_BUILD=3D${KERNEL_BUILD} oldconfig
    oe_runmake KLIB=3D${KERNEL_SRC} KLIB_BUILD=3D${KERNEL_BUILD} modules
}

# Compile the backports kernel modules
#do_compile() {
#    Compile the backports kernel modules
#    oe_runmake KLIB=3D${KERNEL_SRC} KLIB_BUILD=3D${KERNEL_BUILD} modules
#}
#do_compile() {
#    oe_runmake KLIB=3D${KERNEL_SRC} KLIB_BUILD=3D${KERNEL_BUILD}
EXTRA_CFLAGS=3D"${CFLAGS}" modules
#}

do_compile_append() {
    export KERNEL_CFLAGS=3D"-falign-functions=3D16"
}


do_install() {
    # Create directory for the modules
    install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress

    # Locate and install the kernel modules
    find ${S} -name "brcmutil.ko" -exec install -m 0644 {}
${D}/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress/ \;
    find ${S} -name "brcmfmac.ko" -exec install -m 0644 {}
${D}/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress/ \;
    find ${S} -name "cfg80211.ko" -exec install -m 0644 {}
${D}/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress/ \;
}


# Update module dependencies after installation
do_install_append() {
    depmod -a ${KERNEL_VERSION} -b ${D}
}

# Files to be included in the final package
FILES_${PN} +=3D
"/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress/*.ko"
FILES_${PN} +=3D "/lib/modules/${KERNEL_VERSION}/modules.*"
FILES_${PN} +=3D "/lib/firmware/brcm/*.bin"

TARGET_CFLAGS:remove =3D "-Werror"
TARGET_CFLAGS:append =3D " -falign-functions=3D4 "

# Skip the sanity check for installed vs shipped files (if applicable)
INSANE_SKIP_${PN} =3D "installed-vs-shipped"

Here is the recipe that I was compiling and I'm facing the issues.

Thanks & Regards
Aravind P

On Thu, Dec 5, 2024 at 3:29=E2=80=AFPM Quentin Schulz <quentin.schulz@cherr=
y.de>
wrote:

> Hi Aravind,
>
> On 12/5/24 10:47 AM, aravind posina via lists.yoctoproject.org wrote:
> > Building backport-include/backport/autoconf.h ... done.
> > |   CC [M]
> >
>  /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-=
phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-202=
4_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/c=
ompat/main.o
> > | arm-phytec-linux-gnueabi-gcc: error: missing argument to
> > '-falign-functions=3D'
>
> Your issue is likely here. Check the flags passed to your compiler
> either from Yocto or through the Makefile (they are sometimes/often
> entirely overridden from the Makefile, which is not correct for build
> systems).
>
> Without seeing the source code of the kernel modules (at least the
> files) and their Makefile as well as the Yocto recipe, this starts to
> look like me reading the log and highlighting where an "error" appears,
> which you probably don't need help with since I'm reading the same log
> as you. Can you please provide more info, actual source code.
>
> Cheers,
> Quentin
>

--000000000000a7e7670628851ff9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">SUMMARY =3D &quot;Cypress Wi-Fi backports package&quot;<br=
>DESCRIPTION =3D &quot;Backports of Cypress Wi-Fi drivers from a newer kern=
el version to be used with an older kernel.&quot;<br>LICENSE =3D &quot;CLOS=
ED&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Db4425e8d7d63055=
b514bf7732284231a&quot;<br><br>SRC_URI =3D &quot;file://cypress-fmac-v5.15.=
58-2024_0118.tar.gz&quot;<br>#SRC_URI[sha256sum] =3D &quot;5b58e4f4e3182b60=
575dbbd1c5a91f55f50fefcbeef48666ceb279fa1b6db49d&quot;<br>SRC_URI[sha256sum=
] =3D &quot;062574e1e63ffb4d9b1a67e68267126e49615d15bfeef4aea1cd14e063882ee=
a&quot;<br><br>S =3D &quot;${WORKDIR}/cypress-fmac-v5.15.58-2024_0118/cypre=
ss-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports&quot;<br>KERN=
EL_VERSION =3D &quot;5.10.76-bsp-yocto-ampliphy-i.mx6ul-pd21.2.1&quot;<br><=
br>#CFLAGS +=3D -falign-functions=3D16<br>CFLAGS_append =3D &quot; -falign-=
functions=3D32&quot;<br>#EXTRA_OEMAKE +=3D &quot;CFLAGS+=3D-falign-function=
s=3D32&quot;<br><br># Define the kernel sources and build directories<br>KE=
RNEL_SRC =3D &quot;${STAGING_KERNEL_DIR}&quot;<br>KERNEL_BUILD =3D &quot;${=
STAGING_KERNEL_BUILDDIR}&quot;<br><br>EXTRA_CFLAGS:remove =3D &quot;-falign=
-functions&quot;<br>EXTRA_CFLAGS:append =3D &quot;-falign-functions=3D4&quo=
t;<br><br><br># Inherit the module class to build kernel modules<br>inherit=
 module<br><br>do_configure() {<br>=C2=A0 =C2=A0 oe_runmake KLIB=3D${KERNEL=
_SRC} KLIB_BUILD=3D${KERNEL_BUILD} defconfig-brcmfmac<br>=C2=A0 =C2=A0 oe_r=
unmake KLIB=3D${KERNEL_SRC} KLIB_BUILD=3D${KERNEL_BUILD} oldconfig<br>=C2=
=A0 =C2=A0 oe_runmake KLIB=3D${KERNEL_SRC} KLIB_BUILD=3D${KERNEL_BUILD} mod=
ules<br>}<br><br># Compile the backports kernel modules<br>#do_compile() {<=
br># =C2=A0 =C2=A0Compile the backports kernel modules<br># =C2=A0 =C2=A0oe=
_runmake KLIB=3D${KERNEL_SRC} KLIB_BUILD=3D${KERNEL_BUILD} modules<br>#}<br=
>#do_compile() {<br># =C2=A0 =C2=A0oe_runmake KLIB=3D${KERNEL_SRC} KLIB_BUI=
LD=3D${KERNEL_BUILD} EXTRA_CFLAGS=3D&quot;${CFLAGS}&quot; modules<br>#}<br>=
<br>do_compile_append() {<br>=C2=A0 =C2=A0 export KERNEL_CFLAGS=3D&quot;-fa=
lign-functions=3D16&quot;<br>}<br><br><br>do_install() {<br>=C2=A0 =C2=A0 #=
 Create directory for the modules<br>=C2=A0 =C2=A0 install -d ${D}/lib/modu=
les/${KERNEL_VERSION}/kernel/backports/cypress<br><br>=C2=A0 =C2=A0 # Locat=
e and install the kernel modules<br>=C2=A0 =C2=A0 find ${S} -name &quot;brc=
mutil.ko&quot; -exec install -m 0644 {} ${D}/lib/modules/${KERNEL_VERSION}/=
kernel/backports/cypress/ \;<br>=C2=A0 =C2=A0 find ${S} -name &quot;brcmfma=
c.ko&quot; -exec install -m 0644 {} ${D}/lib/modules/${KERNEL_VERSION}/kern=
el/backports/cypress/ \;<br>=C2=A0 =C2=A0 find ${S} -name &quot;cfg80211.ko=
&quot; -exec install -m 0644 {} ${D}/lib/modules/${KERNEL_VERSION}/kernel/b=
ackports/cypress/ \;<br>}<br><br><br># Update module dependencies after ins=
tallation<br>do_install_append() {<br>=C2=A0 =C2=A0 depmod -a ${KERNEL_VERS=
ION} -b ${D}<br>}<br><br># Files to be included in the final package<br>FIL=
ES_${PN} +=3D &quot;/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress=
/*.ko&quot;<br>FILES_${PN} +=3D &quot;/lib/modules/${KERNEL_VERSION}/module=
s.*&quot;<br>FILES_${PN} +=3D &quot;/lib/firmware/brcm/*.bin&quot;<br><br>T=
ARGET_CFLAGS:remove =3D &quot;-Werror&quot;<br>TARGET_CFLAGS:append =3D &qu=
ot; -falign-functions=3D4 &quot;<br><br># Skip the sanity check for install=
ed vs shipped files (if applicable)<br>INSANE_SKIP_${PN} =3D &quot;installe=
d-vs-shipped&quot;<br><br>Here is the recipe that I was compiling and I&#39=
;m facing the issues.<br><br>Thanks &amp; Regards<br>Aravind P</div><br><di=
v class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Dec 5, 2024 at 3:29=E2=80=AFPM Quentin Schulz &lt;<a href=
=3D"mailto:quentin.schulz@cherry.de">quentin.schulz@cherry.de</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Aravind,<br=
>
<br>
On 12/5/24 10:47 AM, aravind posina via <a href=3D"http://lists.yoctoprojec=
t.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrot=
e:<br>
&gt; Building backport-include/backport/autoconf.h ... done.<br>
&gt; |=C2=A0 =C2=A0CC [M]<br>
&gt;=C2=A0 =C2=A0/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_s=
egin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fma=
c-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.=
58-backports/compat/main.o<br>
&gt; | arm-phytec-linux-gnueabi-gcc: error: missing argument to<br>
&gt; &#39;-falign-functions=3D&#39;<br>
<br>
Your issue is likely here. Check the flags passed to your compiler <br>
either from Yocto or through the Makefile (they are sometimes/often <br>
entirely overridden from the Makefile, which is not correct for build <br>
systems).<br>
<br>
Without seeing the source code of the kernel modules (at least the <br>
files) and their Makefile as well as the Yocto recipe, this starts to <br>
look like me reading the log and highlighting where an &quot;error&quot; ap=
pears, <br>
which you probably don&#39;t need help with since I&#39;m reading the same =
log <br>
as you. Can you please provide more info, actual source code.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--000000000000a7e7670628851ff9--

