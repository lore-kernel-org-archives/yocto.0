Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web12.39834.1595257932551606133
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 08:12:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=G283pJik;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id q15so22635062wmj.2
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 08:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=FXud7A+VZIuvlu2BPNchoqLIZ64OB89l5nQTTupkq+k=;
        b=G283pJikDhmcvYCjCVLRlvm+ksVizw0LeShZht31FDd72jTIHezIwAK0wiR3WTmVp7
         WlQddgWJbSRx7SAd5BxRAncauUFAcOqXebUzTc5mA9crK5zI8oswSQ+VOX0PNq8d6Dog
         ZN04VHdnbxSI1CpEZEd2L00ujboZRqdafuy8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=FXud7A+VZIuvlu2BPNchoqLIZ64OB89l5nQTTupkq+k=;
        b=G8ybELqLgEZkvAylqYQDSnl6b969d62qhRyhpIjVejvzmtEijEhb5zcWhlF6LmvGtr
         ej2e/p34Rg5TYxnUrXBx2mP79342d2D/bd4JJknKubaEdg/tZgpIwR4zvIJSgSQ8YqO+
         VTyD7fT5hz5Gam9C9aJaoAqlxiWYT2AW2ZeUN/rsZIbGrciYN1GJ8bzv1bgHfrR4hE8J
         C9uZmxUA6z+W0OfbLXR+M3P5jqohIDyDtstto09tZcNSSXqgb04yxMU0h91WuG1ae1jH
         rAe1jocqf6yEyzbxciQLGD982O9vP1/DRVDKXljaLh/LlSvhgMYTW+zwQ1MnU98BdVpT
         2Iqw==
X-Gm-Message-State: AOAM530DQzaaWZ0spBqYy8rfJJuOCo8+90zKOSGks+gjgWajXq+iNtJG
	OfobojTU4h8U7hLnG51OHgReRA==
X-Google-Smtp-Source: ABdhPJytuA31f6h+uzlm8G2HGeDkzoXmrZoG8C5SC/rXp7ZEXIVjoOxdUr2FKOc4P39BPeI+oL2cVg==
X-Received: by 2002:a1c:3dc3:: with SMTP id k186mr23144249wma.66.1595257931067;
        Mon, 20 Jul 2020 08:12:11 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1cb0:3078:6c66:aaf5])
        by smtp.gmail.com with ESMTPSA id k126sm34108468wmf.3.2020.07.20.08.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 08:12:10 -0700 (PDT)
Message-ID: <8d0258be3275bc76159bdd096d75c8c7984ff6d3.camel@linuxfoundation.org>
Subject: Re: [yocto] Offline Build #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Amrun Nisha.R" <amrunnishar@gmail.com>, yocto@lists.yoctoproject.org
Date: Mon, 20 Jul 2020 16:12:06 +0100
In-Reply-To: <16314.1595254681269487194@lists.yoctoproject.org>
References: 
	<f7fc0973c145bd10b5196d42b8b2903a624d4c20.camel@linuxfoundation.org>
	 <16314.1595254681269487194@lists.yoctoproject.org>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-07-20 at 07:18 -0700, Amrun Nisha.R wrote:
> For gnu-config-native-20150728, I have copied the git2 folder from
> older build folder to new build folder. It is fixed now.
> 
> But I'm getting do_fetch error for the ncurses and ncurses_native. I
> have attached the log file for both packages.
> 
> Actually I have doubts regarding the build folders:
> 1. As mentioned above, I have copied the sources and download folder
> to the another machine. While bitbaking, it again doing the do_fetch
> process. Whether I have to copy the build folder (build_wayland)?
> 2. Is there any particular folders should be copy other than the
> sources and download folder to build the yocto project in offline?

When you run the original build, where is DL_DIR pointing? Find that
and make sure the same directory is available to the second build.

It sounds a bit like you have multiple builds are not sharing the same
DL_DIR so either make them share them, or copy them all.

Cheers,

Richard

