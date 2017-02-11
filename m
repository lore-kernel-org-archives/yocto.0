Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FBB8E0098A; Fri, 10 Feb 2017 17:24:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3006E00961
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 17:24:40 -0800 (PST)
Received: by mail-ua0-f193.google.com with SMTP id d5so4315862uag.0
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 17:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XuBDmQN+uZrVFUYPfi5jXXVtzm0iGCQj8j4RFllITn8=;
	b=fb8Ulf+ZEXK3iX0qLlyCyTu2t6D10Oj3zrFGQpVrsMhaiAwjLwnPLUU31xHfihi0SW
	U/dU6HLfeFPQpU4Ook5oE5wDkIiVWqtdSJzRi9poAETHonw0m5wNdEs8lOMp9HxKP77y
	9hqPEfxoPRD67bRQVbv9vEM6zUv23LhWYPKF9ZZ1nt3Q5JP8/dpq8oMr77lOVVfwLbnj
	XSW3ypuib9czmdKWajQbRvQwS/ku7m9Hf2sIN6fx7Z4hmLuJbHe9PdQMcd0bYSnsi2wK
	mSsBGAnIiUWMyOJKKIKACqnE+DKs7cbfhvCFadHJ5ll0cORcLcQv99s8bjhoG1wZ44Vk
	NqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XuBDmQN+uZrVFUYPfi5jXXVtzm0iGCQj8j4RFllITn8=;
	b=TW5S/sQGgawgctmao9F0cjUCV7wQLuUaVoD3yzpYrd95OzwrsZfrkOgDrK7tbmU4eo
	4RCTC6nMcR+R9oZGhbIFcqBcUM5pefX8HMer8b0dGBNkBivC25aBJotQSWCuOdkxodAJ
	vPh3jkXZYPz4y2AWCN0sKp4gdoC98GxqvlRgyniqFIyHYTrDBGFSqJ8o0mta3y9EDHse
	ue8DItYaaAEMS7NxsUlR1Z/UD+MA5g/4NKh5HnN4G1yrjHjh9LjdEHJd9wCtaPHxaTDt
	PxeMO/IVp/nGEktH70eBCm8EPBQ8YDaxoBuCcACBctUYAIzD5Vv/5jKm70tK6V9Pfv3z
	ysNA==
X-Gm-Message-State: AMke39lK0l8nxC8GpqK4kJQ+9E1RlP0H43VHZJFX0gNIqlQp65cVWXRVHH6EB0kYhLTNte9RQehYNsIJlQSa/A==
X-Received: by 10.176.90.199 with SMTP id x7mr6057266uae.165.1486776279759;
	Fri, 10 Feb 2017 17:24:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Fri, 10 Feb 2017 17:24:09 -0800 (PST)
In-Reply-To: <CAFxSfziYaKn98sUWbUuPbYiXVWXXpqu4vRdbR=BNP8QV2t+yrQ@mail.gmail.com>
References: <CAFxSfziYaKn98sUWbUuPbYiXVWXXpqu4vRdbR=BNP8QV2t+yrQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 10 Feb 2017 17:24:09 -0800
Message-ID: <CAMKF1srwUOY7VH0S_PfnpbMmr9ONaUrXMHkHcDvUCz+k-0GHyQ@mail.gmail.com>
To: Xiaohui Liu <whulxh@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to gracefully disable a setscene task?
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
X-List-Received-Date: Sat, 11 Feb 2017 01:24:42 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 10, 2017 at 3:05 PM, Xiaohui Liu <whulxh@gmail.com> wrote:
> Hi everyone,
>
> I tried to disable a setscene task as below:
>
> do_populate_lic_setscene () {
>    exit 1
> }
>

you could use something like

deltask  do_populate_lic_setscene

> It works but shows a warning:
>
> WARNING: Logfile for failed setscene task is
> /data/users/xhliu/poky/build-arm/tmp/work/armada39x-poky-linux-gnueabi/linux-terragraph/4.4.8-r0/temp/log.do_populate_lic_setscene.2825388
> WARNING: Setscene task 1
> (/data/users/xhliu/poky/meta-terragraph/recipes-kernel/linux/linux-terragraph_4.4.8.bb,
> do_populate_lic_setscene) failed with exit code '1' - real task will be run
> instead
>
> Any way to disable it without the warning? Thanks in advance.
>
> Best,
> Xiaohui
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

