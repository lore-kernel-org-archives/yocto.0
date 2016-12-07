Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DFCAE00D19; Wed,  7 Dec 2016 00:02:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77B73E00D0A
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 00:02:45 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id 12so38165261uas.3
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 00:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1QYEdpKFNmLGZUhvNy3n0F/HgoR+hCBgunhfRIAeSVU=;
	b=d38xvudXwCx48i/pxcJidVZn6Z/qE98Qco21vHEmi3XZfJF7XYlHMuZr5FSCeKSxKY
	z8ktdQp9L4FDD4+HUGHuYa6TMKqEtLS1FJa7K31Ar1SYXNRQTnPm2nS4hlKdQeo5ZpI/
	IHX2k8ZT/8s6cAIs3oW5DJ9PW1aSp2+hmuVomwDz2ohjOUjALERTQNP8XTroQkGWV0YQ
	1hgfLJxKdfVtO4VOsG4DKfzw1N8tdohX6hqs1Ln1RfZG5k0Ll245q0jFAB00PILbYIa4
	aeAX7Be8T1YkNvlYbJ4bC6bvoBfoatxmDjSHe6BF7e7YEnLs43I1m41xWpyP6fTzZ6XY
	KjWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1QYEdpKFNmLGZUhvNy3n0F/HgoR+hCBgunhfRIAeSVU=;
	b=kazmkiKs35KheXvWl/tbPgksWz47xxuPPM3xdWPwp08vRkTyBe7LuWtn0407EuOwQu
	2zeiyWCbLM6yfRl3nMNbDUVIrGQo4nIwJErg/kHOg5884hDBfhmNeYwoDP0UanAhKAby
	cUs+inLbZONt+gRoelic4NnesyoU3Acl7rN/Sp58NZf8QRqtdPQ6A64PG3Eaew3QBOqp
	Vu6kMPuDLDc0j12oOYAMMJaE92sPJiwYdyf4k/UZBxm8B5ctQKaRVlzbtm5EJ8rCONO8
	q3PWu/v8aJT4AjgK2o9wWXWg2DmVvKZBIBO0TEmGkVZd4OSBN7F7tC9VAVYD9ClTeRxs
	os/A==
X-Gm-Message-State: AKaTC03gEAMO0HZIUwlIf+JsyxD4Mg9Q+1/e2zg738S+YbTLI+L2zbcF8Jq+GAMcYw0iWsuxv0/S+a6DH6vYfw==
X-Received: by 10.176.0.180 with SMTP id 49mr51699261uaj.32.1481097764421;
	Wed, 07 Dec 2016 00:02:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.85.157 with HTTP; Wed, 7 Dec 2016 00:02:44 -0800 (PST)
In-Reply-To: <20161206183740.GJ1636@carbonA>
References: <20161128190745.18053-1-twoerner@gmail.com>
	<2ACF0BDF-0A7B-4A0E-BC20-B6B222F1644A@gmail.com>
	<20161129013709.GA30326@openSUSE-i7.site>
	<20161206182732.GI1636@carbonA> <20161206183740.GJ1636@carbonA>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 7 Dec 2016 09:02:44 +0100
Message-ID: <CALbNGRTLujWEEUgED32Ge+YkkuBATJT2iGjqTYhKuX00h=UOfg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: allow -rt kernels
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
X-List-Received-Date: Wed, 07 Dec 2016 08:02:47 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 6, 2016 at 7:37 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Tue, Dec 06, 2016 at 06:27:32PM +0000, Andrei Gherzan wrote:
>> On Mon, Nov 28, 2016 at 08:37:09PM -0500, Trevor Woerner wrote:
>> > On Mon 2016-11-28 @ 03:16:11 PM, Khem Raj wrote:
>> > >
>> > > > On Nov 28, 2016, at 11:07 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>> > > >
>> > > > If the PREEMPT_RT patch is applied, the kernel version becomes, say,
>> > > > 4.4.32-rt43 (instead of 4.4.32). This confuses the version handling code in
>> > > > this class. Update how the version string is processed so that trailing rt-
>> > > > strings are properly handled, in addition to handling the existing cases.
>> > > >
>> > >
>> > > This probably will solve the issue I see with 4.9-rcX recipes that are in my tree on kraj/master
>> >
>> > I'm not familiar with the issue you're seeing, but the existing and new code
>> > are looking for 3 int()s separated by periods. If your recipes have the string
>> > "4.9-rcX" then I'm guessing there might still be an issue since the third
>> > int() will be "-rcX" in your case. If this is true, you'll need to take a look
>> > at where "int(min_ver[2])" is used further down in that bbclass file.
>>
>> I agreed this is not the best implementation of this. We should only get
>
> agree*
>
>> the version using a regex that would get X.Y.Z-R with an optional Z and
>> R.
>>
>> --
>> Andrei Gherzan
> --
> Andrei Gherzan
>
Question is if this version dance in get_dts is still necessary: We
don't have kernel < 3.18 or kernel 4.4.<6 around. Why not use what is
set in KERNEL_DEVICETREE?

Andreas

