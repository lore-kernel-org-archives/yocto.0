Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web08.7218.1613657029689183450
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 06:03:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XA+9k7Z7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id v1so3108820wrd.6
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 06:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=P9uq6QFf/kTDIP+WoSYWwQBBBk08zD8nAdXcx845lrA=;
        b=XA+9k7Z7B5Has7Y2QAAo2+gkBD4Wp0U5hREQmXZ7qTgS3FTt8c9modBunZVERkKv4q
         fFyQJCwnhgu+e/dqxTBI3uMMhGRI3OB/Jy66hBIuSS4DX5wjRdEckgL8gyOT69+fuFdG
         tZ8JN415bYmW9D/4lPQ0rct5F4Ha0CUUcR3aA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=P9uq6QFf/kTDIP+WoSYWwQBBBk08zD8nAdXcx845lrA=;
        b=QCAPzhPWpp15spV3jQhzTlbs28dS1ZxQFJ7x+BUxopiWP659FNWhLrXO2l5sRteW3T
         ehDZuNZfimpkzee0KbSOoOSx0H3CjAtiEkVfE17BM98vxzSAZLh2zxoh5rtfdnT/aDWw
         VJnnoRGeATw1P6yTMGuL0RuoL/zhn4MTpV10WV8Dw0+y3Z0Wy8STNWGeimsL12CxIDl6
         LPhSd/qQ6jVyKo2RAmt9kKYqHzbVVDPp4Poz0+iG28EAc7cwIFanCiJbxvO+YLi00Udu
         +a8xuyH22YanK2YpCXrDYY91dt8xJNCQUk4g1tCf8DZuKtDR7erL99WtX/CbOi6fjnXD
         comg==
X-Gm-Message-State: AOAM5326Pj4cpFoXA04VPcb6rZIpGx31Ii5Ve+GAz35N2QO3QKF8vZ8P
	reSP8bRcUc+EmOe7gm+Q7Hi/4A==
X-Google-Smtp-Source: ABdhPJydC+ZrBX4GS99GoTJasrtD3kDOjbc9wLxnPmC6IT2yXpMjur0LQIlTF7aKIhgcUe+hMISNxQ==
X-Received: by 2002:adf:d088:: with SMTP id y8mr2931010wrh.101.1613657028155;
        Thu, 18 Feb 2021 06:03:48 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:7504:d16b:192:2652? ([2001:8b0:aba:5f3c:7504:d16b:192:2652])
        by smtp.gmail.com with ESMTPSA id s14sm9238136wrw.88.2021.02.18.06.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 06:03:47 -0800 (PST)
Message-ID: <25b42e0ef16cfed0d70ce2bd47ff971102a93a8b.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] [yocto] QA notification for completed autobuilder build (yocto-3.2.2.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, Pokybuild User
	 <pokybuild@centos8-ty-1.yocto.io>
Cc: yocto@lists.yoctoproject.org, "Tummalapalli, Vineela"
	 <vineela.tummalapalli@intel.com>, Michael Halstead
	 <mhalstead@linuxfoundation.org>
Date: Thu, 18 Feb 2021 14:03:44 +0000
In-Reply-To: <CA+4=imb+CNt9fZgUOMY8f+4Kcat+=rUAqGt5pbHDRZxQ-7M5CQ@mail.gmail.com>
References: <20210216174346.29A0D2A0FA6@centos8-ty-1.yocto.io>
	 <CA+4=imb+CNt9fZgUOMY8f+4Kcat+=rUAqGt5pbHDRZxQ-7M5CQ@mail.gmail.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-02-18 at 14:58 +0100, Yann Dirson wrote:
> 
> 
> Le mar. 16 févr. 2021 à 18:43, Pokybuild User <pokybuild@centos8-ty-1.yocto.io> a écrit :
> > 
> > Build hash information: 
> > 
> > bitbake: 0a3bf681530bd63fc0036ca81ef868ab53fde56c
> > meta-arm: aa63e31b6edb5197764c21434219050ab51f0fbd
> > meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
> > meta-intel: 1d866c58534eb1d317b7a674c6e6c57ab9594fb0
> > meta-kernel: f793168bd19af3d8c5a260dd35f387ed9a31794b
> > meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
> > oecore: ebaaee50cb3ac75112827f935c48affaf622ce7f
> > poky: d5d6286a66f46f4523e35e0e3f20cd7396195fdc
> > 
> 
> Is it expected that the noted meta-arm sha1 is on branch "master" and not "gatesgarth" ?

Not expected but we worked it out. There is a patch from Ross on
this list which fixes the issue in yocto-autobuilder2. For the 
purposes of the release I'm thinking we should rerun the meta-arm 
tests and swap in the gatesgarth revision.

Copying Vineela/Michael so they know about the issue.

Cheers,

Richard




