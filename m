Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B25BE006D8; Tue, 12 Feb 2019 08:15:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C2D6E0053F
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 08:15:54 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id y184so8546250itc.1
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 08:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qBMxuN6IPDPLOx6xK3pb2+saqvRR1+03jqyYdSl7CRs=;
	b=TxbXSfJM4qjjdLrwDYuqgMZA1hVQVjuWoIymQfjLQVjCbfHqINEe/F66J1Wz5Uxpne
	a9Y6k05TRYOXI68t5Tzi5XxRSmgLGc0+2+Daw4u5c86J9wqomc4kYKWOUVCCOp9XMSnR
	GSUIf55VHDPoEfgLNPS8YbbXNlC6ktD0r4/ezE7rNEV1t/ofPdlO910AKmciAAJgMT2r
	IwD+ZRAhNJmrH2v37q7mfvqX1EP+t+TmdvhTLQONEeclmmo9rqPfxBQpmAz6gTxBMq6Q
	hUjgMvG3QwqXR8YDWzinNOY8AKnu2ot2PGxF1Q4YEm/w9llU6GZN2aIdKe0enCKvxYtO
	DPEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qBMxuN6IPDPLOx6xK3pb2+saqvRR1+03jqyYdSl7CRs=;
	b=haqxePGbKxqm2iUw/dIHxxrc6W0+LLIm/D+Km3djeH5eZz+I9HEaxZ48xqWiLzK5B0
	MU9VZyQW4ts/0/RFmGMU92F95x74sXVhpBUpnR5X6W+lbySrnAy2DPIw/eIG3ZZaxMiu
	B3fCgtsl336hv4sV0bx2Z2RJKzzrN8XTy4deU5L5gzsSNt8iB5zbv9LD6SLGA0Atc7js
	dn8PBMbDYkvg454FMjoiLGUwm4j3McBDSDRk+QAZvO1G3MQ0A0/yyRSUOqlMUuIqqJ6T
	QPzhqQym6Q/oY6tYR+iINjh/R1m9gwFs5T6qQd8dz9+tAVYUDb6gj9Zp4Z9ec758U7iV
	rNZA==
X-Gm-Message-State: AHQUAubfpy3Wg0Cb6xYzbJAKmxgZj6KW9jj2M56pFWlj/Gfh8u5GkX2k
	sbsFO5arePpSp5VpkGyCJ92cQLsQaiZxF1HZ6j9HGQ==
X-Google-Smtp-Source: AHgI3IYLVd4lqt/E2dx5aPS2FN629GaNrHb3W9PdUkrL+heJtEf5ykcYexUJncCQVEpTN9asHlUrdh3SszaSXdmHqg8=
X-Received: by 2002:a24:c601:: with SMTP id j1mr2648349itg.130.1549988153533; 
	Tue, 12 Feb 2019 08:15:53 -0800 (PST)
MIME-Version: 1.0
References: <ABF34097-42F0-4504-90FD-F2214ECC210D@uchicago.edu>
In-Reply-To: <ABF34097-42F0-4504-90FD-F2214ECC210D@uchicago.edu>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Feb 2019 16:15:37 +0000
Message-ID: <CAJTo0LYM1wZ2QCS+jwLR8bWotmfV-s4WwEOaiMosNLucNvsioQ@mail.gmail.com>
To: Emily Smith <easmith5@uchicago.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python default libraries
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
X-List-Received-Date: Tue, 12 Feb 2019 16:15:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You're probably not depending on the entire library so you only get
what you ask for.  Instal python3-modules and you'll get all of the
standard library.

On Tue, 12 Feb 2019 at 16:14, Emily Smith <easmith5@uchicago.edu> wrote:
>
> Hi -
>
> I=E2=80=99ve been working with yocto and with some code running on my OS,=
 however I=E2=80=99m seeing errors that seem to indicate that default pytho=
n libraries are no longer included (specifically logging and importlib). Ha=
s something about the default python libraries changed?
>
> Thanks!
> Emily Smith
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

