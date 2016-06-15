Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 566C4E00D46; Wed, 15 Jun 2016 14:10:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f67.google.com (mail-qg0-f67.google.com
	[209.85.192.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 264C0E00D42
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 14:10:38 -0700 (PDT)
Received: by mail-qg0-f67.google.com with SMTP id 34so2756809qgf.0
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 14:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0ETb4dw0RVOHQRRr+qrU79o1ENVJQN0NvgBdU8I+4oM=;
	b=eZmbB1G9YXKKFz8Adqyo2q1KnhPqlahcAXgTi+i67Oi9aBRQbblRw8AUcnTdWr1Vu4
	e/P1cASkSTT6CFUix0TGbkGaPNKqpela1+oprVG+vJk5wLQ8ZCKo+/PyhLs55Z6CCadJ
	+3GopPGdxS+52UjEuK/d+T/EGJ7Tvlj/uEa08JutlVkWHRMXWwpgHjhndvzpMWX9oUhJ
	/Q2v9cPqqFBwd6/cI3t5F6XT1HcaOKsEV0P8FFw8Q58vCMXzlWyYXQgir0ZpAVQQPKII
	U9jD7GW4t0c4sb59STm/ilropVZ/jiyHyYWoTDrB8neEGvjBu0f0l6xLsblUWTRlNyGL
	xdSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0ETb4dw0RVOHQRRr+qrU79o1ENVJQN0NvgBdU8I+4oM=;
	b=h/bpi5lX/DSpjIyluEurQQ2a3USoVdbtn90yI5DEku5zWUywCropX9n4fFz7qr4eY2
	xc2tGRzYOrc8vIrmdwYTpc35vkvWQRxqv8XsShVSqRf8/9CAmHZQRkzk9nFPR1mKAkga
	bzD3jlPOHImXE2gvgZ8qzXGmcOKmJ1IdrsZrzUBX9pCnkaVpW2Eq0lfUOPruyzs6a9gq
	ro423/PLUOQlDeFiugjg34MFo2jXlgVUFE5EjoWJySK0uXwK6A8wJktCgLlEcfqweSdp
	QtmaBz7C05MAtSV+byw5CKQzQ7m/C19eHDFJdKjKLX0ubFr6+cwl6UBlGBqEvkwWduEO
	l+rQ==
X-Gm-Message-State: ALyK8tK4T33k+O0KlzSGsMB4VE6Ezk0rKjoE7UpnN5q+c48Td1bBPSELjGjCvGIRWFO5hNVlJ22LlHykBfcppQ==
X-Received: by 10.140.175.135 with SMTP id v129mr893179qhv.5.1466025037888;
	Wed, 15 Jun 2016 14:10:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.8.133 with HTTP; Wed, 15 Jun 2016 14:10:08 -0700 (PDT)
In-Reply-To: <CAPYQ8X7beSjV7JhuMBsamZXt_SDV7xNnpka7tzRQDSTg76vAag@mail.gmail.com>
References: <CAPYQ8X7beSjV7JhuMBsamZXt_SDV7xNnpka7tzRQDSTg76vAag@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Jun 2016 14:10:08 -0700
Message-ID: <CAMKF1srgttuEPAWhNUGeP_nsaK+fEHQa=Xk68TS94ZdzdJGrTw@mail.gmail.com>
To: Michael Hu <pxmyhdev@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_patch through Yocto fails while "git am" succeed
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
X-List-Received-Date: Wed, 15 Jun 2016 21:10:42 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 10, 2016 at 11:12 AM, Michael Hu <pxmyhdev@gmail.com> wrote:
> Does anyone know what's the difference between using Yocto to apply patches
> and apply patch directly using git command?
>
> I am trying to apply patches for arm-trusted-firmware through yocto by
> extending arm-trusted-firmware.bb file, in .bbappend file, I have:
>
> SRC_URI = "file://<some patch name>"
>
> I got the following error:
> ERROR: arm-trusted-firmware-1.2 do_patch: Command Error: 'quilt --quiltrc
> /build/tmp/sysroots/x86_64-linux/etc/quiltrc push' exited with 1  Output:
> Applying patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch
> (Stripping trailing CRs from patch.)
> ... some files can be patched
> patching file <failed file>
> Hunk #1 FAILED at 41.
> 1 out of 1 hunk FAILED -- rejects in file <failed file>
> Patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch does not apply
> (enforce with -f)
>
> However, if using "git am <patch>" under cloned arm-trusted-firmware git
> repo, the patches are successfully patched.
>
> What could be the difference?

which distro do you use on build host and version of quilt, there were
similar issues e..g with ubuntu 12.04
on applying patches that were generated with newer quilt versions.

>
> Thanks!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

