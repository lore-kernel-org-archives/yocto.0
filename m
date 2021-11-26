Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBB80C433F5
	for <webhook@archiver.kernel.org>; Fri, 26 Nov 2021 18:41:46 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web12.27470.1637952105892818690
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Nov 2021 10:41:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Jhk7LyhW;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id m24so7206247pls.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 26 Nov 2021 10:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=xSrQzlgkaLvB0KEJ7ANYRMXyb01sNUznuxOaiDdix9k=;
        b=Jhk7LyhWm0XrB5S+3zhdE/jb36z0N6Ggc0sPS7yh1wIVdhxn0Tu3bNvUw+S8zZsQj1
         drtQMJ73g5WfK/uoo21cWtpoRG2xBIhM/Nc2sm847UygXYWnLZrOjMAcwyKNrgDwOGTz
         nXn4KdUUioGQqEXCzA8E2y+QsIdawLIqV9txXHu3LpV4eLhoXODEAk/WFvVMglZmaS+W
         n0RUt7cnisWdMAe3i/ceRwavRFagkZ0ujD2tjq1jKHWm2dhqPQ08oOFdAqA4vEdADKgG
         g9NvlBZzt0en/nSTuoufFJ2uczEM1DEhtHBC5OL5qSb5IwSxZtG9DZzWPRC0nMI80GSh
         Wgzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=xSrQzlgkaLvB0KEJ7ANYRMXyb01sNUznuxOaiDdix9k=;
        b=NRJS1qUqpOkoGwoErHwJxCKqjFSSJZxaRlOVuwrpDjkhHiQ2EZxDpfIwbJqNWGR2HY
         lPJE4NoNd2uqCi66zFKHlmfICexB7eslyw/GxAHHL7RSd65rTBdi6CUH9fQBt3onwsFG
         oAXOf8shxJ0q4xmOGxmSy+OIcKNA/AtR4np0viHRXDrc6GcQ4lZdEf7X0bCViDOnPdHV
         ME6Mf71L7SKXeHBVBsJRUB77qXgBUs54RwmmvXnxIBc801KQ93M2oc8JASasYSSpqCue
         W4Oes3o04Hmp8yt2gYVBTGXuNu75G6d54fjQTsPTs6gFAnCnU8WREAvkT/LWG/GUKTvM
         E7QA==
X-Gm-Message-State: AOAM533VfSrZQbNMs9MibXPU3YKDKpLOJLHZKLZnHl8pKm7zs5M0BH4y
	UmuVNmj2aKQ0tkjxxyF03ZE=
X-Google-Smtp-Source: 
 ABdhPJxlBk0MQThSZNFngranBUDCPde2WWhYYeyaXfwxsMFReVWbFlGUCqB9XGjJjgNqN78YtwKQ4Q==
X-Received: by 2002:a17:902:ab94:b0:143:beb5:b6a7 with SMTP id
 f20-20020a170902ab9400b00143beb5b6a7mr41178948plr.30.1637952105351;
        Fri, 26 Nov 2021 10:41:45 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:b37a:c334:1b6b:758c?
 ([2601:202:4180:a5c0:b37a:c334:1b6b:758c])
        by smtp.gmail.com with ESMTPSA id
 on6sm13652475pjb.47.2021.11.26.10.41.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 10:41:44 -0800 (PST)
Subject: Re: [meta-security][hardknott][PATCH v2] sssd: re-package to fix QA
 issues
To: "Jeremy A. Puhlman" <jpuhlman@mvista.com>, yocto@lists.yoctoproject.org
Cc: Kai Kang <kai.kang@windriver.com>
References: <20211116182829.24177-1-jpuhlman@mvista.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <1de53270-8a8f-8a8e-2ada-2ae0a6211cdc@gmail.com>
Date: Fri, 26 Nov 2021 10:41:43 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211116182829.24177-1-jpuhlman@mvista.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Nov 2021 18:41:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55428

merged.

On 11/16/21 10:28 AM, Jeremy A. Puhlman wrote:
> It packages all file in ${libdir} to package sssd, including the .so
> symlink files. Then it causes QA issues:
>
> | ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
> | ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]
>
> So re-package sssd then the .so symlink files and .pc files are packaged
> to sssd-dev which should be.
>
> File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
> sssd-dev too. Then causes another QA issue:
>
> | ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
>     -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]
>
> So create a new sub-package libsss-sudo to package file libsss_sudo.so
> and make sssd rdepends on it.
>
> JP: Updated for version differences.
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> (cherry picked from commit e81c15f851ca5396c78c8737967ee38db0ebe0cd)
> Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
> ---
>  recipes-security/sssd/sssd_1.16.5.bb | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
>
> diff --git a/recipes-security/sssd/sssd_1.16.5.bb b/recipes-security/sssd/sssd_1.16.5.bb
> index 02d0837..f13fc49 100644
> --- a/recipes-security/sssd/sssd_1.16.5.bb
> +++ b/recipes-security/sssd/sssd_1.16.5.bb
> @@ -120,10 +120,17 @@ SYSTEMD_SERVICE_${PN} = " \
>  "
>  SYSTEMD_AUTO_ENABLE = "disable"
>  
> -FILES_${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss.so"
> -FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
> -
> -# The package contains symlinks that trip up insane
> -INSANE_SKIP_${PN} = "dev-so"
> -
> -RDEPENDS_${PN} = "bind dbus libldb libpam"
> +PACKAGES =+ "libsss-sudo libsss-autofs"
> +ALLOW_EMPTY_libsss-sudo = "1"
> +ALLOW_EMPTY_libsss-autofs = "1"
> +
> +FILES_${PN}-dev += "${libdir}/sssd/modules/lib*.so"
> +FILES_${PN} += "${base_libdir}/security/pam_sss*.so  \
> +                ${datadir}/dbus-1/system-services/*.service \
> +                ${libdir}/krb5/* \
> +                ${libdir}/ldb/* \
> +                "
> +FILES_libsss-autofs = "${libdir}/sssd/modules/libsss_autofs.so"
> +FILES_libsss-sudo = "${libdir}/libsss_sudo.so"
> +
> +RDEPENDS_${PN} = "bind dbus libldb libpam libsss-sudo libsss-autofs"


