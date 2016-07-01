Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D8F1E00931; Fri,  1 Jul 2016 09:37:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 262AAE006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 09:37:02 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id v6so16340334vkb.1
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 09:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PY+LYnE8OaY/bk0N1t23MELwud2ptBaozyUBOLGUYUk=;
	b=vSSngIL5aYtSC0oU5mJ8k7vclps4wd1EXQAqS8BymHw9UeRkH0SV5xQtcCemGPpftn
	IU4ixnrOhVEynjMujdLKl6qUESwlJz2NAIj4gy4teXQkprq7agVjBb3yTSDWTgDHiNQo
	Gz6b/grDeQ5VG4/YxJl1CAcA/3x1BXC6ihh1CtJZOXfM7m7MeGwvo/TOx5rQiMEZyPrB
	pjQJru9S44ooN+R9DSRDykcxX8WPQfLPbhDH6IzphPPe0RsELKsQNdwTl76OylsOsaFD
	y1bFaEMqr+HzF/PEQlTRReMsAaRQz4QbcayibrPU1c3exoTzxPYSYsYSAofuojX7exw3
	2iPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PY+LYnE8OaY/bk0N1t23MELwud2ptBaozyUBOLGUYUk=;
	b=Wt8V1NsOZEzqOfoPK49vTQiaaZqFJnTbfoiGOPOiuOW0RYPIQARxu7r3VZ5SFusj6B
	jCr1T1YwG+SSqBrxwX3H+DfSM/HDunME4WGphTN8f3KcTjg93etBzlXMoBEuT1F14ehg
	DX53MzwIS/+mRwrOGgR75BBRJSGxyAxLxXoWkGpWWWtWVtKcjvIBNGykIF2+iXykL/rC
	FUI4FA14/AKCf0iI+FGBDoIjWyiQxXe9iNNq8xRv8V1EGccqSjEVRDgrG8yx3wRaI6nU
	80Co0rM3n3GJ5mF6oEJF1jW8de/82ZPs4cjFQncHCxxoW9EolE5nCmryJxx4f6HipEcj
	NBew==
X-Gm-Message-State: ALyK8tJCoXuIdpi0UB98yLRfa8q6berN97oVi080TaB8suZRAxkakmNS5ICn9C+V9NjfCMAozBaaY80D4J9MGg==
X-Received: by 10.31.168.3 with SMTP id r3mr9971148vke.8.1467391021577; Fri,
	01 Jul 2016 09:37:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.201 with HTTP; Fri, 1 Jul 2016 09:37:01 -0700 (PDT)
In-Reply-To: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 1 Jul 2016 13:37:01 -0300
Message-ID: <CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Fri, 01 Jul 2016 16:37:05 -0000
Content-Type: text/plain; charset=UTF-8

Hi Takashi,

I read that python can't execute multiple threads simultaneously, but
that wouldn't be a problem if each python task is executed at its own
interpreter instance (process). This last statement is what I don't
really know, some experts on Yocto's internals may clarify that, maybe
:)

Regards,

2016-06-30 22:29 GMT-03:00 Takashi Matsuzawa <tmatsuzawa@uievolution.com>:
>
> Hello Yocto.
>
> Well, this may not be a very new topic, but I wonder if you have recent suggetions.
> So far I have tried the followings and see some improvement, making the build time to days to hours.
>
> 1) All of the directories, DL_DIR, SSTATE_CACHE, TMPDIR, DEPLOY_DIR are on SSD.
> 2) .repo and working directory (where I synch my recipes) also on SSD.
> 3) Set BB_NUMBER_PARSE_THREADS/PARALLEL_MAKE/BB_NUMBER_THREADS to something like 20, 30, etc.
> 4) Enable use of ICECC.
> 5) Use pigz, pbzip2, pxz instead of gzip, bzip2 and xz.
>
> I can see with 3-5), I am benefited from my multicore PCs and see some scaling effects (if I can add more PCs or CPU core.)
> However I think there is i the build not paralleled or distributed easily.
>
> i) python tasks
> They say python has slimitation of being single thread, and could be a bottle neck since most of yocto build tasks are in python, if not native/cross toolchain jobs.
>
> ii) zip / tar tasks
> e.g. seeing rootfs taking forever, jobs not distributed to the other machines.
> I understand it is writing files to one target tree and doing a bit tar/zip for the files, being one big job though.
>
> I wonder if I can do anything with i) and ii) at least to make them processed in parallel.
> ICECC only can dispatch gcc jobs I believe.
> Any previous attemps to do the similar to non-gcc jobs?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

