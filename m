Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web12.38939.1600007204990090102
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Sep 2020 07:26:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpItrHMS;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id o68so10541141pfg.2
        for <yocto@lists.yoctoproject.org>; Sun, 13 Sep 2020 07:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=mCeWDvFoB43QoXgSHeHYL7hpjhKZSwi6nZV77I/lh+w=;
        b=rpItrHMSp2Ms9ogo9/4VhCqyWtwCkeM6NjxfubutOO/1ykugrT39syeH5FPdpSVjsG
         WqrITl7BZVuWfc9qRqNBr0zbp5rLaxudE35V2pzMRfokphvA2pZABBnWyTMO+AV0ltQ8
         5sAJKmk5eMx5XljJC1neL+u7Ul0t5u5LLRO64VNqF7mVdC6yYuxWiBHZw2sJHkiquhPr
         knC4PeLRb7PcwB4y3z2g3x/jqCZweDlU3HlYcWbxQU2MW+TMfbSj3VtWh4D6vRFwt6v7
         FQ1eGXmUltXBmxP5e1q8lyHRATf0LgiN4hYS/d1q8hyxVrg7PEFjT9ddUpbiCEv0Gj3a
         QQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=mCeWDvFoB43QoXgSHeHYL7hpjhKZSwi6nZV77I/lh+w=;
        b=LlQULcQlxGIJMA4U3nK8oWnTP7XITUuNXyj+Kxck5GADbegSQVOstARo2FjL/ufb7N
         w3L4rSb3IsEaZt0bHTZvxmQL3d5yAHoOrpBGWAC1znuz0q+4ziVnArzoMV2JY05qynds
         vsv2W+UqWBjbt/cYqB0gdtID1At2jua5F94qQ8eRzqFLdmzrwjRNF5OYFuOnnUukWXf8
         y6nvE2WGO8HrysiaPNtWMVXg/AtTngatSaHmyTc67J/zWhuX9jYq6AlQ0WuHalhaU+hn
         g7gvGLOqUJ9+ksV3BKQVq8LX+qPDfgo3QZjVxppVwcZCmRiB/R5w0ZZuXqwc+sDh7p3h
         573w==
X-Gm-Message-State: AOAM533TXei6/pj7qFcJIdNslww5hXnEpPFdq/v4VuFNrymclLQmeg3/
	Sk27aN5po2GtrILO8Ouwmt04GegVCxc=
X-Google-Smtp-Source: ABdhPJxiQT3LD3S7edoizfjuP0bp9LHMUGhd1FjFNa1lSuTHDOBZlPRQs1syvImEX6ENku0aNgz7ew==
X-Received: by 2002:a63:806:: with SMTP id 6mr802660pgi.71.1600007204421;
        Sun, 13 Sep 2020 07:26:44 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:e1aa:69c3:1411:f726? ([2601:202:4180:a5c0:e1aa:69c3:1411:f726])
        by smtp.gmail.com with ESMTPSA id b10sm7519214pff.85.2020.09.13.07.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 07:26:44 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master][dunfell][PATCH] clamav: update SO_VER to 9.0.4
To: Charlie Davies <charles.davies@whitetree.xyz>,
 yocto@lists.yoctoproject.org
References: <20200910141123.14207-1-charles.davies@whitetree.xyz>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <a7912586-c692-1f63-74a5-8d21e05c1fc9@gmail.com>
Date: Sun, 13 Sep 2020 07:26:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910141123.14207-1-charles.davies@whitetree.xyz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged to both.

thanks

On 9/10/20 7:11 AM, Charlie Davies wrote:
> Signed-off-by: Charlie Davies <charles.davies@whitetree.xyz>
> ---
>  recipes-scanners/clamav/clamav_0.101.5.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
> index 2ea2c9b..30c8c08 100644
> --- a/recipes-scanners/clamav/clamav_0.101.5.bb
> +++ b/recipes-scanners/clamav/clamav_0.101.5.bb
> @@ -23,7 +23,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.101 \
>  S = "${WORKDIR}/git"
>  
>  LEAD_SONAME = "libclamav.so"
> -SO_VER = "9.0.2"
> +SO_VER = "9.0.4"
>  
>  inherit autotools pkgconfig useradd systemd multilib_header multilib_script
>  
>
> 

