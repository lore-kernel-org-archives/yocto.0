Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.23999.1581350016576123713
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 07:53:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QzG1pEfj;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB9E5E01426; Mon, 10 Feb 2020 07:53:35 -0800 (PST)
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
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD404E00C7C
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 07:53:34 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id t23so889164wmi.1
        for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 07:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=pPkAeuBucuLZacA92jYb1ZyZz7NydGDCRmPmznJuk18=;
        b=QzG1pEfj/qMBPfGxMTeu+QYclL//BidMAqQgheSPX0HlIgsUqpbrQY183Fqr0k9wAf
         O+0rAYlpcvaq2Amz3cWxOyS2ZSmw6gqJC/ilTu6eeDEx2ReUxiJZLIKXNHuZ07iCdr2R
         U+GTan1m7cRyAPWxcC0WvejCmzloRrwROx9fY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=pPkAeuBucuLZacA92jYb1ZyZz7NydGDCRmPmznJuk18=;
        b=FNtBoMOJGZ1SjOZTOsDKqn1FDmzMSIAFUHEkLwj8IHehaHJ/EaT6ABPX5HUVmE1L4C
         tGLjzFvib2oUy3a8QwM2FJ3U+zSW/KXl6hFJb7HW8Arr8q4B9m9QByqN60tI/zIpy1W8
         LpQ6Ic64Tr/5CI5OG/+fsU7rToT0ldD4CWD1kz9lxnxdJfeYa8oq3cWIjihpi/N8ZBvD
         xNFFLLrSL3t9FjYnUF6gsDudKTJ1X25gHPJMmxNxrGhPvAyU3kFDCXb86MDW/8mDCA4x
         tjLVzc7SoqDGgB1mhRwcMt/x7CIy/8iEEoXUetXoQJ2CCXiXXuuyb2UqsXnkq6EnxEbm
         NrYg==
X-Gm-Message-State: APjAAAVi1m8ZpQy7b5f3PIrhq3YFM1utT8V7/DzdcXltOd9RRhqG3i5g
	LmJzSYOvBr/bPeiqWR878nB58/QRHCw=
X-Google-Smtp-Source: APXvYqww4Id4dcSwAyEF7pCL4MRA6rO0l3PlBe6JXCKLEcVX8GHsTpoQ6YJx3OxTCMrYppjDUJBGug==
X-Received: by 2002:a05:600c:1007:: with SMTP id c7mr15818777wmc.158.1581350013739;
        Mon, 10 Feb 2020 07:53:33 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id i4sm1067190wmd.23.2020.02.10.07.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 07:53:33 -0800 (PST)
Message-ID: <0cf1df98d8e32eadd7d5c574535b944222e68507.camel@linuxfoundation.org>
Subject: Re: [yocto] more nitpicky pedantry: question about DEFAULT_PREFERENCE
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Mon, 10 Feb 2020 15:53:31 +0000
In-Reply-To: <alpine.LFD.2.21.2002081344270.2158836@localhost.localdomain>
References: <15F180F049AC594A.27010@lists.yoctoproject.org>
	 <alpine.LFD.2.21.2002081344270.2158836@localhost.localdomain>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2020-02-08 at 13:48 -0500, rpjday@crashcourse.ca wrote:
> On Sat, 8 Feb 2020, rpjday@crashcourse.ca wrote:
> ... snip ...
> > which seems odd as there don't appear to be any other recipes that
> > provide pkgconfig, and AIUI, the default provider for any recipe is
> > the recipe with *exactly* the same name as the target -- in this
> > case,
> > "pkgconfig".
> ...
> 
>   also wanted to clarify, while the default provider of a dependency
> is the recipe with *exactly* that name, i'm assuming (i think i
> remember this from somewhere) that if you have a number of recipes
> that all provide, say, "virtual/kernel", and you have an explicit
> dependency of "virtual/kernel", you *must* supply a
> 
>   PREFERRED_PROVIDER_virtual/kernel = ...
> 
> line, yes? as in, there's no weird processing to figure out which
> recipe you'll be arbitrarily handed among the several that could be
> used.

The resolution code is deterministic (i.e. it might sort them) but
there is no specific default provider, no.

Cheers,

Richard

