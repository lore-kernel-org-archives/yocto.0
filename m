Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21F21E009A5; Thu,  2 Feb 2017 11:47:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E369FE00998
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 11:47:55 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id v77so2872575wmv.0
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 11:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Z2JGGrfA9MrYNxHsqPcLfKoEsfv9hyx6S+RHKKxCMIY=;
	b=uZQNggbPA+VxQ7OhpWLeCuYo29DI7gvTvS9nWu+hpH56cAnRLWl+v1MSsiK9Rc2JQx
	Sn7jdL3o+RPV9okRHRUA2DjISpMzIIc+2XkzUrsxllmrmMCFfhBEyrnk/yZWAyScXPTO
	dbTeIXtQJdhyWi+XYC3F6EKozWlFtSneYhSpaRNFLBvzWVXFqUeCDnqS9v01LZsF0TKa
	lchVd5qjTCh8LQtHDkPkHWt/RXUCCNKhv150f9Gk5VA9RhCW4u6Kx0voHXicUZ7Zs+D+
	L6ChnsCZ5L/+k2AY91vrqBeaH4PqV5Yd5vQA3Jau5woxPa5DZB4rkWmS0XlaTw4P/kVo
	kecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Z2JGGrfA9MrYNxHsqPcLfKoEsfv9hyx6S+RHKKxCMIY=;
	b=huqEn4SulbQK6zv7AbUrE/oSRDOI7QK7OfXMW8jx0KSqwMxZVDMC7OJhsRHNwTovSS
	NLFYMy+0sbQBQKt9vWNtXMFD2AT4R2jgllZVZdY/4JQQxzJzLJXE5Nks+KdTza9b/19K
	wzV3Z76ybzkUhr9Lkjp4WSBxS0Szd2u78AUhDziAx/P1ubS1zyxy+rQfJPfZ8a32j8rC
	lINwQOTYDMxXcNb2nfKbWUPSdKgoOvEQ/br4jLSUUXnHOqBcRZ91TFo5Qb4+VT72p56y
	54bgyxOaYBfDD0UlInUsMClrkxLjAN8AltCRhL3WgIw48REdlNIOuh/w1gfJQv2VEOwF
	eZdw==
X-Gm-Message-State: AIkVDXJtVtndIAe/k1SfYxMBXEFT8X7cuCE7gV1fJVw+oZZtJeT8MqCCKuX8wYsuDjkbOD4irSR+loXhM8LHjg==
X-Received: by 10.28.170.213 with SMTP id t204mr27756953wme.29.1486064874280; 
	Thu, 02 Feb 2017 11:47:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.195.17.228 with HTTP; Thu, 2 Feb 2017 11:47:53 -0800 (PST)
In-Reply-To: <DM5PR0101MB2953EEC38129283F5B94E336B64C0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB2953EEC38129283F5B94E336B64C0@DM5PR0101MB2953.prod.exchangelabs.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 2 Feb 2017 11:47:53 -0800
Message-ID: <CAJ86T=Uq1cHgsSgf_2Fe7C9oavbXMym=1kcb67L9ec4ixTc6Mg@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Undoing BSP's BBMASK?
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
X-List-Received-Date: Thu, 02 Feb 2017 19:47:59 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 2, 2017 at 4:15 AM, Takashi Matsuzawa <tmatsuzawa@xevo.com> wrote:
> Hello Yoct.
>
> Say, BSP defines something like this.
>
> BBMASK .= "|msta-xxxx/xxxx/yyyy.bb"
>
> Then I want to cancel this within my local.conf.  Should putting below in my
> local.conf works? (Or within my bistro/zzzz.conf?)
>
> BBMASK_remove = "|msta-xxxx/xxxx/yyyy.bb"

No, it won't work (_remove only works on variables which contain items
separated by whitespace).

As a workaround for Yocto 2.0 and earlier, you can over-ride the
complete final value of BBMASK from your local.conf.

If you are using Yocto 2.1 or later then BBMASK does support multiple
whitespace separated regular expressions. So then you can update the
BSP layer to use:

  BBMASK += "msta-xxxx/xxxx/yyyy.bb"

and then:

  BBMASK_remove = "msta-xxxx/xxxx/yyyy.bb"

from local.conf should work.

For reference, see:

  http://cgit.openembedded.org/bitbake/commit/?id=2c778ad50aceaffb855baf5f4aa0fed98c880870

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

