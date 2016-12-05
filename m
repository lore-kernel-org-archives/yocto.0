Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EEF2E00563; Mon,  5 Dec 2016 13:46:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05B3FE0050B
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 13:46:21 -0800 (PST)
Received: by mail-qt0-f195.google.com with SMTP id n34so37780972qtb.3
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 13:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EgVZpQ/JlRv+sMWcjZnfd1JhvAXPEtB0Dl/TXGBeWyU=;
	b=S6xeszxet9jyxKu9QQOKvh2tL2hz/a8AEl3m+aSlIOz6hvZ76RZpVJy38bNl2AHpZb
	X66OjHNNE0fyQs9O8LWSovEZbGdospQDbyfRajfYVISE7E7BdDrvnU88t2aPyVQPW6Nx
	4bvKuiW0m9Aqe4NGLFSdHOtwm8Qpmja0v+DrQuFSxzlYeYprtPI1O7ijrEQPuRXfegai
	SjqZt7lqqxEdDiKfSomC4b0zIhh5n8wVRfiV7+3in1iTDTDVO+Db3Am3NhssLekPNydO
	jBtDIWhcNhl+qbPP5U2eMiAmdTkZU6OOUpZBcMRHXBj2n1876LpLZa1ZGMuhkF/aPeZz
	Exdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EgVZpQ/JlRv+sMWcjZnfd1JhvAXPEtB0Dl/TXGBeWyU=;
	b=DNl5fkhwlCNN3yeP826GqJL5jlApUvlEphT8Jv4kXUm/4k22U/hLNPgLqumBBNZPeB
	0Iv3FbsdjD14R0QxtkCFVzmADZ9j2c1V5+rxZYwpokp6SnSup2TYtlfpj26PPlIdmYKX
	Xx9M5Rw0AjFLKzFlBekrC5pRwj2K25TqZ7lH/KOHjVH4bfCWfcNJUHzNf1Mve2mqpvI8
	iGF/27PNpaNRpZHDzJzxG4QHhzUGDOGhH8Lopnhwj+HDxtoFOVw4ndS4b8G+5GoTmHy0
	00ci/tYgLB/N121ehrIC/X6sgZuToQrPuIMTjVSWXe7tFraIh0Nw6/cvs6q5ODhfZDv5
	lGww==
X-Gm-Message-State: AKaTC02gT0vgh5ZpPpTKpwaFU5t4q+OrqjiVzgxBN013pKAB4bbGpz+NYVivExM444xu3JaXuOwbl5zl1rdS1Q==
X-Received: by 10.237.36.12 with SMTP id r12mr53544256qtc.97.1480974380847;
	Mon, 05 Dec 2016 13:46:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Mon, 5 Dec 2016 13:46:20 -0800 (PST)
In-Reply-To: <CAMKF1sqxyrZ2iWFRmH1pdBWnZXPDyPLpuHsv69kEtLqUsmmK2A@mail.gmail.com>
References: <CALw8SCXOnb6WEWbmSnjLOko_dzwK10X9DsrFPfAE7PPuPwKaDQ@mail.gmail.com>
	<CAMKF1sqxyrZ2iWFRmH1pdBWnZXPDyPLpuHsv69kEtLqUsmmK2A@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 5 Dec 2016 22:46:20 +0100
Message-ID: <CALw8SCVC=_qRVdaiYY2Yai7RqQeOnJFyo4kzFg=qn66Q-Yp__g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] morty release ?
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
X-List-Received-Date: Mon, 05 Dec 2016 21:46:25 -0000
Content-Type: text/plain; charset=UTF-8

2016-12-05 19:37 GMT+01:00 Khem Raj <raj.khem@gmail.com>:
> On Mon, Dec 5, 2016 at 7:26 AM, Mirza Krak <mirza.krak@gmail.com> wrote:
>> Hi.
>>
>> I have some questions and remarks and hopefully someone here can answer them.
>>
>> The meta-raspberrpi layer is missing a morty release? Any time frame
>> of when this will be added?
>
> We use master as long as possible, when we have a change that makes master
> incompatible with prior releases we branch out for the prior releases
> at that point.

Thank you for the clarification.

>
>>
>> There is currently a issue when using U-boot due to some updates in
>> RPi boot firmware. See [1] and [2]. Which should be noted/resolved
>> before a morty release?
>>
>> To provide some more information about above mentioned problem. If you
>> use the current firmware files (20161030 in meta-raspberrypi) together
>> with U-boot (2016.03) you lose the console on U-boot and on Linux
>> kernel. This is due to the fact that "newer" firmware sets a default
>> uart clock to 48 MHz, but U-boot has a hard-coded value of 3 MHz, and
>> since we yet do not support to "forward" the patched DTB provided by
>> the firmware from U-boot to Linux we also break console on Linux.
>>
>> The "default" values has been updated in Linux, see [2]. But if you
>> use that updated Linux kernel there is a mismatch between u-boot and
>> Linux. Should be noted that U-boot 2016.11 does not have this problem
>> since it does not try to initialize the UART port at all and only
>> relies on firmware to set it up correctly (see [3]).
>
> We should drop 2016.03 and support 2016.11 for keeping it simple.

Should also update Linux which contains the updated default value
(since we do not yet support pass-trough of firmware DTB, I know I
have seen some patches on the mailing list but nothing in upstream
yet).

But U-boot is in meta-openembedded, are you suggesting that we update
it in meta-raspberry? Or updating it in meta-openembedded?

Best Regards
Mirza

