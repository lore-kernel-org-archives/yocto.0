Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC751E00566; Tue, 14 Aug 2018 11:28:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
	[209.85.222.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1742E0049F
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 11:28:10 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id m13-v6so14252500uaq.7
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 11:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JWwLa42Nb6s4tal2YbQyHtBotuheHDHbxpJJLiCYbjY=;
	b=Z+9mclIhCk2A3SOo58CZayEl0FakHc6E8cjekVa4gk/iQ2lDKg2DnFlONTlMmVJX0F
	Dk3qMzbdQR64ngJYnWIhav2SeRvxG4nBR2djiSgPOzzhrqe80XkLxsSpQgy5eN6AaKZ5
	vpSTVdKpvFiQlCutfTMeBKXxmwm6Aevs4jh9yRz4TdISiBDu3UZwQyuvQxjU9GH4cjLk
	yWXb1qMvLP+S81zMuOx6eDHla0jrVWBQ/2ip7q9d+uYFY9BHf81K41ejR9GmsdSMePSO
	ZkAeF6v/II5lZmrTfZwLFjMfpNgySOEzHzOAFvG4AnoIDbihv6J8W58u9E4QhNs/mpjh
	PtbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JWwLa42Nb6s4tal2YbQyHtBotuheHDHbxpJJLiCYbjY=;
	b=Ba3541jZydW/Cse15aewE4+qu1wujc6484CnIcPFchOLk8L+eyyLeIdRzWZSiA4+ma
	JBZpqJyXtu9edGQGvYReRHnVh9Lf5ZAyGHWO3JEaQKf4/+Fc4jdbQuAADcAOxBhTFx54
	bSC/n/ylfazBZTG6aGp7iolG4FZ/S/osrwlfeinn1/+E4+XeONP0WG5bcMkQTfGUoJdM
	0afPNYNahrnDUssLOo1KuQuxiPwwnPigjlcr1Zc712NTT31spTgp3EbAfeVFHnjpILaC
	YqwMBMAFeezc0GwqHXpBYv9Dhro2cbQ8DVJPilqlhyqzScFPaKB/bMwr6CwO7kV+R1TA
	Prxg==
X-Gm-Message-State: AOUpUlFh02VF+6Q0+Q3VfuzYpWUkKaf2ylqrS6pR6Xrczd0vInHgKzVt
	YbRXKbuQvQW3pINcRe6FjPcxBaVs5/RZgca4lsvCvzSm
X-Google-Smtp-Source: AA+uWPzp9z7OsLZJxLcQ6BFYDr/WVuTmbMjy1uVYuDgNJiBo7CwH/xhnTP4G8VGkWD05M5me4Ff3AW4XM6urzdqmz10=
X-Received: by 2002:a1f:c252:: with SMTP id
	s79-v6mr14647407vkf.127.1534271289351; 
	Tue, 14 Aug 2018 11:28:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Tue, 14 Aug 2018 11:28:08 -0700 (PDT)
In-Reply-To: <df04ced4f6dc42808b725892b0a59aff@4rf-nz-exchange.local.4rf.com>
References: <df04ced4f6dc42808b725892b0a59aff@4rf-nz-exchange.local.4rf.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 14 Aug 2018 11:28:08 -0700
Message-ID: <CAJ86T=XRZXCOZ2ghvjK1Fz+gCzX8AL4PFi5c3G1y3zM=kSdrWA@mail.gmail.com>
To: Amol Lad <Amol.Lad@4rf.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating multiple filesystem images
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
X-List-Received-Date: Tue, 14 Aug 2018 18:28:12 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 13, 2018 at 8:23 AM, Amol Lad <Amol.Lad@4rf.com> wrote:
> Hi,
>
> Currently when we build say core-image-minimal, we get a root file system
> image (say ext4) after the build. However, I also need to create an ext4
> image for /boot partition (which contains zImage and dtb). I do not want wic
> image. How I can do this? i.e. I want two ext4 images after build: one root
> file system and another with content of /boot folder. Please advise

This isn't supported directly. However, if you look in
meta/classes/image_types.bbclass -> oe_mkext234fs() you will find the
commands which are run for the ext4 image type.

By copying and extending that code, you can define your own custom
image type (e.g. "ext4-split") which creates two ext4 images from the
rootfs instead of one.

