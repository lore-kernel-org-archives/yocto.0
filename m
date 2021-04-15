Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.7348.1618494769015852444
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 06:52:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WryCdyyj;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so12413768wmj.2
        for <yocto@lists.yoctoproject.org>; Thu, 15 Apr 2021 06:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=uDUDfxOFMXKfo84Ngji6Z1OIuDa7hkfxI+XKgewHtWU=;
        b=WryCdyyjs1N1Sj4hKtx+zIVMloTlNQWg02+Oc/XkJK+XFM4LKpO4ZxLnS1cn5/xOYY
         HjBthMtZH0/ZnM5rn0eYujl8c6JXz4X8XZCkG2GJD5DHtl0/9DapFygPkz00xBw7uHVL
         7oFhjp/xjV3MEmUVFv7uoytLAsliEdIipPjfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uDUDfxOFMXKfo84Ngji6Z1OIuDa7hkfxI+XKgewHtWU=;
        b=rcwdFuKbGsmkhplQ+QCABq8hfSq6gXt9ql+farwiDdCjAqYUid5WMZN5Ne16yip0GQ
         ILx7BEPwfdeAOQRxXeOiwvyf3raNhpigxmIF7MD7QgvLClZKUzIZmu2ElPCwQ8iFRMon
         2lYdDzkuM6K8/dGRZIUmE0MNfvO92k1R0S+MqBXxN6GH8fkcSP/IHK9i36FbGyoMtZCV
         vxaVIQ5jV3VQTUHLepR/E4eYycA8+czzW5iVTFAec59ZKfo62m05HC8jjD9YnDcWTxeX
         z8noBPPwcXlsIERQzNpVq+aGUgxAzqcSybf+iHh7f+L6K/AQVKAbmoE+rlHrt0dUk6f+
         uTbQ==
X-Gm-Message-State: AOAM533E4LX/YqHFON+uUz0TWC1+ZLxs+bTFFmMWn4SvRvez4dtuH1Wm
	hj1sKWu0ZYAfRucOQBFcJ6/6mA==
X-Google-Smtp-Source: ABdhPJx0RE5PjNq+4vOxgi+PW6qQcPnPy4uykPgd0seG7ad3jNXeG0LI356OQMYQrELDdEfkRdVPgQ==
X-Received: by 2002:a05:600c:35d2:: with SMTP id r18mr2656412wmq.29.1618494767502;
        Thu, 15 Apr 2021 06:52:47 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:b769:fd13:2e7b:1bdf? ([2001:8b0:aba:5f3c:b769:fd13:2e7b:1bdf])
        by smtp.gmail.com with ESMTPSA id s8sm3321854wrn.97.2021.04.15.06.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 06:52:47 -0700 (PDT)
Message-ID: <f8f21c5ba518ccba291c9c3388c3e28a680d68e6.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/4] config.json: add "collect-data" template
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: sakib.sajal@windriver.com, yocto@lists.yoctoproject.org
Date: Thu, 15 Apr 2021 14:52:43 +0100
In-Reply-To: <20210413170210.72845-1-sakib.sajal@windriver.com>
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-04-13 at 13:02 -0400, sakib.sajal@windriver.com wrote:
> collect-data template can run arbitrary commands/scripts
> on a regular basis and logs the output in a file.
> 
> See oe-core for more details:
>     edb7098e9e buildstats.bbclass: add functionality to collect build system stats
> 
> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> ---
>  config.json | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/config.json b/config.json
> index 5bfa240..c43d231 100644
> --- a/config.json
> +++ b/config.json
> @@ -87,6 +87,13 @@
>                  "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
>              }
>          },
> +	"collect-data" : {
> +            "extravars" : [
> +                "BB_HEARTBEAT_EVENT = '10'",
> +                "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
> +                "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
> +            ]
> +        },

Is the template used anywhere? I can't remember if we support nesting templates in which 
case this is useful, or not?

Cheers,

Richard

