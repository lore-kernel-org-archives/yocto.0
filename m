Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB50C433EF
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 00:17:41 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web08.54772.1638145060272769831
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Nov 2021 16:17:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eQtfYju7;
 spf=pass (domain: gmail.com, ip: 209.85.215.172,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id r138so14083766pgr.13
        for <yocto@lists.yoctoproject.org>;
 Sun, 28 Nov 2021 16:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=6m11HRVvX3bRFZ1tgCpt/KxIsU4qhFwAHkYlwx5CZVg=;
        b=eQtfYju7gt3CLDSVrjztTwNZ0wQL5jLHt3g/aboxYUqtpzdeRoX9q5NL7jC5+O41sv
         GYTVOpYmXVHgkfMBloYJ8yZt7d/jxe18QOyISPKvoIfatPTeNSkgpxaMVFrZQIUZncKC
         wrM9bHSmS0lBYa56Tq7g0cWMF4cRvczBiA2YyC/cHDnMoc4gUzQouvOEh3WDbPIn49th
         OUFEaDRy2ECPggGhsB4qkJrpXgVRcOcABwBBp1L+UbqZicUmunEt65vj49hlnN/ihB8C
         MhbUmUHcqfrkRucB2yRMuEhmobWkPmEQ5jH+3Fv3Zc6W2YhIUh6mLwGR6+4Dfm5B2abX
         NPQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=6m11HRVvX3bRFZ1tgCpt/KxIsU4qhFwAHkYlwx5CZVg=;
        b=6QqpdSNAJFwp//8AKl8O+6e4TvxCB5Wj1a8AJQRtxXO6goHJUNEf7V5ZM25NdkBu/+
         EecMTpNkhxYyfe1FAoOc/goG0LWOGRZHJQTJoodQk5sCuiFtMxCcm3jbmnqDsRWKtGuo
         1DGmf8R7aIHjhzChmMSr3fLEREMCeG1ldI5s2kqh7VEnzC9COfdSc6XLa1LrcamSKcpj
         +5G0Op8C8G/0lTjiq1qKMMopqLcD7T1eEDxJvjZym3Co0IF/pmIy49iLAWdGoGWpwV21
         C1ON4l+tILLUcWUQivAgFaqVVy6WdopvuXadDt/YKZNYv5SCLhh1i+3SrbZt7/flBvRP
         lM3A==
X-Gm-Message-State: AOAM532RK0t46nT0hLkaPYexA4e1z5HyRtHg0Cj5QTQeqq7iVi87QR19
	W5DI4vIGJzxm1GxS0Cd/q2bXdi+T+Oo=
X-Google-Smtp-Source: 
 ABdhPJzyM5h1XMIHr/tvArxDyeK1lC555ZbnviMBHcJEYK3Pl0EZZci0ffdSjqy+Bh83BsbtJrKdhg==
X-Received: by 2002:a63:82c3:: with SMTP id
 w186mr32303367pgd.301.1638145059405;
        Sun, 28 Nov 2021 16:17:39 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:ab2d:45ef:1126:5ad9?
 ([2601:202:4180:a5c0:ab2d:45ef:1126:5ad9])
        by smtp.gmail.com with ESMTPSA id
 h186sm14214743pfg.59.2021.11.28.16.17.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Nov 2021 16:17:39 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH] apparmor: fix warning of remove
 operator combined with +=
To: yocto@lists.yoctoproject.org
References: <20211119070612.28233-1-kai.kang@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <6a8bd0c6-4210-25b9-907e-363b68126a14@gmail.com>
Date: Sun, 28 Nov 2021 16:17:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211119070612.28233-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 00:17:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55436



On 11/18/21 11:06 PM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> Fix warning for apparmor:
>
> | WARNING: /path/to/meta-security/recipes-mac/AppArmor/apparmor_3.0.1.bb:
> |  RDEPENDS:${PN}:remove += is not a recommended operator combination,
> |  please replace it.
thanks,
merged.

>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  recipes-mac/AppArmor/apparmor_3.0.1.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
> index 389e72a..818be15 100644
> --- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
> +++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
> @@ -168,7 +168,7 @@ RDEPENDS:${PN}:libc-glibc +=  "glibc-utils"
>  
>  # Add coreutils and findutils only if sysvinit scripts are in use
>  RDEPENDS:${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
> -RDEPENDS:${PN}:remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
> +RDEPENDS:${PN}:remove = "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
>  RDEPENDS:${PN}-ptest += "perl coreutils dbus-lib bash"
>  
>  INSANE_SKIP:${PN} = "ldflags"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55369): https://lists.yoctoproject.org/g/yocto/message/55369
> Mute This Topic: https://lists.yoctoproject.org/mt/87162916/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


