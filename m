Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web08.13094.1618934844331837216
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 09:07:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mTryW82r;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id y32so26942993pga.11
        for <yocto@lists.yoctoproject.org>; Tue, 20 Apr 2021 09:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ithtD6DwbClEnj2CZ+DjqljLu0ZxgFYz/cU2nVIT+4c=;
        b=mTryW82rRh5GQqye+ecSx6jmctfWU614hISSP86FwtfPS/na1o398D23wlS6hkDH5c
         xX3ukk4Ohch0upHW3he903bAezEjQ2R5Y/354cWHg0AHOwigVCVAF9FuCIt/mZOwEgNy
         S6BXRQb6lhS6ul1wl1H3Xvd0vjCFhDx6rIyUGuQz/H08U/ailcAlf3l1sZ6kuid4JUF9
         coqVOSpxs0DLOUUzClLyqvPRqJ2Y7qUakHtiIrEs+Ghf2k7Y+RNzU8ec9ROZKkgOGTVK
         BT8vTX2HSVsk+SvDnvUU872bH1BgzpP0/rcFFzMwk5L2HdcEaedlt8oXGLict+qA2hgp
         rTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ithtD6DwbClEnj2CZ+DjqljLu0ZxgFYz/cU2nVIT+4c=;
        b=WFZvK5kq2E3WTP0M/XVH82ly8GCKoYT9QkAEP2nSZnW9+FD9fljodY1a6V3EodJ8az
         7oZw9xg8jM3l+syKz4vIOPIVfgzWN8Iz8vCMIvVbem3x6f2Hr3eO7Ua4LLdTH45mZs4/
         +fyuwBv13eA7mf1hxATcw6c17rMXrG5i7070zsS5bLGpzXTkbkCOCzqy+TJb71YmYOYR
         SxOTELqHXsV96ZDgOoBInsL7Yh5DPE74Y0ILJA2c0uBnes54FuBdjxOW+2Bc7RrvOAIG
         VdBkeHqENT8VIAqgwn7XXx6shGRIkpeE1sjVlt/t3LKTRmVvsnxKZZpp2JELRoVejZe7
         T5sQ==
X-Gm-Message-State: AOAM532/QX3G0oTywV8RL5V+L1Oz1Z7A2QLjIswGGN1iVLfVxued1DUs
	APv1cpo9uc76D+l7fwqCwKfYbz8fjhMkwA==
X-Google-Smtp-Source: ABdhPJzkGsiMx3ho7AU1mpepMjf7V7X4RKBMxP+XlZ049hqewz9opQe6xups5DcyNzjuiW21xqmlcQ==
X-Received: by 2002:a63:5c25:: with SMTP id q37mr17383588pgb.218.1618934843532;
        Tue, 20 Apr 2021 09:07:23 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:692a:2f5c:cdd4:70fe? ([2601:646:9200:a0f0:692a:2f5c:cdd4:70fe])
        by smtp.gmail.com with ESMTPSA id s9sm15568125pfc.192.2021.04.20.09.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 09:07:23 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] packagegroup-core-security: exclude apparmor in mips64
To: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20210420144121.30087-1-akuster808@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <9ae92c9f-f9d0-da35-2dc3-9782f60acc43@gmail.com>
Date: Tue, 20 Apr 2021 09:07:22 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210420144121.30087-1-akuster808@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 4/20/21 7:41 AM, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   recipes-core/packagegroup/packagegroup-core-security.bb | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
> index 9ac0d2c..a6142a8 100644
> --- a/recipes-core/packagegroup/packagegroup-core-security.bb
> +++ b/recipes-core/packagegroup/packagegroup-core-security.bb
> @@ -80,6 +80,9 @@ RDEPENDS_packagegroup-security-mac = " \
>       ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
>       "
>   
> +RDEPENDS_packagegroup-security-mac_remove_mips64 = "apparmor"
> +RDEPENDS_packagegroup-security-mac_remove_mips64le = "apparmor"
> +

this should be mips64el

>   RDEPENDS_packagegroup-meta-security-ptest-packages = "\
>       ptest-runner \
>       samhain-standalone-ptest \
> 
> 
> 
> 
> 
