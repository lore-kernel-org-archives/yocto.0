Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web09.17361.1603570716981832072
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Oct 2020 13:18:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t5PBHEMe;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id 1so2757375ple.2
        for <yocto@lists.yoctoproject.org>; Sat, 24 Oct 2020 13:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=o/nun52lZcjH0X6vhJPaHeibKjovbJz+/zuvHXZ0ilo=;
        b=t5PBHEMe8DZiALn5EI5gkqfxlJaGOpI/RwKFok0gPW7OdWvz4DnvLF1Ct9Oax49M0w
         g+mrbdCNjbNbbJH2vs4ymIrMAO7Djk4g8U+CyM5iolTomMq8bUlZCFTBgHpARyaJrPQE
         nvBMVqx3otXYAU6/CZgVXHiUsHvnoa8ODsD5O9HBzDYYrhDLY/1anUK8F8s1AfffkdiE
         M3xsv9mjmKKuDZUWONEgJBQ1wimPdlmtyLDFC1sZ1pUWI0kYqbYvmKyHgPe0u9W7xSwu
         npV2MJvrJ4f7GYPp0lHH4h5B5jUo6osU3cNWF49jxbXoxL801FK2quIyZkwtPZxgJF9C
         eAag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=o/nun52lZcjH0X6vhJPaHeibKjovbJz+/zuvHXZ0ilo=;
        b=Dka7TiXdm4+oqJAf8Zn97nCfnTFvxhz2DMlNS9KraV0ktpoanDB2g6LdxvLoqlZ5Uy
         7l+wCYN4si8IzHaiRIw/bPBAg+0JCb1ji5+vD+M6W8ju2PuWzOtBDONNwMzacvUdff+O
         vuhUggwFrynKKXqXQ8ss4Qc6RPj2ZJEPs2OOlw4XF/OQFXQV521+O9VGhNdyOGbptYY5
         fXKi+Z+q1LO0N+/GHoZZeCg33SEz/jaK+2yQ+LU7BYQbPAfC7TpnG04oQ8WFkWyIqlfN
         POIUTzAByF/2U3ju0ZGIM9vllfeVaujaqzSVLmNGz7AwrSa4RmZtltY8Z3mKbfq1lQBv
         qrTA==
X-Gm-Message-State: AOAM5332q9ykClmJyZJQcYAi/5xOsxUbN0fSQb+8tgYgHoootIA/mHfy
	n9iSXC8/Bw+IZjYz7MxQBIH6fTXL7kw=
X-Google-Smtp-Source: ABdhPJyG8O0NOVkSfcE6EBWCyeuBbVwlCGCLZ2kojpoSDUDiOSksWPyUwC+QH9WZ17phxivzlI4T7g==
X-Received: by 2002:a17:90b:4d0d:: with SMTP id mw13mr8899369pjb.36.1603570716172;
        Sat, 24 Oct 2020 13:18:36 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:701b:4aa7:d15c:d4f6? ([2601:202:4180:a5c0:701b:4aa7:d15c:d4f6])
        by smtp.gmail.com with ESMTPSA id p62sm7020649pfb.180.2020.10.24.13.18.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Oct 2020 13:18:35 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] meta-securtiy: Add gatesgarth to LAYERSERIES_COMPAT
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <20201016043850.24267-1-akuster808@gmail.com>
 <CA+chaQdg+r0WrM_gMpZfY3SkX7TObEcOSikJppTphgGmxWmUFg@mail.gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <7a674cc9-9542-f9c6-ed7a-b0f39c19d190@gmail.com>
Date: Sat, 24 Oct 2020 13:18:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CA+chaQdg+r0WrM_gMpZfY3SkX7TObEcOSikJppTphgGmxWmUFg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 10/19/20 7:52 AM, Martin Jansa wrote:
> Small typo in commit summary, but other than that please merge :).
>
thanks for the feedback.

merge to gatesgarth
-armin
> On Fri, Oct 16, 2020 at 6:39 AM akuster <akuster808@gmail.com
> <mailto:akuster808@gmail.com>> wrote:
>
>     Signed-off-by: Armin Kuster <akuster808@gmail.com
>     <mailto:akuster808@gmail.com>>
>     ---
>      conf/layer.conf                          | 2 +-
>      meta-hardening/conf/layer.conf           | 2 +-
>      meta-integrity/conf/layer.conf           | 2 +-
>      meta-security-compliance/conf/layer.conf | 2 +-
>      meta-security-isafw/conf/layer.conf      | 2 +-
>      meta-tpm/conf/layer.conf                 | 2 +-
>      6 files changed, 6 insertions(+), 6 deletions(-)
>
>     diff --git a/conf/layer.conf b/conf/layer.conf
>     index 2c3bd96..8c0254b 100644
>     --- a/conf/layer.conf
>     +++ b/conf/layer.conf
>     @@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
>      BBFILE_PATTERN_security = "^${LAYERDIR}/"
>      BBFILE_PRIORITY_security = "8"
>
>     -LAYERSERIES_COMPAT_security = "dunfell"
>     +LAYERSERIES_COMPAT_security = "gatesgarth"
>
>      LAYERDEPENDS_security = "core openembedded-layer perl-layer
>     networking-layer meta-python"
>     diff --git a/meta-hardening/conf/layer.conf
>     b/meta-hardening/conf/layer.conf
>     index 5896214..22d8874 100644
>     --- a/meta-hardening/conf/layer.conf
>     +++ b/meta-hardening/conf/layer.conf
>     @@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
>      BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
>      BBFILE_PRIORITY_harden-layer = "10"
>
>     -LAYERSERIES_COMPAT_harden-layer = "dunfell"
>     +LAYERSERIES_COMPAT_harden-layer = "gatesgarth"
>
>      LAYERDEPENDS_harden-layer = "core openembedded-layer"
>     diff --git a/meta-integrity/conf/layer.conf
>     b/meta-integrity/conf/layer.conf
>     index 6075df9..76374eb 100644
>     --- a/meta-integrity/conf/layer.conf
>     +++ b/meta-integrity/conf/layer.conf
>     @@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
>      # interactive shell is enough.
>      OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
>
>     -LAYERSERIES_COMPAT_integrity = "dunfell"
>     +LAYERSERIES_COMPAT_integrity = "gatesgarth"
>      # ima-evm-utils depends on keyutils from meta-oe
>      LAYERDEPENDS_integrity = "core openembedded-layer"
>
>     diff --git a/meta-security-compliance/conf/layer.conf
>     b/meta-security-compliance/conf/layer.conf
>     index 965c837..db243f7 100644
>     --- a/meta-security-compliance/conf/layer.conf
>     +++ b/meta-security-compliance/conf/layer.conf
>     @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
>      BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
>      BBFILE_PRIORITY_scanners-layer = "10"
>
>     -LAYERSERIES_COMPAT_scanners-layer = "dunfell"
>     +LAYERSERIES_COMPAT_scanners-layer = "gatesgarth"
>
>      LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
>
>     diff --git a/meta-security-isafw/conf/layer.conf
>     b/meta-security-isafw/conf/layer.conf
>     index 63f990a..b8ee1c0 100644
>     --- a/meta-security-isafw/conf/layer.conf
>     +++ b/meta-security-isafw/conf/layer.conf
>     @@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
>
>      LAYERDEPENDS_security-isafw = "core"
>
>     -LAYERSERIES_COMPAT_security-isafw = "dunfell"
>     +LAYERSERIES_COMPAT_security-isafw = "gatesgarth"
>     diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
>     index 46d0279..cd62fba 100644
>     --- a/meta-tpm/conf/layer.conf
>     +++ b/meta-tpm/conf/layer.conf
>     @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
>      BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
>      BBFILE_PRIORITY_tpm-layer = "10"
>
>     -LAYERSERIES_COMPAT_tpm-layer = "dunfell"
>     +LAYERSERIES_COMPAT_tpm-layer = "gatesgarth"
>
>      LAYERDEPENDS_tpm-layer = " \
>          core \
>     -- 
>     2.17.1
>
>
>     
>

