Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C989AC433EF
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 03:56:22 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web08.5386.1637034981810438379
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 19:56:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=X14GxWox;
 spf=pass (domain: mvista.com, ip: 209.85.222.171,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-qk1-f171.google.com with SMTP id 132so19195153qkj.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 19:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=eKdcMwVtuqrM1fERwbTvUyb/DBOLpczsEQcxHd8Dd7w=;
        b=X14GxWoxQjwJ8Q4vdcBelF7ulQZ1UisUFRIA0zC90M/liYsSZ+j2u7PiJD3sgbqWyq
         7GJxkPHWJaiJf2bcmEE/7YMHLRaR0/3nvs7zwj8u7au4Mns3V/NzB94KLemSna/ERjZ1
         N+qp54UrqPjyPy2LNRNUA7ZuVWpx178Rhm8io=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=eKdcMwVtuqrM1fERwbTvUyb/DBOLpczsEQcxHd8Dd7w=;
        b=ZYBhlBAtxr5iO2/ru9p3A+QAGh48TcCmCmxtdkEeMUdi3DZZ9XSxs/VJ5L+l0GFVR8
         DYjSqJCwNKXcp5pec8lcnCvsmGL1xj3j72yW4yxvYJHpzIaWhXGsBRJFKnAj4b4miWa4
         xGiy6UJqNOlDVEMrgVhEsLZJxJB4KeK64w+bcIc59ulbvQutsY7uktAbz1pQCdxckOYP
         XoVZVOKgXTgItuLpm/1KzFhok+vCzeH4sL7iot8ntAMCt4JNdp71yxIbsbhe3lqZmPOs
         Og1p9YQ6h+dJBJHg5lJ3AU5/mrMwfcN1FYfsQXTzWIR8Y/4jetl+zBSFvO/I7Y5s4QDS
         MZLw==
X-Gm-Message-State: AOAM5323MV5ilJkRlH022g2Wf1a0FU4XFZwqqIOBN3oh3MRz2UFk8WHZ
	r2cxNSdfX3PSo6nw7BzDu229wcx9LAlY6w==
X-Google-Smtp-Source: 
 ABdhPJx44NdAPk+DIAZzjeeu6/TQZZsbnkVRfNX0V+7cRNHMVE0cRIfDmqGgv/syLjtRocBVrb3KEw==
X-Received: by 2002:a05:620a:254d:: with SMTP id
 s13mr3627573qko.39.1637034980399;
        Mon, 15 Nov 2021 19:56:20 -0800 (PST)
Received: from [192.168.1.23] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 v5sm8305243qtc.60.2021.11.15.19.56.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 19:56:20 -0800 (PST)
Message-ID: <62a94b06-8207-77f4-207f-7c0287be31ff@mvista.com>
Date: Mon, 15 Nov 2021 19:56:19 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [meta-security][hardknott][PATCH] sssd: re-package to fix QA
 issues
Content-Language: en-US
To: yocto@lists.yoctoproject.org
Cc: Kai Kang <kai.kang@windriver.com>, Armin Kuster <akuster808@gmail.com>
References: <20211116035054.13447-1-jpuhlman@mvista.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20211116035054.13447-1-jpuhlman@mvista.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 03:56:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55336

Hold up, there is a problem with these.
On 11/15/2021 7:50 PM, Jeremy A. Puhlman wrote:
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
>      -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]
>
> So create a new sub-package libsss-sudo to package file libsss_sudo.so
> and make sssd rdepends on it.
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> (cherry picked from commit e81c15f851ca5396c78c8737967ee38db0ebe0cd)
> Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
> ---
>   recipes-security/sssd/sssd_1.16.5.bb | 15 ++++++++++-----
>   1 file changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/recipes-security/sssd/sssd_1.16.5.bb b/recipes-security/sssd/sssd_1.16.5.bb
> index 02d0837..01ee88b 100644
> --- a/recipes-security/sssd/sssd_1.16.5.bb
> +++ b/recipes-security/sssd/sssd_1.16.5.bb
> @@ -120,10 +120,15 @@ SYSTEMD_SERVICE_${PN} = " \
>   "
>   SYSTEMD_AUTO_ENABLE = "disable"
>   
> -FILES_${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss.so"
> -FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
> +PACKAGES =+ "libsss-sudo"
> +ALLOW_EMPTY_libsss-sudo = "1"
>   
> -# The package contains symlinks that trip up insane
> -INSANE_SKIP_${PN} = "dev-so"
> +FILES_${PN} += "${base_libdir}/security/pam_sss*.so  \
> +                ${datadir}/dbus-1/system-services/*.service \
> +                ${libdir}/krb5/* \
> +                ${libdir}/ldb/* \
> +                "
>   
> -RDEPENDS_${PN} = "bind dbus libldb libpam"
> +FILES_libsss-sudo = "${libdir}/libsss_sudo.so"
> +
> +RDEPENDS_${PN} = "bind dbus libldb libpam libsss-sudo"


