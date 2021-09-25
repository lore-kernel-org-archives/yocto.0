Return-Path: <khoidinhtrinh@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E6C433F5
	for <webhook@archiver.kernel.org>; Sat, 25 Sep 2021 21:29:40 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web08.11758.1632605379201923411
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 14:29:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=W/F+4CkZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.53,
 mailfrom: khoidinhtrinh@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id t10so56851771lfd.8
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 14:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=KI3IDSZtYXNV5S3cF2U6fse++xq2OVIkSj5GhZimywI=;
        b=W/F+4CkZ56qjJRYXDsBEZJXB/7FjLEQvJKsuI5aCRtkNKh98VNy3pMGaTwnGmEcEiy
         AE8wWyk0qMfV3AtVOfDxRoqZmAblNYwc0PWSg8O83L3jtcb1JIJQ017E2W8bHaFIXdY0
         2FYMfQ8IftDMwrsf7an/FU3ty3GElVD02LArc2uLehcPai+jxk6ChqFPidOQ7wFzKEHR
         Aetfc1+sCVGXsTlTNXZSw7Kb6eFOWxVX/SVNY4kPmV/1IOyvruePtK+0V1kk7m/9XBUz
         EHgt33yqt2YkoBpPYrrjvujWWva/MlSa2VnTnjkIT74IveOODS+SntrN/J3sDSiCjVnK
         1G1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KI3IDSZtYXNV5S3cF2U6fse++xq2OVIkSj5GhZimywI=;
        b=q3h28bYZ/ku1EKAtJKlYfB0JL4x1EThl+eVSKAbEA4vr4xLBUqNR+RpocK+ugrwhhO
         bGEIVxAfsmfSibuywSyaJo6hUAf+wQkweBBrW0kwY/oZBJfC3N3cfJYRtC+2XmOs6E9O
         TDrRndnIlr4NXvTbyXuR9E0SPRd4jk/Dkh76Ys/Ssw0+OM7a7VrTN/UcOrFvwXwWu404
         D+9XlSRmqcN0tNGPhVQj6NW2XD6hz2DsDPZFNplA8cOPWA2O7HhEnrqdbhq+yQHJ0kKo
         x9vIMTex9ZQO2rH2VKXTQ0dkdbNaf7RECwBHPC4I6WodXdjhq+m8YD723Xjq+kcsGRaA
         n7Nw==
X-Gm-Message-State: AOAM5326SD15Dxow0rN4gUqR0zv5HjpU7uuwlgMTmFatSDDTzAVgZhnE
	+uGwIjwRuIAIjrLPtKJQ85Lu5bWfmbkFylINITqNtUE5yFI=
X-Google-Smtp-Source: 
 ABdhPJyhqIuGCcYs6n+ntsMfsp1VN6fiv8/4Rc8aKzSrFvuobq6yHWzUXmF6mHvitZ1CXZWo8nm7tkdyPEdYGBZ2+9Y=
X-Received: by 2002:a05:6512:1087:: with SMTP id
 j7mr16642354lfg.414.1632605376789;
 Sat, 25 Sep 2021 14:29:36 -0700 (PDT)
MIME-Version: 1.0
From: Khoi Dinh Trinh <khoidinhtrinh@gmail.com>
Date: Sat, 25 Sep 2021 14:29:25 -0700
Message-ID: 
 <CAMLPRYe_w9uUiYegoF2PSnW5Bjz7tLYu_1qHnGqHXW+ei3X67A@mail.gmail.com>
Subject: Create do_xconfig for kernel, u-boot
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008abfd805ccd88fc0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 21:29:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54855

--0000000000008abfd805ccd88fc0
Content-Type: text/plain; charset="UTF-8"

Hi All,

I'm learning Yocto after spending some time with Buildroot. One of the
things I like to do is to use xconfig instead of menuconfig for configuring
things like kernels, u-boot, etc as it's easier to search and navigate in
there. Yocto came with *do_menuconfig* so I tried to adapt it to use
xconfig.

*do_menuconfig*(defined in in cml1.bbclass) has *KCONFIG_CONFIG_COMMAND* to
select which make target to use so the first thing I did was change the
value from "menuconfig" to "xconfig". This didn't work since pkg-config has
problems finding the Qt package when running make xconfig. I then add the
meta-qt5 layer as well as adding some dependencies to do_menuconfig:

do_menuconfig[depends] += "qtbase-native:do_populate_sysroot"
do_menuconfig[depends] += "nativesdk-qtbase:do_populate_sysroot"

This didn't work as pkg-config still has problems finding the Qt. I checked
*do_menuconfig*'s log and the only thing pkg-config seems to be able to
find is gtk-docs. This is where I'm currently stumped, any help would be
appreciated. Thank you for your time.

-- 
Best,
Khoi Trinh

--0000000000008abfd805ccd88fc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I&#39;m learning Yoc=
to after spending some time with Buildroot. One of the things I like to do =
is to use xconfig instead of menuconfig for configuring things like kernels=
, u-boot, etc as it&#39;s easier to search and navigate in there. Yocto cam=
e with <b>do_menuconfig</b> so I tried to adapt it to use xconfig.</div><di=
v><br></div><div><b>do_menuconfig</b>(defined in in cml1.bbclass) has <b>KC=
ONFIG_CONFIG_COMMAND</b> to select which make target to use so the first th=
ing I did was change the value from &quot;menuconfig&quot; to &quot;xconfig=
&quot;. This didn&#39;t work since pkg-config has problems finding the Qt p=
ackage when running make xconfig. I then add the meta-qt5 layer as well as =
adding some dependencies to do_menuconfig:<br></div><div><br></div><div>do_=
menuconfig[depends] +=3D &quot;qtbase-native:do_populate_sysroot&quot;</div=
><div>do_menuconfig[depends] +=3D &quot;nativesdk-qtbase:do_populate_sysroo=
t&quot;</div><div><br></div><div>This didn&#39;t work as pkg-config still h=
as problems finding the Qt. I checked <b>do_menuconfig</b>&#39;s log and th=
e only thing pkg-config seems to be able to find is gtk-docs. This is where=
 I&#39;m currently stumped, any help would be appreciated. Thank you for yo=
ur time.<br></div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Best,<div>Khoi Trinh<=
/div></div></div></div></div>

--0000000000008abfd805ccd88fc0--

