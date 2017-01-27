Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F3D8E0050B; Fri, 27 Jan 2017 11:41:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.193 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 701E8E003DB
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 11:41:33 -0800 (PST)
Received: by mail-yw0-f193.google.com with SMTP id q71so20264923ywg.3
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 11:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aDXDOH3pCcudBz4AjR5aE5Ef+RTNNEJrp9YBaqIJMd4=;
	b=F7AWn0aKom+5/cq3UwLa2H/i6xqIF/rVGf7sp5PGacRQKJb9yFs5DbfhJk3ZMFJ+5g
	Or7nPn5IlDI1NHnjMxzEdlqNwGgzTiLe/cc5+FCg6gC9NYrKHHFvaKvVQw9u8r+5mVzO
	+2ElNQ9rUoXDj+RcWnos73lWJMmTqY0XkunP3/VNxNIjc1mxrr7xWjv5ywzZsCHFLzk6
	qOnLG8xTH+MurYBcYHKdTkECCosE9/SvTwApxLaafK/8yJgzyUXHCfHdvVpwSbDETxGi
	ndtZzQysU7fFD/PB+g2QLinhPpv3Mhs9Xb5J0odCkCrR66dIIT48++jIiWXd4DSwVuzQ
	2/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aDXDOH3pCcudBz4AjR5aE5Ef+RTNNEJrp9YBaqIJMd4=;
	b=fDR/Dh2aGqW3N/PNgE6gYo/sn1oMGIrGzgCXWelwMsVzKAMLkwv5wp0PRIbkDTGrI+
	MYC0qOeGJ66ynziUSWDx5ExtSCOLP9YcJU7j8oxxith3Yjk2rv6JNOtPKxRQ4wH5mMv3
	dJ2mMigeGNaw8t4cH35IWYOjWWWG5Fy22AEUYNWaEqJ+APKTG6+PyK0EeLTS1s2om/+8
	H7X10Dp79x3ib2Dry8qlITTEdPCMnbpNyV060MfVZ9aJYFKKmn1qzHRCUdO/kPoJ6Okn
	Eaiv51xryqETprJss1X03xDbq2IYLZeWWCl2JZZ7C/bVxnzCteS57Fr4WbZQfPy8nXt2
	CLgA==
X-Gm-Message-State: AIkVDXKHbfllmjksJrNV6OcRFyK8phNWow55cSyud5R5bAJf0LpF5WseF3SrgQHpf1qj5EVwaZVGpZiJlitmwg==
X-Received: by 10.55.24.76 with SMTP id j73mr9629592qkh.267.1485546092994;
	Fri, 27 Jan 2017 11:41:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Fri, 27 Jan 2017 11:41:32 -0800 (PST)
In-Reply-To: <CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 27 Jan 2017 14:41:32 -0500
Message-ID: <CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
To: Romain Perier <romain.perier@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jacob Chen <jacob-chen@iotwrt.com>, Eddie Cai <eddie.cai@rock-chips.com>,
	Jacob Chen <jacob-chen@rock-chips.com>
Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Fri, 27 Jan 2017 19:41:41 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier <romain.perier@gmail.com> wrote:
> Could you:
> - Make one patch per new machine file and not one patch for all new added
> machine

Agreed.

Are all of these machines actual devices? The evb one doesn't sound real.

Are all of these machines released and available for purchase? I've
heard of the tinkerboard (although I can't seem to find one I can
actually buy) but I haven't heard of the fennec.

> - Add a clear @DESCRIPTION for each board, see an example here:
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf
> - Write a clear and an understandable commit message for your new patches
>
> @Trevor: What do you think about this rk-linux.inc ? I don't like this,
> either its name and what it contains.

First off, I think it's really great to see people contributing to
meta-rockchip! :-)

This entire set of patches seems to be adding "official" support for
the rockchip devices; in other words, these recipes will help you to
create builds that use the official rockchip sources. That is great.
But I think a good BSP gives a user all the possibilities but then
leaves the final decision up to them.

So I agree with Romain, I think the name could use more work. It would
be nice if this set of patches included something in the name that let
the user know these build from official sources. Then the user could
decide whether they want to use the official rockchip sources, or
whether they want to build from upstream. So I'm not opposed to the
idea of adding recipes for official sources, I'd like like to see them
added in a way that leaves the decision with the user.



> That's it for now.
> Thanks for your patches

+1 :-)

