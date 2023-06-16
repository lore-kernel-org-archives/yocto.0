Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA9CEB64D8
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 16:24:19 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
 by mx.groups.io with SMTP id smtpd.web11.2865.1686897802804192798
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 23:43:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=qCwfrZZK;
 spf=pass (domain: gmail.com, ip: 209.85.222.45, mailfrom: prashantsbemail@gmail.com)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-78775a5a84eso136234241.0
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 23:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686897802; x=1689489802;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bcqMt49lcCWs8sBwp/Il89aD11TTPE1JrtC9ggAuQX0=;
        b=qCwfrZZKPWST4gprxgGEWqWRwAFrQSibqVoLBOiKPw+SQh1mBezdIQWKS8eGmv38AA
         f2Ha3PBYLD7MlinT/+iWpYASBlUJFXzy8Q2Qh5r1vT78MsEOVBRpWItcIbk/sblrNP3O
         sUXelgHlR9g1Fz7xE6h/lbCgh5/Rp4hoISss/adgw7w2PpjmycegsIbFZQpAeX6tXdq5
         l9VaWmaFdltEgaI69gaICgaxZA1XNNr09Ga/uGmL8fs4d6fExm5FL2NCQhQX5AZcOSTz
         0h5cvjtLDTaSKcYyRCZaH2tt14davWGoDJfi55W/9C5eXXuWfWrG9wTdx2Pgi5hoofT/
         K+gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686897802; x=1689489802;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bcqMt49lcCWs8sBwp/Il89aD11TTPE1JrtC9ggAuQX0=;
        b=N/7VNlA0PER/IEhvy/8XcnsMYlvHdFbFAyhw+2Xu4IJBD+4hPXMHUapyAffYIKmAMX
         Avkb/LyL0LR90PExKjGwwoeF+tE0iq9BpttEzVTDGwMwxaUMRMuCCZqB3L+4sCIRipYj
         u8lgGfvqwO18KIq3uuJ74PQyW1sBB+TfGDQfslQa5JNQj4XeeyNwCLPdY6t1bL50fhKj
         ZgCzLyIpnSVGvH/Vk8ScgHHTs4KHUsGnzrUmHeIARcMua1ePTPHrrsges6iZtswnW8Qu
         CbflfR7EwNmqGb1NshpBqQIGZIqj8MvTcXk4d1hmORKhpitRnDfN+GinX9jCCJlIM69N
         39nQ==
X-Gm-Message-State: AC+VfDxlpBpTq78roHRmLjvcQ/v9QMwXglqiDQHNEofekZ6s1z7rfyGf
	hxp9Cp0Dl4GDm1lqibL2ltQLgWyyTnkTJeq3BibnjK3HCQQ=
X-Google-Smtp-Source: ACHHUZ7lyz5n2k53BqYMtEg4t3O7ahM6iVwxlMfxua+yupAFg5Lvo1oS8Esx/9CnChcOFr+F4+Dkty3nvzcYNVeJLto=
X-Received: by 2002:a05:6102:38b:b0:43b:4688:7fbc with SMTP id
 m11-20020a056102038b00b0043b46887fbcmr1232840vsq.3.1686897801607; Thu, 15 Jun
 2023 23:43:21 -0700 (PDT)
MIME-Version: 1.0
From: "Prashant Badsheshi" <prashantsbemail@gmail.com>
Date: Fri, 16 Jun 2023 12:13:10 +0530
Message-ID: <CAD5wtF1ob3hZJG_YXqi26R+_F-S7LM1Vb2GvDNagBcfChDOEnA@mail.gmail.com>
Subject: Facing issue with new repo build in yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003cbd8b05fe39809e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 16:24:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60326

--0000000000003cbd8b05fe39809e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Added a new repo/recipe called =E2=80=9Cdisplayport=E2=80=9D, please find t=
he bb file
pasted below.

Did a =E2=80=9Cdevtool modify displayport=E2=80=9D. Got the displayport fol=
der in my local
workspace/sources/.

Added the required meson.build, source and header filles.



Able to build it using command =E2=80=9Cbitbake displayport=E2=80=9D.



But it is not building when I do a full build using =E2=80=9Cbitabke
obmc-phospor-image=E2=80=9D.

It seems like it is not picking up the displayport repo/recipe when I do
full build.



Can you help here to understand what is the problem?



Thanks,

Prashant





/meta-hpe/meta-ilo/recipes-hpe/displayport$ ls

displayport_git.bb



meta-hpe/meta-ilo/recipes-hpe/displayport$ cat displayport_git.bb



# Package summary



SUMMARY =3D "Display Port VAS"



LICENSE =3D "CLOSED"



BRANCH =3D "${BRANCH_DISPLAYPORT}"

SRCREV =3D "${SRCREV_DISPLAYPORT}"

SRC_URI =3D "git://
git@github.hpe.com/Cornerstone/displayport.git;protocol=3Dssh;branch=3D${BR=
ANCH}
"



SYSTEMD_SERVICE_${PN} +=3D "com.hpe.bmc.dp.service"



DEPENDS +=3D " libmemmap libutils libfyi systemd svcsilo"



RDEPENDS_${PN} =3D "systemd libutils libfyi libmemmap svcsilo"



S=3D "${WORKDIR}/git"

PV =3D "1.0+git"



#inherit ilo-meson systemd

inherit meson systemd



MESON_BUILDTYPE_hpe-dbg =3D "debug"





ws/work/myopenbmc_jemu64_6apr$ git diff

diff --git a/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc
b/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc

index 42f695ae32..f017bfd326 100644

--- a/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc

+++ b/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc

@@ -46,6 +46,7 @@ SRCREV_VIRTUAL_MEDIA          =3D "${AUTOREV}"

SRCREV_GXP_FRU_DEVICE         =3D "${AUTOREV}"

SRCREV_GXP_DBUS_SENSORS       =3D "${AUTOREV}"

SRCREV_RESTSERVER             =3D "${AUTOREV}"

+SRCREV_DISPLAYPORT            =3D "${AUTOREV}"



#List down the branches of various recipes here

BRANCH_GXP2_BOOTBLOCK         =3D "main"

@@ -92,3 +93,4 @@ BRANCH_VIRTUAL_MEDIA          =3D "main"

BRANCH_GXP_FRU_DEVICE         =3D "main"

BRANCH_GXP_DBUS_SENSORS       =3D "main"

BRANCH_RESTSERVER             =3D "main"

+BRANCH_DISPLAYPORT            =3D "main"

--0000000000003cbd8b05fe39809e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><br></div><div><p class=3D"MsoNormal" style=3D"ma=
rgin:0in;font-size:11pt;font-family:Calibri,sans-serif">Added a new repo/re=
cipe called =E2=80=9Cdisplayport=E2=80=9D, please find
the bb file pasted below.</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">Did a =E2=80=9Cdevtool modify displayport=E2=80=9D. Got the =
displayport
folder in my local workspace/sources/.</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">Added the required meson.build, source and header filles.</p=
>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">Able to build it using command =E2=80=9Cbitbake displayport=
=E2=80=9D.</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">But it is not building when I do a full build using =E2=80=
=9Cbitabke
obmc-phospor-image=E2=80=9D. </p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">It seems like it is not picking up the displayport
repo/recipe when I do full build.</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">Can you help here to understand what is the problem?</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">Thanks,</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">Prashant</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">/meta-hpe/meta-ilo/recipes-hpe/displayport$ ls</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><a href=3D"http://displayport_git.bb">displayport_git.bb</a>=
</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">meta-hpe/meta-ilo/recipes-hpe/displayport$ cat
<a href=3D"http://displayport_git.bb">displayport_git.bb</a></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">#
Package summary</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">SUMMARY
=3D &quot;Display Port VAS&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">LICENSE
=3D &quot;CLOSED&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">BRANCH
=3D &quot;${BRANCH_DISPLAYPORT}&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">SRCREV
=3D &quot;${SRCREV_DISPLAYPORT}&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">SRC_URI
=3D
&quot;git://<a href=3D"http://git@github.hpe.com/Cornerstone/displayport.gi=
t;protocol=3Dssh;branch=3D${BRANCH}">git@github.hpe.com/Cornerstone/display=
port.git;protocol=3Dssh;branch=3D${BRANCH}</a>&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">SYSTEMD_SERVICE_${PN}
+=3D &quot;com.hpe.bmc.dp.service&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">DEPENDS
+=3D &quot; libmemmap libutils libfyi systemd svcsilo&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">RDEPENDS_${PN}
=3D &quot;systemd libutils libfyi libmemmap svcsilo&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">S=3D
&quot;${WORKDIR}/git&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">PV =3D
&quot;1.0+git&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">#inherit
ilo-meson systemd</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">inherit
meson systemd</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">MESON_BUILDTYPE_hpe-dbg
=3D &quot;debug&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">ws/work/myopenbmc_jemu64_6apr$ git diff</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">diff --git a/meta-hpe/meta-ilo/conf/distro/include/ilo-src-r=
evs.inc
b/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">index 42f695ae32..f017bfd326 100644</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">--- a/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc=
</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">+++ b/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc=
</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">@@ -46,6 +46,7 @@ SRCREV_VIRTUAL_MEDIA=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=3D &quot;${AUTOREV}&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">SRCREV_GXP_FRU_DEVICE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
=3D &quot;${AUTOREV}&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">SRCREV_GXP_DBUS_SENSORS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=3D &quot;${AUTOREV}&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">SRCREV_RESTSERVER=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=3D &quot;${AUTOREV}&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">+SRCREV_DISPLAYPORT=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=3D &quot;${AUTOREV}&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">#List down the branches of various recipes here</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">BRANCH_GXP2_BOOTBLOCK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
=3D &quot;main&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">@@ -92,3 +93,4 @@
BRANCH_VIRTUAL_MEDIA=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D
&quot;main&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">BRANCH_GXP_FRU_DEVICE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
=3D &quot;main&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">BRANCH_GXP_DBUS_SENSORS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=3D &quot;main&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">BRANCH_RESTSERVER=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=3D &quot;main&quot;</p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"background:yellow">+BRANCH_DISPLAYPORT=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=3D &quot;main&quot;</span></p><p class=3D"MsoNormal" style=3D"margin:0in;f=
ont-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:yel=
low"><br></span></p></div></div>

--0000000000003cbd8b05fe39809e--

