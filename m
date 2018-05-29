Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81719E00A51; Tue, 29 May 2018 02:35:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18DDE00903
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 02:35:06 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id 11-v6so12440647ois.8
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 02:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=AHf47gU3tX+pFSk76hUMx2u1oTbZe+oXHNkcen9kWa8=;
	b=JjKbPcX8LXDiVgEAKtP+cGVcCttY1makxqC1TUiC12lO0DSNT4NifioEQJB/aTAx15
	qru+mOIgTtqjqr8kbCcDhtpKqxeaQtpRt9pqMSXFbi8k5UcCPhASxQmDbRpe4cmmcirT
	ial5mFmrLwozzJbavmF1Ov/oiHELsoYc9gAQV6/ZyjztViqni3iAQpkL4BWmLIxSeWDA
	HQF6a6oJmzUsiimySmhT+pE+k5bTDWExkEmf4tGvVzuIzWdMIs3wkL6FqnQaV4LcmDJ9
	ayg8tskqie4u1THuqKHclWuPFdfmrYtuqvFAWaF1Ihhq6QhFvo/netfmidr2vqd7pkQw
	uhEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=AHf47gU3tX+pFSk76hUMx2u1oTbZe+oXHNkcen9kWa8=;
	b=pbMQ0mODR5Fy7kdw1Wpo5el/KmQRDhIjjXkCvtbM8qZucjggikHHMPg+SfdyktzjPJ
	fBR4S5Cza7eeQJ20L/RARNoqbHPNV+Qy73zkTEH2OoYsEiQS/hQ83h9FPkRnJIi1GJ96
	/cRu8naC0AKneml5I9zufi3dHnnlykTsW3H16r4sDxPT6O4jhk2A2lBeZD/BiWhk5AoW
	DBbSSpBvR/dZIAeSlw9EF8RgoHr6Af6R6fR+jTJSVXSAasxLwhVKQUZjy1aXC5TrHMMW
	jYAtzWxsX4STY63WOUfXXkWq/QMVz3hue4BwVUEQXNDnKtEtLshTyVmksFcbNoY0lP3S
	twzw==
X-Gm-Message-State: ALKqPwckvcJZfYVld78k7xYTXV6y9vopDkcSRjHAX4wOMvOHDz3rx14F
	eZ/nHeDzl6ItJqkS6xgAbsTl+KPlhMXpSzko6dEio7dw
X-Google-Smtp-Source: AB8JxZo+SLVgHHXXZmhN61fnM3p8Zv6ew/mLG1RipXKy7eeCiro9dyHo5CW2PdOYASVxicAvlyAbUGl3O6s47fWUGJM=
X-Received: by 2002:aca:3543:: with SMTP id
	c64-v6mr9691502oia.67.1527586505762; 
	Tue, 29 May 2018 02:35:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1a99:0:0:0:0:0 with HTTP; Tue, 29 May 2018 02:35:05
	-0700 (PDT)
In-Reply-To: <CAOT_U5a0_QAXjYbd05fCDMUjJorQ43Ax66aN7grd_-OH3URKkA@mail.gmail.com>
References: <CAOT_U5a0_QAXjYbd05fCDMUjJorQ43Ax66aN7grd_-OH3URKkA@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 29 May 2018 11:35:05 +0200
Message-ID: <CAOT_U5auOM-Y5p2v4muHKMX3ZT3sj7SujxC_a9S8fidmw5PGmg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging race conditions in image creation
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
X-List-Received-Date: Tue, 29 May 2018 09:35:08 -0000
Content-Type: text/plain; charset="UTF-8"

> The issue seems to be related to a missing bootloader file (they both
depend on the exact same bootloader):
    images/senic-hub/u-boot-sunxi-with-spl.bin.1

It seems that sometimes the `.1` is added to the file name and
all the other actions depend on the `u-boot-sunxi-with-spl.bin`.
And that causes the failure.

Whenever I examine the variables with `bitbake -e` the
"u-boot-sunxi-with-spl.bin.1" is never mentioned always
"u-boot-sunxi-with-spl.bin"

That's however only for a single image recipe where the
issue never occurs.


On Tue, May 29, 2018 at 10:22 AM, Alan Martinovic
<alan.martinovic@senic.com> wrote:
> Hi,
> I'm building multiple images with the same invocation of the bitbake command.
>
> When building them one by one, everything works ok.
> However when they are both executed in the same time,
> issues occur during do_image_sdimg.
>
> The issue seems to be related to a missing bootloader file (they both
> depend on the exact same bootloader):
>     images/senic-hub/u-boot-sunxi-with-spl.bin.1
>
> I'm guessing one image is trying to use the file while the other one
> is deleting it or something, so probably some dependency related
> issues in the recipes.
>
> My questions is do you have suggestions on how to debug it?
> Is there a global ordered list of executed tasks so I could see what
> might be happening in parallel or before the issue happens?
>
> Or can I explicitly set that a recipe shouldn't be parallelised?
>
>
> Be Well,
> Alan

