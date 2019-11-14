Return-Path: <vladimir.molokov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA506E00E3B; Thu, 14 Nov 2019 15:05:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vladimir.molokov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.219.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
	[209.85.219.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DA9CE00E0F
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 15:05:15 -0800 (PST)
Received: by mail-yb1-f177.google.com with SMTP id q7so3292849ybk.4
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 15:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6cjjuxfYJECYHMvn8w9Cq5FPUJt3bm0VSbLYDApNM1E=;
	b=aFtuF7IUliDmsM4eZXoc86vHjF1sP+JwYWjWM92p6shb6tanuudCAqAwjyu6nuSM+J
	zhnU9Xe7rqTv22dlY22oID1Qho2BtBezae7q2cESEADYeqqdoClYdDQRQhcsip7KsIVX
	P7fZIIckyPo6oAFiMh8MHYyRMPmge8+7AFZInlpl/FC7wyp61AX3pZABoYU7FfY1km5v
	+ukmoVApZClIxY21kdQh5JxavvKqgM4d2+3SduQH+t+aoFKFvx5kMLKr67qQDbTBL1Ha
	nnkCdpig+szijEzIAsuhw7K66tt+R3RH2UKRov3fFkrmVAlFrnY48kOykzxHTcHBvAiL
	oMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6cjjuxfYJECYHMvn8w9Cq5FPUJt3bm0VSbLYDApNM1E=;
	b=ACO6tu3K17eYzjaREWzsnqB85l8TvDndR4f/tOaeGoKun+ux0Pj8esoR1H3eOAdotV
	zhJbW6CBSB82qKeRfbTeAyhNvQgZdiG8QWlFPXrzrf54IeHU1UpgXGU6XQGtl3bbdrMS
	6/lipxEB7s/w4oWopjmc5jVv6uarQYltydtgWBP3PlE2rzQvyNNW9VHfDSLuWU9bUkEz
	2MADNw0Ucx2eWFKNO7N8MEMWyiWWdzKlkXcSG+M5OturFzGSJtGJ6cqhrBI2EJE9MBe7
	eSVu9NcihluYPx/NnJbHAX1K4VKRtJHjU514G1KmncLFPNfTXFSHWXCnP9/UTIp2Z1gH
	JcoQ==
X-Gm-Message-State: APjAAAWj+YD8/edOKRiRc6NNINDKwzzb8Z3cuBH6Ow4uzT4ljS0NoPhU
	vbqizUuOpEpfMegQdvmaK9S13Om1VzarTiK3kwqz2efu
X-Google-Smtp-Source: APXvYqy3mPoeFWGDo85hzHKosnXvgrU+6mOFspQjWSdGAN780Ml+2Tv9LT1EXk8ERVxVuw3+v8xN7iiUuUoltYbYHoE=
X-Received: by 2002:a25:cc91:: with SMTP id l139mr9803719ybf.271.1573772714198;
	Thu, 14 Nov 2019 15:05:14 -0800 (PST)
MIME-Version: 1.0
References: <CAE2LOAyv6+=fpMXEGBrA9nv4No9EaXT3HFffuJTd0zn8+cAkJg@mail.gmail.com>
	<CAE2LOAzK316nQE_BU9HvqAX4kNbVjhJcDn9ZqP2itLvzrwteKQ@mail.gmail.com>
	<7077004d7c363f729d9fd23ed6b2095592406d6c.camel@gmail.com>
	<CAE2LOAybX7ThQosx6D6g+V3WJcpfF8n4M8D_QXJxfvDV9trBKA@mail.gmail.com>
	<CAMKF1srbgzwxZmQiHhKSnPSdUxNKZEDtE_MfYyOHBwaNGvSAQg@mail.gmail.com>
	<CAE2LOAwsSwEebW1UcJgxqG79cv3De6cbTvqRw66zUeAwTGHpzQ@mail.gmail.com>
	<CAMKF1sr6RbqCK2oMM7f34ZJe9_DjxdDMXN-a4wqQK4KrYnwEmg@mail.gmail.com>
In-Reply-To: <CAMKF1sr6RbqCK2oMM7f34ZJe9_DjxdDMXN-a4wqQK4KrYnwEmg@mail.gmail.com>
From: Vladimir Molokov <vladimir.molokov@gmail.com>
Date: Fri, 15 Nov 2019 00:05:03 +0100
Message-ID: <CAE2LOAzZhO63A=FsxAC9EPA2561wXAo9J5NnkUr6xLEp1oYHBA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: puzzle: simple recipe gets image dependencies
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
X-List-Received-Date: Thu, 14 Nov 2019 23:05:15 -0000
Content-Type: text/plain; charset="UTF-8"

> Possible that attr dependencies traverse down to kernel

So it's attr.. I wonder how it gets those dependencies

"attr.do_build" -> "linux-yocto.do_deploy"
"attr.do_build" -> "linux-yocto.do_package_write_ipk"

Recipe .inc summary says "Utilities for manipulating filesystem
extended attributes"
And no visible deps on kernel..

