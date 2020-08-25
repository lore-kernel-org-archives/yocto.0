Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.13042.1598360742578679360
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 06:05:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KJLQhtfW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id x5so2357744wmi.2
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 06:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=GwW6d1tj3itxrl2gkjOvHF7D8XZZHpd/FjxEuSsoypo=;
        b=KJLQhtfWb0YU/aD2JuaM+fPt6+LBW/yrR8SXekA6+sCAXuxWZ8DEFYvtcURv9TgX0E
         0+RBVeQhkH/FcNr40zIYvFgdyelhrUMQCYJEPlbbOm2ewA7DeaIjhv75k39lb73npHX1
         86HzX2c12EMpAZaNV/2zNhUOQhLGB7AU4zIB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=GwW6d1tj3itxrl2gkjOvHF7D8XZZHpd/FjxEuSsoypo=;
        b=uGK5kRgG3pusGMBupgE2fMMw5Mq9TEbWMWjJdrpMyOMBfEs3br9Cxsp7NEEUSJ1HPh
         iGms4GnfJKdOIlkL342XzU8T9MkUa2IKG/mvY6nDUCfQpryb5ydL+I/CE9CZrf6B0zrR
         UIYwZoAlUf7s0iS5/k89q8lIYJfRhRJnslyy9Uky3XjFkOmfEV19Sp+f2VUhhxiLW7X8
         CoXl/emIMIEQTkeyvoqYs+VW+yxtOp5anIx/K5aHhCjnEMgsHByO0JphUeMz/FWNUK66
         iy318rekOuWDmUCYXyd3D/QV6hdDnOTDFCmXYN2JLzwNRPGvZFqnlrObdVSh2hLqs47R
         al+w==
X-Gm-Message-State: AOAM5334q2cPqG2VElR4MQjXHacMDC1zaok/yvG5rNByaJulVimv2xKQ
	lijzajhxkwtDj7MXW85dd98cMw==
X-Google-Smtp-Source: ABdhPJzyj3fW2wHDH1nkT4+5UcmFXedP4KLe8RDw7sOtqYPn38Ge3Y5QGBpt8BVEu+/ZncyP9lEuOw==
X-Received: by 2002:a7b:cb47:: with SMTP id v7mr1963923wmj.36.1598360740947;
        Tue, 25 Aug 2020 06:05:40 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id p22sm5322745wmc.38.2020.08.25.06.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 06:05:40 -0700 (PDT)
Message-ID: <91b95db23b9314f5adafa3e5264734fdd19bb673.camel@linuxfoundation.org>
Subject: Re: [OE-core] [devtool] problem with PACKAGE_ARCH and TARGET_OS
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Adrian <adrian.fiergolski@fastree3d.com>, yocto@lists.yoctoproject.org
Cc: openembedded-core@lists.openembedded.org
Date: Tue, 25 Aug 2020 14:05:39 +0100
In-Reply-To: <05aa33d7-b90a-f20d-9a55-a066681df83a@fastree3d.com>
References: <05aa33d7-b90a-f20d-9a55-a066681df83a@fastree3d.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-08-25 at 14:47 +0200, Adrian wrote:
> Hi,
> 
> After recent update of poky, I started to experience an issue with
> devtool. Currently, I am using the latest zeus version. I have a
> multiconfig environment (Xilinx ZynqMP+ with ARM64 and Microblaze). I
> am
> modifying my recipe compiled from local sources. The custom target
> machine configuration sets DEAULTTUNE="cortexa53"
> 
> When I call:
> 
> $> devtool build peary
> $>devtool deploy-target peary root@192.168.33.167
> 
> I get the error:
> 
> ERROR: No files to deploy - have you built the peary recipe? If so,
> the
> install step has not installed any files.
> 
> In fact, I see that 'devtool build' creates image under
> '/home/afiergol/poky/build/tmp/work/aarch64-poky-
> linux/peary/1.0+git999-r0/image',
> while 'devtool deploy-target' search for files under
> '/home/afiergol/poky/build/tmp/work/cortexa53-poky-linux-
> gnueabi/peary/1.0+git999-r0/image'
> 
> If in the 'peary' recipe I add a line
> 
> PACKAGE_ARCH = "${MACHINE_ARCH}"
> 
> 'devtool deploy-target' starts to search under
> '/home/afiergol/poky/build/tmp/work/aarch64-poky-linux-
> gnueabi/peary/1.0+git999-r0/image'
> 
> If further, I fix in the 'peary' recipe:
> 
> TARGET_OS = "linux"
> 
> 'devtool deploy-target' properly deploys the binaries to the target
> machine.
> 
> However, as I explained, I had to fix in the recipe PACKAGE_ARCH and
> TARGET_OS variables. It is required only for devtool to work, as
> bitbake
> builds properly my custom Linux image containing the recipe without
> those variables being set anywhere in my layer.
> 
> Has anybody else experienced a similar issue? Could somebody give a
> reference (I didn't find) to documentation which explains why and how
> those variables need to be set (I especially concerned about
> TARGET_OS)?

devtool is working for other recipes in oe-core so this peary recipe is
probably doing something which is confusing devtool. Or its perhaps the
machine configuration. Is that a public recipe? If not, is there a
recipe you could share which shows the issue?

Basically we need some way to reproduce the issue to be able to
comment. You certainly should not have to set those variables.

Cheers,

Richard

