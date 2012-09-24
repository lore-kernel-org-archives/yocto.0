Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 490D8E00347
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 10:01:32 -0700 (PDT)
Received: by eekd41 with SMTP id d41so2875390eek.35
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 10:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rwK734Tg6ps2ZNUjeC1+WmL250+RYCELfyoLr6klywI=;
	b=sR/wzoNsizKac2dFRu2pzGI47SiqKyFjlIWVLk02uj92LlbmYq5EoRIxQoP6S8B/G2
	U4Ku1J0/e/db7qYfHwa9P6rjIAVXCv+1jivzKXhhf8SdthSaE8NBR1DrerRuuvfYnyfF
	/bQyXuRodeY/XG4ESboibcPqxmjXTeztUYbV67udCxvNxnx/QpuQqRT2Frx0R71t/K4J
	Tq6ko0J9yWk/nJVvcxgbAy9LPDEhOZ9HfJQwDZRqptQ6JpGwCnSFRgSIczPEvnuL25eK
	U9TNu+2aoOuq2tkNa9S6WLLpBNztUE0D8c2Kuw2VjMP59Jf2fxdQRzpyKljciK3IIIVt
	Ff1g==
Received: by 10.14.220.134 with SMTP id o6mr15635744eep.35.1348506090704; Mon,
	24 Sep 2012 10:01:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Mon, 24 Sep 2012 10:01:00 -0700 (PDT)
In-Reply-To: <CAHUNapTDaEJUi9vZ7rLqG_E3Oyoam9w1nSkKTwfLQepFzUWbgw@mail.gmail.com>
References: <1716058.TZM8ukYCTx@helios>
	<CAHUNapTDaEJUi9vZ7rLqG_E3Oyoam9w1nSkKTwfLQepFzUWbgw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 24 Sep 2012 10:01:00 -0700
Message-ID: <CAMKF1sp8V6JZt7b7eifoGWnSHFAZ8Wbe1dGgMiRNO_iw-h3AWg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Supported host distro updates
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 24 Sep 2012 17:01:34 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 24, 2012 at 9:29 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Mon, Sep 24, 2012 at 7:10 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>>             openSUSE 11.4 \n \
>>             openSUSE 12.1 \n \
>
> openSUSE 12.2 was released on September 5th. I have been using it
> since around then and haven't found any issues. Is there some defacto
> test I can run to definitively say 12.2 works fine with Yocto?
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

FWIW I have been build testing on (to be) Ubuntu 12.10/32bit without any issues.

