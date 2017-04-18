Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7B58E00A81; Tue, 18 Apr 2017 10:23:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA7D0E00A31
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 10:23:05 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id d131so24756723qkc.0
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 10:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vM19MVqlgs5y7XLyEXd0bRobS7FxWXJCvHqYWt6UFAw=;
	b=eOjC8QNbfxhSkSstXdPz0SJoAb2oPGsopFvQqtbnEGhayDZiyb97xWVQAn9lOsAefi
	kUiQe/LsyociQNfSnaTQ4zrusQ9fe6KBt1j/aqK8XujMd3rOEx6/Csw632QTvJitb69X
	jO2GSkFEZkB1v0F/A1kONeL0ZPb1UKdzP1+VnPAKhAMY5H+JX+hZqFevYCB7n74Q2sRI
	ya/zzdfhE0gL7c/EdeiOtm2Arf7vPSqmw/gO6/sVeN3/y0fOpm1/nSjf1qG6ycVeCE9N
	5Ljvj6KBaOMvrKwh4LNktH283mWFj8T1d8oHyo7wG5MZ7+/t7JbrOd/tsynHQa+YiAPh
	7voA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vM19MVqlgs5y7XLyEXd0bRobS7FxWXJCvHqYWt6UFAw=;
	b=iikOhvnTo2r29e6+4LMgtiwDMXakcY+Uw+v+1UHtcUJCw1vhKV3VlOo3iWuWlBYNZn
	4gVqoe15sIL1VCIAOE43/FYOaCzgpAJFX3WqGP/QHzsEeb65VLLG2QhHgfSNQNRTM4ai
	il9nFi8wAYQygp5wfiAYm4gffioR2OzH4TzfaNsinHCBF+EK14fodGBCAroAkZHNhdB3
	iEMMjGL1SfzuX7t3w6BK42YR/pq/RzyzfWW8OPeHBig9+3creOuxzz4AQKu8v8HbKfMe
	1saAg73HNaTgwdbtWN/28sG2ePaKop7vfLPO2NWgkFxMZmOM1Aynet1mUUmvEcHVRPEi
	M0Wg==
X-Gm-Message-State: AN3rC/6cChR16NvNAT6fOsTWQz7QH/a2ZBhuXy4tX1lXJ/UHCMhm5m39
	4Lx/vsC1fA6474/H26pCzA+a4T2p34Zn
X-Received: by 10.55.162.79 with SMTP id l76mr15100988qke.275.1492536184627;
	Tue, 18 Apr 2017 10:23:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Tue, 18 Apr 2017 10:23:04 -0700 (PDT)
X-Originating-IP: [82.34.23.153]
In-Reply-To: <20170418125837.GA2724@carbonA>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-4-andrei@gherzan.ro>
	<CAPyrkgx4stTPY-kEV5rMtJYyXwPkag47bP8N8KaRLCnAf3wWeA@mail.gmail.com>
	<20170418125837.GA2724@carbonA>
From: Paul Barker <pbarker@toganlabs.com>
Date: Tue, 18 Apr 2017 18:23:04 +0100
Message-ID: <CAPyrkgycU=hMySnqGi7aPGdJeqmh2zqwfJOisOyk1J2uaRcYNw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Tue, 18 Apr 2017 17:23:07 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 18, 2017 at 1:58 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Tue, Apr 18, 2017 at 12:10:47PM +0100, Paul Barker wrote:
>> On Fri, Apr 14, 2017 at 9:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> >
>> > -LINUX_VERSION ?= "4.9.13"
>> > +LINUX_VERSION ?= "4.9.21"
>> >
>> >
>>
>> I'm going to backport this to morty and test this week. Any other
>> patches worth testing for morty at the same time?
>>
>
> I would probably want to have 64b rpi3 too in morty. And yes, 4.9
> defaulted for kernel?
>

I'd support adding extra machines if we can (raspberrypi0-wifi and
raspberrypi3-64) and having those use Linux 4.9. However, I'd be
reticent to change the default kernel version for existing machines on
a stable branch.

I'll have a go at backporting the addition of the extra machines. I
can test raspberrypi3-64 on hardware myself but I don't have a
raspberrypi0-wifi to test on.

Cheers,
Paul

