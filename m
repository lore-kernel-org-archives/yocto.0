Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FC52C433FE
	for <webhook@archiver.kernel.org>; Thu, 16 Dec 2021 01:44:39 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web12.2705.1639608364115355948
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 14:46:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KRL6KXkN;
 spf=pass (domain: gmail.com, ip: 209.85.128.48,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id
 j140-20020a1c2392000000b003399ae48f58so386787wmj.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 14:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=dPHFl5DORqKQvztSTgOuLXHU4ulighRYO285XEYqfGs=;
        b=KRL6KXkNBl+B8a/5PbOMwrOWpHQv8hY48kucuRA7nmxqI4EjS2HDB2vZ6wEyYaT8/y
         x3ej53p8ahcDiRS7awkVxPG8asyt8Xr5B2C++AA2eBaRJg1ukt6EfzCKyUlmKPhnythV
         niU5ijBWRgvl2wYU8/MVcJfoUiVPpjNkU+zCCqBznwdFq6onIY55/uWgnFMIvcjKhonz
         M46ze06cdCwThReZ06Ue6lCYbCgRntyBcpj8bzyjTbSU7bAXDFqFEJrAENMtEBPphrNG
         30I0c86jvbjqWQwqxTbP2JalURsb36xGYW/zJ3Cl+6hr4uZq+80SRNAQdtC8hf2pg9QC
         PKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=dPHFl5DORqKQvztSTgOuLXHU4ulighRYO285XEYqfGs=;
        b=nScoJCzZxsPuz5mD43SoS3G3fokA4LNk9aZLKGTkwQ/71kK+9LIo7yLsfbp2MrpvJG
         nfj6sakpPY9zWJX8BtCzqdF7qLAG+Mo4+gzw2afB22eyTkSky8nDYQIixl2VdIefXc/L
         HZ0NpQSoqHDUhky4vFF+IG9VYwlekgwE7ZvsW82p2pUhfO/R0wj4EXnHqN5BBpkRrZc/
         A5Kf44IMks5r2eBcsn6zUGMxX8Cygkwhzki8u3EIbOkXEVUR6XWAQcvuI2ala7GCfXsq
         bPYA7SrGiJ9oc8sDf1F6f8j0EFfQ9aG8KHCxXK/zF5xmIKc+jkJLwEYgWk/ft7I8LsSh
         QLaQ==
X-Gm-Message-State: AOAM5338jKhMTWZsuUu09sUmE85aTEZcN3PAKSt4rTuGzlf4ljGGqcdi
	6idVKS+4Y9qbNL9KWhlYksYIN5UZt9EUDe7enbk=
X-Google-Smtp-Source: 
 ABdhPJxZDUNwpy6AcDZa0YDthvvfsoHx0WmC9cmNCnq8WzZhtWr8HqMvSq0oXIEFigcjnjGbmIvGDNC41evtGJl87I4=
X-Received: by 2002:a1c:5409:: with SMTP id i9mr2166124wmb.146.1639608362433;
 Wed, 15 Dec 2021 14:46:02 -0800 (PST)
MIME-Version: 1.0
References: <16BE4FA6969E32DE.28785@lists.yoctoproject.org>
 <6a61f35f-6684-a5ce-a697-acd2f3743a6d@linux.microsoft.com>
In-Reply-To: <6a61f35f-6684-a5ce-a697-acd2f3743a6d@linux.microsoft.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 15 Dec 2021 16:45:51 -0600
Message-ID: 
 <CAJdd5GYxf3HgrgnExCY9HQb_tHR_uqOs-j+ZH859Ah+Ljw_NfA@mail.gmail.com>
Subject: Re: [yocto] spdx: Extending SPDX SBOMs for SDKs
To: Andres Beltran <abeltran@linux.microsoft.com>
Cc: yocto@lists.yoctoproject.org, Saul.Wold@windriver.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Dec 2021 01:44:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55598

On Wed, Dec 15, 2021 at 3:33 PM Andres Beltran
<abeltran@linux.microsoft.com> wrote:
>
> + Joshua, Saul
>
> On 12/6/2021 6:54 PM, Andres Beltran wrote:
>
> Hello,
>
>
> I've been working on extending SPDX SBOMs for SDKs. In poky/meta/classes/=
create-spdx.bbclass I added:
>
>
>
> do_populate_sdk[recrdeptask] +=3D "do_create_spdx do_create_runtime_spdx"
>
>
>
> I ran into a dependency loop when I try to build an SDK that contains nat=
ivesdk-clang (it works fine for other SDKs):
>
>
>
> ERROR:
>
> Dependency loop #1 found:
>
> Task mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clan=
g/clang-crosssdk_git.bb:do_create_spdx (dependent Tasks ['glibc_2.31.bb:do_=
create_spdx', 'binutils-crosssdk_2.34.bb:do_create_spdx', 'clang_git.bb:do_=
create_spdx', 'quilt-native_0.66.bb:do_populate_sysroot', 'nativesdk-clang-=
glue.bb:do_create_spdx'])
>
>
>
> Task mc:lnx-sdk:virtual:nativesdk:/__w/1/s/sources/poky/../meta-clang/rec=
ipes-devtools/clang/clang_git.bb:do_create_spdx (dependent Tasks ['clang_gi=
t.bb:do_packagedata', 'cmake-native_3.16.5.bb:do_create_spdx', 'swig_3.0.12=
.bb:do_create_spdx', 'libedit_20191231-3.1.bb:do_create_spdx', 'binutils-cr=
osssdk_2.34.bb:do_create_spdx', 'chrpath_0.16.bb:do_create_spdx', 'libffi_3=
.3.bb:do_create_spdx', 'clang-crosssdk_git.bb:do_create_spdx', 'zlib_1.2.11=
.bb:do_create_spdx', 'clang_git.bb:do_package', 'python3_3.8.2.bb:do_create=
_spdx', 'libxml2_2.9.10.bb:do_create_spdx', 'python3_3.8.2.bb:do_create_spd=
x', 'pkgconfig_git.bb:do_create_spdx', 'binutils_2.34.bb:do_create_spdx', '=
quilt-native_0.66.bb:do_populate_sysroot', 'libedit_20191231-3.1.bb:do_crea=
te_spdx', 'libxml2_2.9.10.bb:do_create_spdx', 'ninja_1.10.0.bb:do_create_sp=
dx'])
>
>
>
> Task mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clan=
g/nativesdk-clang-glue.bb:do_create_spdx (dependent Tasks ['gcc-runtime_9.3=
.bb:do_create_spdx', 'glibc_2.31.bb:do_create_spdx', 'nativesdk-clang-glue.=
bb:do_package', 'gcc-crosssdk_9.3.bb:do_create_spdx', 'chrpath_0.16.bb:do_c=
reate_spdx', 'quilt-native_0.66.bb:do_populate_sysroot', 'nativesdk-clang-g=
lue.bb:do_packagedata', 'clang_git.bb:do_create_spdx'])

Looks like the loop is:
  nativesdk-clang-glue.bb:do_create_spdx ->
clang_git.bb:do_create_spdx -> clang-crosssdk_git.bb:do_create_spdx ->
nativesdk-clang-glue.bb:do_create_spdx

I don't know enough about the clang recipes to be able to help you
much beyond that however

>
>
>
> Any help on this would be appreciated.
>
>
>
> Thanks,
>
> Andres Beltran
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55489): https://lists.yoctoproject.org/g/yocto/messag=
e/55489
> Mute This Topic: https://lists.yoctoproject.org/mt/87554396/6294599
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [abeltran@linux=
.microsoft.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

