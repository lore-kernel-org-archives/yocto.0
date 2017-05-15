Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1A1AE00B05; Mon, 15 May 2017 10:24:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B565E00AF0
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 10:23:59 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id u75so18380802qka.1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 10:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CBQYkYHznUDnlc4GucLexeCYZz8cT1T3Coxob9KFRTM=;
	b=LpAZDVjnvUWwwD9rHEPfW7ZCDvLL2N+jUdc6OLR4e8PUoBL0vH1ICVz5kYnr2qLLft
	+V6r5whZPuHmov481LMNWwj2UypM2YSndfzJdEWkq3n6zo9D0fMciw/v+lDOkMa3ssLV
	n92geHftvMToalUyrS1uQ0yeD08DB4OddtJwV6OsXFz5Uk3DDf9G4LvegA1I0qs5dkHU
	WcdX9Ik/37H0l6q7HKNo/cBt802KFoD9MJFzn/I7tMUi85ZCF9/1jMg1t7KPSaGWViRT
	KZ5fQL5CA3xC1io5g4pnf+Y+Dw1otcIwwItselWsFrASawoNdr6uySZJLAeoUx2m8xra
	5YmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CBQYkYHznUDnlc4GucLexeCYZz8cT1T3Coxob9KFRTM=;
	b=aNnHN/nhWMjkfpzE0McmQDddX/KyYDqfcBEVDgLcCFEIJMU8bSkC6aFG7hTDJeReQh
	b+DHBJ8K3cBpfkHKfzHUtU+zmWKMTaNzvbrwutkfGe6nqUeT8kZXweR9AJ5qDO/p4/pq
	iU+17cMAiJORSnnM6oPxgbchlecwJJLvOsI6UzAJJm1BjRMcds4pIWUaytiu+KeIYPzI
	5KY2W2n2iHXkEfHV1mFZcEvFA3RFG+6OIJuyHzK2AiTyAp632DMMWIauT71F0g1zibrd
	8pDaxSPAxSzW6cBh7RNVL2KE0r0h5ctcOexId6LioHoKjMDtqqsCegtKvCm95yKZd6tX
	KfwQ==
X-Gm-Message-State: AODbwcDxDfDx6c/FxvycOkr0W6kDXXrFAudEHhHpd4foGwB9UmAmC9v3
	E1sJgkf+glf5shftJu/cl0M1JCFBDQ==
X-Received: by 10.80.178.228 with SMTP id p91mr5653395edd.131.1494869039240;
	Mon, 15 May 2017 10:23:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Mon, 15 May 2017 10:23:28 -0700 (PDT)
In-Reply-To: <20170515163324.GB21833@linux-uys3>
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
	<1492013128-5920-4-git-send-email-ayaka@soulik.info>
	<018a6ea6-38c1-92aa-9a32-6dee2e7d6e6e@collabora.com>
	<20170515163324.GB21833@linux-uys3>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 15 May 2017 10:23:28 -0700
Message-ID: <CAMKF1sp==_gXOHLOYx+k2_Voh6hUGvnw8mtN8=eFZ9bnRDt3uA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip] [PATCH v2 3/3] recipes-multimedia: images: rockchip media image
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
X-List-Received-Date: Mon, 15 May 2017 17:24:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, May 15, 2017 at 9:33 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Sat 2017-05-13 @ 06:20:35 PM, Romain Perier wrote:
>> Clearly a NAK here. I don't want yet another image for this, that's a
>> bsp meta layer, it is supposed to contain the recipes and rules to
>> propose support for Rockchip SocS in in yocto/oe and its reference
>> distros. But it is also supposed to be minimal, I don't want "all the
>> world"  in meta-rockchip, to be honest :)
>>
>> I am not fan to have recipes or rules for development...
>>
>> Trevor, as a co-maintainer, what is your point about this ? (always welcome)
>
> It's not uncommon for BSP layers to include sample image recipes
> (meta-raspberrypi, for example, includes rpi-test-image, rpi-basic-image, and
> rpi-hwup-image). These sample images act as a sort of example, or
> documentation for others to follow. They're a way to show off what can be
> done.
>
> This recipe could act as an example should anyone want to integrate gstreamer
> support for a rockchip in their image (assuming this image builds and works).

you could also make a packagegroup and leave it there and let end user to
include the packagegroup in his/her image

>
> I'm not opposed to it being there, as long as it's benign and works.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

