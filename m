Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.40552.1624235882964802275
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 17:38:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mgEiFzWu;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id u18so6968193pfk.11
        for <yocto@lists.yoctoproject.org>; Sun, 20 Jun 2021 17:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Xlp4XVOGDoqEth9AwHskbddJy/kKIT48fQAe+K/7Aws=;
        b=mgEiFzWuNPBsKWUtFwPUGdRqoSos4TfwxUs2RsAMLUN92Ne6R1IqFGJF5ulCINPETb
         34Mjbxcg0+ixX8YIbHuIJ31rXYalfMoSdcY5twAsaGiKvmGmPrz/dQkBBl645+zsB4wV
         xHIl4hTGzcrjHlqux1r4ZiQvbqPnBnDCNVLFgp2azC4LnJ1+lXUG5y66p+vZ7nd2v9W7
         uQydVq3eC54K4sa4jjnmtzuvFxU+Fp71qtzupKAP7ndIYEbBb3r2AQZw31IXInIpHOn9
         wNDc/gBdcUnkGJCp5tBfGAlxhKy0EDBq9GiBsGFwTFrRKxi6g0XAbtvs80itDAFkaVd7
         Savw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Xlp4XVOGDoqEth9AwHskbddJy/kKIT48fQAe+K/7Aws=;
        b=k1NVnprdLw1Kq/t4dTyxHmoKnFIZ7QDhudPGCauC6SRSQqLkpB1Y0nfFSrNA1bpbJY
         WIpiw47pd55TYsJsZjtdesSRaW9yopV2ygXSboxViF8spWy418auIQ9zuUIJbrXutxWD
         mlk6rgUkZkXmZwPaxYUUCyCm0ehTsy2BrmElMwE23tcPnAPVXHnUZI08Y1RBvp6ybVi7
         xQ+ex73RzUINLbrpiPVAfB9z0JKlRqSgHgCbo6foJX+lWbwUSJ6g0i0A1k4/y1CUqYCC
         z5oPdCGdfZEK8R/ChgpZA5TJInkNcBHHW7SwStflo4dlwKBqpG0ZWA+Z6PZ++4Rthn9K
         Sv5A==
X-Gm-Message-State: AOAM532MxhBue0AdYHWzyKB7DpShbUWbF+SRW/KgBB2yhLNFBd3TAc5i
	FWkE8ewI9I2VcYy2G9wvFpiC4eDGZtuulg==
X-Google-Smtp-Source: ABdhPJwrJhxJExbDeXzQPqMFT+3byQv5Syt6p/FuBCxdor28g+iuGFyKODCSDyfKjd9fiKMdOapSHQ==
X-Received: by 2002:a62:380c:0:b029:2f7:4057:c3ed with SMTP id f12-20020a62380c0000b02902f74057c3edmr17017044pfa.21.1624235882160;
        Sun, 20 Jun 2021 17:38:02 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:c7:6c10:59:efee? ([2601:202:4180:a5c0:c7:6c10:59:efee])
        by smtp.gmail.com with ESMTPSA id a11sm13226780pfo.51.2021.06.20.17.37.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 17:38:01 -0700 (PDT)
Subject: Re: [meta-security][PATCH] aircrack-ng: update to 1.6
To: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
References: <20210616043211.25547-1-fede@evolware.org>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <aacf9dab-c6f4-416f-e851-84d6f938c6f0@gmail.com>
Date: Sun, 20 Jun 2021 17:37:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210616043211.25547-1-fede@evolware.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

merged,

thanks   

On 6/15/21 9:32 PM, Federico Pellegrin wrote:
> Signed-off-by: Federico Pellegrin <fede@evolware.org>
> ---
>  .../{aircrack-ng_1.3.bb => aircrack-ng_1.6.bb}            | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>  rename recipes-security/aircrack-ng/{aircrack-ng_1.3.bb => aircrack-ng_1.6.bb} (82%)
>
> diff --git a/recipes-security/aircrack-ng/aircrack-ng_1.3.bb b/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
> similarity index 82%
> rename from recipes-security/aircrack-ng/aircrack-ng_1.3.bb
> rename to recipes-security/aircrack-ng/aircrack-ng_1.6.bb
> index d739227..8d3b531 100644
> --- a/recipes-security/aircrack-ng/aircrack-ng_1.3.bb
> +++ b/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
> @@ -9,8 +9,8 @@ DEPENDS = "libnl openssl sqlite3 libpcre libpcap"
>  
>  SRC_URI = "http://download.aircrack-ng.org/${BP}.tar.gz"
>  
> -SRC_URI[md5sum] = "c7c5b076dee0c25ee580b0f56f455623"
> -SRC_URI[sha256sum] = "8ae08a7c28741f6ace2769267112053366550e7f746477081188ad38410383ca"
> +SRC_URI[md5sum] = "22ddc85549b51ed0da0931d01ef215e5"
> +SRC_URI[sha256sum] = "4f0bfd486efc6ea7229f7fbc54340ff8b2094a0d73e9f617e0a39f878999a247"
>  
>  inherit autotools-brokensep pkgconfig
>  
> @@ -29,6 +29,8 @@ do_install () {
>      make DESTDIR=${D} ${OEMAKE_EXTRA} ext_scripts=true install
>  }
>  
> -FILES_${PN} += "/usr/local/"
> +FILES_${PN} += "${libdir}/*.so"
> +FILES_SOLIBSDEV = ""
> +INSANE_SKIP_${PN} += "dev-so"
>  
>  RDEPENDS_${PN} = "libpcap"

