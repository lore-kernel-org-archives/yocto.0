Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E14EEC19F2A
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 21:15:36 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web12.7314.1659215722326556033
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 14:15:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EAYycpqO;
 spf=pass (domain: gmail.com, ip: 209.85.210.176,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id b133so7407729pfb.6
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 14:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=PHVsaAfUBrEYOCVgUNKB9F+KJxfoVJxiw8xxug7+79c=;
        b=EAYycpqOHq0h+ocxgTBm4VApdTDGBt8W5f3cKMsEkkuB+7vEvZySyK5Zs6FdZGH9gt
         ZU0NnfBsZ65AhfBDcNwBYMXRqYdxHmtDk4B78Fedx1Q3Xo/un4efOWkCpjkBzkIEz66W
         M4/qhjV5IezpVR42Aslu1SB5hIeODiF0HECWNYde5uYwG/3HnT+PZkyOd2mQeWSU3AUQ
         eMiDtlBFFoP1H4Xn/TeiCxbSKAys8DHiV8Fg+dUQXaq7l6JIKdhByZa7kK0EwAkCKjpc
         vzk9HRN1h+TkfeknzB00v6o3d0mQp4aEfWhFuNTOrVAMoyS7bM53XYAN6E1x4QHVPoIk
         z92Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PHVsaAfUBrEYOCVgUNKB9F+KJxfoVJxiw8xxug7+79c=;
        b=E1FZMqPHiVVuFkcMrvZHsQzeYbFnjRaJ7hrU4douTK1hsYOB49AHlrrlVGKm+TH8D6
         vlaZDJs28dZ3/bLnu9SIbTF5vWF23XWvbvTH5hu/7e29KKLy/4Nrl0kuEb/nr2MSwaBQ
         sIOtRaUR9uFNGKH7/87ZoTmNSb1F4rjUHetEOPK8s3Jlmh+4wfLqYPQUIZpwUhTwfLfT
         RaEFnei8+K47+X+dsBL7hP0Yauiofh6h51HxgI7n7Lb0DiEbxCYsSt4sCm+K7z0y9V+a
         ahPGBN7f5TgL0G8mu3v/lNbfF2wrr3WatrI5s2/54XBLRmH28rHt0lRPa9pRHnHLsor/
         KqSg==
X-Gm-Message-State: AJIora8058L8Wp6VSKi8Co0vq9nLzbFixI1IApdcBjxH58cadJuPTPnJ
	DixXzkzBgNmmurIIWP/Uqhy2dUtsRv8=
X-Google-Smtp-Source: 
 AGRyM1v6JY7U5HXVq7TFEzjh6WErIE2p19cta2kB1B1I0BgVBugqodQdSlrh65EIadxMO3SpkP3LIg==
X-Received: by 2002:a63:2cc6:0:b0:411:4fd6:49cb with SMTP id
 s189-20020a632cc6000000b004114fd649cbmr7623703pgs.365.1659215720874;
        Sat, 30 Jul 2022 14:15:20 -0700 (PDT)
Received: from [192.168.18.39] (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 jz21-20020a17090b14d500b001f1ef42fd7bsm8335604pjb.36.2022.07.30.14.15.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jul 2022 14:15:20 -0700 (PDT)
Message-ID: <0f1e5b68-f49e-c540-91a3-56d31c6ec799@gmail.com>
Date: Sat, 30 Jul 2022 14:13:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [meta-security][PATCH] bubblewrap: Add recipe
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20220714064111.10048-1-alex.kiernan@gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220714064111.10048-1-alex.kiernan@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 21:15:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57699

merged.

On 7/13/22 23:41, Alex Kiernan wrote:
> Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
> ---
>   .../bubblewrap/bubblewrap_0.6.2.bb            | 23 +++++++++++++++++++
>   1 file changed, 23 insertions(+)
>   create mode 100644 recipes-security/bubblewrap/bubblewrap_0.6.2.bb
>
> diff --git a/recipes-security/bubblewrap/bubblewrap_0.6.2.bb b/recipes-security/bubblewrap/bubblewrap_0.6.2.bb
> new file mode 100644
> index 000000000000..921defda9e9d
> --- /dev/null
> +++ b/recipes-security/bubblewrap/bubblewrap_0.6.2.bb
> @@ -0,0 +1,23 @@
> +DESCRIPTION = "Unprivileged sandboxing tool"
> +HOMEPAGE = "https://github.com/containers/bubblewrap"
> +LICENSE = "LGPL-2.0-or-later"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=5f30f0716dfdd0d91eb439ebec522ec2"
> +
> +DEPENDS = "libcap"
> +
> +SRC_URI = "https://github.com/containers/${BPN}/releases/download/v${PV}/${BP}.tar.xz"
> +SRC_URI[sha256sum] = "8a0ec802d1b3e956c5bb0a40a81c9ce0b055a31bf30a8efa547433603b8af20b"
> +
> +UPSTREAM_CHECK_URI = "https://github.com/containers/bubblewrap/releases"
> +UPSTREAM_CHECK_REGEX = "bubblewrap-(?P<pver>\d+(\.\d+)+)\.tar"
> +
> +inherit autotools bash-completion manpages pkgconfig
> +
> +PACKAGECONFIG ?= "${@bb.utils.filter('DISTRO_FEATURES', 'selinux', d)}"
> +PACKAGECONFIG[manpages] = "--enable-man,--disable-man,libxslt-native docbook-xsl-stylesheets-native xmlto-native"
> +PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux"
> +PACKAGECONFIG[setuid] = "--with-priv-mode=setuid,--with-priv-mode=none"
> +
> +PACKAGES += "${PN}-zsh-completion"
> +
> +FILES:${PN}-zsh-completion = "${datadir}/zsh/site-functions"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57532): https://lists.yoctoproject.org/g/yocto/message/57532
> Mute This Topic: https://lists.yoctoproject.org/mt/92374277/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


