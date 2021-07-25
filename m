Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web08.15832.1627203946608522803
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Jul 2021 02:05:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YtwhOr0R;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id j2so7191197wrx.9
        for <yocto@lists.yoctoproject.org>; Sun, 25 Jul 2021 02:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Y2+w0PFzJItLz3DWRK+YbPEF71PsLlbPj81c7EuVIy0=;
        b=YtwhOr0RQucwBwwVOX2TTunqBBXD1MKmqEY3KXIprGj0KE5vixyu8DC5b2ul4YaYmu
         qzxM4IS6AU4eTyNApWA3C96hpItkGI7BarlQfc/Atq2sDVUm849DEi+dqk0iCd6CDM42
         z4BA2pEubcQLxLxkuLRJsFnZalfNc5VmLEPUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Y2+w0PFzJItLz3DWRK+YbPEF71PsLlbPj81c7EuVIy0=;
        b=sQo5JlSs8g+DtiX60Ib77ful85dZXJorMynC7NvSEl3dhWZf0w9vgjdAi1RuVTNWKb
         yHNI+/4huxJlrO3BF00jmjNBFTJ2MKW0F7rdkjMGrm8v5Nxa5WGNKKzF2xPUdG0sWQCS
         zF1VLKVlOT6CvsXh7kT7stx5CbFhr+iTPF+uAI8yzw7FuVWkW6emKVUiU8MWNLxHqCl4
         TpRHITuiSdiXEcXr9QQqYIUFrkYFpc9SFZBAZH0y2s77gPJyCCDrqRVCd5q6HSxAUNcX
         b0Ba5m4NBcqZH8zVKtNkdu8DFlXj+UQNs4I7X9aOSpq6BK+1DfSO7KcFmDFb0Nn4JaIl
         2Z2g==
X-Gm-Message-State: AOAM53068BoVijZ72vEboVTMXwWYcWDisNnVHJcrLCtXn73zMcDd7d6J
	ulq0a/0zCRUBgvoxE1RFt3HvrA==
X-Google-Smtp-Source: ABdhPJzMzG9TFNY0KWvKX9PTacNnVECKSJaTrtgsGLbmgTBs2ToXQqnA6AoUr3S5+x0Jtsf4VfP4QA==
X-Received: by 2002:a5d:6849:: with SMTP id o9mr14137484wrw.250.1627203945095;
        Sun, 25 Jul 2021 02:05:45 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a8d8:1657:c068:d9be? ([2001:8b0:aba:5f3c:a8d8:1657:c068:d9be])
        by smtp.gmail.com with ESMTPSA id u2sm10757233wmm.37.2021.07.25.02.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jul 2021 02:05:44 -0700 (PDT)
Message-ID: <a8924ddf258fc20bd7ffb4677139cae31399c7fd.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] Enable canary builds for meta-aws[aws-iot-device-sdk-cpp-v2] on x86-64 and arm64.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: elberger@amazon.com, yocto@lists.yoctoproject.org
Date: Sun, 25 Jul 2021 10:05:40 +0100
In-Reply-To: <20210722212908.27018-1-elberger@amazon.com>
References: <20210722212908.27018-1-elberger@amazon.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-07-22 at 17:29 -0400, elberger via lists.yoctoproject.org wrote:
> From: Richard Elberger <elberger@amazon.com>
> 
> This patch provides the buildbot system to make the aws-iot-device-sdk-cpp-v2.
> - build on poky
> - meta-openembedded and meta-aws are additional repo dependencies
> - build for the two dominant architectures: x86-64 and arm64.
> 
> Signed-off-by: Richard Elberger <elberger@amazon.com>
> ---
>  config.json | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/config.json b/config.json
> index 3709b40..f04fac8 100644
> --- a/config.json
> +++ b/config.json
> @@ -350,6 +350,23 @@
>                  "BBTARGETS": "agl-image-core-autobuilder"
>              }
>          },
> +        "meta-aws" : {
> +            "NEEDREPOS" : ["poky", "meta-openembedded", "meta-aws"],
> +            "ADDLAYER" : [
> +                "${BUILDDIR}/../meta-openembedded/meta-oe",
> +                "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                "${BUILDDIR}/../meta-openembedded/meta-python",
> +                "${BUILDDIR}/../meta-aws"

The ordering isn't correct here since they have to be added in dependency 
order and for some reason this was different to the patch we discussed 
previously. I've just gone ahead and fixed it.

Cheers,

Richard

