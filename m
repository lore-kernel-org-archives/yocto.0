Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.39225.1597652151727208598
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 01:15:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AHprVNju;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 184so13149271wmb.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Aug 2020 01:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=e/TrfYAti3m+fvfOV+PvRfT78indZgEC5QjWfaY5s7E=;
        b=AHprVNjurChDg8hkunCU0e1DWhSHonTST8R1u8fCwgZnMQYAzFcXD6l3g4pi63kOz0
         +rd/cvS00lCF6t63TlzwITz6yXQhWKfkuzKFrDaoXPoj/8DmOdle/xaRrm/MgwJlAnvi
         R2m3HuUwD/hQPJdSHoxHYp9GDT6st7JHZEYMA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=e/TrfYAti3m+fvfOV+PvRfT78indZgEC5QjWfaY5s7E=;
        b=eR8YkCO7von4NXA5iCzFSHeN8Kup12mpuWhWtjQDK2eZUqVldIflaLJ2n12l6d/mh6
         faqmXnyIBUuZSvFxtaY4Z4mr+U/tOPCcIYB3TwwL1EZHIUv1ja80H0xfBWReTc0CyvIu
         3WN2J7q1v805KY9NhWnAvSlosrzcFr6jpGmIdQ5xP0oI1zdW5yD5VaRkoYJrT7JEasyk
         HtSDW7mJFj/pPJXDepgiHcOjcsHpvor7O9YysVfo9B2Xn50MQKLDggbSoAd70L6iM+nb
         ngROHOTpCDh3dfOPZ0UOMoK2VlKLu5kkzX/wTbZKB+g3sBJ13ZCgeojysKN6Tc9yIqMB
         T81g==
X-Gm-Message-State: AOAM533bP3GLpSBaUGKDO96pwy3x1OgJAZolLRWeDYtHdDbTZz7cwjWh
	AsrHZVL6G/L2hvv40cYK3gMqBg==
X-Google-Smtp-Source: ABdhPJxqTaMi7TrsC3XR/AYxfDEBvKJzjMaJ6r/W+82RHVBeNuCSK4lfPhb89dluevJoGXm91zJQHg==
X-Received: by 2002:a1c:2646:: with SMTP id m67mr14137801wmm.137.1597652150223;
        Mon, 17 Aug 2020 01:15:50 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 7.e.3.0.f.1.f.7.3.a.7.d.2.4.9.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (7.e.3.0.f.1.f.7.3.a.7.d.2.4.9.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:b942:d7a3:7f1f:3e7])
        by smtp.gmail.com with ESMTPSA id q7sm30245116wra.56.2020.08.17.01.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 01:15:49 -0700 (PDT)
Message-ID: <053d4fb5221cbdf217ff9121eb79c04b2da78a66.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.0.4.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, Sangeeta Jain
	 <sangeeta.jain@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "akuster808@gmail.com"
 <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Date: Mon, 17 Aug 2020 09:15:48 +0100
In-Reply-To: <CAGAf8LzTzRfuSpJrBGJWdhLh8iihG=4vrnwd5vo4wgwgZ45HCw@mail.gmail.com>
References: <20200815050617.E1710247EA@centos7-ty-4.yocto.io>
	 <BYAPR11MB3624C7C679599BA7EB0070A6E35F0@BYAPR11MB3624.namprd11.prod.outlook.com>
	 <CAGAf8LzTzRfuSpJrBGJWdhLh8iihG=4vrnwd5vo4wgwgZ45HCw@mail.gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-08-17 at 09:48 +0200, Zoran Stojsavljevic wrote:
> > Intel and WR YP QA is planning for QA execution for YP
> > build yocto-3.0.3.rc2.
> 
> With all due respect... INTEL part I'll drop out. ;-)
> 
> Better to keep YOCTO as an Open Source project without
> mentioning ECO systems financing it... Correct?!
> 
> YOCTO is an (Force Major context) Open Source project... Isn't it?!

Yocto Project is an open source project and it accepts contributions to
both code and in other work like QA from anyone. The QA process is
publicly documented, publicly announced and anyone can help with
ensuring our releases are up to the quality expected of us.

It is perfectly reasonable that companies stepping forward like this to
do work can refer to themselves by name.

Cheers,

Richard



