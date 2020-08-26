Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web11.12604.1598449032036765103
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 06:37:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Xw30mVMD;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id s13so1775933wmh.4
        for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 06:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=FY1PwSFD6IvYBbwRP4KpXGMR6DmJAceHbHiXgVIr3Hc=;
        b=Xw30mVMDI1E5Xm72uBK9R99KwFKVAsFomFF8XR7ru2F47PfdD7gOJsA56kN15Lt4HA
         wLCmkUAx2o0khwKsCaVkG9KYtDFOt9lGndgTIP83QG3yjqkUkdaDpJ//A2VCPdyvrJhR
         flfonvpe7NbktmPS+9aeSuaNEBtExnseS8Zk0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=FY1PwSFD6IvYBbwRP4KpXGMR6DmJAceHbHiXgVIr3Hc=;
        b=Q42wWZKAM3pXCWuUPuxRgmKScaSGWy9hU3LH7Z9UFDXTh3aMSUr0WnI2nebojVY5km
         uanEw0F04TEi17mgOO61VYNhLBSWIyiG9y2P4wbFYqp3t6zr+9p9eUjFnVndp4P5VM0K
         KlTqHzdUTOYItTSlo54tyj3P++krBrTOcYbe1LjlX4BPBrrsAvEn5dMOR6ikXoMyDRzI
         H9MlRflEgMXjVfUIN8AI6vx+lNYBLjMB+gLFyRtNJaMbQ+DSpM0UJ4LhUmds09gAO+CE
         socoKp4TSHX3hp4S9YL8JXTBKDJVvFy0roawToAiEjXPbcnlcNadr2UdANp7mwtsyDfL
         3Xzg==
X-Gm-Message-State: AOAM530gnHHAwq/aUf+BMgi2JtNxD9KCqALOQ2ijaQgfEWHHiDNMBbga
	CnwblIYd1KIpxTPio2dSMKzvaA==
X-Google-Smtp-Source: ABdhPJysMG9nQY5nRKaoggEUlpAsNT8PkhBZzGqf2H8yi+ZuT+22XWMrZxPx80yF/LxlFHTKRjcDKw==
X-Received: by 2002:a05:600c:214e:: with SMTP id v14mr7342341wml.118.1598449030385;
        Wed, 26 Aug 2020 06:37:10 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id q6sm6059458wma.22.2020.08.26.06.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 06:37:08 -0700 (PDT)
Message-ID: <48a73051d52905fa84dea36a494ccab708ef4369.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH] meta-yocto-bsp: Bump to the v5.8 kernel
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>, Kevin Hao
	 <kexin.hao@windriver.com>
Cc: Yocto Project <yocto@lists.yoctoproject.org>
Date: Wed, 26 Aug 2020 14:37:06 +0100
In-Reply-To: <CADkTA4NSuRDHodH=gOJCs_PHficwOgiVUEg+nLAAJLqqVwTCVw@mail.gmail.com>
References: <20200826061330.30586-1-kexin.hao@windriver.com>
	 <CADkTA4NSuRDHodH=gOJCs_PHficwOgiVUEg+nLAAJLqqVwTCVw@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-08-26 at 08:44 -0400, Bruce Ashfield wrote:
> On Wed, Aug 26, 2020 at 2:22 AM Kevin Hao <kexin.hao@windriver.com>
> wrote:
> > Boot test for all the supported boards. There is a kernel config
> > check warning for beaglebone-yocto, the fix [1] has been sent to
> > kernel-meta for merging.
> > 
> > [1] https://lists.yoctoproject.org/g/linux-yocto/message/8992
> > 
> 
> Thanks Kevin! Most appreciated.
> 
> I'll have that meta data change merged today.

Its timely and very much appreciated! Also merged now as testing was
fine, thanks!

Cheers,

Richard

