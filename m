Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87CECE00C71; Wed, 28 Nov 2018 12:26:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 592D9E0095C
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 12:26:16 -0800 (PST)
Received: by mail-wr1-f66.google.com with SMTP id x10so27641118wrs.8
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 12:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nqOKsyiE9NRDWn2cxG6WDThRk4Y0KNcbUGpYXCjXt1M=;
	b=aORntFVYPhq3iF2OidT3StCCRQQADnCCesX4OIvWCIW03EGcw2Wzn6LzIOtESN4TJA
	hpbYnKq42lA+xoY+30yylKrH3E+TOeIXdBieQ4F7cvAHaz7/QQlMNIxiiN2/y38vCVS6
	Fvs/Avh3t0lk9DLEO/e2duiknZVZm8yXS+P6TOuKvLD9Gb2vytX+ZjW/k4CKNuP3ovbe
	AdchCd8ND5qXc3/wLDOBsXSbJ+2bGkRb9LdrQjfiyXphZ3Yt7JBLtXYRI9yqQxAjNS5S
	Xba2Hzuc6h5wvl3WIMUH/Bo2ziacgitr535fEEEtQSq/zgT1RL1TefW8BqgEhbx4PO2w
	eOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nqOKsyiE9NRDWn2cxG6WDThRk4Y0KNcbUGpYXCjXt1M=;
	b=YHHPomZZnP0vb6FEU6aLZS5eQG8FffiAw1pfeL5iyElppLwGFXNjhtlZ1YQ9SHIkKg
	x0erHAjg4u9EIL7uoioUfGcquNHrc7P+LQFD4Mk3YZb8aNZSApc4D/EA9NA5oyA80BV1
	Z4PsO4snE0M38e8of45oYg0GbrbP4yZXxuEyB36K8IcvH76J5kC3ImRhgZePTXUH1dgY
	+m2c0bftZ8nj2xSt5oo1LXPJtD9UdE/9n6hmcD7qtWj8GDXyKIf3xAQe4+jG0kmU21z7
	uiYdcIVD5+utJyGyLe0RLS15YlrLWEO6OcRQTBOgDXBPFK1AQtVE0AbzrCzhU15CQnm7
	Yu+A==
X-Gm-Message-State: AA+aEWYNzcduEdSrwlP7rei5VycouKK5T+uzMq+fx7b5wDotCm44NT7a
	k2z3+uoR4KILAU2/qW3ZMV8PcwQFRSnza8RZ1xZAGgbj
X-Google-Smtp-Source: AFSGD/Uw/1FX05uYSNk8VCPK5s9fE3jGOt9e+p1VirnoIbrzums4TG2JSYv2J6hyLgY7F4guz6AUsjQHWPou3lmNJQk=
X-Received: by 2002:adf:9d08:: with SMTP id k8mr26129224wre.203.1543436775460; 
	Wed, 28 Nov 2018 12:26:15 -0800 (PST)
MIME-Version: 1.0
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
In-Reply-To: <9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 28 Nov 2018 21:26:03 +0100
Message-ID: <CAFLxGvwS5Nbb-omyT6bSEcokF-gRd_-jiwZ9vpbeB5ZChdjS4A@mail.gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Wed, 28 Nov 2018 20:26:17 -0000
Content-Type: text/plain; charset="UTF-8"

Richard,

On Wed, Nov 28, 2018 at 9:42 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > But it seems that building and SDK is currently broken/disabled:
> >
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=e153efde9754a650e555f46cba09680baabd7d7e
>
> I see a bug was opened for this but its not valid and this shouldn't be
> an issue. Keep in mind that an SDK contains all multilibs so "bitbake
> X-image -c populate_sdk" would be equivalent to "bitbake libXX-X-image
> -c populate_sdk" and be the same thing. One didn't work so we remove
> that.

My idea was having a 32bit only SDK. In my case I really don't need
64bit userspace.
On the other hand, having both 32bit and 64bit libs in the SDK is not
a big deal right now.

So I did "bitbake my-image -c populate_sdk" but the resulting SDK
seems to contain no
32bits libraries.
TOOLCHAIN_TARGET_TASK contains "openssl", so I expected libssl.so present.
I did a search for libssl.so and found these files in the SDK install directory:

./tmp/sysroots/mymachine/usr/lib64/libssl.so.1.0.2
./tmp/sysroots/mymachine/usr/lib/libssl.so.1.0.2

Both files are 64bit shared libraries :-(

What do I miss?

> Unfortunately the debian backend is the least supported for multilibs
> and I suspect you'd have better luck with ipk or rpm.

Indeed, switching to rpm did wonders. Thanks a lot for the hint!

> > Are there other possibilities?
> > Userspace can be pure i586, so full multilib support is not needed.
> > Having a x86_64 toolchain should be goof enough, it could build
> > userspace with -m32 and the kernel as-is.
>
> The system can definitely do it, its just not something we tend to do
> very often so its not entirely clear the best way to do it.
>
> What may work is selecting the i586 tune from an x64-64 target machine?
>
> Copying qemux86-64.conf to qemux86-64-2.conf and changing it to have
> DEFAULTTUNE ?= "i586" did appear to start to build at least in a quick
> test here...

I'll give that a try after sorting out my multilib confusion.
Using a sane/supported method seems more future-prove to me.

-- 
Thanks,
//richard

