Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76F59E00E9F; Fri,  2 Oct 2015 10:26:39 -0700 (PDT)
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
	*      [209.85.160.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39090E00A3C
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 10:26:35 -0700 (PDT)
Received: by ykft14 with SMTP id t14so117198130ykf.0
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 10:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4vW4WWf5VjRZH4pEg/uOTS+eXfQdQCHsTEqG2m/Wzz0=;
	b=vCvFtHf4LEuch7CDSyqJM2UC2katr94eUhWylhnU3urb2yYSzj4RTkAylrzzz4h8fg
	rPfxqDo4ejXJWM5sm6YkjkbByZdwX/D6RhpWytow9k1kXAVdK9n79fgBo7mDRmLBOtk8
	oR9DNovDURaQ7L6c5IWWZaca0SsbiJUQIYYc+cI044R/+BxwbYUq7Vj/TLIS1xYNqTKF
	HaGGkWhjHfArC+rVVKtF9mMl2zRgjO806DyQUI3ei8AICozHchJWvCRl+hJDi91z1wZZ
	5tK3k0MaugtFP8F8VguynD5FZP7M9+nab7855Fo9/6SDltngZGIXqJ3H4RuVzC7+SUQP
	yfpQ==
MIME-Version: 1.0
X-Received: by 10.170.215.195 with SMTP id h186mr14465834ykf.126.1443806795068;
	Fri, 02 Oct 2015 10:26:35 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Fri, 2 Oct 2015 10:26:35 -0700 (PDT)
In-Reply-To: <CABcZANkg=UpD8pgB7B8vSj=pfveyE6WaDz1F+VMu76VSERa8Jg@mail.gmail.com>
References: <1443801396017.79471@seescan.com>
	<CABcZANkg=UpD8pgB7B8vSj=pfveyE6WaDz1F+VMu76VSERa8Jg@mail.gmail.com>
Date: Fri, 2 Oct 2015 14:26:35 -0300
Message-ID: <CAF3SDA6J4E=1_T2jDS+0-ajtcJYqWFL2aKE_+Ly6LEfdChHdhw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 17:26:39 -0000
Content-Type: text/plain; charset=UTF-8

You can solve this by editing the original journal.conf, creating a
patch with modifications and adding it to your .bbappend

2015-10-02 13:44 GMT-03:00 Christopher Larson <clarson@kergoth.com>:
>
> On Fri, Oct 2, 2015 at 8:58 AM, Fred Ollinger <Fred.Ollinger@seescan.com>
> wrote:
>>
>> I'm trying to change my /etc/systemd/journald.conf file.
>
>
> recipetool appendfile sounds like exactly what you want here.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

