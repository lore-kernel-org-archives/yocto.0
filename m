Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30567E00D30; Mon, 22 Jul 2019 09:04:34 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E422E00BB6;
	Mon, 22 Jul 2019 09:04:33 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id k10so39090242qtq.1;
	Mon, 22 Jul 2019 09:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=vZQzyk26XkbHA/mVSe59QEf+iZ6s4OenfJ3ADB3X7Y4=;
	b=jY2aM4a/AhQBiXtNMiQqyA3ZADDbxWKEivdjFL65epjr3VPaUUo4aAm14a5i59EAz1
	esf/KoyQlId7pkWyZJzE8cDw+FHNUgsqizIvyzqq8PfvkvctasF2mJuF4OmS6ljGOtak
	xkpBEQ9c7zAFLZvR5AtqFzrVLZLyp9W8Os3dfA2IMQn7QLUBMQhNfnucqJZ6BdFcM/U9
	SIrIddov7cn0bBNGXMhjytDStvkNXxE06Z5BokTXZbk+Xs536s9/GQQg+VSV12eWFOJJ
	R8bibOgnhYLj4NLVZojHem3kQe0h18JI4Jkp/K4wcAd2BVU6B67HpYNEtIQMjmiJuvQw
	fo1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=vZQzyk26XkbHA/mVSe59QEf+iZ6s4OenfJ3ADB3X7Y4=;
	b=KU/3tcxb8vh3crPbYD4wu0egSrHj2fvGL41ICdU11ZVyhdcUIqfcMas27yjk3x5iXl
	pIkVV1EQGSrKDz2aJDDbHXXq9t1FInkntcJtZmt7xjnk9Md6GNQ4F73OUBV/U6UpXN2a
	nfAUCXmqZuvOeJmFq1dS77dz3js5DyOkzUQTY6nTamcrec34Yeme5mpGZnsvj64YETnU
	zgCK5V3/5VUjLGFl3TBUJZ2bZ8a5u8WaROFZeo6KXDUJfodqmo9H8k3YmaxYBMfbiU6a
	qZdt959P6iNppBUzJrDbozPTJABqTqZOv7iNArVd0QQXa+cAa9vR1GeYvcZ9g0t0yjos
	bcMA==
X-Gm-Message-State: APjAAAXwaqNypj+5uItLYJeO+2seI4/PcFDb0IOUWs1j2i/AktvWkN1Y
	e9dunhjrv6dStKdNtodU8fP5iMTH8558oxeMlktmgcmr7k8=
X-Google-Smtp-Source: APXvYqztZkXS0dX3J1IFvEbImPGVTXcOngNnvI/fn12m2E5nGrDbSdpDEWfrI7YNAVQjqgGSg+DMycGJBSJJ1jKdZ2g=
X-Received: by 2002:a0c:bd1d:: with SMTP id m29mr52318157qvg.181.1563811472598;
	Mon, 22 Jul 2019 09:04:32 -0700 (PDT)
MIME-Version: 1.0
References: <86eeb8cf-ff2a-e782-c7a9-44fc4496bf62@mindchasers.com>
	<10fcfe4c-3247-6010-9f22-7996dd090333@mindchasers.com>
In-Reply-To: <10fcfe4c-3247-6010-9f22-7996dd090333@mindchasers.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Jul 2019 09:04:06 -0700
Message-ID: <CAMKF1spum8hq2qtwVTEvVZkzaf7n3ay3_JhBbpdUSh+DuSnZwA@mail.gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Looking for a recommendation for the right Yocto dev board that supports MIPI CSI-2...
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
X-List-Received-Date: Mon, 22 Jul 2019 16:04:34 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 3, 2019 at 4:32 PM Bob Cochran <yocto@mindchasers.com> wrote:
>
> On 6/20/19 11:24 PM, Bob Cochran wrote:
> > Hi,
> >
> > I'm doing some work with MIPI cameras, and I need a development board
> > with stable Yocto and MIPI CSI-2 support.   At this point, I'm
> > thinking i.MX, but I'm open to any suggestion.
>
> It looks like we're going to purchase an NXP MCIMX8M-EVK dev board (at
> least one to get started).   Can someone please confirm that the
> imx8mqevk.conf machine file is for this board?
>
> Is this board Yocto Project stable?  I need to be able to build the
> master branch for this board (or should I be using next?). Any comments
> or feedback will be great appreciated.
>
> https://www.nxp.com/support/developer-resources/evaluation-and-development-boards/i.mx-evaluation-and-development-boards/evaluation-kit-for-the-i.mx-8m-applications-processor:MCIMX8M-EVK
>

seems it is in meta-freescale.
https://git.yoctoproject.org/cgit/cgit.cgi/meta-freescale/tree/conf/machine/imx8mqevk.conf?h=master

> Thanks
>
> Bob
>
>
> >
> > I'm not sure what type of access I'll have to the D-PHY data streams.
> > Do they always terminate into a GPU?   However, I would like a board
> > that gives me the most capability to control / route the data with
> > open source drivers.
> >
> > I suppose I want CSI-2 in and HDMI out.
> >
> > Thank you,
> >
> > Bob
> >
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

