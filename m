Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.15199.1602253953312998841
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:32:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZKlWdWbC;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id y14so7013610pfp.13
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=sUBLgKA7mCNQUfZLbUBaMS7mpo/nhqbjdmwrKiaFiv8=;
        b=ZKlWdWbCko0JTvh2mZEZt1RaFQbkhS/FnjlKp067ivrox0LOPQKX6ciqbxknrd+BW8
         DSrI+seRmKLbULChd+2v1GFmbGoNkXkHFQQuCcwAaRjgp8/ZzKUyvjmclUU6zB537eJ2
         r8pmUmj4Z8bVJHhM56wnSF+RPPtujsoELtBSUe5a9CnJiKNmlvet5vyvXZ1vvhNh3nPR
         hk86+1QIJPr+d3O/16x1v9GZowfRpqPoFLlpSj8fqr6X/zNYAfq7ISsQZKerqjcfjsZE
         oatYKjKV36FoPwDmaRDnxTGrGqwQc2A9ZuozktNPa3+JZXdwD8spSEx34+90ZAyJeiD/
         p6GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=sUBLgKA7mCNQUfZLbUBaMS7mpo/nhqbjdmwrKiaFiv8=;
        b=ZYLbSXkZtgDwJaKI8r/gvzhcRySUPILieUR9by6UGYJPqP3BH9V7SYy2tupzCWgGfR
         XZzqFPuJ8npOX9Wwr/FF8VBx+fdL1cLWQsbQuLH51JnoFRfiqB+F86Uaq8I4i7s5ScC5
         q342veZqEZRSU6F79HAujubJtCIJXUpwWDy1mNJsdtNhPC+72BJe5qX+CF1WvBLaKeM8
         3F3SHjmu15xVj3YZ9Ev+KWSD9Y0dTcG9jogYdZy7OkRs0oAYkx5uqOvVvboJVvHoGld4
         BlLwB4XL8N6hy6wAWavY5Pcrx1/vmasoFJZtMXN++OD/WUwW1XMMBxlh7xWWgW+qg2MD
         qHRA==
X-Gm-Message-State: AOAM533Ev5u3C3nUWEW74ADwu+f/SUaaOYHUutFVbZjJQqMwdqxcLE9x
	EA7bEmt4k0e2/rBXN3p3ZfkxnAFG/E4=
X-Google-Smtp-Source: ABdhPJzThjN++5q6d0VePhcWRatjzLM36crUUxDXPj435EdxxXUKMzMBiiIQoeF1O9SAWsncn7XFaA==
X-Received: by 2002:a63:fa4f:: with SMTP id g15mr1728181pgk.52.1602253952405;
        Fri, 09 Oct 2020 07:32:32 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:f1c6:e45a:6950:664b? ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id r3sm11234697pfl.67.2020.10.09.07.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 07:32:31 -0700 (PDT)
Subject: Re: [yocto] [meta-security][zeus][PATCH 1/1] clamav: add INSTALL_CLAMAV_CVD flag to do_install
To: Charlie Davies <charles.davies@whitetree.xyz>,
 yocto@lists.yoctoproject.org
References: <20201007012006.2579-1-charles.davies@whitetree.xyz>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <6cddd642-6d7b-4442-efda-e02c503d4cab@gmail.com>
Date: Fri, 9 Oct 2020 07:32:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201007012006.2579-1-charles.davies@whitetree.xyz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 10/6/20 6:20 PM, Charlie Davies wrote:
> Recipe provides INSTALL_CLAMAV_CVD flag to bypass clamav
> cvd db creation. During do_install this flag should be
> used to conditionally skip install of cvd db if needed.
>
> Signed-off-by: Charlie Davies <charles.davies@whitetree.xyz>

merged.

thanks
> ---
>  recipes-security/clamav/clamav_0.99.4.bb | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
> index a340b48..1ee3f58 100644
> --- a/recipes-security/clamav/clamav_0.99.4.bb
> +++ b/recipes-security/clamav/clamav_0.99.4.bb
> @@ -102,7 +102,10 @@ do_install_append_class-target () {
>      install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
>      sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
>      rm ${D}/${libdir}/libclamav.so
> -    install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
> +    if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
> +        bbnote "CLAMAV installing cvd"
> +        install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
> +    fi
>      if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
>          install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
>          install -d ${D}${sysconfdir}/tmpfiles.d
>
> 
>

