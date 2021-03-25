Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.8334.1616680975300643162
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 07:02:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZJEty7Q1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id k8so2418842wrc.3
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 07:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=YiAuFdbdguwxcjEjanKCfowrWGMGy0Uf2oWfxN5pbSM=;
        b=ZJEty7Q1pQhC9oPufHF0CAKd2KBK87b2EKFpOS+SHNIhBQkMk7hMzJCI/LvhpxkQ7b
         lBSVckG9r8GbxmOPkrZDu5kEQN9fh7pD4LbsT62mnx8fr74bnsLhTsZv+0eLVvq5HZd2
         onfmyU1fHb9MRfLYWI+qbUXxNJCUrsdLjz3W0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=YiAuFdbdguwxcjEjanKCfowrWGMGy0Uf2oWfxN5pbSM=;
        b=m1V406mD3ln244d+GX4LDsBSPjkVURMYDWE3EaMUKIdKswLFIR0Q0Bu2yzRrv0gegW
         geGIoZY22qWb/Rjd5aI0dnR3OmeXeJ2RnhkTpBvDxurf+htAlvEBDAoo9Bw86zO4SzyZ
         /4KhrBJeHuodPfzeaoqXYxxQpa1C50GOlfTsgfSf2FEwqiPT9vTKHdE9f63pDbgXjNYg
         GfMBiMmSntVQTYkGFuGVy9P6tZoR6qb9wCvIHGlfGgXltSfIaDkgxHJYcuFlX+5kS6E6
         bKLQvXisc5WzkmibmpNA9ctmrDtGyYZkCjiuAa4JkWuPPv4YuQFLS8uv+u5vH9BKbvmt
         paRQ==
X-Gm-Message-State: AOAM533W+qRTLfOLz1DBUMbMWW5952U7F7mL2zZOCllelg8NWb1RqPvV
	rFnUhM5+q0O8CyM+5upKcKoomg==
X-Google-Smtp-Source: ABdhPJxwhl4+n7/r876oNoQRksiOwFnfolWghH6RuN9zluMrBwJxH0iXGJF2T1ORWIHDUg5zzUCGxg==
X-Received: by 2002:a5d:6446:: with SMTP id d6mr9187900wrw.328.1616680973736;
        Thu, 25 Mar 2021 07:02:53 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:6a6e:24cd:b165:9075? ([2001:8b0:aba:5f3c:6a6e:24cd:b165:9075])
        by smtp.gmail.com with ESMTPSA id c8sm8813124wrd.55.2021.03.25.07.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 07:02:53 -0700 (PDT)
Message-ID: <e27a13decf2b85b8aeb4f6c427fa07d3e2c8591e.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell 20/23] config.json: Use buildtools tarball on debian9
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>, yocto@lists.yoctoproject.org
Date: Thu, 25 Mar 2021 14:02:50 +0000
In-Reply-To: <fbd459aa8fcd8fdbdae57f41e7f47ff0de78bbec.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
	 <fbd459aa8fcd8fdbdae57f41e7f47ff0de78bbec.1616625264.git.steve@sakoman.com>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-03-24 at 14:39 -1000, Steve Sakoman wrote:
> From: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> debian9 has python 3.5 which doesn't work with new qemu versions. Its
> the only remaining 3.5 distro so lets move to a minimum of 3.6.
> 
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> (cherry picked from commit 62b3f5553e9c215cf94798ae4694ccb97f6e85dd)
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  config.json | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/config.json b/config.json
> index cedcef7..8eb05e6 100644
> --- a/config.json
> +++ b/config.json
> @@ -1006,6 +1006,7 @@
>      },
>      "buildtools" : {
>          "debian8*" : "${BUILDTOOLS_URL}",
> +        "debian9*" : "${BUILDTOOLS_URL}",
>          "centos7*" : "${BUILDTOOLS_URL}",
>          "perf-centos7*" : "${BUILDTOOLS_URL}"
>      }

I suspect you don't need that with dunfell since you're not using such a 
new qemu?

Cheers,

Richard

