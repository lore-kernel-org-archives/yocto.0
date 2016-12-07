Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 502C8E00D12; Wed,  7 Dec 2016 02:54:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1B4AE00C9B
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 02:54:06 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id 20so38694139uak.0
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 02:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RuLoDqeAlDqnOZndsgxbdnF6A/aVKBWMAgrTUP0/jHo=;
	b=yHXa/1bEJih8IzEAswQ5LvqfeO+BzG8YKCf7RMC+boRB1z58e3zF7k8JKvz8oGzxX0
	roHPjsQQEGlM6biB/0xFWiMQ2C5HjMTjGSjgZclorWOC6IUQ0unCd0TgaqPuEiIhs+lY
	BqER4VsvCNwI2IGwD8E3eHj42cluXAtXAI9P3s9MI2lL5kTvEONHn/ScJ8+m23gF2or0
	byMP5RnCzB0CGAYgmGxXuSCE13wUnOPWPoQjTbikNW0KbLDJW0jR4vOdF+o1JryOnt5+
	mAPA2h/TzlqdSypAN39bwAvf8GElsaLaPLGclP7sXOXCi6HFnLp8DHJlBSz1KYtlgJLP
	1gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RuLoDqeAlDqnOZndsgxbdnF6A/aVKBWMAgrTUP0/jHo=;
	b=BWceBO9zxZKRkkieLzZ+JAz9JUHOHY3QEFCC8iWSI7ifAfpXpk8SFa4HKApO529Cz0
	2wrtCq7GmQHhzzWceHKIbhNiUDXJ3cjTL2275uIkFTC74leTltocpwz+7K2jZ78Pdz87
	arV9hP2wlqqSklUq9owx33I7tHn9GB5AV3L4n3Clhsm0VUZW2vy4jENs0A9vS7r2W3z9
	lAtBstNbETwt9sPlUjqwwEMtHtqVGRAwcg68xQbImGHK4ie979oKIrUyAHStwaIbuqjC
	yz7aC+7xasJWj33GPgo1DjCjW3uJTmG1onNt50KH56AwXlckkeBxKuwdaytIAsUjvYOk
	XySg==
X-Gm-Message-State: AKaTC01YxxD+W78StvIy1/pWjwymjXsLJCPTRXyxNFwdODDOcpvIlsAl1GoZKvhLGkENihf8Ut4uKHjnzGYMvQ==
X-Received: by 10.176.84.147 with SMTP id p19mr7145259uaa.76.1481108045179;
	Wed, 07 Dec 2016 02:54:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.85.157 with HTTP; Wed, 7 Dec 2016 02:54:04 -0800 (PST)
In-Reply-To: <20161207074220.573f9ea3@nuc.betafive.co.uk>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
	<009401d24feb$33bc8f30$9b35ad90$@neuf.fr>
	<20161206181110.GG1636@carbonA>
	<00d201d25006$c3ea6530$4bbf2f90$@neuf.fr>
	<20161206230034.3f25f7b2@nuc.betafive.co.uk>
	<20161207021755.GA9669@openSUSE-i7.site>
	<20161207072523.42e7daf2@nuc.betafive.co.uk>
	<20161207074220.573f9ea3@nuc.betafive.co.uk>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 7 Dec 2016 11:54:04 +0100
Message-ID: <CALbNGRRa5ChXEXWUKKY_c6=qDNMA+MsN3VMVgG42nNcQRHtvPw@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Wed, 07 Dec 2016 10:54:10 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 7, 2016 at 8:42 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On Wed, 7 Dec 2016 07:25:23 +0000
> Paul Barker <paul@paulbarker.me.uk> wrote:
>
>> On Tue, 6 Dec 2016 21:17:55 -0500
>> Trevor Woerner <twoerner@gmail.com> wrote:
>>
>> > On Tue 2016-12-06 @ 11:00:34 PM, Paul Barker wrote:
>> > > Upstream effectively support one version, currently 4.4. When upstream
>> > > made that the default branch, the changes to the 4.1 branch stopped -
>> > > there wasn't really much overlap. Everything post-4.4 is active
>> > > development and gets rebased at will. At some point they'll move to the
>> > > next LTS release (4.9) and 4.4 will be dropped.
>> >
>> > Are you speaking specifically about the kernel for raspberry pi, or in
>> > general?
>>
>> Raspberrypi specifically.
>>
>> > Because the kernel for raspberry pi has several branches that are all
>> > maintained and kept up-to-date. It's actually quite commendable how this
>> > repository is maintained. Branches for 4.4, 4.7, 4.8, 4.9 and others are all
>> > usable (ignoring the constant rebasing thing...)
>>
>> 4.4 is stable and never gets rebased.
>>
FWIW: patch fixing 4.4 just arrived in oe-core

Andreas

