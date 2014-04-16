Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B72DCE00C02
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 15:57:32 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id to1so11322587ieb.28
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 15:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=EL5fXxrDojhy/m/jUIwKcbpxR5a7NidDC+dkLWAQ/Qw=;
	b=SPY+X+2Kxu6wr5S4U29OyDnuTVviXnIE8kyBXgCMFu7QCXSyKRHqY96KUr5kdpnO2L
	0aG6kPwpo2ckWZrKn+GEhko6f5N9wlmksDCIDxYl3/GwdRN9vc3VgX/GAUH7WJZgUzoF
	eU7BlWxvh+ttTLJu2ed7QPNKlOIb/CmgC3mx52LsBU0f01gcMmDoIVNIwrAUaWSEbvm1
	wKuCYjCHhpwgQN0rFkAIeiqYMxbwXH/HQNjYX4wBcaJ4gV/ymwhJrXJ4nsp14sSw38zp
	ZDjjUMwCXGJFLvrdiyRJ+sPlV32C0jzisbfBvwygCUpqLmVgTZY0n6B3bzE5TCeyXzAX
	EswA==
X-Received: by 10.50.30.167 with SMTP id t7mr10504369igh.17.1397689051641;
	Wed, 16 Apr 2014 15:57:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Wed, 16 Apr 2014 15:57:01 -0700 (PDT)
In-Reply-To: <loom.20140416T210857-619@post.gmane.org>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<loom.20140416T210857-619@post.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 16 Apr 2014 15:57:01 -0700
Message-ID: <CAMKF1soYrCBxDKQbDOWOEj4SLfNoMz=kBarw+pc2CvKQpfMJQg@mail.gmail.com>
To: Hermanus Botha <wkj.id10t@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Wed, 16 Apr 2014 22:57:34 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 16, 2014 at 12:10 PM, Hermanus Botha <wkj.id10t@gmail.com> wrote:
> So I don't really know much about Yocto. But I would also like to see some
> more Go-lang action on Yocto.

Start by generating the gcc runtime  and language support in gcc
recipes. add it to RUNTIMETARGET and adjust PACKAGES
you also need to add it to LANGUAGES that should get it to some point.

>
> This section of their manual seems promising.
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#cross-
> development-toolchain-generation
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

