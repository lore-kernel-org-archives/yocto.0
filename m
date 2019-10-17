Return-Path: <karthik.poduval@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7582E00D9D; Wed, 16 Oct 2019 19:45:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (karthik.poduval[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
	[209.85.217.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85EDDE0098A
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 19:45:52 -0700 (PDT)
Received: by mail-vs1-f67.google.com with SMTP id e19so542772vsb.12
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 19:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rqmgZEKaHDRRwlfx1b+e08/9JMjM7LVRrWgHKGSkf6k=;
	b=XK0tUdnWOxlqpUtf+h0NYXpLBbkk+oKO9rOU43w+lK7G71NoimhH6Cw4mUXlE3B+7c
	El+j2m12z1yEJVA25GjhVsOajVnOkGeLh22VaZKxYVh7Y1RT21zsN9GpvTVEsVYr4CK3
	mUpwA2r/XPkPd4DUEtRYfYRgSFLbYqVDlNX9Yyt5Yx+X2q3EnfCZ/l5UrXdmz3TOoGQd
	CJVQgS47VJqUxMoNt/lb7SeSNSDJ2lgRzs9hZgleLDesgmeDYFf+PcfBSqyiQEwknzx7
	VvhC6SyHRNT+xkRt251wp6rES7ZDr+zmIXG4qPIgtyo9syJXgb46xIJhB7iwXG0H2j8U
	wM4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rqmgZEKaHDRRwlfx1b+e08/9JMjM7LVRrWgHKGSkf6k=;
	b=VgUR/tFSpPugWaG0j3zXxnUDTQ2jFTEmA228iJKQ6+qRmNb7ItMJ4RpddCnH+RC0rt
	7KbOP8DXDHLUreeNnXPun3vTFq0Ntq/Vzcp6o/0dLeSSkruoZXHcY/cFQQltIYk1x3RB
	m0rdOKsJifItydcJbXL1mpPrpF5jHUf9EnM38nVsT7WBGm1Jz4sKJR3sy+p6BDQDtlF4
	XkdDQFekkSKKuExhKRoNdsEHgYMrr/aLxu9/llvkQflSdFjqL2nbw/5YseI6IqW4e7GS
	uB4E/uM7gy9/2NjDVaGq8UnkFOkVOkoWk8FTnbvp8VX3P2f5fk4mbDAa5wbdwpu90qLI
	FGAg==
X-Gm-Message-State: APjAAAXM4kQEKV+3UMKFGgawl+nvL3shXp+kFxbbJk4InfLrjRpAvQY4
	jk2R/HcF8CayRLbA3ZY43dlcHm6IwQx0y+w5JYT4vFZRGjo=
X-Google-Smtp-Source: APXvYqxMk8uDoFVPNz34cwuNs7c93Tz9fpLzkXt2X25MNU0jrKSU1Dp5+s/m3lNFX/TjLFYEf3RpQ9jpqFoKq+pLHLw=
X-Received: by 2002:a05:6102:2403:: with SMTP id
	j3mr603102vsi.221.1571280351038; 
	Wed, 16 Oct 2019 19:45:51 -0700 (PDT)
MIME-Version: 1.0
From: karthik poduval <karthik.poduval@gmail.com>
Date: Wed, 16 Oct 2019 19:45:40 -0700
Message-ID: <CAFP0Ok-0adUp7F+eixAM5+cNNWWwoOJDQJAkC-hV7mdb_PqbcA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: trouble with rootfs generation with mxnet package
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
X-List-Received-Date: Thu, 17 Oct 2019 02:45:54 -0000
Content-Type: text/plain; charset="UTF-8"

Hi All,

I am attempting to compile mxnet for aarch64 on yocto rev 2.6(thud).

Here is my recipe.
https://pastebin.com/ibsBWsL9

The recipe builds fine however during rootfs creation (with package
manager set to deb) it gives the following error.

do_rootfs: Unable to install packages.
Package mxnet is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

E: Package 'mxnet' has no installation candidate

Upon looking at the
build/tmp/work/aarch64-xilinx-linux/mxnet/1.5.0-r0/packages-split
directory
I find that the mxnet sub directory is empty, mxnet-dev,
mxnet-staticdev  have libmxnet.so and libmxnet.a respectively under
usr/lib.

Any help would be appreciated.

Thanks in advance.

-- 
Regards,
Karthik Poduval

