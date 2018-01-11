Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38EE0E00DFB; Thu, 11 Jan 2018 02:16:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68925E00D99
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 02:16:48 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id s3so1137623qtb.10
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 02:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vT/kyzY865izFM6mLcAbRbIL7/GKF14WDxSINOSdNzw=;
	b=R/8pVkZQsDZ3SxhsoRt9UGToc8I2X+tU2Ez4i170kelOQugfzJklNy+l5H0mu4O/Mq
	1/q7sS2e7/o5pUvfWcY2ux5QQaq0FIoIq7f/aCAxImeyeQIpHcgz5wJ9iDENn9DAwa5V
	DHgR6F7R1MyIB2wO2MtrZFLhKsc/uy4obAI00J18gOKaWtCdgKMODxoyIjiTt6pEPpmb
	noSs+Jr0lAxcrDJaXCSOCvsdwl90PjgcCS7QwRrfhOLl93v7WSRHU1duM8ccw/gTD9YK
	m0X/7T3tmhUD8mmIg6cyf8tSBk5N3culy9tu0NxpTFPKK8N9dJvO8M3uEVXIKDwNpo6d
	HibA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vT/kyzY865izFM6mLcAbRbIL7/GKF14WDxSINOSdNzw=;
	b=JEeYuHCOXluXGZ5NECaSZJKImjkTUrrNxwpp882zeYDsE47J+VEZqVJuH3CfG0CS6D
	Q6AlLAFV0+CvwZlVFD9stQXccxdpeM5vaoPHqbszvA1z/NcKXRc9VigcTlw2L2SoKY0L
	AtJW4gcYE4lytGto2OQaHQyLQpzSmfx3I2epVaVxa/cmEc7Ng4WEJ2hlyhWHkSD7M65S
	ryXCnBMb+3it0zwN2oL2pnxSlms3vVPS061rSIBFcBHzNMLRGn1kl00R5U5JmuoK5Kaz
	GAdOXadRxg+x8Ym5AaDiaEFvIjBOhkD7ZYCwQKQGF/wKsigc0Y7sbJpBhZP3v+BdAAd7
	SDyQ==
X-Gm-Message-State: AKwxytccOLqR+AJTXW+3TdbRlvivW4g1XJSmPOEwutK1MPf/3V+UZ9AL
	QPsLUvRqgcR9/P4obT61nPKv2QTTx5IbDbQPz3fkwQ==
X-Google-Smtp-Source: ACJfBos+dhnOdRVDBJiPUqvMTLVrmErgTUOPjgLPASzM+q0C9Ln7SDxUuiPuLT4/UdvQ9+YslMbnBjsjBuiXM7wBJFs=
X-Received: by 10.237.33.75 with SMTP id 69mr30478611qtc.34.1515665807376;
	Thu, 11 Jan 2018 02:16:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.202.146 with HTTP; Thu, 11 Jan 2018 02:16:46 -0800 (PST)
In-Reply-To: <d0f37752-e921-9ed5-47cb-dadd737b5b0e@vitheia.com>
References: <d0f37752-e921-9ed5-47cb-dadd737b5b0e@vitheia.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 11 Jan 2018 11:16:46 +0100
Message-ID: <CAGAf8LxNUgWsCSTT6_oH+WaysN6nxvTR5Q=5qLhFCuVYgKfE=w@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: libgcc.a size
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
X-List-Received-Date: Thu, 11 Jan 2018 10:16:49 -0000
Content-Type: text/plain; charset="UTF-8"

> What stands out is a big bump in size for /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc 5.3.0) to 25 MB in rocko.

Static library, probably compiled with -g (debug info included). You
need to recompile libgcc excluding -g option... My best guess.

Zoran

On Thu, Jan 11, 2018 at 10:04 AM, Mircea Gliga <mircea.gliga@vitheia.com> wrote:
> Hello
>
> I just upgraded from krogoth to rocko, and noticed the resulting rootfs
> image increased significantly.
> What stands out is a big bump in size for
> /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc
> 5.3.0) to 25 MB in rocko.
> Can someone shed some light ? What can be done ?
>
> Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

