Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BD1DE00C75; Sat, 19 Nov 2016 09:30:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F61CE006E9
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 09:30:48 -0800 (PST)
Received: by mail-ua0-f174.google.com with SMTP id b35so195611608uaa.3
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 09:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2YnvsWYBaUXqAJnFNGIIkhn0I24dTeWys+w/gP7bYZ4=;
	b=AblFgHXKQOjmdy6/JnBgx1BM0Hy4gRBDFYW/tESWmDgVM9ZmgF5YO59qJrUYI50/Sn
	ONjH4EIC5Cq6BKVg6EzcK4bbsPJIXc4cU/f2apmexMKOwAMYMhzD3/t7zuFYWDL/c19Q
	agaLCOG9A8XEn0Ts745KR6z0Z5EznbOEaJstfdx1eBVuQwdm6bMiLtx4PwSz9l94zh1g
	Hx4otT97GRdFdJ6sNlysgZ/ivz2t5CLxiD3n7WQwXCx4I7mCruafrflzYsSTbjX3Vf0v
	UDeYnegZ5pElmG+yKHSVBBNPN0hhxWINzPSf8tfMJ5VjWfOnt6Don4q8GQ2VL6khNmOs
	nn8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2YnvsWYBaUXqAJnFNGIIkhn0I24dTeWys+w/gP7bYZ4=;
	b=Hba3/gOesf1Szd3lbewZ2NUwpyCUIMPS66OjAhszePVTKYxaHBrmvScrH9JyCUh8uf
	hYHRQoVh3IxqxhjMtT0WszrHb8qDy8FibC+c5f4s5lwL1x3rwfckTvAycc+qQxVvSiVI
	gd4z5YMRkwv/EWvFnj80AhbD3twm9N9USJl398ZzNh+SmBq3I8xzquKw+Pa4WsYEDL0O
	dlBlSNjKzz82DyyyFRstWZ1ZvhWZ6SAC51cwjpO9zb31fwM6BbrnZ5cI9NbDKtv3FlZW
	Pxk1psKfDst/KL1pG+vx4MrjQBjNsd/Q2tv5YWJX4Rb2fzbr+94rjf8Y+WBIzvBvKlPZ
	n6EQ==
X-Gm-Message-State: AKaTC01lK7i44Obyx9IZc2RceFN97fXf/qWab218teduAeyNKghidztkpV9hEgT2eSRUsi0Ug/n0ecX8CD4AFw==
X-Received: by 10.159.48.146 with SMTP id j18mr3186501uab.6.1479576648153;
	Sat, 19 Nov 2016 09:30:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Sat, 19 Nov 2016 09:30:17 -0800 (PST)
In-Reply-To: <20161118212042.GA26177@openSUSE-i7.site>
References: <20161118212042.GA26177@openSUSE-i7.site>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 19 Nov 2016 09:30:17 -0800
Message-ID: <CAMKF1spTfh-j+LJdDC=xC3Ldha5V3+uMqqRJ4343JauC0N4ZvA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Sat, 19 Nov 2016 17:30:52 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Nov 18, 2016 at 1:20 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> Hi,
>
> I was wondering if there were any plans to create a MACHINE=raspberrypi3 that
> treats the raspi3 like the CortexA53 that it is instead of generating images
> that are backwards compatible with the CortexA7 that is the raspi2?

Thats a good question. I know few folks who have done 64bit port of OE on rpi3
so I would be interested in such patches where we add rpi3-64 machine type.
do you have patches to submit ? Please do

>
> Best regards,
>         Trevor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

