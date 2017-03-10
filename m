Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45149E009C9; Fri, 10 Mar 2017 05:35:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85353E009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 05:35:05 -0800 (PST)
Received: by mail-lf0-f52.google.com with SMTP id a6so41004732lfa.0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 05:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=J32G/Iel56fLa21yuLN55xocnRGapyJdEEyrYvjPm7A=;
	b=sWwhl+9CNzBceACsZZMe2ZwbJLihUhqQorKXSVHewaL4x7rLCkyYHFhr3I750yZhXm
	xS3kO9WrAZhDcIifl+vCh7BGGgPmNpdLv8zPB3LyoecluM22b4xNLC4X/+ScXytyiu6x
	GsZu3oUtIeUS1yFuzTIA3eVuszFVa8VY6vgZ5lalzAM8CmbQp73H9fl/n7qJlBQ+ledA
	Co7IaWVwwlNWmYKd93BWHRXqceL5mBTJilrvNCyVKL7sft5n3Kkq+N2vBWssV6cBWvrQ
	+g/bs3oxGgg8TXZH5RHSx8xaEs5X6XFfqflL4O7kUCMSDfN7tvWZTuIsMjg69uuw6GW7
	pNjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=J32G/Iel56fLa21yuLN55xocnRGapyJdEEyrYvjPm7A=;
	b=BU4vxV7Gyh9VETjSrEhrwBrEEufexuzldIOhM264mZmya2+9GGSzIDj73EDAh+XKO5
	BUJv9z+VqCBCG627EjdOiWWv1EXD0jylxVJ9zsHfLraciyICB0chy6wvGpEdiX8X64hN
	XOKUAUk0t0ecJ/RmGquuAjfLQgZSzgvg9XoFjGbLTE6AXHOsOQqyo0JEQUMM++sEhhkR
	7ZCU5oZH7YW68IuX7tsGTnE33dA4v+mgxGmoDWBt39TFJ6oe9AN4EyyL2BetW/IFHukc
	vFBY/Jb4+/w/OTj1bIPS4S2sEPj7NC7wD61M/sICNzUNz3iXzxlHHj9DCF+HeACvn852
	2LdA==
X-Gm-Message-State: AMke39mwhwzS7Kh3On6pXlECvoUlD8YsGK2WSEV0MSuRuxKmQv+Dk42JrgswJZpADiQeqQ==
X-Received: by 10.25.199.135 with SMTP id x129mr5064191lff.42.1489152904183;
	Fri, 10 Mar 2017 05:35:04 -0800 (PST)
Received: from [10.25.0.177] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	x28sm1877282ljd.60.2017.03.10.05.35.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 05:35:03 -0800 (PST)
To: Patrick Ohly <patrick.ohly@intel.com>,
	=?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>
References: <7d589da5-ff5b-3cdc-d0e7-fd2289363c98@mender.io>
	<c8f87996-c9e4-97ba-3ba8-be9c9260e094@mender.io>
	<1489150958.7785.436.camel@intel.com>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <0135756b-1d20-a743-4f82-8f45becea106@mender.io>
Date: Fri, 10 Mar 2017 14:35:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1489150958.7785.436.camel@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: update mechanisms
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
X-List-Received-Date: Fri, 10 Mar 2017 13:35:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 10/03/17 14:02, Patrick Ohly wrote:
> On Wed, 2017-03-01 at 16:35 -0800, Eystein Måløy Stenberg wrote:
>> On Tue, 2016-12-06 at 10:45 +0100, Patrick Ohly wrote:
>>> On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
>>>> Hi Patrick,
>>>>
>>>> On 30/11/2016 15:59, Patrick Ohly wrote:
>>>>> I've started a Wiki page
>>>>> https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
>>>>> moment, but might as well be mentioned already now.
>>>>
>>>> I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
>>>> like to edit for better explanation on some parts. Should I try to edit
>>>> directly the page or is it better to discuss it here ?
>>>
>>> Use your own judgment. If its uncontroversial, the feel free to edit the
>>> page directly, otherwise let's discuss it here.
>>>
>>> If feel that putting information directly into the table is too limiting
>>> (it should be brief), then feel free to start a complete section about
>>> SWUpdate.
>>>
>>> I'll do the same for swupd. Editing the sections should be possible
>>> without conflicts, we just have to be more careful about editing the
>>> table concurrently.
>>
>> I updated the Mender part of the wiki now that the stable version Mender 
>> 1.0 is released. These changes should not be controversial, but let me 
>> know if you disagree. We are planning to keep the Mender section 
>> up-to-date as we release new versions, as I think this is what you expect.
> 
> Yes, that's useful.
> 
>> Are there any plans for next steps or is the wiki the "final state" in 
>> terms of integrating OTA updates in Yocto/OE?
> 
> My own conclusion is that it is impossible to integrate a specific OTA
> update into Yocto/OE (because there's no single solution that fits all
> requirements) and/or it would be unfair to those solutions that don't
> get such special testing. In that sense the Wiki page is the final
> result of the investigation. Anyone interested in picking a solution can
> go there, consider the pros and cons, and then make a choice.

Makes sense. We can always revisit this at a later point, if one method
starts to emerge as the preferred option for most people.

> However, I see room for some collaborative work that then can happen in
> Yocto/OE:
>       * carrying local system configuration changes across system
>         updates: I find it promising to investigate the "stateless"
>         concept and have started some exploratory work, see
>         https://wiki.yoctoproject.org/wiki/Stateless#Status_and_goals_for_.22stateless.22_in_Yocto (more on that soon)

What's the relation (if any) between this and a read-only rootfs?

Also this may be only vaguely related, but I have it in my queue to
finish the built-in partitioning of rootfs images [1], which will help
divide the filesystem into a stateful and a stateless part. The wic part
is done [2], but ext4 images are not covered yet.

[1] It works by choosing which sub directories of the complete rootfs
you want on each partition.

[2] https://bugzilla.yoctoproject.org/show_bug.cgi?id=10712

>       * supporting UEFI-based machines

Great, this is something we are interested in as well!

-- 
Kristian

