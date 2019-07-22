Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51823E00D35; Mon, 22 Jul 2019 10:12:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB239E00927
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 10:12:30 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id k10so39280672qtq.1
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 10:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=m2b+hGZKwLXobgfQn4FjEN3XXa+/loqx6AozZu0l9zw=;
	b=QWCIr55Psb9U0rntHoZLUZGKSgGM1z4oV4QZTx4rE7Ty9X8cxSiW0/crQoyDiQhJVa
	UKktas8fj0A+CHpIKBbXoaIL+HVh3QAqP4RVY70MdV8LbkWzLM8LiW7RI94oOgaLdD0H
	Hrpw3i7UA04soZJ6L/lUo1q6Y4GYiuSougVmi0uZ/goZfrHQu0XVcHSbu5gC4q+U85lf
	d5O8cFsyUztRyCzbBIR5WCmznYFF+oDWU0BFfbZ0DPfXuzs/8b1OCBMfGIVUoJNypuqc
	/9p+GYNg8P/WuMmjndl/kqBXbMDyMjpytbdiTrpqdLBIA68q1NDqAOU/RZ1aBGzWjxVE
	90Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=m2b+hGZKwLXobgfQn4FjEN3XXa+/loqx6AozZu0l9zw=;
	b=c6npxgCen2ZREI9dxC0MZX8tEr8w7G5ZAjaeSb2C9HJvJjDAx02v3fRzlC3y+RljKa
	lDQ3HGTOuYAvgLYxgDo/Uzy2kpw3JKHcOkz8zjZyfqv9dvTT0KVNMINV06DZSD+35A4K
	bX2ij4WZJk0SMXjfVicDV9Z2tMPxxWU7o3iBC5ZCf4Sc9fC0sZOPJRRJ5GeiV4Ou44a1
	bIOR6pS+0qspVdE5VqnxgZwRA3BpoKDrEzCpSVqsH52MRLQKZys04vlGCX2exbds9UfM
	/wEO8THzn+Gb9ektSeGAntStYE2Zjg522VI4gGrunLpytxyHi9KOYfeUhbVMKQbNfPn5
	fcsw==
X-Gm-Message-State: APjAAAW/OGSlEAuQWFJkfOPBUvqyM4U//U9XTVYyRg1ZFypg4YhUCXCJ
	p7NMN5KuqpPs208d4E1QPFCe521PELmoGYZrbaU=
X-Google-Smtp-Source: APXvYqySpF3c8PF1MdspkSQHbCBN/j5kXY+IahsmCdTwFRMQBLjWX9hDDl6tyiiljxJYj4xyntZ7jRlhT1X3YuCzPQ4=
X-Received: by 2002:aed:3595:: with SMTP id c21mr51512310qte.48.1563815550168; 
	Mon, 22 Jul 2019 10:12:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJDbqR8yPWRYX_2wT+Pk1+cuNcntWizg3hhZnA_vVVwnaA@mail.gmail.com>
	<CAAx3WaDTteqencYsxrb+1a_TgR8cazNUJ7-3VX9VxeePQkmRoQ@mail.gmail.com>
	<CAF_dkJB=p0EWosdL6cTe1YN+38KN8Qb8LuYoOvF06URR96oQCw@mail.gmail.com>
	<CAAx3WaCKS21xWZ_b3jqJFm61D+_QPy0Aago0Tais8hVTyoKqKw@mail.gmail.com>
	<CAF_dkJA_WsGVmnNwC9dR5KEzw3+jdHe3abNjBeLa4_=UXuoJCQ@mail.gmail.com>
	<CAAx3WaB=Hvm4Zm=N-m14mGBoH3_NwDUG2izOZVn+ZdB-aW5taw@mail.gmail.com>
In-Reply-To: <CAAx3WaB=Hvm4Zm=N-m14mGBoH3_NwDUG2izOZVn+ZdB-aW5taw@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Mon, 22 Jul 2019 13:12:04 -0400
Message-ID: <CAF_dkJAP7BsV6FgVVZNjs+o8rcNs+6z2z2exS+JpV7fa=fYR_A@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to specify a different kernel for an image
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
X-List-Received-Date: Mon, 22 Jul 2019 17:12:31 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 22, 2019 at 2:05 AM Gabriele Zampieri
<gabbla.malist@gmail.com> wrote:
>
> Hi Patrick,
>
> thank you for the clarification.
> I have no idea on how to encapsulate the output of bitbake into another image in a nice and clean way. I'm pretty sure that you must run two separate bitbake, one per MACHINE.
> What about a partitioned USB stick? You could have the base partition schema plus an extra partition that contains the production image. The implementation depends on which tool you are going to use to partition the output image (if any).
>
> Gabriele
Thanks again for your thoughts, ideas, and conversation.  Based on
this conversation and further research around the web, it seems like
defining a new MACHINE is the best/only way to go.  (This is where you
say, "That's what I TOLD you at the beginning!!!!)

--wpd

