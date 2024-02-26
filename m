Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EFC54E49
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 12:19:49 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.19090.1708949982357019697
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 04:19:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Udl+iMQt;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-512e4f4e463so3447433e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 04:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708949980; x=1709554780; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JkRuFJOUgtYcziXlNVhcy6+6PDYCOofwGQzerEF5bKc=;
        b=Udl+iMQtuo6FOUaUZ0Vx1v0bLZmpKcSRIz1eGZdCvsfZqhOergPCIzp7kxI/rsRFNL
         64ydKFcR7vrX4mxufzM4MVwSeTc9awkkqRq2aATKOlI5dc9KGPsvXrwOdodV8i3nkMX+
         4ATvVz06lHj8SEDKxF+A8fKAwV26YmeC7Xn8iQOUL8YfbFRsJ4WmymxF59WB9/x/rleM
         PrQE7hc/ETyRy4vO1OQEZ9p5kzTNTYDzxrjYN8Nym5jvyS0KkTAeM33P8w7M/gudMv8y
         HD1zc5F+jbKFa3DuCaZ6DdBh+c40tL2bV0YJe7kzKV6gaH7sSIrAHzhmHH7lnCuw14gf
         5LTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708949980; x=1709554780;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JkRuFJOUgtYcziXlNVhcy6+6PDYCOofwGQzerEF5bKc=;
        b=c2O3fWSf5TUL+q8GaMpudkKE+CA5ZNnGIWPQc3g8mESwRoy/gHwmYvbnjFCGptAbif
         WlEugzV0XouoslMulWdYQEYIKcsYORVO8IQ02khmLMbGAO7WcnayVlHFi41k833j0gKv
         lx/wU7lJzo9dEhldYcwYTYV7Ox3jhgjGdIE3UYdnLCu93crIzT30hWU6ZalScLVT9lN6
         n/LF/ndXhvzsui3c5NKZXe010aKUrVb1w93VuqPNfivbE5Fx6xwXlA18IOYmv+0jBgvs
         Af6vG4R5SzCwOKPyXW+HvYzVlNg1PQCPpKAGG2/cOI7N9AW9mcdWda7x9ACeirryvK8v
         44hg==
X-Gm-Message-State: AOJu0YxY1Q4IoAgxqEv7U/Q8ebCmovFwH4s2uUyBphDFYT8TJvgwIbFQ
	Jgjul6saULK7v11uBrxBNqSbVWL01F+B7R3f9LbBluTdYPsA8S9KrIh/h9stWEEt6R9X+BtGQd+
	fKGR6UaE2Zx7+EyH3g5dwxssSKe2ql8JPqZM=
X-Google-Smtp-Source: AGHT+IGZVYsLBOdfFBrXmqWMHC5+oH6XHfcmMMAAa+nKRZTJCjhxr/I4zBthrO6ValPBOqlI2C8V9DuE1Ui940TJ+ds=
X-Received: by 2002:a05:6512:370e:b0:512:d721:f0f5 with SMTP id
 z14-20020a056512370e00b00512d721f0f5mr3376370lfr.60.1708949980318; Mon, 26
 Feb 2024 04:19:40 -0800 (PST)
MIME-Version: 1.0
References: <mGSp.1708948267221827405.tNvX@lists.yoctoproject.org>
In-Reply-To: <mGSp.1708948267221827405.tNvX@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 26 Feb 2024 13:19:28 +0100
Message-ID: <CANNYZj8YNSezaZVv-W=+NqO==4KHA_Mm7d0GWs3iWn3jXEyN+A@mail.gmail.com>
Subject: Re: [yocto] Yocto Kirkstone VPP compilation
To: yocto@lists.yoctoproject.org, miriam.rico@enigmedia.es
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 12:19:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62605

It is not entirely clear what is happening. The recipe depends on
python3-pip (not the native), but somehow pip3 executable still ends
up in the native sysroot. Then pip3 can't find its own modules, which
means that either the modules are not there (in recipe-sysroot-native/
that is), or it's using python in a way that they're not in module
search path.

There's a number of recipes in meta-openembedded/meta-python that rely
on python3-pip-native (and build-appliance-image in core), so you
could investigate how it's being used there, and why it works in that
context.

You should push your complete layer with the recipe and its includes
to github or similar, so that it's possible to reproduce the issues.

Alex

On Mon, 26 Feb 2024 at 12:51, <miriam.rico@enigmedia.es> wrote:
>
> Hi,
>
> I'm relatively new to Yocto and I'm trying to compile the VPP code. I hav=
e a recipe that all it does is download the code from the official reposito=
ry and tries to compile it (i'm trying to compile 23.10 stable version). Th=
is code has a lot of dependencies, among them dpdk. The code downloads thes=
e dependencies in tar.gz files and then compiles the code for each of them.=
 But when it gets to the dpdk dependency, I get the same error every time. =
Here is the error:
>
> /home/user/Yocto/build/tmp/work/core2-64-poky-linux/vpp-test/23.10-r0/git=
/build/external/downloads/meson-0.55.3.tar.gz
> | Traceback (most recent call last):
> |   File "/home/enigmedia/Yocto/build/tmp/work/core2-64-poky-linux/vpp-te=
st/23.10-r0/recipe-sysroot-native/usr/bin/pip3", line 7, in <module>
> |     from pip._internal.cli.main import main
> | ModuleNotFoundError: No module named 'pip'
>
>
> From what I have been able to find out, the dpdk dependency generates a p=
ython virtual environment and executes a series of commands. I have tried t=
o launch theses commands manually and there has been no problem, however, w=
hen I try to launch the recipe via bitbake, I get the above error.
>
> Here is the vpp.bb recipe:
>
> DESCRIPTION =3D "Vector Packet Processing"
>
> STABLE =3D "stable/2310"
> BRANCH =3D "master"
> SRCREV =3D "6b287b53011208bc242040962056360c1ff54a6c"
> S =3D "${WORKDIR}/git"
> PV =3D "23.10"
>
> LICENSE =3D "Apache-2.0"
>
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D175792518e4ac015ab6696d16c4f60=
7e"
>
> AUTOTOOLS_SCRIPT_PATH =3D "${S}/src"
>
> SRC_URI +=3D "git://github.com/FDio/vpp;branch=3D${STABLE} \
> "
>
> DEPENDS +=3D "openssl numactl curl-native cmake-native nasm-native python=
3-native python3-pip python3-ply-native ninja-native m4-native zlib-native =
binutils-native elfutils-native libpcap libbpf apt systemd bpftrace util-li=
nux"
>
> inherit autotools pkgconfig python3-dir python3native
>
> export OPENSSL_PATH =3D "${RECIPE_SYSROOT}"
>
> include vpp-packages.inc
>
> do_compile () {
>         cd ${S}
>         oe_runmake build-release
> }
>
> vpp-packages.in is a file that enables some vpp plugins and installs the =
resulting libraries and files  on the system.
>
> Could anyone know what is going on or give me any hints on how to fix the=
 bug?
>
> Thank you so much,
>
> Miriam
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62604): https://lists.yoctoproject.org/g/yocto/messag=
e/62604
> Mute This Topic: https://lists.yoctoproject.org/mt/104580146/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

