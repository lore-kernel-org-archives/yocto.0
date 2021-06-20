Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.39521.1624229506562823024
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 15:51:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xk/rWveL;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7AA1138C08BF
	for <yocto@yoctoproject.org>; Sun, 20 Jun 2021 22:51:45 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id bb10-20020a17090b008ab029016eef083425so11045071pjb.5
        for <yocto@yoctoproject.org>; Sun, 20 Jun 2021 15:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=x319r7QyKIcYmAzHaUCf/hJBOix56ppxlynh2kqU91w=;
        b=Xk/rWveLAbV/sjCcUHQb7Jk1UD/ERy7CHNFN8oeffJ1gfidHcAeGFVN0l+Dmyco9Nx
         zwW8ltCLBcfIS5EGj6tSIYacY8kThTFJpG/cRK0M04WDn9sZlVteoS2HrM2JKQKE4CJv
         A4gsmo/rOISJZof0k+PextZ/Nntx2XBwtoDsvXPQ8D0K58nkz/0xwnmDAeRr7jeSeLZm
         3kRHa9Zb5r0a8CjidmC4lnh1LodaIdtxPVn/ZAdsO5adxONEWfssW1eSKvn85NZoTBCO
         RTfN/tdjTW5dIDhteEL/IxWzyvr9BJRNFFiQNkqgWoPqDuhYDaisp6lgMfk3Om/9Yn4U
         5XhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=x319r7QyKIcYmAzHaUCf/hJBOix56ppxlynh2kqU91w=;
        b=gUZx5Mvc7YG+eDyF5whIL00l2KzbXxsB0aZemA0QTW4ctj2Mr3biyo1LVIyxuYEwd8
         3NQFMyUeXTTiqYgdUkESuT394K3vcEHbWnfAHYaahx5+EsZlFwdLvA0Qf502TjhTz/XA
         oNdi4rLlEloxuFoQQhLls00pO1mSJYr1I1X2qim0fPc5auiNj3z2zZ4LfMrKzENnK98J
         P51MOLaEL9G1+IWIrSQBWx25JNM2jofE0eGF5kTf2fHn1bRRRoFJJGPt2u145byrqpQP
         ontDg8a43f1reqQ/6m/bqU6b10ns+CrrbsBzM8BRwoNT5Nbz+Zo5vulFsUF6TsmTCKce
         K8sA==
X-Gm-Message-State: AOAM533Po9wxld7Ho+CfcAoO3rmP+3Fvg5hjyiC9fCscWLRVq2TXGlkc
	q1ym+Gz6zaaULtgJiacwYAWpyLCnW66HVA==
X-Google-Smtp-Source: ABdhPJzeCGgP9h5NrLI95xQheesKSQ5MLX26Yean90rzinqEHfyyIJ7fxpwAR2+y9LYooUyQrrM5UA==
X-Received: by 2002:a17:90a:8403:: with SMTP id j3mr22963252pjn.212.1624229504841;
        Sun, 20 Jun 2021 15:51:44 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:c7:6c10:59:efee? ([2601:202:4180:a5c0:c7:6c10:59:efee])
        by smtp.gmail.com with ESMTPSA id g8sm14328706pja.14.2021.06.20.15.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 15:51:44 -0700 (PDT)
Subject: Re: [meta-security][PATCH] sssd: set pid path with /run
To: kai.kang@windriver.com
Cc: yocto@yoctoproject.org
References: <20210615085030.11155-1-kai.kang@windriver.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <ea00070f-97ea-c789-73e4-634f58c11c24@gmail.com>
Date: Sun, 20 Jun 2021 15:51:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210615085030.11155-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

series merged.

thanks

On 6/15/21 1:50 AM, kai.kang@windriver.com wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> /var/run is deprecated and set pid path with /run to store pid files for
> the SSSD.
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  recipes-security/sssd/sssd_2.5.0.bb | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-security/sssd/sssd_2.5.0.bb b/recipes-security/sssd/sssd_2.5.0.bb
> index 4c92519..c699527 100644
> --- a/recipes-security/sssd/sssd_2.5.0.bb
> +++ b/recipes-security/sssd/sssd_2.5.0.bb
> @@ -63,6 +63,7 @@ EXTRA_OECONF += " \
>      --without-python2-bindings \
>      --without-secrets \
>      --with-xml-catalog-path=${STAGING_ETCDIR_NATIVE}/xml/catalog \
> +    --with-pid-path=/run \
>  "
>  
>  do_configure_prepend() {
> @@ -88,8 +89,8 @@ do_install () {
>          echo "d /var/log/sssd 0750 - - - -" > ${D}${sysconfdir}/tmpfiles.d/sss.conf
>      fi
>  
> -    # Remove /var/run as it is created on startup
> -    rm -rf ${D}${localstatedir}/run
> +    # Remove /run as it is created on startup
> +    rm -rf ${D}/run
>  
>      rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
>  }

