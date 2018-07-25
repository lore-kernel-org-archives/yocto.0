Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2B54E00D38; Wed, 25 Jul 2018 14:30:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44E58E00D00
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 14:30:50 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id p12-v6so4529125vkf.2
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 14:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iMBXGvpOAQeDqLPE3NVTQVHq3IehlYe2bm6nz2J4qzc=;
	b=r324sxGcsiZqvCPYOa4b6PBnQPcRokxFNDeh8+MBYJlNezAHLIlc7oCSuhn7mj7zx9
	l6A33DapT1ADW8z0r7HkXWFF6eQWASDcR25HHB9B0SsByC1JzPSonQwskqG8xyAxS+5J
	fOKLUQUWYtRzJRN8TQkU9TjgUsJH2kCdRgY/0kRP9RoSx//zdduAFGXH+q5HISnxaBjl
	gXvsT5WySzDFxIft1+lMqPc1eRt40jArH+CRJ6NL0w2WBLuZ5JaCRiqMmUXQgouj0nhO
	mQmjzMznh9jfCxtU4ehwuRSSJfR6Ylgyd60lmyZVmGpXd2sQD+HmIctP9YRrRrVYQwcZ
	dy+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iMBXGvpOAQeDqLPE3NVTQVHq3IehlYe2bm6nz2J4qzc=;
	b=OEnNyWnnX/XoNHFq9rYfVeCmoJ2710yG28acJTcXg+4D31MY5sBd0QUeXp1tTsKpZt
	PEf5TBhaWy8Zy2YwxifIfmq3pzV8zt2RhDeFEkmMl1UW80HrWjAuMHVtQylWSCWusc6w
	UoEVv/pGvY5PzM+FUr7wJAJKUpAprhP5jMtAbb2WMa/XCAKY4IrE1Vvl6964ITFn4vnH
	B4nlS7FtteEHOBYrMow2/zT0P/ouWjaI2F0IUZth93IEhmaHFe9A5QS6EOqhEicVsX8d
	WsrDpyUr46ejJmPJ9WifpqnE3VnjN6APFDOSZqbe2WqHCpFXztIEa80tLrqeFcZ1ZTPN
	eUOg==
X-Gm-Message-State: AOUpUlFNK8wY8hd5lOSXmCxAq/DpykP+sQpeGCcVvIC42uYYUmwh+Mrg
	dr+OPVZNmuGxjpvRedCHVaAC7nAd7fEC/yXzShg=
X-Google-Smtp-Source: AAOMgpfqKFffNMQpVqjSUmDLUhuxcqvovjli/QoHA9kIIxEUDkwYtrmUNIi7R/f36D6Vdlceit5V7R8XubNr785LRxk=
X-Received: by 2002:a1f:d844:: with SMTP id
	p65-v6mr1986062vkg.54.1532554249464; 
	Wed, 25 Jul 2018 14:30:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Wed, 25 Jul 2018 14:30:49 -0700 (PDT)
In-Reply-To: <CANmTPBZrGCNFXvCwNmpbiCHfno3GXX5MAqj4hBgau6_xE7wf3g@mail.gmail.com>
References: <CANmTPBb=YUAtLAqXz89GTbcpxt=o1uSRzaRhXVei8Dh6BtYEFg@mail.gmail.com>
	<CAJ86T=VhRDCrir+7UTGurE32kgwAuRM2n3jWNFiofEA_uEehNg@mail.gmail.com>
	<CANmTPBZrGCNFXvCwNmpbiCHfno3GXX5MAqj4hBgau6_xE7wf3g@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 25 Jul 2018 14:30:49 -0700
Message-ID: <CAJ86T=XNrbMCEq270g=V5tsxm3WbGKV_FT1A3M6T5DpeEryyHA@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to enable http2 for Apache?
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
X-List-Received-Date: Wed, 25 Jul 2018 21:30:50 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 25, 2018 at 12:45 PM, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> Trial and errors.
>
> Is there another way of enabling http2  ?
>
> In general, if we wish to add flags to a compilation of a package, what is
> the proper way of doing it?

Start by reading the recipe and see what variables or PACKAGECONFIG
options it uses to derive the configure options.

If there's no PACKAGECONFIG option to control the feature then
(assuming it's an autotools recipe - which again you need to read the
recipe to determine) you can add additional options to EXTRA_OECONF.

> Changing the local.conf or the recipe of a given package?

Once you know what variable you are trying to change (e.g. appending
to PACKAGECONFIG, EXTRA_OECONF, etc) then there are many ways you can
do so. Editing the recipe, creating a .bbappend for the recipe or
setting via local.conf (which case you'll need to use a recipe
specific over-ride since local.conf is a global config file and you
only want your change to apply to one particular recipe) would all
work.

The basic advice though is to try to understand the change you need to
make a how to make it by reading documentation or existing recipes etc
and trying to figure out how and why they work. Trial and error is not
a good way to try to learn OE.

>
> On Wed, Jul 25, 2018 at 3:26 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>>
>> On Wed, Jul 25, 2018 at 11:17 AM, Simon Chamlian <simon.chamlian@mpbc.ca>
>> wrote:
>> > Hi,
>> >
>> > What is the best way to enable http2 for Apache?
>> >
>> > Do I add
>> >
>> > COMMON_EXTRA_OECONF_append_pn-apache2 = "--enable-http2"
>> >
>> > in local.conf ?
>>
>> No.
>>
>> Wondering what process you went through to arrive at that?
>
>

