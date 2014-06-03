Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2645CE00B20; Tue,  3 Jun 2014 12:24:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85F7CE0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 12:24:48 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id hn18so5366042igb.0
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 12:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=WxhfLVChHDRY6j6tYml2D33DT6z0DI+xrXiHjsfTfVE=;
	b=c7H7rRCtGORwp5OsrGJ03lSqO+K5FsyHC2bfihLkdX33Gr7u45vI68s69mBjKAjTAV
	7VBnfPtpXQVt8Ban2KjA9uo5gRvGgVd82jnktUyiOQVhd7Qkla/MDwcJ0obB9rLUoF2H
	RRqwzZ8qkSZCYjW1lso5cNsbvopvM18TyF2smnqHPw2duHr5aCYjVtkCo7maf27WiAw4
	enng1q6DBLPXV//YhzqVTH3J4N1pNQiUWsVG7oY/mClgb349Bg9cm2nFwGAIrDFiwT5m
	mI2CaCfIBuRmZFBOq7WSCE+OtYMoYdiVZWj7+wSiL68rMWgrSUAxWs9dphy7UT6rZgOn
	UmYA==
X-Received: by 10.50.43.136 with SMTP id w8mr32377832igl.20.1401823488303;
	Tue, 03 Jun 2014 12:24:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.33 with HTTP; Tue, 3 Jun 2014 12:24:17 -0700 (PDT)
In-Reply-To: <OF78987838.ED2425C4-ONC1257CEC.0045117A-C1257CEC.0046F17C@alpine.de>
References: <OFD5EA41E8.B3B2A295-ONC1257CE8.004C09F4-C1257CE8.004E22D1@alpine.de>
	<CAMKF1spDE3pO8nXaiMGDGZKbOTXYB0wn_g7Vh0gtEMBR=7=d3Q@mail.gmail.com>
	<OF78987838.ED2425C4-ONC1257CEC.0045117A-C1257CEC.0046F17C@alpine.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 3 Jun 2014 12:24:17 -0700
Message-ID: <CAMKF1socvoTCDN_=GkZz-ec4KrAt9Lknkt9_dN4sE5i0_EFbuQ@mail.gmail.com>
To: Anooj Gopi <Anooj.Gopi@alpine.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Detailed steps involved in populate_sdk
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
X-List-Received-Date: Tue, 03 Jun 2014 19:24:52 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 3, 2014 at 5:54 AM, Anooj Gopi <Anooj.Gopi@alpine.de> wrote:
> Would there be any option for me to tell yocto to generate all the tools and
> use exactly the same for 'build host' as well as 'sdk host'?

I don't think so

