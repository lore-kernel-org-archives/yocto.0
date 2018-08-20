Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42899E00ADD; Mon, 20 Aug 2018 06:54:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40825E00A86
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:54:21 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id d189-v6so25920886oib.6
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5mUEJcGor4YT3/mDN/iS7WQKHv5Py5wukBfq7nDyn6o=;
	b=I3UY7vDV9MgyfbrUKxxWlwX2lFffcYf8EgP4xyI8MLk3O8gDG5Hv7gvvvV+ZqAEjgU
	xHqxy+yRNMBExDgmhRvgyKndTb5Sbkry5E3nMMQSwRmr9+JyAh98Q0RaQLMNhGBbuNB6
	iCX7B/4Q55l+LR9fApPd1fhH0c4tPt5f3yJazN03fXvMReTncPKVHFda5KfLX6L831LV
	2yWKL7raefSarVWblDDYm1h8ut9OFDBGTwG9dtRKKA2LFULWLZembAPTAFDl7OOjtd8E
	YAFspBKae1kN9/wIZBzDtyNCZ55YWph9Q2H3dLmj72ptZL5ESHsSUuC6hhTR0FAhOVEo
	lmOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5mUEJcGor4YT3/mDN/iS7WQKHv5Py5wukBfq7nDyn6o=;
	b=t72Pu9nfn8QBDMzquO0th8ewJ62i2EGDgFdQJZSkKOOzVe8+yBthI9illeLILWJscg
	MoFG+zQN6LdA7FDs9387q/RGgIsLpcEytrYkutm/w5zYTaYIMeN/dnbrUihP6hpa81Kb
	sj1rilY03MaAky/uqFURzcrfcgLJFUx+xnptQB5XecAhNF1vXttyAESY0CVOdQnyvaJB
	gvIS/kW4tHdlMjJvsMwRKPQmJXRE7uGIsWYy3UbZzgMzFc+fgOmTymqIUWsTgT9a10Lp
	/WMSHgG0m8LuxqCyPgOPA80W9N6mwBGVxzpGpz1oC9ddhmGapmubc5ofbZSR7CrmhiV1
	4RvA==
X-Gm-Message-State: AOUpUlEngsFrSRpYKM6XR4N8zwElbFN+wzajDlW8QbFvEf5NbLszK386
	dLYwjUdN2NrOzD4RPcGAh5U98+8nr+2IkEXEh9w=
X-Google-Smtp-Source: AA+uWPzCYzIRtWX+FdJ+w8WdT+zgGLUhRPVWxuXhoDy2QKixSRovo7/uQBO8i/E3rIsq4xSn8gaHcm0DJVnBAP1qjvE=
X-Received: by 2002:aca:edc1:: with SMTP id
	l184-v6mr14122197oih.65.1534773260648; 
	Mon, 20 Aug 2018 06:54:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Mon, 20 Aug 2018 06:54:20
	-0700 (PDT)
In-Reply-To: <HE1PR06MB16896228DCEB67A69FF9D43E94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
References: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
	<HE1PR06MB1689535B4BAC12A98F5883AC94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj8Vcx1D6Pr6rtj3NFXG0gsUgm1oMuNrpnYmTuVSAOT-9g@mail.gmail.com>
	<HE1PR06MB16896228DCEB67A69FF9D43E94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 20 Aug 2018 15:54:20 +0200
Message-ID: <CANNYZj_wDbKMA+d5sKgLjanukfeJLmj=Lj+5+6P1Pu=cGZeKtQ@mail.gmail.com>
To: Nader Hariri <nader.hariri@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ptest-runner "No ptests found."
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
X-List-Received-Date: Mon, 20 Aug 2018 13:54:22 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-20 15:36 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
> I ran 'bitbake -e <image>' as you have suggested. I can see from the logs
> that the variable IMAGE_FEATURES does get appended the value of
> ${EXTRA_IMAGE_FEATURES}, however I still have no -ptest packages in my
> image. Is there anything wrong in my logs?
>
>
> # $IMAGE_FEATURES [3 operations]
> #   set?
> /home/nader/poky-docker/workdir/poky/meta/conf/distro/include/default-distrovars.inc:23
> #     ""
> #   set
> /home/nader/poky-docker/workdir/poky/meta/conf/documentation.conf:210
> #     [doc] "The primary list of features to include in an image. Configure
> this variable in an image recipe."
> #   append /home/nader/poky-docker/workdir/poky/meta/conf/bitbake.conf:806
> #     "${EXTRA_IMAGE_FEATURES}"
> # pre-expansion value:
> #   " ${EXTRA_IMAGE_FEATURES}"
> IMAGE_FEATURES="  ptest-pkgs"

The space looks suspicious in there. Can you try to set
EXTRA_IMAGE_FEATURES directly with = instead of appending to it?

Alex

