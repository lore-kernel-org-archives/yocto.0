Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8DD0E00AE6; Wed,  5 Jul 2017 22:01:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BE8EE00ACF
	for <yocto@yoctoproject.org>; Wed,  5 Jul 2017 22:01:36 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id 77so11934956wrb.1
	for <yocto@yoctoproject.org>; Wed, 05 Jul 2017 22:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=V6ETXnHp1OSxLCTDboNIUFm2Kl+JXonydxgWDkU8Z5s=;
	b=DayeDKYaL+RFeSyzuWIpo7XeYEFc7rUGU9TePgnv+BwXCERe/EOh6rgOP2eP3cSu2v
	+tly4F0l1xmSkuOtwU0+9tm3bkAdaQSgIEq9OiSbcqW4CtyBR8dCKmooHAZF/7/c4J9Z
	BxC8/Dc5is9nxx76B6YPbreRKdLF+6Xtgp4qsHu7T5XqlxFL7bFd5+9mWw8/7ry8LO/E
	2iXh0Lg2Jq8mDAwZD9B9M0B6X0pKV+2yzbXZpJa0t1HG6Ua0JgfPqdGwrnnrJxCOhJEO
	u2v7lW7mE+UwX48fGC5QxmwqXxbRyCySM68VME0Rd86NdZkeJtRQuND1RQGWv7JKpzRA
	sbGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=V6ETXnHp1OSxLCTDboNIUFm2Kl+JXonydxgWDkU8Z5s=;
	b=WpB2znMYsGgrxkLfF9GZSUX32DjXmJbK9qlhPewFEANzabss/BUXshxBjHPG1Blswr
	JnFAJd2VNNTEBFE9sctspArYcJiYdNw/K9AT7+M+GmvSRKeLkCJ89kmGH7oR0jB7AJRX
	7C9LkPa0o3BxSGEO40eQengHisNYlGf5niXmewbvQV0PdKSdepcbZ60MC60xhvb8JMkX
	F1tf2U8tt1PbudRE/PMBjURqkwC0+zbDcQfN6gG95e8VMSU6/j8htC1YVG+tS1LwkkXh
	tSTYAXK68fL3fZbZKaqPvRmTr1HWWxTJkxhwJhmv69K22rcKsW/lcIUu8RAOkqW9y4wt
	wkDw==
X-Gm-Message-State: AKS2vOyi5r+oCGhDbe9oSRx2wLkx0gNryDKfTbC5rUgp4Z1okVawgLi5
	Nshe8j8ucNeJBDdUuy4sSRCooFjSrw==
X-Received: by 10.80.140.204 with SMTP id r12mr24533638edr.123.1499317295850; 
	Wed, 05 Jul 2017 22:01:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Wed, 5 Jul 2017 22:01:05 -0700 (PDT)
In-Reply-To: <CANmFEgtrdWTZYa1=pU0gBCiD1AP+gGNvviYkj1DmELJAkwUnWg@mail.gmail.com>
References: <CANmFEgtrdWTZYa1=pU0gBCiD1AP+gGNvviYkj1DmELJAkwUnWg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Jul 2017 22:01:05 -0700
Message-ID: <CAMKF1sqOet8Zto2frKvsyLPSThBjFRJo3MMw1q9aNBC3cFHm0A@mail.gmail.com>
To: sourabh banerjee <droid.baner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setting groups and users other than root
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
X-List-Received-Date: Thu, 06 Jul 2017 05:01:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 5, 2017 at 8:28 PM, sourabh banerjee <droid.baner@gmail.com> wrote:
> I have observed that the group and user default to root for unless I do
> explicit chown and chgrp in the do_install step for a given recipe.
>
> I have few recipes for which the group and user are to be set to something
> other than root. Is there a way to achieve this? Such that the user and
> group default to something else for these given recipes?
>

you can achieve it via already defined abstraction. Please read
http://www.yoctoproject.org/docs/2.3/ref-manual/ref-manual.html#ref-classes-useradd

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

