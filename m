Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C356E00726; Wed,  8 Mar 2017 15:42:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37ED5E004D2
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 15:42:06 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id v190so5254858pfb.0
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 15:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=x0K/ar140reGFX/mSz3xmyauiB1CqiYCasN6NTzfiaI=;
	b=ehPKDI0DCZFeUrt4h6BKPJ9/HDsuK0fZzgYJrJMjsQu1hGLlxYs+2Ja9U4LHHHJ4rE
	oEhOVTbQUrEgB8qsG/gcqr4u29QBDNOvMsRe5iMzqfjW1u7Bn/kPhhma0WjxBCpuSEW1
	+WC6IOS0xSbQtDV39yMFb0OIudU0K+8aKHlxJmRlSNKIfww10QNbCw1RV1Ev+X7fz1R+
	/g0usbPfqPwA3I9a+8husD9ipLJi68zxVaK+7G/IIBefG3SWmepBiivPgfjdDW6a+/MN
	cpAdTQIlbEqpqLNFcer95yigGHTXF2xUSxPBUKEcyzLr8B/MkW/ogUJF0EHrAxZgADfo
	Tpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=x0K/ar140reGFX/mSz3xmyauiB1CqiYCasN6NTzfiaI=;
	b=IyHIvQpWp9lSS13ILeUheBQKtLHOTbXfDLOIW7I632rt5KUoXNbZg20O0zXPX5fl03
	S6t3sNH1z/brYiQMFju/iwtNb24KBCybJkm0xjcGy4FmaQUDcaYArVoFsZ7WYKWSei21
	Yuv9xDkHVmqr+u0iKOGzWVyEpfryfU9zS1IWk8bYifoBvbyQymvwJ3fblHCINMPA+tfa
	h92ikYsbg6qq0tzHCm4d/RnNSAPA66tFFF5IXafqHgCOtT0EpD57QFfO3TtZbgdU5XGf
	6dZUr3R0vc212h/E97Oq7yH0/cUUx1u+a2gzjzg6Np2MoEwXGPPdxXZNBajDnVRy6QJU
	Kaag==
X-Gm-Message-State: AMke39naHo+e1oUgYHz9QRwuK+1rOuTJ4yoSlFS+yZ4Uyg0rRB6G8j7n13mGUZR3y+ZnQw==
X-Received: by 10.98.149.80 with SMTP id p77mr10331515pfd.56.1489016526699;
	Wed, 08 Mar 2017 15:42:06 -0800 (PST)
Received: from haswell (c-76-102-32-192.hsd1.ca.comcast.net. [76.102.32.192])
	by smtp.gmail.com with ESMTPSA id
	x15sm8210501pgo.56.2017.03.08.15.42.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 15:42:06 -0800 (PST)
Date: Wed, 8 Mar 2017 15:42:00 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Tom Rini <trini@konsulko.com>
Message-ID: <20170308234200.GA24752@haswell>
References: <20170308173147.21841-1-twoerner@gmail.com>
	<20170308232821.GH19897@bill-the-cat>
MIME-Version: 1.0
In-Reply-To: <20170308232821.GH19897@bill-the-cat>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] u-boot-rockchip: fix for binutils-2.28
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
X-List-Received-Date: Wed, 08 Mar 2017 23:42:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 17-03-08 18:28:21, Tom Rini wrote:
> On Wed, Mar 08, 2017 at 12:31:47PM -0500, Trevor Woerner wrote:
> 
> > openembedded-core updated bintuils from 2.27 to 2.28 which causes u-boot to
> > fail to compile:
> > 
> > 	arm-oe-linux-gnueabi-ld.bfd: u-boot: Not enough room for program headers, try linking with -N
> > 
> > Building with -N does fix the issue, so this patch simply adds that flag to
> > the build so it succeeds.
> > 
> > This has been build-tested, as well as run-tested on the firefly.
> > 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> 
> Unless there's an immediate need I would ask holding off on this for a
> bit, I want to track down why this is happening.

perhaps linker map files from 2.27 and 2.28 binutils will help to
understand it

> 
> -- 
> Tom
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

