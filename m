Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.52321.1629279876297665991
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 02:44:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RDftKZbR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id f10so1218923wml.2
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 02:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=0s/+Mk9Au+ifSm8VOf+4rkbO1OJgooJx3AQlEy7vJfM=;
        b=RDftKZbREcWIm4L7pNwMBUCEfF5ciccLWzhZ3S+6K/Z7RQpW0rC453F/QN2n80yT2z
         GH5JywzeSSSPUyngIO+dH2Exm/a5ezFbY9DMy9sTgffsVrAoVAVHy5hD2msAMb9tgvGK
         LiwK7SqrHeYlK449Jspkd3DbkfLwh5bomKrIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0s/+Mk9Au+ifSm8VOf+4rkbO1OJgooJx3AQlEy7vJfM=;
        b=LxVIyGqGWIOhCE7J8qiJhe5GFl1zrY8VE3aOlSgCnM60X2PpEDm0HNPD7Lbq1YPJeb
         fM7M7eyu2DzITJE1EykMOGb7AGONWxCfLhfKiAMX4dJXxY9ri/n3Ob/Rnqe2CM3L7MgX
         bFQyl/6TnMNtg8Ixnn5QovT9Te5Az6pRzj1VwL62NarPuNxBNIRALCa+EyrCapiWmGc9
         A1y6fWTQOgGGOaY2/TzJBA7Yo+/hZlZ6WnHqn8wrFNtWqil/RICG2xTGqFPQOhaw9JcU
         Q0UxSSJj6gr4NHExhs1BJ0Tbfl+K3B92ZQwjLasJ9oGQXliT31uYweUT17G4xre4/LyK
         2XZw==
X-Gm-Message-State: AOAM5337pleqUl6SJVXFso5JXm8fNKy/YLkTb1LYNECEYW1RtUW7mGgd
	eKIO6YmOq5+aSN5lkK9fpey0tg==
X-Google-Smtp-Source: ABdhPJwImg9FE4vVPc14MLGow3+K+om6yofGQ1yJQSwMKItzG4dzdutGTquTq47Wux9MfMvwbCXXOw==
X-Received: by 2002:a7b:cc0a:: with SMTP id f10mr7694533wmh.32.1629279874682;
        Wed, 18 Aug 2021 02:44:34 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:2c5b:67f4:375e:5ae2? ([2001:8b0:aba:5f3c:2c5b:67f4:375e:5ae2])
        by smtp.gmail.com with ESMTPSA id s1sm4512857wmh.46.2021.08.18.02.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 02:44:34 -0700 (PDT)
Message-ID: <e60fcaa87fe2b3d15f595f4957257b954b6e39db.camel@linuxfoundation.org>
Subject: Re: [yocto] Weird bitbake generation behavior
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: fransmeulenbroeks@yahoo.com, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 18 Aug 2021 10:44:31 +0100
In-Reply-To: <560218609.1701935.1629267807962@mail.yahoo.com>
References: <560218609.1701935.1629267807962.ref@mail.yahoo.com>
	 <560218609.1701935.1629267807962@mail.yahoo.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-08-18 at 06:23 +0000, Frans Meulenbroeks via lists.yoctoproject.org wrote:
> Hi,
> 
> I share an sstate-cache with my fellow developers and I was assessing why sometimes things got rebuild even
> though I did not expect this.
> One of the things I discovered was that we had two versions of of glog/0.3.5-r0 in sstate. 
> The difference was caused run.do_configure where one user had this in run.do_configure
> 
> do_configure() {
>     cmake_do_configure
>     # remove WORKDIR info to improve reproducibility
>     if [ -f  "/workdir/build-nano/tmp/work/aarch64-sorama-linux/glog/0.3.5-r0/build/config.h" ] ; then
>         sed -i 's/'$(echo /workdir/build-nano/tmp/work/aarch64-sorama-linux/glog/0.3.5-r0 | sed
> 's_/_\\/_g')'/../g' /workdir/build-nano/tmp/work/aarch64-sorama-linux/glog/0.3.5-r0/build/config.h
>     fi
> }
> 
> whereas the other just had:
> 
> do_configure() {
>     cmake_do_configure
> }
> 
> 
> The weird thing is that these two builds were about a day apart, they were build on the same system with as
> far as I know the same metadata, the same distro, the same image etc etc
> User settings should also be the same (we build under docker and I checked, we used the same version of ubuntu
> in the container (18.04). (Actually the containers were generated from the same Docker file and docker inspect
> tells me the images are identical).
> 
> Anyone an idea how this happens and where that extra snippet comes from? (I grepped for the string
> "reproducibility" in the bitbake folder, but that did not help)
> BTW we're using dunfell

Google shows:

https://patchwork.openembedded.org/patch/176924/

so I'd check the glog recipe.

https://git.openembedded.org/meta-openembedded/commit/?id=be95549f2ea5c59c6da6ace852b918cdba3c7822

https://git.openembedded.org/meta-openembedded/commit/?h=dunfell&id=a51c0d9b3a0d7dc5986ce46e7de65ef26cd06373

Cheers,

Richard



