Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7243BE00B63; Sun, 18 Jun 2017 21:30:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFAFE00AF0
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 21:30:56 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id b10so7205576uaa.2
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 21:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1YtPmY+fMmkaLeHp8XdnisnderkI7Msy7nXLeXKRGs8=;
	b=IBZIBzS1sDb70O5HnfpF3JpAdun0Arf50w+he/aEaUwGe1hFWyPIEFjdYtcrEhhXZo
	9rxHxjxS855aDmSdXr5nO3Wbteai5EAgnfwH1Ru7xQx5IcG3l8BAfKjbKfQOdaAyyirx
	nlSmyinUzsudz+yeJEmdpudjbKxs5+OeaQqy8iQNMOZV37xXPOAjquev48KbLefKczzC
	PoELp6JYgD2b2ALQOiccxMTzuIx2kmJg2tLlTuGBWfYgL64kg+WJ8SkXLvbcv9Wi+lBG
	mSGXQdnhR0rziuYQRssk7XGNd/N6P/4QN75MOCZ0eVxUxphcWW9zVHpyQEYlQVewPY29
	feag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1YtPmY+fMmkaLeHp8XdnisnderkI7Msy7nXLeXKRGs8=;
	b=szUy/oAN7laZyP/47+9q8VLjNxYMsoG/N/p7M0/SumMx9W7Ht9KEDc1X/KdZBKN1lE
	3hHpoRedUp7oVbObWA+odjlx9LkrhkBA+i9OfQcd851CyL1MJzkpOoJdc+3uaJWoeOry
	RpBuUAFEyWB0HWMrBqpuSAftT+dazS7FJ4Sec/9hp7QFVF12WLbput0NVqMbP7krC9Zl
	uOWnpEYeDereghiDN6EOQJDKx958WiILeq2lqYU2U1JmUYYGo1pKJGAEPwu9UXd8oq0X
	q8UZ9OvNaidWJr6zSeuywdYc8Szgc1xxl/0FC5BIBvf6tAUZSLyUwwfZOLzYNULX8BHf
	HhXA==
X-Gm-Message-State: AKS2vOyu3c9iKjiOOl5WXXnz3y9bcDYHPa60+Wi9j4Fu8rd13cOfiynQ
	0CDFfN3zV6T5eoBYtrEvYsl3zUozBQ==
X-Received: by 10.176.4.50 with SMTP id 47mr7327382uav.151.1497846655677; Sun,
	18 Jun 2017 21:30:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Sun, 18 Jun 2017 21:30:55 -0700 (PDT)
In-Reply-To: <0df1a90e507a8133e60f9a6e50c61672d4ab0a6c.1497646644.git.drew.moseley@mender.io>
References: <cover.1497646644.git.drew.moseley@mender.io>
	<0df1a90e507a8133e60f9a6e50c61672d4ab0a6c.1497646644.git.drew.moseley@mender.io>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 19 Jun 2017 00:30:55 -0400
Message-ID: <CAHUNapSfUP92PKmvs469Qq9bdy2NpxqE=Xq3xr7X3ZJsOKK7yg@mail.gmail.com>
To: drew.moseley@mender.io
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][RFC PATCH 2/3] chip: Build sunxi-tools-native.
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
X-List-Received-Date: Mon, 19 Jun 2017 04:30:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 16, 2017 at 5:15 PM,  <drew.moseley@mender.io> wrote:
> Add LAYERDEPENDS on meta-sunxi and add the sunxi-tools-native
> pacakage to EXTRA_IMAGEDEPENDS.


meta-chip's README should also indicate this dependency.

