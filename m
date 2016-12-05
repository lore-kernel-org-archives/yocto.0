Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A891E0074B; Mon,  5 Dec 2016 14:07:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 993B4E0050B
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 14:07:03 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id x23so17642339pgx.3
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 14:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=0MIHRv48x38dNBunkKoNbpAYZ5mVk9EoYa7knYbvncQ=;
	b=hS0TmOR3RlE89nmWDVf5/HHcrwWSqNGacM8ZVltZ7Zibiw3EI2ZlsJfQxNmCxv1iKT
	ii56qPjzYfy9Q61Wd0TBUbsQXWzALevp0Sun2okG6d0kmWafUCGTEJOaCWQQWJFy/AW1
	8cDUlWDT/422VHde4X+mPaEQneKzZLsU89JxpiofpZv61Ypn/CIKwLLlCQZhXjrZdplQ
	Yhq+pcQFC8MJCH1PcsL2iY+6HomMW2eoGpOM01QY6Fn3CXXjaTYAANg1R9igeMqGFdd9
	wLbwxb00TeeiHiHNTkREi12GODvG9X8SVS8qPcrGdP6hwuluWG70xwXMx7bdLZlkjvj+
	Jzxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=0MIHRv48x38dNBunkKoNbpAYZ5mVk9EoYa7knYbvncQ=;
	b=M42Qa59zaZghaw4/MewAWPZbU1NDGgMXfsu9Fm0QKekP4OE0j/ww4kom0eb5h8+AF/
	C5MRnHnsU6cymPQNLSTlctY6N0BoXQhUke0jPB7LTSwLtkeT5kR/EFKlPCZRkBdaNL35
	ZmYpZa2vvqFZPYSQJQgwNEoNFd33hqhFAg1bfcZyT7KtX4vXJMyr/VcVbuf8HC8tfqmC
	vbno+53MD81ejumwN1ra1YvIh4v7mlG85e3cAqQrBLxTzmDxfLKz5aQ2hNRmFkaexJXX
	cjuGHTnKhQqFCipY8T/AFFzjqlHLsEM3QEoo4abFeCfFCWq1jTQaWquHAEO0id2De/3i
	PSpQ==
X-Gm-Message-State: AKaTC03+1gy80zMAJDuDqX7rB14LGyYklleniOMS0l20/fl+1YoR55QfJN7uOhNvmZIHEQ==
X-Received: by 10.84.194.37 with SMTP id g34mr129246828pld.36.1480975622696;
	Mon, 05 Dec 2016 14:07:02 -0800 (PST)
Received: from [192.168.0.130] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	n24sm29753425pfb.0.2016.12.05.14.07.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Dec 2016 14:07:02 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALw8SCVC=_qRVdaiYY2Yai7RqQeOnJFyo4kzFg=qn66Q-Yp__g@mail.gmail.com>
Date: Mon, 5 Dec 2016 14:07:00 -0800
Message-Id: <71ED6782-FD2D-4A7D-95C9-F5E04F5F5647@gmail.com>
References: <CALw8SCXOnb6WEWbmSnjLOko_dzwK10X9DsrFPfAE7PPuPwKaDQ@mail.gmail.com>
	<CAMKF1sqxyrZ2iWFRmH1pdBWnZXPDyPLpuHsv69kEtLqUsmmK2A@mail.gmail.com>
	<CALw8SCVC=_qRVdaiYY2Yai7RqQeOnJFyo4kzFg=qn66Q-Yp__g@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
X-Mailer: Apple Mail (2.3251)
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
X-List-Received-Date: Mon, 05 Dec 2016 22:07:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Dec 5, 2016, at 1:46 PM, Mirza Krak <mirza.krak@gmail.com> wrote:
>=20
> 2016-12-05 19:37 GMT+01:00 Khem Raj <raj.khem@gmail.com>:
>> On Mon, Dec 5, 2016 at 7:26 AM, Mirza Krak <mirza.krak@gmail.com> =
wrote:
>>> Hi.
>>>=20
>>> I have some questions and remarks and hopefully someone here can =
answer them.
>>>=20
>>> The meta-raspberrpi layer is missing a morty release? Any time frame
>>> of when this will be added?
>>=20
>> We use master as long as possible, when we have a change that makes =
master
>> incompatible with prior releases we branch out for the prior releases
>> at that point.
>=20
> Thank you for the clarification.
>=20
>>=20
>>>=20
>>> There is currently a issue when using U-boot due to some updates in
>>> RPi boot firmware. See [1] and [2]. Which should be noted/resolved
>>> before a morty release?
>>>=20
>>> To provide some more information about above mentioned problem. If =
you
>>> use the current firmware files (20161030 in meta-raspberrypi) =
together
>>> with U-boot (2016.03) you lose the console on U-boot and on Linux
>>> kernel. This is due to the fact that "newer" firmware sets a default
>>> uart clock to 48 MHz, but U-boot has a hard-coded value of 3 MHz, =
and
>>> since we yet do not support to "forward" the patched DTB provided by
>>> the firmware from U-boot to Linux we also break console on Linux.
>>>=20
>>> The "default" values has been updated in Linux, see [2]. But if you
>>> use that updated Linux kernel there is a mismatch between u-boot and
>>> Linux. Should be noted that U-boot 2016.11 does not have this =
problem
>>> since it does not try to initialize the UART port at all and only
>>> relies on firmware to set it up correctly (see [3]).
>>=20
>> We should drop 2016.03 and support 2016.11 for keeping it simple.
>=20
> Should also update Linux which contains the updated default value
> (since we do not yet support pass-trough of firmware DTB, I know I
> have seen some patches on the mailing list but nothing in upstream
> yet).
>=20
> But U-boot is in meta-openembedded, are you suggesting that we update
> it in meta-raspberry? Or updating it in meta-openembedded?

Yeah I realized that u-boot is coming from OE-Core, it is possible to =
carry
patches in meta-raspberrypi to fix the version for morty in bbappends. =
May
be we need to branch out morty after we have fixed this if we want to
drop this version of u-boot beyond morty.

>=20
> Best Regards
> Mirza


