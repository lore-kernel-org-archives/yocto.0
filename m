Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82780E00C9D; Sun, 16 Dec 2018 20:30:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45BEFE00C7D
	for <yocto@yoctoproject.org>; Sun, 16 Dec 2018 20:30:19 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id p17so12719840qtl.5
	for <yocto@yoctoproject.org>; Sun, 16 Dec 2018 20:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ek9lP/9pUM17yDqz+Z0gJxydsqd/UJfn63od5p22kKE=;
	b=GxhlbXPPY3RusKnAVDjS4fGxNlF7+w/rtCjWWxiDpKkOy1uInFu0a9RlissfnCQcKJ
	Ctjm/46SSERCX3hes8amDXpIesbRHQbZX9DqX7pX0xtoObr8UFtsq86uI5hgFUa59GvK
	a1HrZvXaqfS23NmwhnJ52EAPJ6jRypVz+4gedBKfrwYihUMm8nPZFL7GDToOJoL0Lxwt
	Lj+XBlCln4MIteHJKVYju8htCBGVZhXSkdBQSgGKnusD0NO7wzFYjmOXpeCkm4GFVjv7
	BxX1PvXNMxLBvFUETzk9DCXd3PxK7OioDWIiqTGQ8T7PJW0a3pPOiZrG26nBHE6AzWRR
	/KDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ek9lP/9pUM17yDqz+Z0gJxydsqd/UJfn63od5p22kKE=;
	b=e/AyUy7TSZ1NJ2AnMb4LT0ofjP93FA39DEVr2MzeJDGQJYSLQL0YSHui0iMV7zblOR
	+NjgK55z8Kpaqi26JqZi0tBa2TCtzgJZWBmHUJwENf+0xVeuOLQkVBqC51dW54XIBtGf
	V+KNoMIPa4nLv89pgVQvTFGl0Vb1QYFx4jSlASFe1lXamV+eiEN6kbF6lWHF53E4baxl
	C1IY1oCiJLhUFQuTY9shNfeU4GBnrzJWbqNYKWFVUAi5eGAPYtobiQ9bg7ZGms62hYCc
	frb4Puk7kXdG2vKJEtCNAknMLSjNAvYyRTDAAOaPSZml9g4MvAtUce9/yWaE4mJlpKHd
	sh1w==
X-Gm-Message-State: AA+aEWZFJ3UIRbQM0m0qbrgo5+jmGLQaf1p+Voc0X/j2LT9E1IC2ToLb
	eVZ2n6x9v9ciCeziTDFfwjCAuTZVJcdopXXTbms=
X-Google-Smtp-Source: AFSGD/UIGab20OpRJLhZBbfW2x12B2Bp02ZwxPHDx9sjV783Y8YS+t+mbK5PYjJoEiPOU6WJMcSSNzvt72Fx940Kvsk=
X-Received: by 2002:ac8:36ba:: with SMTP id a55mr11799722qtc.236.1545021018320;
	Sun, 16 Dec 2018 20:30:18 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4injAXT0+YgeXAYmfU50=_LL9BaVBm9e5-E1qyouAMENA@mail.gmail.com>
In-Reply-To: <CAFq4t4injAXT0+YgeXAYmfU50=_LL9BaVBm9e5-E1qyouAMENA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 16 Dec 2018 20:29:52 -0800
Message-ID: <CAMKF1sqm+uPC6jRkGP9RNtxb5OGP+JDytUC-1M8Hf9inSd=KeQ@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: core-image-* (minimal) networking
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
X-List-Received-Date: Mon, 17 Dec 2018 04:30:20 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 14, 2018 at 8:23 AM Peter Balazovic
<balazovic.peter@gmail.com> wrote:
>
> I've built bitbake core-image-minimal and it runs but unfortunately I have no connectivity (networking) available.
>
> > ifconfig
> lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           inet6 addr: ::1/128 Scope:Host
>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>           RX packets:2720 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:2720 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1
>           RX bytes:206720 (201.8 KiB)  TX bytes:206720 (201.8 KiB)
>
> What's need to be included within local.conf to enable networking?

its possible that some modules are missing. Try using core-image-base
and see if that is any better. then we can see what the difference is

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

