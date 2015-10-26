Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39E79E00B9A; Mon, 26 Oct 2015 04:28:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F06EAE00B8F
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:28:52 -0700 (PDT)
Received: by iodd200 with SMTP id d200so19446628iod.0
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems_com_br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc:content-type;
	bh=dqHSwU1kU1JR4MeBiEUvo3ohPkDmJPX/WhZeK57fmyc=;
	b=en85H8v+3dtENiKAGVbb9yXSasCOTuKQCEErrnpB1yTZR4LIXfb6MaMg+XrfC7JRyF
	mZjGuQTCznlefKnwSZWKWKnQ4YQk9iAQVC/rg4bPlTTlMOfancZ/k8KJfxDDh7eVl+a6
	DAn/tPW6/4I08CLjEc27qLFmNGMfLKit21XMqR0p57CpQ5QhUteccehivUOwRr6CZTnU
	o3t2o+BqXKelIIAiwPuV6STazQPHsV1HiWsLk5SI0dC5JtlUjg9e3bkZ7S8W4KIBVo66
	HL37Qd8dOTmPfeq6MF0Vn0OZiUj0nqQwHaKM7XoDdR6J8uKVciWsQKJ1Q1y64m1svptr
	BdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc:content-type;
	bh=dqHSwU1kU1JR4MeBiEUvo3ohPkDmJPX/WhZeK57fmyc=;
	b=j6XT0S5H1jQ8jkQGsmLSwKcIlSfXW8lXDqAxh2D1Zj9of59mSkajV6VyIxrEZLdisJ
	uKs7OjRQ3LTMm8xy4crvBLz3rJ5lDPYKqOrRhLKn5YDQ+NmUfCg7yPioLyvzfo2UQgFV
	UMeMUgJ047j6MrfjvEXfwoHNzWgWaWwiWP1IKiZtW7IMCNGD4DusyxQBgiax7f6aMFI0
	XE3ikbsV9r6OENqv/GKWoWwkY3FMEdE4o6UQ06rNcTb6zufbUQL46Hh3cGjhBIo6k73y
	qCxSTfWTXFA/X7Ko8zvlMoyu7670Eqh6m1JMfFQURHJYFXOPc4+2WVOhkCliMp9iZwji
	cQTA==
X-Gm-Message-State: ALoCoQlDZFv235VSUpJ/AUoE/c69q2j71LKXqsYWpZTgsFzkD58CeU5QtU59y47a6ehbk2FqZIGU
X-Received: by 10.107.41.66 with SMTP id p63mr23534076iop.36.1445858931884;
	Mon, 26 Oct 2015 04:28:51 -0700 (PDT)
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com.
	[209.85.213.171]) by smtp.gmail.com with ESMTPSA id
	b26sm9224997iod.40.2015.10.26.04.28.49 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 04:28:50 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by igbkq10 with SMTP id kq10so56028549igb.0
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:28:49 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.50.60.37 with SMTP id e5mr18723042igr.46.1445858929418; Mon,
	26 Oct 2015 04:28:49 -0700 (PDT)
Received: by 10.36.218.7 with HTTP; Mon, 26 Oct 2015 04:28:49 -0700 (PDT)
In-Reply-To: <562DE34F.2040905@gmail.com>
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
	<5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
	<562DE34F.2040905@gmail.com>
Date: Mon, 26 Oct 2015 09:28:49 -0200
Message-ID: <CAP9ODKqqQVBUX9vc3ysrXQMAfZxNFqcws5Tg7qrVJcAA7eHx5w@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 11:28:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 26, 2015 at 6:24 AM, Jonathan Liu <net147@gmail.com> wrote:
> On 26/10/2015 7:08 PM, Paul Eggleton wrote:
> It would rebuild qtbase (and recipes depending on it) without Raspberry Pi
> support for other machines.
> I see similar machine-specific do_configure_prepend elsewhere (e.g.
> https://github.com/Freescale/meta-fsl-arm/blob/master/qt5-layer/recipes-qt/qt5/qtbase_%25.bbappend).
>
> Otavio, any thoughts on a better way to handle this?

We handle this moving it to a SoC subarch and using a dynamic package
arch handler to put every package depending on it as a subarch as
well. Ideally we could split the QPA module and build it separated. No
clue if it is possible or not.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

