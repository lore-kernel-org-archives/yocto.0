Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6676CE00C37; Sun, 14 Apr 2019 17:19:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 386DDE00BAA
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 17:19:05 -0700 (PDT)
Received: by mail-lf1-f66.google.com with SMTP id t11so7128737lfl.12
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 17:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gfsnxDyh+mUcZUUvBXQInk/Bg7Bj68bGokGZwmZfwu8=;
	b=l0ieoGwrKrxpnCxsVSONsBR96hXkNsVHEzqto7GR74u5K2dI0YldFt6H6AsdD0JhW0
	Q1N7FYuPYbqRCxdEkR3uO4hDVaDPe68gIzcdGYWuJR3CDMbTcVyXyIwcBMn+wnQZnpyl
	yD7odTfJMJLQtYyxw3PzpKdNJohR2KGQHaXzPw1PYfcAGu6SsctFexuKhq7ivgYUDu95
	fjdTIbaaSLa1E/LowoqiQPgDiHikUIpATCqLQm6dk9GJ10mZCbpbERYqQOlNsYdUHtNB
	rTACVduqkeZNtrXo7/sS6UCAPHDckjMEhKwvwCfgynGSygpzRHr6Iegr7PdS68TrHFhl
	mDJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gfsnxDyh+mUcZUUvBXQInk/Bg7Bj68bGokGZwmZfwu8=;
	b=aun1RkZpoCnwJfIATIBysjS+No+j6FFLCKwFBxgFhO+8QSM+f3+jP4L9GAUcGqc5H9
	bT5R7F7Wvj/fgcUtNncUCqwgjX+Ng7YsYxyp35vwq5hEiivF0rQQ9daj785zEUmvunRx
	ObQ0MEMIG6Mp3ctOx6YjStRIroHX2XqXzFRhwUOGKgm780FewXGLYTzJgkuZHd0GYMdQ
	uY1okvfWZZKwLQjKnf2ZDbNKlEvytrsCYr2CJMVZXDia2zWzz1P7HFdeI5UWebqA8W8A
	UNX/m1SNXu4bBexru5UdAl7pYk3MBNODaQoUQH3WuFons+OrQ4OaNv9H9DhO5KebLcHB
	OrZA==
X-Gm-Message-State: APjAAAXTNl9G+X7cX3MVPDK1RLbu7f5QZyi9pbL3hYr7JeSrkuknFJy/
	ro6J5iL6gjzOhpNK6hCbXU82TB/2tHIjbdFOWck=
X-Google-Smtp-Source: APXvYqz+DBwo00g6pSw95SIfevOUtM7P/RLR1oTc3IMKsksR0KCXt+rTH/20hncxV1fjwGTmG3sG/458HDISBI4l3dM=
X-Received: by 2002:a19:e619:: with SMTP id d25mr9584706lfh.66.1555287544890; 
	Sun, 14 Apr 2019 17:19:04 -0700 (PDT)
MIME-Version: 1.0
References: <528f2b23-ca35-43a6-3568-9e8de7504198@gmail.com>
In-Reply-To: <528f2b23-ca35-43a6-3568-9e8de7504198@gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 14 Apr 2019 20:18:53 -0400
Message-ID: <CADkTA4M7OKKnPqy_YGJj8KHNog4emyVDSeS4GRkkmN=U1hmw=Q@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Thud Kernel Configuration not Working
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
X-List-Received-Date: Mon, 15 Apr 2019 00:19:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Apr 13, 2019 at 9:54 PM nick <xerofoify@gmail.com> wrote:
>
> Greetings,
> I was trying to build a kernel with these files in a new layer for no smp to be enabled but have no
> idea why it doesn't work. This is after looking at the kernel manual and it's literally the same
> files excluding the disabling of smp as the chosen option.
>
> .cfg for kernel option is called smp.cfg and this the file's content:
> #Disable SMP
> CONFIG_SMP=n
>
> This is my bbappend called linux-yocto-4.1.8.bbappend:
>  # Include kernel configuration fragment
>  FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>  SRC_URL += "file://smp.cfg"
>
> If anyone has ideas thanks in advance,

We need a lot more information to help with this. I put the type of
information in the
bugzilla that was opened for this, so I won't repeat it here. Best to
keep all the details
in one place.

Bruce

>
> Nick
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

