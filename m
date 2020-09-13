Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web10.39025.1600007189546391221
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Sep 2020 07:26:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RISH78mf;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id z19so10397245pfn.8
        for <yocto@lists.yoctoproject.org>; Sun, 13 Sep 2020 07:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=jtiP2rsBB4brkO3FOK0jefS7dReVFbXhFZRpONBZC94=;
        b=RISH78mf2QzoVqFCrhxqbl5uMyjBPh3Bq0BNLFQAmowdhXYslxTXJ7jr5G6lOOswKN
         FbJnZOfOS/4H8SFAgQYgujWyRH5cE+YoaqhOD6dnpTroonGr6itxWi+30eh4OEm/5ae+
         dp5QZSTc+44RYpS33LqbhNkzy2G3hDmofkrhumFdhgaEQlEZWZP+tA1h+mitNEUbPSzx
         DydBCiHIGl1rNCS3P40rlcMsJwC/DCfAKpPIdP1ytNosLnBN5qTj4eARxqWQR7rZCX5C
         vZ1fqfL3KgB/OA02GHasEI40LLMMF02uJnMB3bPqgscaDc24QvsjZHRtafyPjYBFhddB
         7fhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=jtiP2rsBB4brkO3FOK0jefS7dReVFbXhFZRpONBZC94=;
        b=acgxaXUTx4I9WEPkNWnEFMJeM6XbfczmBlkQpVE3pID8JVcHsQY1dOGbK/xOn7AkyK
         UsSk/VtROM0TvKYK7PCl/v8I3DeSs+gMbGcRZ07vaECntfPQ3338B12S/7bOlqe/JDYq
         x+AEC43gC1l5KUm6sZl8V5eiGE5X2WvRx7TYYcm8kXrSpGhWQM7315UmeIl6cPp6jgIH
         f1eNM5Kj+UDtLsEc9XBquCm18447aoLqNPtqArYLfQQTWmKCI83qSQhtMFjCtsun/PBH
         Qkiwnu+sK0hOvslsyLjewbbrKwSAMjkQ8e9SfEsWEKp2kh2iZBXYa43HuPsiGe1sHrMH
         7NGg==
X-Gm-Message-State: AOAM532/w/bkQCjy7ayyKmMQ6n+36MW1YTUe6LCN8SrNgflLkm7WKi7+
	724vVxm7S0MzINmX+rqnAXNuZykIp6A=
X-Google-Smtp-Source: ABdhPJxrrlfIXKQxJhNSlpybImkCjOL3FaGBoYljC69qy7/vZAmbdmvqRfJT8kxMreK0a+9ySs5Yjg==
X-Received: by 2002:a62:7743:0:b029:13c:1611:658e with SMTP id s64-20020a6277430000b029013c1611658emr9759108pfc.11.1600007188810;
        Sun, 13 Sep 2020 07:26:28 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:e1aa:69c3:1411:f726? ([2601:202:4180:a5c0:e1aa:69c3:1411:f726])
        by smtp.gmail.com with ESMTPSA id b2sm1105388pfp.3.2020.09.13.07.26.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 07:26:28 -0700 (PDT)
Subject: Re: [yocto] [meta-security][dunfell][PATCH] clamav: add INSTALL_CLAMAV_CVD flag to do_install
To: Charlie Davies <charles.davies@whitetree.xyz>,
 yocto@lists.yoctoproject.org
References: <20200910135315.12377-1-charles.davies@whitetree.xyz>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <09c45fa4-3523-b03b-1fa4-ca96e4ad78b9@gmail.com>
Date: Sun, 13 Sep 2020 07:26:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910135315.12377-1-charles.davies@whitetree.xyz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged

On 9/10/20 6:53 AM, Charlie Davies wrote:
> Recipe provides INSTALL_CLAMAV_CVD flag to bypass clamav
> cvd db creation. During do_install this flag should be
> used to conditionally skip install of cvd db if needed.
>
> Signed-off-by: Charlie Davies <charles.davies@whitetree.xyz>
> ---
>  recipes-scanners/clamav/clamav_0.101.5.bb | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
> index 2ea2c9b..770186a 100644
> --- a/recipes-scanners/clamav/clamav_0.101.5.bb
> +++ b/recipes-scanners/clamav/clamav_0.101.5.bb
> @@ -89,7 +89,9 @@ do_install_append_class-target () {
>      install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
>      sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
>      rm ${D}/${libdir}/libclamav.so
> -    install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
> +    if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
> +        install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
> +    fi
>      if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
>          install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
>          install -d ${D}${sysconfdir}/tmpfiles.d
>
> 

