Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 716F1E00AD7; Sun,  3 Apr 2016 18:39:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01127E008EE
	for <yocto@yoctoproject.org>; Sun,  3 Apr 2016 18:39:05 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id fe3so132806312pab.1
	for <yocto@yoctoproject.org>; Sun, 03 Apr 2016 18:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=06GRXWCd6anTC/gVXwpmfeBwRMQ6w4zW/rwaf/znG1o=;
	b=Rmbd2fmp9oxFLrLn/onxf8peAJTq4xnjEagOKEJQs+9Ql6rQwzVhQojttl/WfZfxVk
	E0cNFTejJs4dM63BifQVbJbwuhAIODf2BXZIFMCazsL9GNPGhivPcO8YwD5KPHTyt9os
	huNyxDRONjvWOo7yg9D9diCGOQqgGnEfANFmak5nuBi5pJS5KrnVFn44EMQy0Zu2dYgw
	6qMp64GlAz9biMNUcqUp56b9kB6JJsewLHsSBPwJqoHvR0CZkNa99D+twBhakPh18cXN
	L54MVDTimrb5cTcb4EyP73pKQiMFH9fdaCHi+KY1giCWypkXFgmCuhJWzwiha1wN8uoc
	URAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=06GRXWCd6anTC/gVXwpmfeBwRMQ6w4zW/rwaf/znG1o=;
	b=Dc0FLczctvtm8nVkXwJdlzHNcDVxFSE7dpVRVudfBQ29UtwRC57jURcQJsnfHkZ7je
	KHwsuglmEIdZuL5fDB0lGVLbe7aHfhlEKrPSQBM71D0Q6hXh8Fcnk+GT7EsJoKzeqy25
	3wab/dQQo9E3eQ75bLG8QY/GXf2rstMJ4ISTMN1RusYrKmQBefpukl8hsjxdSqidlS5I
	wrYSLrBh8peKjbqn2bP0jDiO9H/cFpOw3TznJ9CHYSaxYIu8XlJcGvXLo8iJzoRswDKz
	exSF2slib8+IAdVL+uGBt+vI1Jlp40W31yMfH2+1U1R95TRbTJPRgJn2ZmKENlmwkByB
	MKDg==
X-Gm-Message-State: AD7BkJKW68fjshjt3FBrLd+6AFcPQZojZLuDxHeY9tqBXO4Nh0xhnhclZrRLv5SJjlAtnw==
X-Received: by 10.66.65.228 with SMTP id a4mr49107647pat.4.1459733945461;
	Sun, 03 Apr 2016 18:39:05 -0700 (PDT)
Received: from linux-mkz6 ([209.65.105.133]) by smtp.gmail.com with ESMTPSA id
	p75sm34883232pfi.29.2016.04.03.18.39.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Apr 2016 18:39:04 -0700 (PDT)
Date: Sun, 3 Apr 2016 18:38:56 -0700
From: Trevor Woerner <twoerner@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <20160404013856.GA6212@linux-mkz6>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
MIME-Version: 1.0
In-Reply-To: <20160331152604.GA23623@linux-yxv0>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [meta-raspberry] Raspberry Pi 3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Apr 2016 01:39:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Thanks to everyone for their help!! It looks like I've got something working,
not sure if this is a "solution" or if most would just consider it a
work-around:

1) use Andrei's meta-raspberrypi layer (which selects linux kernel 4.1 by
default)

2) add the following to your local.conf:
	
	SERIAL_CONSOLE_forcevariable = "115200 ttyS0"
	CORE_FREQ = "250"

3) ??

4) profit!!

I've tested with poky building both core-image-x11 and
core-image-full-cmdline.

Best regards,
	Trevor

