Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1309.1579336904533298269
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jan 2020 00:41:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cM93nSaz;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF27E01518; Sat, 18 Jan 2020 00:41:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C816E00EBC
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2020 00:41:42 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id u2so9828078wmc.3
        for <yocto@yoctoproject.org>; Sat, 18 Jan 2020 00:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=5cLqdS2ykwY+s0+3V2oMEkUp6SZNVymfVLLOjhhCFt4=;
        b=cM93nSazA7KdEQdpiGhwL40ntbIwfbmhhE75lTCjYkhLqOozxfcEyRd4g1+8McXMxZ
         /qjhREEWipUIz9+NZ5mx+MfvhQUZhYcgsKMVXR2OH5HI/iv4YsIkX6pIjwqC2mGLIome
         jbGeRunqRaM3YFH1RjSkUi2tr/Ps+Ymtl/ho8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=5cLqdS2ykwY+s0+3V2oMEkUp6SZNVymfVLLOjhhCFt4=;
        b=eHPGJmSSdAYD4LDjnAnuep1a2oDD1h0KP+2bgTBGS+87spPWjM/CR7Lno/x6c+ocnR
         CaRZHKCm8pZ2iOz/I1fgpgHMYvKmE9668abjIPByNo6RAoVILSH4Cxtmgej8yZDmLWHk
         sCbUkqTccdV7nKWuEI6SFnS5NLOUotnSU7OLgQo+PhJbwpK4uOvHt4mohp2NrNkDVVjC
         w2i2Lds371rW0AQ7BfOZstYiyM4a5ePgwtJXImUahPFytWHKdQmQB/t8PWrbgi2cZbKk
         rKihNK+nCAsGQkyfjFW3glxLZSlOgRCWHmm/1VyYBcVWLfQA6u10a/V8q0DXaOd3xuib
         tRcQ==
X-Gm-Message-State: APjAAAWKclIm0PXimOzvUQyHkrRbfCn51fJmTBVT7BKlEolWZLQexitp
	9amGZds+UPQoR/+7z5QQg8wIpQ==
X-Google-Smtp-Source: APXvYqzNF2bukQXWdwrgiOYqQnKmkmOPegJ951hwayyvddEcwMp/7so0YOmMCOLERb9FLonqIbtXkQ==
X-Received: by 2002:a7b:c386:: with SMTP id s6mr8639746wmj.105.1579336901523;
        Sat, 18 Jan 2020 00:41:41 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t25sm12958580wmj.19.2020.01.18.00.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2020 00:41:40 -0800 (PST)
Message-ID: <c87a580e6c5d567266026ffc903e9bf3e6e80d99.camel@linuxfoundation.org>
Subject: Re: [oe] [RFC PATCH] python: remove Python 2 and all supporting classes
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Ross Burton <ross.burton@intel.com>, 
	openembedded-core@lists.openembedded.org
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
Date: Sat, 18 Jan 2020 08:41:39 +0000
In-Reply-To: <20200117141632.3809-1-ross.burton@intel.com>
References: <20200117141632.3809-1-ross.burton@intel.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-01-17 at 14:16 +0000, Ross Burton wrote:
> Python 2 ceased being maintained on the 1st January 2020.  We've
> already
> removed all users of it from oe-core so the final step is to move the
> recipe and supporting classes to meta-python2.
> 
> The following are removed in this commit:
> - python and python-native 2.7.17
> - python-setuptools
> - The classes pythonnative, pythondir, distutils, setuptools
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Thanks Ross. I tested this on the autobuilder, only 'surprise' is meta-
gplv2 fails:

https://autobuilder.yoctoproject.org/typhoon/#/builders/75/builds/1458

(python dependency of mc). Just delete mc from that layer?

Some of the other failures there are from other bits of -next.

Cheers,

Richard

