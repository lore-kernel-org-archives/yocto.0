Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE01C00140
	for <webhook@archiver.kernel.org>; Fri, 12 Aug 2022 15:37:59 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web12.727.1660318672246192469
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Aug 2022 08:37:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mhwThkWH;
 spf=pass (domain: gmail.com, ip: 209.85.216.42,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id
 h21-20020a17090aa89500b001f31a61b91dso8664104pjq.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 12 Aug 2022 08:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=HZ7BwP2jYqR4llMjXUcrsDwmhUQh31yyLgk0TdOklV8=;
        b=mhwThkWHaIoZJAJXLc188qlQ3yENcgXL6JkKZHdFwJ0LmAyI4LDqU3woiV04VMH6w+
         egfTc+D+qjkzDfSHT4I+Pwq5Z2V+hVzXfIGW6usI8z+voZjW/hDNB/ZxWNLNHsh1g4ql
         WoTyEcgLy4fbkyIN55M7Begoj7libLsMhCveeY6cEbQ/vRY3m7uO0m7vDd59pJxg+IJV
         ePt1JtM8q2FBGvhD44THqvt6UxV1gC/7i0ytnk3xsvQspoM9hU7Q6QI4XlSttY44br5F
         EqZoBYabtm70oFd5xhvLG2GKqF0KN/ktiAKx35N3M4U7UTJL+ORtjzF2KFmIH8Yq9GvN
         Sk1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=HZ7BwP2jYqR4llMjXUcrsDwmhUQh31yyLgk0TdOklV8=;
        b=tKGQCGHGFSJECem14FNd22V2OuynPH9FZ5krIxm+zRhW1aIdrc2X5T0nlFSsAzjQ7+
         j2vW1qHRRwwqC+BRWdc/GFE+LWKunNPTnJgqXbX0JduWnDzI2lvXt2OVuJy9offF10dk
         nwNuQqN9XWIhpChsFfTppDvCjnc5jM0CuHN11KcIHV7fQHz/D98C7DWzIdqunyphi/J2
         6RX5/AGDDVi4zus04o/lEacDwaRf5cgHKIGlEsoOL7GFlfeRjpZjmZmLVWMkWBq0mdtB
         DTXSKUM8B4wj4eLlehkPZ7yLOMFiRJLwHOjm23bgZ0g/hhF2QDhPb9pahoBk+nAp5Z3H
         bkdw==
X-Gm-Message-State: ACgBeo1jI2CBdPltyu2Q7oaFAJfmvv2BatL3HCvThbgVo9vmPylU3iz1
	puFukkDwXffByntKFhTvYrQ=
X-Google-Smtp-Source: 
 AA6agR474LKmaIEYZWBzu0F+Gwmv/N0quWIhIIu7Tl6diTbxubadU8kBI8W61XTjXR9FY0lS2WCp3Q==
X-Received: by 2002:a17:903:4051:b0:16d:c677:ecd2 with SMTP id
 n17-20020a170903405100b0016dc677ecd2mr4576132pla.81.1660318671558;
        Fri, 12 Aug 2022 08:37:51 -0700 (PDT)
Received: from [192.168.18.39] (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 d16-20020a170902ced000b0016c57657977sm1945137plg.41.2022.08.12.08.37.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 08:37:50 -0700 (PDT)
Message-ID: <1132737f-169c-d8c6-986c-246d38eb7a45@gmail.com>
Date: Fri, 12 Aug 2022 08:35:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [meta-security][PATCH V2] meta-security: Add recipe for
 Glome
Content-Language: en-US
To: jebr@google.com, yocto@lists.yoctoproject.org
Cc: brandonkim@google.com, pkern@google.com, markusrudy@google.com
References: <20220808184051.2098828-1-jebr@google.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220808184051.2098828-1-jebr@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Aug 2022 15:37:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57831

merged

On 8/8/22 11:40, John Broadbent via lists.yoctoproject.org wrote:
> From: John Edward Broadbent <jebr@google.com>
>
> Generic Low Overhead Message Exchange (GLOME) is a protocol providing
> secure authentication and authorization for low dependency environments.
>
> Signed-off-by: John Edward Broadbent <jebr@google.com>
> ---
>   .../packagegroup-core-security.bb             |  1 +
>   recipes-security/glome/glome_git.bb           | 24 +++++++++++++++++++
>   2 files changed, 25 insertions(+)
>   create mode 100644 recipes-security/glome/glome_git.bb
>
> diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
> index a12a4c2..c028c3d 100644
> --- a/recipes-core/packagegroup/packagegroup-core-security.bb
> +++ b/recipes-core/packagegroup/packagegroup-core-security.bb
> @@ -31,6 +31,7 @@ RDEPENDS:packagegroup-security-utils = "\
>       ding-libs \
>       ecryptfs-utils \
>       fscryptctl \
> +    glome \
>       keyutils \
>       nmap \
>       pinentry \
> diff --git a/recipes-security/glome/glome_git.bb b/recipes-security/glome/glome_git.bb
> new file mode 100644
> index 0000000..12d6d5f
> --- /dev/null
> +++ b/recipes-security/glome/glome_git.bb
> @@ -0,0 +1,24 @@
> +SUMMARY = "GLOME Login Client"
> +HOME_PAGE = "https://github.com/google/glome"
> +DESCRIPTION = "GLOME is used to authorize serial console access to Linux machines"
> +PV = "0.1+git${SRCPV}"
> +
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> +
> +inherit meson pkgconfig
> +
> +DEPENDS += "openssl"
> +
> +S = "${WORKDIR}/git"
> +SRC_URI = "git://github.com/google/glome.git;branch=master;protocol=https"
> +SRCREV = "978ad9fb165f1e382c875f2ce08a1fc4f2ddcf1b"
> +
> +FILES:${PN} += "${libdir}/security"
> +
> +PACKAGECONFIG ??= ""
> +PACKAGECONFIG[glome-cli] = "-Dglome-cli=true,-Dglome-cli=false"
> +PACKAGECONFIG[pam-glome] = "-Dpam-glome=true,-Dpam-glome=false,libpam"
> +
> +EXTRA_OEMESON = "-Dtests=false"
> +
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57808): https://lists.yoctoproject.org/g/yocto/message/57808
> Mute This Topic: https://lists.yoctoproject.org/mt/92899047/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


