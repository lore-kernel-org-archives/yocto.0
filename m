Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A02CE009CD; Thu,  8 Dec 2016 14:41:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 404A4E00953
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 14:41:51 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id n6so75951qtd.0
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2016 14:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0us38fFJy9WI7xte4JwWO7fttdNfqITQP7SdfeYcJ/k=;
	b=ql1ySs9yhXHug1VQawhtB/MyOfKhpNiTlif9idlBSUmOUYLGw4Om9ehb/MILyylXvx
	Lgr1zLm4uP9UM2TJmrjIVxPXYtnGqTyaxc/Uw4HZxdwpd/GR5vbkr3YKjBxqjbF/FD19
	WN0EsNkwwyLLngjF2OU6kT8gnez98b0iBQ/YGXjZ4iXr/ORf+ovwjaUJjYuPzUMR2440
	AOoNRVCiXyoreL71x+MWExyR939ARcrb9UxCnCHOug0bOyHDuqeG/IUO80c8wa1dEC+M
	YBnVT6txgjBrciiLjZJSN7QdJHNjH2oIRDFDRzFVx4Tfq8sv0DpL/y5sYRcslMyAqton
	mN9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0us38fFJy9WI7xte4JwWO7fttdNfqITQP7SdfeYcJ/k=;
	b=IspPOzLp8uLBIZ4iIENhQmFH8NA/0zE+D9WJklVgPrQcDPN0ZaB3XgsGFRCsUznPuf
	KggFheNYtpJjouJCURE2pVfRdaneTW0nz60t0ZD0qa7NFcqj7NGHJqm0+uqhkRsteA/B
	7SDZZjTBwREg4Y36oW8rJXVEaUsU2Zvwm0S2xJBBi4b3h1ZNoBNbEyApEPSoaVanTXXG
	3GtW3tuJs/Ei055dqRJ//Z+KfHKCAJj1hMVCD1nZRHGYgcmpvBS1CaiWhE5yzS3hr6n9
	NpC500FLWg4sASGOZZZAEeeyleVEBguTFpcaOHw0MrnXN07phLU0VPYDlBijftNv5uiA
	q2Nw==
X-Gm-Message-State: AKaTC01ChclTyBKRRHiRZEJxct4mQrh/C4KgajAyl+G9ljPTx8sIi2h9Up8SFeeFk/gnACq217WeEomjnnh3MQ==
X-Received: by 10.237.42.46 with SMTP id c43mr66354979qtd.174.1481236910651;
	Thu, 08 Dec 2016 14:41:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Thu, 8 Dec 2016 14:41:50 -0800 (PST)
In-Reply-To: <71ED6782-FD2D-4A7D-95C9-F5E04F5F5647@gmail.com>
References: <CALw8SCXOnb6WEWbmSnjLOko_dzwK10X9DsrFPfAE7PPuPwKaDQ@mail.gmail.com>
	<CAMKF1sqxyrZ2iWFRmH1pdBWnZXPDyPLpuHsv69kEtLqUsmmK2A@mail.gmail.com>
	<CALw8SCVC=_qRVdaiYY2Yai7RqQeOnJFyo4kzFg=qn66Q-Yp__g@mail.gmail.com>
	<71ED6782-FD2D-4A7D-95C9-F5E04F5F5647@gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Thu, 8 Dec 2016 23:41:50 +0100
Message-ID: <CALw8SCVPjQiQcyknQPRd66CKGxEiRkg42GC+oM-hr_HsnFPecg@mail.gmail.com>
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
X-List-Received-Date: Thu, 08 Dec 2016 22:41:53 -0000
Content-Type: text/plain; charset=UTF-8

2016-12-05 23:07 GMT+01:00 Khem Raj <raj.khem@gmail.com>:
>
>> On Dec 5, 2016, at 1:46 PM, Mirza Krak <mirza.krak@gmail.com> wrote:
>>
>> 2016-12-05 19:37 GMT+01:00 Khem Raj <raj.khem@gmail.com>:
>>> On Mon, Dec 5, 2016 at 7:26 AM, Mirza Krak <mirza.krak@gmail.com> wrote:
>>>> Hi.
>>>>
>>>> I have some questions and remarks and hopefully someone here can answer them.
>>>>
>>>> The meta-raspberrpi layer is missing a morty release? Any time frame
>>>> of when this will be added?
>>>
>>> We use master as long as possible, when we have a change that makes master
>>> incompatible with prior releases we branch out for the prior releases
>>> at that point.
>>
>> Thank you for the clarification.
>>
>>>
>>>>
>>>> There is currently a issue when using U-boot due to some updates in
>>>> RPi boot firmware. See [1] and [2]. Which should be noted/resolved
>>>> before a morty release?
>>>>
>>>> To provide some more information about above mentioned problem. If you
>>>> use the current firmware files (20161030 in meta-raspberrypi) together
>>>> with U-boot (2016.03) you lose the console on U-boot and on Linux
>>>> kernel. This is due to the fact that "newer" firmware sets a default
>>>> uart clock to 48 MHz, but U-boot has a hard-coded value of 3 MHz, and
>>>> since we yet do not support to "forward" the patched DTB provided by
>>>> the firmware from U-boot to Linux we also break console on Linux.
>>>>
>>>> The "default" values has been updated in Linux, see [2]. But if you
>>>> use that updated Linux kernel there is a mismatch between u-boot and
>>>> Linux. Should be noted that U-boot 2016.11 does not have this problem
>>>> since it does not try to initialize the UART port at all and only
>>>> relies on firmware to set it up correctly (see [3]).
>>>
>>> We should drop 2016.03 and support 2016.11 for keeping it simple.
>>
>> Should also update Linux which contains the updated default value
>> (since we do not yet support pass-trough of firmware DTB, I know I
>> have seen some patches on the mailing list but nothing in upstream
>> yet).
>>
>> But U-boot is in meta-openembedded, are you suggesting that we update
>> it in meta-raspberry? Or updating it in meta-openembedded?
>
> Yeah I realized that u-boot is coming from OE-Core, it is possible to carry
> patches in meta-raspberrypi to fix the version for morty in bbappends. May
> be we need to branch out morty after we have fixed this if we want to
> drop this version of u-boot beyond morty.

And now u-boot is 2016.11 in OE-core. So no need of bbappends. If the
kernel (4.4) is updated to 4.4.36 it should all be aligned and fixed.

Best Regards
Mirza

