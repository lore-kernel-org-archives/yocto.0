Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 887E5E00CA6; Tue, 10 Jul 2018 11:54:00 -0700 (PDT)
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
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B096E009AC
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 11:54:00 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id i12-v6so44655565oik.2
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 11:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jkH3d2Pgsi9yvS6+uxwbOVveyJv3rdqvkhzdTP/7H+0=;
	b=H+6OjUnVMFSqnBcXX/DtWKCOgB8g7xY2Qc5KFvM4e1Uyl3IYqq1EWgBwPm8UvZbzLf
	hJvvZFY5xfBlNw+mKDNgtfx9g6sHLx/ON2xIZg3S3mGz9SycQMHB5BKgiJlOD80Uye+V
	xmrnp4ckEg9F8UScG2vQLTwc2LquRCTGC96tgS3DXOnLqHbUtsWSIbEW7nB4NBXqiLCB
	4N/VA5gHfpDPkBSwK72xtV+LUc0TT0+DBhrG+bc8J4rJ4Rdx7N/Pi/FfIrp51pZWw8XB
	Dpb+1Xc0W2mEsueu6IOMjBLaOh5H0dyQ7ABc6TabdVK4L1gNdVPOr5PAFTvft1skaCSn
	KfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jkH3d2Pgsi9yvS6+uxwbOVveyJv3rdqvkhzdTP/7H+0=;
	b=Y9xkT00P3mAfXn08enP3xiaxcJg4+scPUGvC4NIC7CTFa7GPvix5XsP6hkw3UYocpP
	D6DioiU1v5AHqpBXF5QZMZIjfWZI/HcfdqDbbnTSdTJDcCPmFsVPO2ypRl75DNXsi3WV
	3aDoH19RjeE3s5zmdr8Vjo2MNQl8zbF2g7JJeVGCM0iX6gCuV33VIMgqx5AoEVUVxX2T
	ezM67EoAiEFEI2YLPrtU0hxIUyL10/ZWH28euUx6X4C8hBjVc0LoV+GnLX6fwwBQ9d2W
	PPV7dSWfTKgtdPJfxw9gopV7ULx6d4jD8/OoDTgaqegYMDDFl1BPDt0YGin2A2xw2nnv
	Mfmw==
X-Gm-Message-State: APt69E3TblqG58sVzgbsnc49f+2GOfO/TBL+xG37U9VbsJ3kSc7BBAEo
	QRmAAktK8wT6K3w+poEDWAp43m8+KNTVTCCcj5Y=
X-Google-Smtp-Source: AAOMgpdkTboj11o2ELXWgrs1Q00RU4ymfIxqXSgJ/2hA+PFbSnZZ7FNdkzOE3jKyjSHPQOYFHsniikRlNKcXLLG/1mA=
X-Received: by 2002:aca:4fcf:: with SMTP id
	d198-v6mr26185598oib.51.1531248839579; 
	Tue, 10 Jul 2018 11:53:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Tue, 10 Jul 2018 11:53:59
	-0700 (PDT)
In-Reply-To: <CAOsp8o-2V=xNk4aEB9HfV9j=aHdW=bgyOqcCg13QJqQ2APSOHA@mail.gmail.com>
References: <CAOsp8o-2V=xNk4aEB9HfV9j=aHdW=bgyOqcCg13QJqQ2APSOHA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 10 Jul 2018 20:53:59 +0200
Message-ID: <CANNYZj9161QoBpFJ7w3Z-1Pog5fRntsr=7mxNwtRz8y3SQq3_g@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Hook for layer-only actions?
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
X-List-Received-Date: Tue, 10 Jul 2018 18:54:00 -0000
Content-Type: text/plain; charset="UTF-8"

Yes. Implement a class and inherit it from the recipes.

Alex

2018-07-10 20:50 GMT+02:00 Michael Habibi <mikehabibi@gmail.com>:
> I was wondering if there is a way I can apply a global modification to all
> recipes in a layer? For instance, we have our own layer for our changes that
> sit on top of the base Yocto/OE layers.
>
> What if, hypothetically, I wanted to insert a do_package_qa action globally,
> for everything in our layer. Is there a way to codify that, beyond actually
> adding this to every recipe in our layer?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

