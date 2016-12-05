Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF3AE00563; Mon,  5 Dec 2016 13:54:55 -0800 (PST)
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
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C47EBE0050B
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 13:54:52 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id n6so37791597qtd.0
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 13:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6xqyh7+KWUP+O1XTrbSo9YBgTnD4guqcFqDYNUvFXF8=;
	b=X5TgEfeBRXH1BjaKmlOmdJqMMhKNqAo6spBhlR0InkClyoGDoLvp4pMGSlPEbLPux8
	9JqpfpyJWLZCEdmrEQfS3y17F5VpmerKCUfZWALneFnY+1ED69P7FG7oQStpoXNXtvwL
	eWeDeZcrOyVQxDCqvRdgaw7IJrUq+Nzw7UPg++TJGUZ2oU8p8RWUUvDZz/kYOhs+jNDe
	eqIVMX4EDiH4aFd6WI3xoCHlHqDxgW7Jm7ij6yE4T+UrQ48ZKpnSTtb5eA5uMTQHNfVL
	l0qDIgg/zjrWucKMcVQ+vkWAFoln0YaJfUeIWZfgwmHto5+7CO6dB+hxtROEhZEd+aCU
	pK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6xqyh7+KWUP+O1XTrbSo9YBgTnD4guqcFqDYNUvFXF8=;
	b=JzfDb2QuC4d+XpDran+b0+LJCk20qFaMyQbxVwGo0hj4IX9NYEn+JsAt7HTzfMFKS9
	JYZONh8JMhwNPVB04blEoTRm3eLo8Lwc6SDXR6F3kVTWNmbHxVw672VVm5qDRUluAvf7
	By4VBL+aHwTL6YpdeZ7G8fXljvOtpFIulaD+3JFFqNR25hHiXHHhPGpors3S/C+NcUP7
	DyquljEprpTqVU27nSxloEitr4SlKpPWuPoZb9fRDTKWGEQdYHtywGDsND1pnPrL5G/f
	6e3nAtsJ5uzDbDeeOJvX0EAzs6IUa/Mj1jRMZglr4TYaw1dm42pYRt2SBwRbvCMV391j
	76KA==
X-Gm-Message-State: AKaTC0360PFosYl1tF5S8fAiLRX3e4XTSU+65koIErYqat3E60nH468g6ytRmAx2KKU6P4xApo4bVP0M9uaoOQ==
X-Received: by 10.200.48.28 with SMTP id f28mr59315921qte.247.1480974892110;
	Mon, 05 Dec 2016 13:54:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Mon, 5 Dec 2016 13:54:51 -0800 (PST)
In-Reply-To: <CALw8SCVC=_qRVdaiYY2Yai7RqQeOnJFyo4kzFg=qn66Q-Yp__g@mail.gmail.com>
References: <CALw8SCXOnb6WEWbmSnjLOko_dzwK10X9DsrFPfAE7PPuPwKaDQ@mail.gmail.com>
	<CAMKF1sqxyrZ2iWFRmH1pdBWnZXPDyPLpuHsv69kEtLqUsmmK2A@mail.gmail.com>
	<CALw8SCVC=_qRVdaiYY2Yai7RqQeOnJFyo4kzFg=qn66Q-Yp__g@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 5 Dec 2016 22:54:51 +0100
Message-ID: <CALw8SCVh4ZP-EnWm6ooNvxDYUKs5-1i6WUqP5-nOXcfYFd6RWw@mail.gmail.com>
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
X-List-Received-Date: Mon, 05 Dec 2016 21:54:55 -0000
Content-Type: text/plain; charset=UTF-8

2016-12-05 22:46 GMT+01:00 Mirza Krak <mirza.krak@gmail.com>:
> 2016-12-05 19:37 GMT+01:00 Khem Raj <raj.khem@gmail.com>:
>> On Mon, Dec 5, 2016 at 7:26 AM, Mirza Krak <mirza.krak@gmail.com> wrote:
>>> Hi.
>>>
>>> I have some questions and remarks and hopefully someone here can answer them.
>>>
>>> The meta-raspberrpi layer is missing a morty release? Any time frame
>>> of when this will be added?
>>
>> We use master as long as possible, when we have a change that makes master
>> incompatible with prior releases we branch out for the prior releases
>> at that point.
>
> Thank you for the clarification.
>
>>
>>>
>>> There is currently a issue when using U-boot due to some updates in
>>> RPi boot firmware. See [1] and [2]. Which should be noted/resolved
>>> before a morty release?
>>>
>>> To provide some more information about above mentioned problem. If you
>>> use the current firmware files (20161030 in meta-raspberrypi) together
>>> with U-boot (2016.03) you lose the console on U-boot and on Linux
>>> kernel. This is due to the fact that "newer" firmware sets a default
>>> uart clock to 48 MHz, but U-boot has a hard-coded value of 3 MHz, and
>>> since we yet do not support to "forward" the patched DTB provided by
>>> the firmware from U-boot to Linux we also break console on Linux.
>>>
>>> The "default" values has been updated in Linux, see [2]. But if you
>>> use that updated Linux kernel there is a mismatch between u-boot and
>>> Linux. Should be noted that U-boot 2016.11 does not have this problem
>>> since it does not try to initialize the UART port at all and only
>>> relies on firmware to set it up correctly (see [3]).
>>
>> We should drop 2016.03 and support 2016.11 for keeping it simple.
>
> Should also update Linux which contains the updated default value
> (since we do not yet support pass-trough of firmware DTB, I know I
> have seen some patches on the mailing list but nothing in upstream
> yet).
>
> But U-boot is in meta-openembedded, are you suggesting that we update
> it in meta-raspberry? Or updating it in meta-openembedded?

I mean openembedded-core/poky.

