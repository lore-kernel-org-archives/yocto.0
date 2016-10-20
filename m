Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79AC6E0089B; Wed, 19 Oct 2016 19:52:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.47 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB27E0080D
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 19:52:14 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id 83so53259967vkd.0
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 19:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dXBhtTREdB9G9wi+YG5BhZREqj/jNNlLwf+fKGQWajo=;
	b=nF/as9UxB0okDVi8Y5bGhSbSX9O74224t6Mp2Nn90ViBCEju1MzJY6lnb18og7ANzy
	D4O0oLDrRN8c4VwIhhZAspCFZCa+Tk2XSkESY3w5wIHq4PFJz1gY0nca9RyO/I/xD/Qd
	AF6aGJjekC9cTjTcDSJiVR1ZlUmzAQpx8Mw9GIasC5yNG5o5nUhiUISLwAEZjkVQEGDF
	G+tHxGWRIvvdkygWmloFX5aLQtOYWZZ+zkuUvsdvcR16e26238a6srM02xWcn5LoOcWO
	yp1ueUbH1a4lBi0pIgU4ke/Td+ZkR28gqoXTstjMNxqz68Cpg9kKvY7spUzxvdZvvDYu
	AUPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dXBhtTREdB9G9wi+YG5BhZREqj/jNNlLwf+fKGQWajo=;
	b=LCxpJz1rvtDy/QGHleMS3qK65flDQZd6rQHGc6GFA1KZggwXTsAv/rbAI3M61prSxl
	sy4laOuvK3HjAIIxrNdaCovwFZSWdNpae4KeSBGKX8h00fIqVEz022hFwqb3jIf+wnMK
	EUph8fVO8OEbTIZvBwrsnus2tu1u0Gs6KroZ2pePLo3Y/NO/6/s1eBe1UrYc34bbpGKR
	v1yxzIKCaMfQ46cGgjMwHlUK+TuaKj11/Z3HD8F8LFlil07t6QBXeb23oxg+K0yfZ/PE
	iLsDcJj3FqiUiryOdQNLOGF37x0cc7yyw05oad8gYuTLo6dSohfTpam5h3mn9/TGqejg
	RoXg==
X-Gm-Message-State: AA6/9Rnk5M9arw5sh5E6v0PJVhKagXTbw8+3yP1HOHfKYbCg/prO2CHRvqNPapR2sItEVTy9fJ0l80dpgHWx7Q==
X-Received: by 10.31.244.14 with SMTP id s14mr8734202vkh.31.1476931934095;
	Wed, 19 Oct 2016 19:52:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Wed, 19 Oct 2016 19:51:43 -0700 (PDT)
In-Reply-To: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
References: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Oct 2016 19:51:43 -0700
Message-ID: <CAMKF1sqAZY9FHeco3M_U0EDZ+4RXw121yH7hOQrW5zZcBz3+4Q@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 2.2 release note material
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
X-List-Received-Date: Thu, 20 Oct 2016 02:52:18 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 19, 2016 at 7:25 PM, Paul Eggleton <paul.eggleton@intel.com> wrote:
> Hi all,
>
> I've been gathering material for the 2.2 release notes, here is what I have at
> the moment. Things missing:
>
> * Any new features/enhancements for the kernel tools - Bruce, is there
> anything worth noting?

it does not cover the deprecated/removed packages. Eg uclibc has been
removed from oe-core
gcc 4.x is also out.

musl can build world for all primary architectures. ppc64 is now supported.

>
> * Known issues that are worth calling out
>
> Note that I haven't included all of the bugfixes in this release since we
> haven't been recently and there are a lot of them. I do have a list of them if
> we want to include them but not only is it very long, it's not guaranteed to
> be devoid of fixes for regressions within the release and I also haven't
> tweaked any of the items to be more understandable out of context as I have
> with the features/enhancements.
>
> Let me know if I've missed or misrepresented anything.
>
> Cheers,
> Paul
>
> --
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

