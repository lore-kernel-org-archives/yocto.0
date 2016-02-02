Return-Path: <todd.efflam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 996DDE00C18; Tue,  2 Feb 2016 11:03:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (todd.efflam[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32BC1E00838
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 11:03:40 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id n1so104383364vkb.3
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 11:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XxZ1YHvM0jEq8qxQ9juKutu/lZi5YrQXrvLF4M16IxA=;
	b=vzsbh81EugX4JBEB9nh+xJgrcw9YGZ5sf4SZgfOx4e7j79yYExQA/aY4uOypBbJgln
	2WzNh5HBhhVZHThFsRs5zVmYjWFodapoGfJQ0/WyPNZcKn9UC1kv00qoBlo7fM8ZeMd9
	me90k+209LCBGobrUSAjPEm2klktb+OoMYbfV+Ox8Ub3s1PzZ83jj++F0GaTJz5zSU4J
	AzuHTPVRIfqr3VzU3YWi7hWHtwVYRNLYdTf5E7o4cGybHU3XYvxJQHvK26SAaJX4Jcgn
	ZpoccMEVtNjG/ZdHmb0ek48QJJ5EWi2pKZwGVHKfeOEcGJv0sXz3O12Jn6GWKeOb0p61
	RYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=XxZ1YHvM0jEq8qxQ9juKutu/lZi5YrQXrvLF4M16IxA=;
	b=VdvRCGNzyf+bM/dWqgoMh3DQESJdQKhicaE90qIpMQ3xWViH6HyqWELarOJ2Qv2SUp
	X4+ZyiJWzDbaycZEkpq66Tmh6Qv76xhslro9oJmBHRg6yjbqFICpHxLPzhVLdgviEZKy
	oJaFc95U7AygYbF4eCywR2ZiAwegnLhFSq9keXa6SI5/SsN5ospbCpptzuaEJMg3cXqU
	92AqlzB/lkRkwAqj/Hgy38O3d/H1vkMc8gfI8fTxHzQmOdNzIJmEzImMFqHqJ5FDz9a3
	xn4KFcwZxLRPhwJZ8jlVgC6BR327cQXUSbNRtfAU3aa0hPLLMnZeaboHJdY9B7IclKdS
	tXKw==
X-Gm-Message-State: AG10YORo5sZmpYsWKEWR8IFnqshwRE5NIi4/Z0PaJJmzqsZ4lXWtrACRTxr5iWKKP79T5iWxQEifqzkgdFeEGg==
MIME-Version: 1.0
X-Received: by 10.31.136.5 with SMTP id k5mr18533500vkd.35.1454439819959; Tue,
	02 Feb 2016 11:03:39 -0800 (PST)
Received: by 10.103.86.81 with HTTP; Tue, 2 Feb 2016 11:03:39 -0800 (PST)
In-Reply-To: <1454430798277.69358@seescan.com>
References: <CAHWMYyCftLwJ2OsiAHNtgK94gy+9FAG_71mgi6A=+F_nuUJrGw@mail.gmail.com>
	<1454430798277.69358@seescan.com>
Date: Tue, 2 Feb 2016 11:03:39 -0800
Message-ID: <CAHWMYyCW7zbZftqu4auw7OBKEnxaoykCF-_hWtaYY5qJhaiebg@mail.gmail.com>
From: Todd Efflam <todd.efflam@gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem installing ath10k firmware
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
X-List-Received-Date: Tue, 02 Feb 2016 19:03:47 -0000
Content-Type: text/plain; charset=UTF-8

> Seems like you should get the firmware here:
>
> https://github.com/kvalo/ath10k-firmware/tree/master/
>
> and copy it here:
>
>  $ cp firmware-2.bin_10.1.467.2-1 /lib/firmware/ath10k/QCA988X/hw2.0/firmware-2.bin

Thanks Fred, we actually tried this but it still fails.

It seems like the two options are to build ath10k as a module, or
built-in.  The thing is we're running into problems with each
approach.

For ath10k as a module, our understanding was to also add
"kernel-module-ath10k" to image_install in addition to changing the
kernel config to m.  The module should then be able to access firmware
in the /lib/firmware/ directory if we push it to the filesystem as
Fred mentioned. This however fails as yocto is unable to find
kernel-module-ath10k (is the naming incorrect?).

For built-in, the approach we were taking was as mentioned in my
initial post.  This should build the firmware into the kernel (using
linux-firmware package) and allow us to not make ath10k a loadable
module, but this fails as well as the kernel is unable to find the
files:
" *** No rule to make target
`/lib/firmware/ath10k/QCA988X/hw2.0/firmware-4.bin', needed by
`firmware/ath10k/QCA988X/hw2.0/firmware-4.bin.gen.o'.  Stop."

We're going to keep trying on both approaches and I'll post back if I
make any progress, but if anyone has any tips/sees any errors in what
we're doing let me know!

Best,
Todd

