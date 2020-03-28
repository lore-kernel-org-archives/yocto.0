Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.1541.1585353924419495171
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 17:05:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KS131Qu3;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id kx8so4420973pjb.5
        for <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2020 17:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=qV9mqJx0kjPd/qqvJswqXOl595817DxnO/meEHX8vZI=;
        b=KS131Qu3wZcm4UbMsU9D8N7urXpoMqqTiv1LJEE4bbPLRf/05FP888ZMyvJ5WcnI3i
         RrGvVXTvBN7Hthp/Mx/e/A6QDvU4ui7Ww83+JPl+yTubtalgakP4DjrbygnE+0+dM7j3
         e3b6/pMIVXj4hyWAh+SzA/FEHCe/jC2MnVRujqNiprPXXZggQjPE78b743eeMeEiT0Zi
         /8bLiyRmQyZsWmYx4sU1jmIyOoy8Q3SqQc5HJXTC8unXRGrBgHuN2cOolMAZCEznClgz
         oGt2Pd1QsWKNAThngQ9ZGVoVctwEi+rDkBiBPYuA5WIFdQR4GyKpBBn+tfCHv+lX3oDL
         pLBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=qV9mqJx0kjPd/qqvJswqXOl595817DxnO/meEHX8vZI=;
        b=UDqOE6g84RBWgrUmVhq3ziyoO2Scji55QAdS2QVuPP40Ea23Tg/Yjv9D5OhZYa3hzA
         ZyFQePJwBh4ZrtKBHVhTDWuftctIzk208cRH3w5o1O8DtaGdblGU6AeJg4MYUOYOIjRO
         bJpLWlQCHVys6hHF+VBMQCb77c6fPOPefqbzUivW10bE94UM6Wsq5c8MihuM1vE8vYJ1
         GCCLrWd4RfqH0tvtbIt4yO/pThFBMdwohOW/jiUGmpfb/BWnESJhE21rInG6m0Q7YL47
         1RtCntkb/fzGxL2882XLPYZBQmgn1IC7D4h7vbAqHDftcpX+UxDnZsotrf93hNWqIVsg
         dU5w==
X-Gm-Message-State: ANhLgQ1RxxLP/TByj3GxfHHAfIq0lPEULw22JIRrpF77DsiGPcn7RZmW
	chfov0/QWtrOG/aQQr9ljLCq4I6FgYw=
X-Google-Smtp-Source: ADFU+vuiO+xu0pH/aBMJHxthgW/a9KnkQsdzzmJlPvJZXtXHNr/VR/zuPWGmDK4Uxj7rfoLBFoJiZQ==
X-Received: by 2002:a17:902:d712:: with SMTP id w18mr1595788ply.238.1585353923744;
        Fri, 27 Mar 2020 17:05:23 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:84d1:5d33:be2f:3f17? ([2601:202:4180:a5c0:84d1:5d33:be2f:3f17])
        by smtp.gmail.com with ESMTPSA id w16sm4984178pfj.79.2020.03.27.17.05.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 17:05:23 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] layer.conf: update LAYERSERIES_COMPAT for dunfell
To: Martin Jansa <Martin.Jansa@gmail.com>, yocto@lists.yoctoproject.org
References: <20200325130158.23467-1-Martin.Jansa@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <46054fcf-497f-37b8-f4af-f22500f6511b@gmail.com>
Date: Fri, 27 Mar 2020 17:05:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325130158.23467-1-Martin.Jansa@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------B30118D999BAEFFEA8F5A5D6"
Content-Language: en-US

--------------B30118D999BAEFFEA8F5A5D6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 3/25/20 6:01 AM, Martin Jansa wrote:
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
Merged.

thanks,
Armin
> ---
>  conf/layer.conf                          | 2 +-
>  meta-integrity/conf/layer.conf           | 2 +-
>  meta-security-compliance/conf/layer.conf | 2 +-
>  meta-security-isafw/conf/layer.conf      | 2 +-
>  meta-tpm/conf/layer.conf                 | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 3e890e1..2c3bd96 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
>  BBFILE_PATTERN_security = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_security = "8"
>  
> -LAYERSERIES_COMPAT_security = "zeus"
> +LAYERSERIES_COMPAT_security = "dunfell"
>  
>  LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
> diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
> index bfc9c6f..b4edac3 100644
> --- a/meta-integrity/conf/layer.conf
> +++ b/meta-integrity/conf/layer.conf
> @@ -21,7 +21,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
>  # interactive shell is enough.
>  OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
>  
> -LAYERSERIES_COMPAT_integrity = "zeus"
> +LAYERSERIES_COMPAT_integrity = "dunfell"
>  # ima-evm-utils depends on keyutils from meta-oe
>  LAYERDEPENDS_integrity = "core openembedded-layer"
>  
> diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
> index 8572a1f..965c837 100644
> --- a/meta-security-compliance/conf/layer.conf
> +++ b/meta-security-compliance/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
>  BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_scanners-layer = "10"
>  
> -LAYERSERIES_COMPAT_scanners-layer = "zeus"
> +LAYERSERIES_COMPAT_scanners-layer = "dunfell"
>  
>  LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
>  
> diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
> index 241c461..63f990a 100644
> --- a/meta-security-isafw/conf/layer.conf
> +++ b/meta-security-isafw/conf/layer.conf
> @@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
>  
>  LAYERDEPENDS_security-isafw = "core"
>  
> -LAYERSERIES_COMPAT_security-isafw = "zeus"
> +LAYERSERIES_COMPAT_security-isafw = "dunfell"
> diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
> index 175eba8..c3372c7 100644
> --- a/meta-tpm/conf/layer.conf
> +++ b/meta-tpm/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
>  BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_tpm-layer = "10"
>  
> -LAYERSERIES_COMPAT_tpm-layer = "zeus"
> +LAYERSERIES_COMPAT_tpm-layer = "dunfell"
>  
>  LAYERDEPENDS_tpm-layer = " \
>      core \
>
> 


--------------B30118D999BAEFFEA8F5A5D6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/25/20 6:01 AM, Martin Jansa wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200325130158.23467-1-Martin.Jansa@gmail.com">
      <pre class="moz-quote-pre" wrap="">Signed-off-by: Martin Jansa <a class="moz-txt-link-rfc2396E" href="mailto:Martin.Jansa@gmail.com">&lt;Martin.Jansa@gmail.com&gt;</a></pre>
    </blockquote>
    Merged.<br>
    <br>
    thanks,<br>
    Armin<br>
    <blockquote type="cite"
      cite="mid:20200325130158.23467-1-Martin.Jansa@gmail.com">
      <pre class="moz-quote-pre" wrap="">
---
 conf/layer.conf                          | 2 +-
 meta-integrity/conf/layer.conf           | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-security-isafw/conf/layer.conf      | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 3e890e1..2c3bd96 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "zeus"
+LAYERSERIES_COMPAT_security = "dunfell"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python<a class="moz-txt-link-rfc2396E" href="mailto:diff--gita/meta-integrity/conf/layer.confb/meta-integrity/conf/layer.confindexbfc9c6f..b4edac3100644---a/meta-integrity/conf/layer.conf+++b/meta-integrity/conf/layer.conf@@-21,7+21,7@@INTEGRITY_BASE:='${LAYERDIR}'#interactiveshellisenough.OE_TERMINAL_EXPORTS+=">"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index bfc9c6f..b4edac3 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -21,7 +21,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "</a>INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "zeus"
+LAYERSERIES_COMPAT_integrity = "dunfell"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 8572a1f..965c837 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "zeus"
+LAYERSERIES_COMPAT_scanners-layer = "dunfell"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index 241c461..63f990a 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "zeus"
+LAYERSERIES_COMPAT_security-isafw = "dunfell"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 175eba8..c3372c7 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "zeus"
+LAYERSERIES_COMPAT_tpm-layer = "dunfell"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------B30118D999BAEFFEA8F5A5D6--
