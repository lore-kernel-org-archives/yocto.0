Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5914.1574510496946336984
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Nov 2019 04:01:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OO0iVoIC;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF630E00E39; Sat, 23 Nov 2019 04:01:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D56AE00DFB
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2019 04:01:36 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id n188so8695251wme.1
        for <yocto@yoctoproject.org>; Sat, 23 Nov 2019 04:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=+VhTFxBahCqTvFcIBOl5a0LohUTyZGoTa0JP55B4yTI=;
        b=OO0iVoICXnEzHYcfFXlnPmfGasM5uy2KgdTQflIXmEHJKzp6jifzHe0YNRQLrQyEF8
         uHAMJZch4NDRrropn+/1P/ZDGz54qs8oZsOO83xvk1lF3Q0erV/AgofjfoNs30/QvkEQ
         9xehaXWYCMEuwneG4kAQKzgCJ5Wzs7lwUcEfs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=+VhTFxBahCqTvFcIBOl5a0LohUTyZGoTa0JP55B4yTI=;
        b=evFnQrn/CxR0ysdTh/YO0OGcrO3+lRYm7EIk9NcrcjxJz0VoyWogW7xScuEMj2/Fz5
         foJueCrp+y0Fg0SjWwfpuBa5lVbl634seD9A7MQj4Ri+4DMtKlmBowvg9nj6npzHVrJs
         CjTMtFLfuSlGLhq0KBw+151U9OK4J47b6HwfGMs8ehkjZnrmLVU9PKCyMC+R9pB7E0Y2
         x0VTMcr90RlrCKHkPgHJx2YSXtpazzLPTT+4C1OVmqqavI+ln4zQX3uagSwvt3WCyJUZ
         XO0AHrdCfnwaGxH5uXfukySEkCHc9uuf33O7+y2ijgLogtmAx8AgBUtCh2eNk97s3UpZ
         UIiQ==
X-Gm-Message-State: APjAAAX5W3ZyVZgjK+HirTM/XnP1PmQSdUUgf8worxEwBXb8Xas+752t
	vD8Tfcny4s7Pg3dvd5o2f2Hvfg==
X-Google-Smtp-Source: APXvYqzBWZdA+ZPqICIstSy1a6ehx2uhzGEC6g3YL6QQWTFNpAWqJoTPndXfYNWAgGegBC1DG9DUJg==
X-Received: by 2002:a1c:6588:: with SMTP id z130mr19233164wmb.87.1574510495399;
        Sat, 23 Nov 2019 04:01:35 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g21sm1152209wrb.48.2019.11.23.04.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Nov 2019 04:01:34 -0800 (PST)
Message-ID: <a126a3ecf7d93e638dc650ef92dfc2fdcebd221b.camel@linuxfoundation.org>
Subject: Re: [yocto] repost: how to create a SPDX "notice file" from a build?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: akuster808 <akuster808@gmail.com>, "rpjday@crashcourse.ca"
	 <rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Date: Sat, 23 Nov 2019 12:01:33 +0000
In-Reply-To: <02bee54a-3a3b-aac2-812d-50b5c395aaa3@gmail.com>
References: <alpine.LFD.2.21.1911220952340.7502@localhost.localdomain>
	 <alpine.LFD.2.21.1911221159250.14879@localhost.localdomain>
	 <02bee54a-3a3b-aac2-812d-50b5c395aaa3@gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-11-22 at 09:59 -0800, akuster808 wrote:
> 
> 
> On 11/22/19 9:03 AM, rpjday@crashcourse.ca wrote:
> > On Fri, 22 Nov 2019, Robert P. J. Day wrote:
> > 
> > 
> > /////////// end /////////
> > 
> >   i have absolutely no idea what to think of this, and am open to
> > suggestions. does anyone have a working scenario to simply
> > demonstrate
> > the usage of spdx.bbclass?
>  
> Would you mind opening a Yocto defect.

That code hasn't been touched in a while and needs some serious
attention. The underlying tools and processes have changed so much it
may be a case of starting again and we should perhaps consider removing
that class...

Cheers,

Richard

