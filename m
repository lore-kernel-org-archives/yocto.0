Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.6199.1618561737101350950
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Apr 2021 01:28:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TPSeOhpt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id e7so16864516wrs.11
        for <yocto@lists.yoctoproject.org>; Fri, 16 Apr 2021 01:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=1SFzJqje7Yq1yXlkTcIKgV0MOCOp9Gc20gGqAVg2HT8=;
        b=TPSeOhpt8coaLwUyScH0MQUkY/BhvKM1+zWxDlpOYV9gqb6jPL5iTSqz6VSFBMJRkT
         l3RS0yd5MC/J/dCJ1V4EEVmILS5WIApD4Hg+5f1R6pIaz982U5NMLzpw37xsqq0Jrm7B
         myCkmAfrcrfoAwdT85BkZ0goGwFEFfnkjQpDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=1SFzJqje7Yq1yXlkTcIKgV0MOCOp9Gc20gGqAVg2HT8=;
        b=GFhYCqUPwF5tCGx276g1KYKN18m5mlTb0X67Esa7MEe6gPjbsCvtyfeQnx+ErvK/Hg
         /BHixHkf5H7tZ2kc52XvHFUtGsOwWUa6moFTI4bnm2O2/TRSvWw37g6JUPj3vbbj27c8
         IC1iIRs0MC0U6EdStitumV8bxCjCr9AS7oBhR4capQbSWmb4NkTfZ+8/O74fMMTa8x6c
         JA90est1yl25Czbn9Xdqbg6n1MEubSTESgtfjbAC/Sa3vVah/TARSZ+5i0noo+85qFlZ
         FWhd7pVw/6AhVpMEZ7pWouCrZLcIkesG/1x/29G2t9kGMjuXHlmbpD4QjC+uNHlGDlDo
         veQw==
X-Gm-Message-State: AOAM533j8wnGVclcOd/0ZVDHHykdJ8U7d0AlJKl2sa+oyWlkrLEMfeJG
	MQ3njFH651PU0pH9jX05wsgBew==
X-Google-Smtp-Source: ABdhPJxiKYotYgc8hwnOf7AM2TSgMb/GuvGW8jO2w11QtBuP0y6FUnIACAv1ferBSSOgcBCxpVzgLg==
X-Received: by 2002:a05:6000:1091:: with SMTP id y17mr7515180wrw.270.1618561734967;
        Fri, 16 Apr 2021 01:28:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:b9e0:fe1a:1091:177b? ([2001:8b0:aba:5f3c:b9e0:fe1a:1091:177b])
        by smtp.gmail.com with ESMTPSA id p13sm6267376wrt.0.2021.04.16.01.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 01:28:54 -0700 (PDT)
Message-ID: <4f4868047d3b0c1af7ecc137b3cb4b56bffa1fff.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 2/4] config.json: collect data by default
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: sakib.sajal@windriver.com, yocto@lists.yoctoproject.org
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>
Date: Fri, 16 Apr 2021 09:28:52 +0100
In-Reply-To: <20210413170210.72845-2-sakib.sajal@windriver.com>
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
	 <20210413170210.72845-2-sakib.sajal@windriver.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-04-13 at 13:02 -0400, sakib.sajal@windriver.com wrote:
> add the variables required to collect data to "defaults"
> so that data is collected on all builds.
> 
> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> ---
>  config.json | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/config.json b/config.json
> index c43d231..cd82047 100644
> --- a/config.json
> +++ b/config.json
> @@ -55,7 +55,10 @@
>              "SDK_INCLUDE_TOOLCHAIN = '1'",
>              "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
>              "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
> -            "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'"
> +            "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
> +            "BB_HEARTBEAT_EVENT = '10'",
> +            "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
> +            "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
>          ]
>      },
>      "templates" : {

I merged 2-4 of this series, unfortunately this resulted in a few issues overnight:

https://autobuilder.yoctoproject.org/typhoon/#/builders/85/builds/1393

which is due to the non-executable script which there is a patch for, it just
wasn't in master due to the release. I've fixed that by merging the patches.

The bigger issue is the performance metrics which this broke:

https://autobuilder.yoctoproject.org/typhoon/#/builders/91/builds/4427
https://autobuilder.yoctoproject.org/typhoon/#/builders/92/builds/4453

We're going to need to disable these events on the performance metrics
targets...

Cheers,

Richard

