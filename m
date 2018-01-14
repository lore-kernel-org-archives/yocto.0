Return-Path: <maxin.john@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51587E00E73; Sun, 14 Jan 2018 04:39:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxin.john[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C3AE008A4
	for <yocto@yoctoproject.org>; Sun, 14 Jan 2018 04:39:13 -0800 (PST)
Received: by mail-lf0-f68.google.com with SMTP id g72so4913848lfg.5
	for <yocto@yoctoproject.org>; Sun, 14 Jan 2018 04:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8sfyVKTsKuYygskUPCWfXoLIbhN5t9QG8oohkGQJHXs=;
	b=ncueI91u4CHrwB8sEINqno8sSqDjG5dvE9RH0NYoCsFPj/Zox4/7XsaKsGFvZiohJx
	S3vJCyUu1be2FMHgv1MrxO+DFM+GRqBod9sa0iRUgfls+5TLNvjyJqZLKv3jYk0Fx5Ce
	UHADp+MoHpQeyZtPwiOQftIZPUIdyVPL+GYlBSeWj27JUbwE4VFHUCaYGEoC/oI0iBtb
	PrW4IlQiwFMSw8z3Re1i2QBSXLVzr/6P07ZsejyKex//xAJ9zd/kSH9uEbJOyRDJ7e7u
	63mETWI5UWY0c18C2xSwfipvx5U6Gaz2uqLUA3u6syz4h+F+bCLfQxvQDG+Ez3jbhhz6
	NNhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8sfyVKTsKuYygskUPCWfXoLIbhN5t9QG8oohkGQJHXs=;
	b=h/+n/BLHLn08GkEOkw4d/lOn1P311E81x9mH+jVCuRJ3/lxWM7+0zFAN7IknmZTyK0
	dLt7dMm65Bily+LPtHaSKhHaewq3/wpMC52E9d51tsxqRhvZl7OBeN5ClihMDtmjbO16
	h2c1aLkJJA6WDColtTooYDt7e2NkXGMQe55uG3uaunkdJKJxv+rOgfTcZGSqNDvEPiha
	tX9j71dpSbZTwaPUJfVS0L6EF8Vd6UrFlu5rNMfXs2YVwCC9BYtUmixvhz+yK2ppFsOa
	Lqfz02cj8RmFWPp16JzE5uD55LNbfE6wDfFyymB+2+3heLmLuXc0wuIHpebSzW37eQHq
	1sBA==
X-Gm-Message-State: AKwxytepOGpWxl3JAL8+DfmEw4OmFuUYu2HWY7hCYt8mgyrPcl3SjvMH
	3c22rkpPsO4c/RS+5EWL4kJHs+h7ILxrw6/S65Q=
X-Google-Smtp-Source: ACJfBovPLv9RfSJTbqx75KqZSdxgiBkKCG9vseAFPHlhb+xrfGHYyAZF+M5bb0DhvUm82grlfUDqmxGQaa9ya4/y6rQ=
X-Received: by 10.25.162.142 with SMTP id l136mr15801630lfe.43.1515933553130; 
	Sun, 14 Jan 2018 04:39:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.114.2 with HTTP; Sun, 14 Jan 2018 04:39:12 -0800 (PST)
In-Reply-To: <CA+JFif0Zqz-jbq=Mq9Vs=D3Ft-_mkJtuZCFU32_XPpwF3BcWYA@mail.gmail.com>
References: <CA+JFif0Zqz-jbq=Mq9Vs=D3Ft-_mkJtuZCFU32_XPpwF3BcWYA@mail.gmail.com>
From: "Maxin B. John" <maxin.john@gmail.com>
Date: Sun, 14 Jan 2018 14:39:12 +0200
Message-ID: <CAMhs6YyxOwTkme_7aq1me1pudJpY4e+J=NVNNwtGBFyca=_=Ew@mail.gmail.com>
To: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Reg: SPI enabling in imx6ull
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
X-List-Received-Date: Sun, 14 Jan 2018 12:39:15 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Mathew,

On Sat, Jan 13, 2018 at 8:20 AM, Mathew K Tharakan
<mathewkunjumontharakan@gmail.com> wrote:
> Hi,
>
> I'm unable found spidev in /dev, I have done necessary changes in .dts file.
> I'm working with iMX6ULL evk

We need the kernel configuration to enable spi support along with your
.dts file changes. It will be better to
check this documentation to update your kernel configs:

https://www.yoctoproject.org/docs/2.4/kernel-dev/kernel-dev.html#changing-the-configuration

> Thanks
> Mathew

Best Regards,
Maxin

