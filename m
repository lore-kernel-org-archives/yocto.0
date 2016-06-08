Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CBC9E00CD3; Wed,  8 Jun 2016 00:00:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5970E00CBE
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 00:00:28 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id j5so1604319lfb.3
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2016 00:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=e/fAUmgpUmGkebyN/cFISC0OsC1UbBVjuTDJwv2VJvk=;
	b=uAHL26gTkR8ZMOeQJCFKOIi9nMppJjCTV/EuTi2A1CL9QMrUJRHXxzf1LoQLfT2Ajx
	Mjadz5W9UOq4ddYnwm59Ift8UaGgCTsvjLwg+7xowS78PVoO/Lh56h6vjPWsHImGuEfN
	3mD/g9NPH53dlIfBGf8jJo83Kzn8Gc6omeQUz/L98E8O/moP+adEC4EsI2Dnhb9dFyMr
	zUNhmVewDyB7TgCFLWYtsXhEoMesF4GHse+GtA+WW6pUglutAVT+akb7dFhQE3/Db3Xw
	Z04IqVz+In5DrfdXqiTkV7vlgl4uqDe6OSebORhKCg+HFbDIEkzKYCF8BAmqqzaP7o/6
	Xw7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=e/fAUmgpUmGkebyN/cFISC0OsC1UbBVjuTDJwv2VJvk=;
	b=i5dQOUY1dWqGpLWWsDLx3O5t6vO+rjbFklyvnqdfk8olD+Tyj2m/trtS2F652RSnSy
	UiLo1a60cmqB2hM1sDMoOR6e8pTVwTy1S8HiXj+L9mS4MmTlg7rcPO3cAIjxoNo1FrHT
	FNz+FV2kbDRhn7CL6s+9KeMPYBHxaKL+2IufY+de6P3nvwgbiMU2nPN0H6zBxR93NSJe
	lcAaL9LAVe1R8ikE8byCoDNYWZdJG5zpnglJ8HrOACyVvR9zuTyEoMduA8bGKkLuYvpQ
	6YQzcXJwz1t2zjcDKPv7DVo/5iG/XuMm99e/4mP0kdERPivg4g1hIHBoSDX+PPHxzFJF
	+w8g==
X-Gm-Message-State: ALyK8tJ5tBW6PLfng6sANJfONX45MaGnSlDoLB8eggQHE3h6fuSeI3gYV3Dosf7i8rHaH7aDSSGuNkTZEIglDg==
X-Received: by 10.25.21.102 with SMTP id l99mr3703899lfi.27.1465369226850;
	Wed, 08 Jun 2016 00:00:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.147.147 with HTTP; Wed, 8 Jun 2016 00:00:26 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
From: Christian Ege <k4230r6@gmail.com>
Date: Wed, 8 Jun 2016 09:00:26 +0200
Message-ID: <CAALGJZaLfxLcRh50OLCk_Kdn_VcgX2PZQ2=GbU5wbYz+Q-xqvg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>,
	Stefano Babic <sbabic@denx.de>
Subject: Re: any pointers to a yocto-based image to use as a live install utility?
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
X-List-Received-Date: Wed, 08 Jun 2016 07:00:34 -0000
Content-Type: text/plain; charset=UTF-8

Hi Robert

2016-05-25 12:18 GMT+02:00 Robert P. J. Day <rpjday@crashcourse.ca>:
>
>   specifically in the context of powerpc systems, are there any
> suggestions for an image that could be used to boot an older powerpc
> system, running completely out of ram, and using that as an install
> utility which would then be responsible for detecting/formatting a
> hard drive, creating/formatting filesystems, downloading/installing
> the OS, post-install configuration and so on?
>
>   i realize that's a spectacularly imprecise request -- in a general
> sense, it involves just starting with a regular image, then adding
> utilities that run around doing all of the above, but if there's
> anything that already takes one most of the way there, that'd be
> great.
>
>   thoughts?
Maybe https://github.com/sbabic/swupdate is what you are looking for.
It has full OE support and is not tied to any architecture. You can extend
swupdate by scripting which will provide you with a lot of flexibility.

Regards,
Christian


>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
http://ch.ege.io/

