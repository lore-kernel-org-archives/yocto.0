Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91B48E00BB5; Mon, 23 Jul 2018 03:59:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14DF4E00AC5
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 03:59:52 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id s198-v6so314039oih.11
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 03:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=21srlEeZmip4h8FfG2uxA653GtvdNisTTxaxBoxZTK0=;
	b=KV6QA7pxiJNE65/e93Xlhkqzy/kdErbIK2qd5T9mtUsd9rQR+qCn3mY7uOeHQw5ImQ
	s/ME18CcvPRSs9cVA9ci//5S7KsrkCuVY1njh7ZFwOfoptd9L4qrZAzCbRVs952lKvl4
	7u/NGebeO4VYrr3PUtGkv7npeYsmwlwyqa0FmPK1xOWy0fKz67AvCl407DGL5sM3gcdQ
	GhSI2n7eJwyaZnO2F+4GxnOkW3HKqH9D/e2qrSAgZLXsToOdlNatLuYMxoiaojqjkYph
	XMfsSwwuDX0fiIl+vXkHQ3LSDuijPu13BA4UE22HQp0j6TOlN2fK+Ma7JM140tqwdp2k
	RWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=21srlEeZmip4h8FfG2uxA653GtvdNisTTxaxBoxZTK0=;
	b=KqXuM+Pax7Y/zj2afHftFQCU9omzC9gd5yA2u7Am2EV9jo6V3ezNXI9PgJYv9s7E/U
	fF2FXaGLCiTksPbKb5WZn/3c8+GZ64Z+PItCEnvx7RG64fR51KNR65qq5nAP3v2Wn+Zz
	C3tld9pyTKA2hT5r7ChZmSh6WeRqdPNimr2657W8X6PCbWpKH3dzX/fxxAvf/qPK4wtB
	P9NnoEcFIgtnZVPWLXwHxos+/4WDoi3MzPEHKgA3qsX50CivKbbPB16MmS0WH7t3bXtS
	7fba0h7FPJyVANjRInS3T+tyZB3tPS9S3DDzSau1ytQ2EbX27VDnN0liV5sws5jn4/0j
	iamA==
X-Gm-Message-State: AOUpUlHk1wCjesM2qb7zmfvgGTkCSyOOWdxYtkvaEsBP8+EucXkkG7mt
	Msphr8r1+mOG2vLZNT1tV/+zU2oL6oa7j7YXUtvFdw==
X-Google-Smtp-Source: AAOMgpe3paMYsroKI1wu321zo9VqXzp38v0MBJSUEsrS95d0/7GmMpIuGa7t5oTsQhaFGBBnewX71yvuShU5a1LjK/0=
X-Received: by 2002:aca:f409:: with SMTP id
	s9-v6mr8530826oih.102.1532343592593; 
	Mon, 23 Jul 2018 03:59:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 23 Jul 2018 03:59:32
	-0700 (PDT)
In-Reply-To: <3c97b7e9.c148.164c6c42e67.Coremail.13824125580@163.com>
References: <3fcef217.a96b.164c6616b92.Coremail.13824125580@163.com>
	<CAJTo0LYL1eMn_-UceCKC9iKXw55DHAtW-QXQe6_3mTxEOHitWg@mail.gmail.com>
	<3c97b7e9.c148.164c6c42e67.Coremail.13824125580@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Jul 2018 11:59:32 +0100
Message-ID: <CAJTo0LayFeK4Vx4VJqqVVKXuBsvxJhtq1NQhq3wG4jm7-ojjxw@mail.gmail.com>
To: tugouxp <13824125580@163.com>, Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: "Unable to find header curl/curlbuild.h" error on porting
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
X-List-Received-Date: Mon, 23 Jul 2018 10:59:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please remember to CC the list to that everyone can see.

On 23 July 2018 at 11:51, tugouxp <13824125580@163.com> wrote:
> hi burton:
>   thanks for your answer. so  how to dealt with this, seems two selection=
.
>
> 1. revert the version of curl
> 2. remove =E2=80=9Coe_multilib_header=E2=80=9D
>
> i am a fresh man on yocto, so how to achieve the 2nd scheme?

In the recipe there is a do_install_append block which calls
oe_multiilb_header, delete it.

Ross

