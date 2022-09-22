Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F40EC6FA82
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 12:43:06 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web12.6652.1663850581258683790
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 05:43:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Y8td/4Zb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id y5so15396665wrh.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 05:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=3grSRoZYX55NJ2ZTEVNih8Rdo6umboVNH4ew8iMRL6g=;
        b=Y8td/4Zb64xNMd/7gBsAtbfs5bX+qDooJLQRDEvAaa8WcbP8X/dUAKOjutJCb2SZjU
         KcEyVNCI4JG1B1S4UramULFb84nb+SHXORLA+4oLe96PngootknmjSP4BZxy2Pnxe1HC
         JmOqP8YDkU5aYRmzgf7oOVjR8Qw0MwTylvg94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=3grSRoZYX55NJ2ZTEVNih8Rdo6umboVNH4ew8iMRL6g=;
        b=iRVD/CmD6/+OH5EjD9jeq01FdPmALMgA1Yb5VnEYTctGcR0bDKCJEmbFPupa0Sg/Mh
         qPIZuRqKIP3VNK92kKuDuaBUf44bM5dHLvw0dD6Y7x1EzWQl9RnodByKQvPKBk1oibcu
         hNd67XTNpbirptACOXriGB0TFd3oERzOSomp03Sf0F5rzAz0GTQKJKGn3NM5mJEI3ZFE
         Rv9/otyENzVBg5SFdtbXexPL+EvCM7ORdUSRi+RVaJrrrZoWc5lva6XfIo21iS1/HxbJ
         KZKyCg/6OxJbA/+QM8GfZbhBSMYGKz/VHhHb1vi5ZRbTxLqkOsJdTpaDH7yx/dZTo/Lx
         A3Dw==
X-Gm-Message-State: ACrzQf34iEn08nr9T2OxzYptzDE0h5Wsre8fmPb9ziWw4KpUTu2Fv8AL
	wZPq5FyGTUbss4m/xRKxzpsHQA==
X-Google-Smtp-Source: 
 AMsMyM5UG7MOqXDyVvHzNH0dfGCOiZxFrbHxzkX7MTxevw4cY5PILq8W5qRIvRTSivPCKy71TsiObg==
X-Received: by 2002:a5d:584e:0:b0:22b:724:11c0 with SMTP id
 i14-20020a5d584e000000b0022b072411c0mr1861013wrf.225.1663850579581;
        Thu, 22 Sep 2022 05:42:59 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:6f87:a0ac:e77:378?
 ([2001:8b0:aba:5f3c:6f87:a0ac:e77:378])
        by smtp.gmail.com with ESMTPSA id
 id21-20020a05600ca19500b003b27f644488sm5654401wmb.29.2022.09.22.05.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 05:42:59 -0700 (PDT)
Message-ID: 
 <e97d25b8f041f395ed6645b4a1e3f44d16ecb5ce.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] config.py: default
 repository updates
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: benjamin.esquivel@gmail.com, yocto@lists.yoctoproject.org
Cc: tarxf@esquibits.com
Date: Thu, 22 Sep 2022 13:42:57 +0100
In-Reply-To: <20220922023334.386489-1-benjamin.esquivel@gmail.com>
References: <20220922023334.386489-1-benjamin.esquivel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 12:43:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58133

On Wed, 2022-09-21 at 19:33 -0700, benjamin.esquivel@gmail.com wrote:
> From: Benjamin Esquivel <benjamin.esquivel@gmail.com>
>=20
> the repos that are used as defaults in the build requests are outdated
> hence the update.
>=20
> Signed-off-by: Benjamin Esquivel <benjamin.esquivel@gmail.com>
> ---
>  config.py | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>=20
> diff --git a/config.py b/config.py
> index 042a1ec..2249e82 100644
> --- a/config.py
> +++ b/config.py
> @@ -38,23 +38,23 @@ repos =3D {
>                            "neon-master"],
>      "eclipse-poky-oxygen": ["ssh://git@push.yoctoproject.org/eclipse-yoc=
to",
>                              "oxygen-master"],
> -    "poky": ["ssh://git@push.yoctoproject.org/poky", "master"],
> -    "meta-intel": ["ssh://git@push.yoctoproject.org/meta-intel", "master=
"],
> -    "meta-arm": ["ssh://git@push.yoctoproject.org/meta-arm", "master"],
> +    "poky": ["git://git.yoctoproject.org/poky", "master"],
> +    "meta-intel": ["git://git.yoctoproject.org/meta-intel", "master"],
> +    "meta-arm": ["git://git.yoctoproject.org/meta-arm", "master"],
>      "meta-agl": ["https://git.automotivelinux.org/AGL/meta-agl", "next"]=
,
>      "meta-aws": ["https://github.com/aws/meta-aws.git", "master"],
> -    "meta-ti": ["ssh://git@push.yoctoproject.org/meta-ti", "master"],
> -    "meta-security": ["ssh://git@push.yoctoproject.org/meta-security", "=
master"],
> +    "meta-ti": ["git://git.yoctoproject.org/meta-ti", "master"],
> +    "meta-security": ["git://git.yoctoproject.org/meta-security", "maste=
r"],
>      "oecore": ["git://git.openembedded.org/openembedded-core",
>                            "master"],
>      "bitbake": ["git://git.openembedded.org/bitbake", "master"],
> -    "meta-qt4": ["ssh://git@push.yoctoproject.org/meta-qt4", "master"],
> -    "meta-qt3": ["ssh://git@push.yoctoproject.org/meta-qt3", "master"],
> -    "meta-mingw": ["ssh://git@push.yoctoproject.org/meta-mingw", "master=
"],
> -    "meta-gplv2": ["ssh://git@push.yoctoproject.org/meta-gplv2", "master=
"],
> +    "meta-qt4": ["git://git.yoctoproject.org/meta-qt4", "master"],
> +    "meta-qt3": ["git://git.yoctoproject.org/meta-qt3", "master"],
> +    "meta-mingw": ["git://git.yoctoproject.org/meta-mingw", "master"],
> +    "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"],
>      "meta-openembedded": ["git://git.openembedded.org/meta-openembedded"=
, "master"],
> -    "meta-virtualization": ["ssh://git@push.yoctoproject.org/meta-virtua=
lization", "master"],
> -    "yocto-docs": ["ssh://git@push.yoctoproject.org/yocto-docs", "master=
"]
> +    "meta-virtualization": ["git://git.yoctoproject.org/meta-virtualizat=
ion", "master"],
> +    "yocto-docs": ["git://git.yoctoproject.org/yocto-docs", "master"]
>  }

Sadly this isn't the case. The push servers are where people with push
access push things, which then mirror out to the other mirror servers.

The autobuilder works off push since other wise, we might trigger a
build and it may build the wrong thing if the mirrors hadn't updated
yet.

Whilst I appreciate that is a problem for only certain users, it was a
really problematic corner case for the main project AB.

Cheers,

Richard




