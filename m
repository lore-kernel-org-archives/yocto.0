Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A686AC00140
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 18:31:32 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.2163.1659983491184427963
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 11:31:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Gy+z5aq0;
 spf=pass (domain: gmail.com, ip: 209.85.219.171,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id e127so14923835yba.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 11:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=phuROOE08hwLarS849druvhG3qLglI6iSlQQjTd6duQ=;
        b=Gy+z5aq0sqWmPUD9ndc5vntcnRGM9Q1P0BALbnK8x58G3fycjCY+ULIZkm6vnSiX+M
         xuGvoWSxGCr5s9Bn2h5u81xJzvE31ROgl+y6rXsMIqFP1m9suIsHDhclK4KYPJher4R9
         Ly5B9a0QtmrSP7GHC6i855IIBHGkkDH6Cblm4KewN5RSXIVMH7ROtSabeNkwSO2V+Hmu
         8X/Kr2D5AZONRvK2rfaY5uk4T+tUYzTq76Lmw4PXA97pbMGi3C7xyiXLq9F1o1RZrkwT
         ENyuY0Y/wM6PKs2UU7GYKIlSijf5ETxA6gcvRDZtIMwgfhARol7bJDPQUm1WS3cfsvnT
         G6vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=phuROOE08hwLarS849druvhG3qLglI6iSlQQjTd6duQ=;
        b=WGcXIInXVzYMqJr6+yijlj2ybtx/Zptoh3DxCyFQ3HJXV2XArVRLSqPzKw5BzbCbji
         bUMyg3DFlco7oN7ciR7iSUfPCE9d4uq2AkUZgK2IVnJzlX+bYGdovSyJoz4QMpBUfTg6
         Mg8H5j7HXPPeSuvi88lQ4SrGqK8kUTTshYJ3fm9NyKhU6ISznpRlKZHV+MygX4vNeRZT
         mtEpNTpJ1pg8F7quhXHszB1rgV112QrhefUqQmnYFrFn0Zi5C7eWOgdXHMAGCvJ3blst
         SvBIwr3NHKAZPboRDADpbTuf63o8M6lPgqi5nCHB6kWE6T/fcN56wtfuzbN06kjdWCpD
         nggw==
X-Gm-Message-State: ACgBeo2TN989ZOM3Bz73F/afuoSrKL3Pst2RX0SWBAUwUci/Ds3k1Drh
	GFejWwBAwbaZZGqG4uNjMJ89dBiHIcspjBCWdVE=
X-Google-Smtp-Source: 
 AA6agR6IEPKTXpXLcEbfOFFE36fEg6FjjHlKocjw5FXjsKu0bS0klz6mAORocMB04fc409HpaK2PvPqAZ7WA+fXitIU=
X-Received: by 2002:a05:6902:11c9:b0:67a:7633:644e with SMTP id
 n9-20020a05690211c900b0067a7633644emr16276220ybu.363.1659983490238; Mon, 08
 Aug 2022 11:31:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220808180625.2094979-1-jebr@google.com>
In-Reply-To: <20220808180625.2094979-1-jebr@google.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 8 Aug 2022 11:31:03 -0700
Message-ID: 
 <CAMKF1srwtTXDnhuebZq5t8_HjZzA8j5jJxVYLM3pa+a6euGiDw@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] meta-security: Add recipe for
 Glome
To: jebr@google.com
Cc: yocto@lists.yoctoproject.org, brandonkim@google.com, pkern@google.com,
	markusrudy@google.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 18:31:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57807

On Mon, Aug 8, 2022 at 11:06 AM John Broadbent via
lists.yoctoproject.org <jebr=google.com@lists.yoctoproject.org> wrote:
>
> From: John Edward Broadbent <jebr@google.com>
>
> Generic Low Overhead Message Exchange (GLOME) is a protocol providing
> secure authentication and authorization for low dependency environments.
>
> Signed-off-by: John Edward Broadbent <jebr@google.com>
> ---
>  .../packagegroup-core-security.bb             |  1 +
>  recipes-security/glome/glome_git.bb           | 25 +++++++++++++++++++
>  2 files changed, 26 insertions(+)
>  create mode 100644 recipes-security/glome/glome_git.bb
>
> diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
> index a12a4c2..c028c3d 100644
> --- a/recipes-core/packagegroup/packagegroup-core-security.bb
> +++ b/recipes-core/packagegroup/packagegroup-core-security.bb
> @@ -31,6 +31,7 @@ RDEPENDS:packagegroup-security-utils = "\
>      ding-libs \
>      ecryptfs-utils \
>      fscryptctl \
> +    glome \
>      keyutils \
>      nmap \
>      pinentry \
> diff --git a/recipes-security/glome/glome_git.bb b/recipes-security/glome/glome_git.bb
> new file mode 100644
> index 0000000..5a2a114
> --- /dev/null
> +++ b/recipes-security/glome/glome_git.bb
> @@ -0,0 +1,25 @@
> +SUMMARY = "GLOME Login Client"
> +HOME_PAGE = "https://github.com/google/glome"
> +DESCRIPTION = "GLOME is used to authorize serial console access to Linux machines"
> +PR = "r1"

We dont need setting PR manually anymore. So remove it.

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
> +FILES_${PN} += "${libdir}/security"
> +

This should be FILES:${PN} as per new syntax.

> +PACKAGECONFIG ??= ""
> +PACKAGECONFIG[glome-cli] = "-Dglome-cli=true,-Dglome-cli=false"
> +PACKAGECONFIG[pam-glome] = "-Dpam-glome=true,-Dpam-glome=false,libpam"
> +
> +EXTRA_OEMESON = "-Dtests=false"
> +
> --
> 2.37.1.559.g78731f0fdb-goog
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57806): https://lists.yoctoproject.org/g/yocto/message/57806
> Mute This Topic: https://lists.yoctoproject.org/mt/92898250/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

