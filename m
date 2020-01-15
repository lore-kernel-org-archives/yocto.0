Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5454.1579085708921675345
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 02:55:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VgBN/ZaE;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B04DE0152F; Wed, 15 Jan 2020 02:55:08 -0800 (PST)
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
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22B00E0142F
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2020 02:55:05 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id f129so17302494wmf.2
        for <yocto@yoctoproject.org>; Wed, 15 Jan 2020 02:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=jN33OHVGPrNXT4Ue5xZ1gAq9TNxjRV7M051/KP9AAb4=;
        b=VgBN/ZaE/ubQHQYW+Ri87dnngHrm5ysL/8kugW48x0JimvbM9IcQZv4xckC94DU9H/
         ZeqBMEMAl10YcJLHKVQonuXUmbLyz0il3XTqBXfrLfAaSxtD2RvZ77yUz476dFVGF/aO
         H+IkKpI61TmBGJlFF8tvsbB4Z3JyAUCSK5XUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=jN33OHVGPrNXT4Ue5xZ1gAq9TNxjRV7M051/KP9AAb4=;
        b=WafQoqG6sigLJyUEWzUZcNmaLfYStPWzV3AUhVrT7M3AWa0Oj5ZffkHx7si5cVikJq
         7F8DHddsLX4g0szg638EyGX7e/7gX3Ma8CYpkFjQ9ln58yuMBtjdnVA0BS6q7tQQWoqy
         CKbv8lSRDtgCVRNjsT7w71J4mkF5vm9nvLriQvqIyH+QmfrlivctcH/J/e7SJeBgkgVV
         O0e6T4rAyZdsFn/GJFrDZPObuEd8UBZ4/TxQplq73j7hXhxdeNiN2zT83PkbiJZlC7t5
         Povhesxx60vu+BblqDlRY+jHwMaOgwvhaK4QWZWTzo5fWKkKVzotPPaRcyDKEH843GAf
         Xx2Q==
X-Gm-Message-State: APjAAAVYvkZZFzUocK1dTjwNqozRrXfQBax4vkKjsqjrIHWlSixVLoxt
	r8BHsxtgsKx7TdMbjOY8Oi9lvg==
X-Google-Smtp-Source: APXvYqyhfWMwPsJtQj5vLIYmRiUQOs7sbrEgdvAe/N1HUvsdCdQi1BJyOfZw0AVY3eCezF2Bp2cIfg==
X-Received: by 2002:a1c:3d07:: with SMTP id k7mr34699397wma.79.1579085704287;
        Wed, 15 Jan 2020 02:55:04 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id m7sm24270979wrr.40.2020.01.15.02.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 02:55:03 -0800 (PST)
Message-ID: <6b85b0bb993c046cbe31a34ea181af209551f18e.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v2 1/3] config: don't run meta-intel in qemu yet
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	 <yocto@yoctoproject.org>, "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 15 Jan 2020 10:55:01 +0000
In-Reply-To: <e9cbfad1ed3b56ff6f12a2825c4043ef4091317e.camel@intel.com>
References: <20191216174154.13996-1-ross.burton@intel.com>
	 <e9cbfad1ed3b56ff6f12a2825c4043ef4091317e.camel@intel.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-01-15 at 06:50 +0000, Mittal, Anuj wrote:
> Can this be merged in zeus/warrior too please?

I've merged to zeus but this code isn't in warrior at all...

Cheers,

Richard

