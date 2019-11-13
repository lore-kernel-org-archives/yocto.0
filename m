Return-Path: <vladimir.molokov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA24EE00E2F; Wed, 13 Nov 2019 15:42:04 -0800 (PST)
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
	*      [209.85.161.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f48.google.com (mail-yw1-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B24DEE00D86
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 15:42:03 -0800 (PST)
Received: by mail-yw1-f48.google.com with SMTP id d80so1253331ywa.6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 15:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sPxofHEiOyKNyDc2YdtxVQhPz41BuQ6MCKGL9UoDSC0=;
	b=h0fd9dXsWErhZrbmZ5YF5NIzh/hKpHEyPnuMbtzSDkZjwN3vBbJ4St552AQA2NvmXW
	fIGPvZB+wbfIi4RsThG38RGeUxeYz/4EgVfWRj9Zs3999cVOGVyDUN/XcXo5xnyURqZR
	Qfb+nlJihhA5PJSb5EMctPmgW8Fkst92b5d9ekxbvKyJY/rhRtBVAWwohcg1I3nXsDGt
	faDQ+6JwR+vR/osgO4s/GC5pe6YekCkm16FTsMWzlShCcUjuB+euVAleFbTPEjnQjCEx
	utg2L3676Iu4/Dj+Nt4rSIMXd30M95KTSaB519BIhLeDLLllTKkMBR9rq362ke0yxb1m
	jXPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sPxofHEiOyKNyDc2YdtxVQhPz41BuQ6MCKGL9UoDSC0=;
	b=uTzAnWmdLUJSFbpNcIWzm8l1guU/KdJFHelMpkc2QqLfMeprOqowQlAZvqqFysqeRo
	ygJBVifAfR1xw1x8X2PXBDgrZ+0C5nepWWUb63zxNjmjSXnbZEczBBmo6V1On7DN9uTk
	1Ba+PVRGM0g9b/TrTzu4jKOmnAnPXeSexOawwo2FVhXGYk1pmP5fPU7x9YcvipiQW6F9
	fKBdDliGcBWJFxwUA8ojrgkZmhUUv+zr8x4y4Srj58yoyffn5JneWbjW4YlIMtslw7w+
	Sa59sJba4VrONSJ0RX6mhFmWnZdsdOLr0ZchQfsjO8qUUlKF+ijT4zpR9COYpLYQuDZM
	SKJQ==
X-Gm-Message-State: APjAAAXIk3IGTYFzRBsa2jNI9GpDqLiG82MhhDFQPdvboq0pv3jaocxy
	o8M1yEgVaIQrOvrdvPWFX5m8IhrKnPXx6q/NEqGxhx5+
X-Google-Smtp-Source: APXvYqxQffkywkKXKg/iCPhKEqV+qzfbsOfx2ctT87+sfABt5+wwJBUvPqHJdWQn/thg6pL6wme5M4aVja+4kOeFF6k=
X-Received: by 2002:a81:9144:: with SMTP id i65mr4017247ywg.173.1573688522179; 
	Wed, 13 Nov 2019 15:42:02 -0800 (PST)
MIME-Version: 1.0
References: <CAE2LOAyv6+=fpMXEGBrA9nv4No9EaXT3HFffuJTd0zn8+cAkJg@mail.gmail.com>
	<CAE2LOAzK316nQE_BU9HvqAX4kNbVjhJcDn9ZqP2itLvzrwteKQ@mail.gmail.com>
	<7077004d7c363f729d9fd23ed6b2095592406d6c.camel@gmail.com>
	<CAE2LOAybX7ThQosx6D6g+V3WJcpfF8n4M8D_QXJxfvDV9trBKA@mail.gmail.com>
	<CAMKF1srbgzwxZmQiHhKSnPSdUxNKZEDtE_MfYyOHBwaNGvSAQg@mail.gmail.com>
In-Reply-To: <CAMKF1srbgzwxZmQiHhKSnPSdUxNKZEDtE_MfYyOHBwaNGvSAQg@mail.gmail.com>
From: Vladimir Molokov <vladimir.molokov@gmail.com>
Date: Thu, 14 Nov 2019 00:41:49 +0100
Message-ID: <CAE2LOAwsSwEebW1UcJgxqG79cv3De6cbTvqRw66zUeAwTGHpzQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Nov 2019 23:42:04 -0000
Content-Type: text/plain; charset="UTF-8"

thank you for your answer!

when I comment out DEPENDS = "attr" line in "example" recipe
then there is no "bad-example" dependency:
https://gitlab.com/morokov/build/raw/master/task-depends-without-attr.dot

> Alright, so you have initramfs enabled it seems. Which means kernel
> will first try to build designated
> initramfs image which in your case is
>
> "linux-yocto.do_bundle_initramfs" -> "core-image-minimal.do_image_complete"
>
> and then core-image-minimal includes bad-example
>
> "core-image-minimal.do_image_complete" -> "bad-example.do_populate_sysroot"
>
> and example does ask kernel to be deployed
>
> "example.do_build" -> "linux-yocto.do_deploy"
>
>
> so that completes the chain.

"example" is just a simple recipe, it doesn't inherit image class
it doesn't even belong to any image, just standalone recipe.
I don't quite get the logic around initramfs
why does it add those dependencies to "example" recipe?
it doesn't if "attr" is commented out.

