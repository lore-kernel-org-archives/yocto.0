Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8897E00ADB; Thu, 19 Jan 2017 22:50:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85C41E00AD0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 22:50:17 -0800 (PST)
Received: by mail-vk0-f67.google.com with SMTP id n19so5465336vkd.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 22:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0UECNT5m5om1/VoScNjVaBxcdcwv08yXc7/GwhrIVWs=;
	b=C+FQ5L2rEW6E+KCF+oeKbDWZnchZzsG84ibG9HrWhxtnollltoScxnh8wsw6RRWQ1q
	jbIkZjDEbz+jqHG1ZpYodqNIFq1zwfn2b2JrlpiLrtt5qu8bnA3JWMdEy1hWCS1qre9N
	+xo9W63pJrt1++313IKH4pcgSJWya7ToglcXiD8RMW5QUh8m2b/ppLiynUE4MVixuk3Q
	+qKLYNcv2gYiCvjisf6LGspctxWhCjVhzT1xBUeG6/NNCGNPVG7+s8Hl3GNjAbLZFYOt
	iC9z83qvbdRluhB0vXM1+sAOUdsN8w/DBHCgPH8exQjpJW4py8fJxFtSIA4ZJs6bxE3P
	Aamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0UECNT5m5om1/VoScNjVaBxcdcwv08yXc7/GwhrIVWs=;
	b=P2LJtOqO4rDA3Tz5Ief+sSrqR8HdZlIocyBJTVsX7r/iG2PtVRoXA1GuGP0NECB1lX
	t5aVOeaMPKKeejPBeRlqt89DaJr702etDzv/B+l2xUvk9er2lqZisBNAyyp2HPbGqJUH
	rfA5n9TaNRye6MJwA0m5+1EVfEBMqOm+FkLLFCtu2XWRFilOmt+weUMXib3m/TfKQiMl
	ipCceMAUoYQYoRP7Bho++tgd6ybesKWwAa2tEdZSVvrJZEQZPTdaxggLsGwxmpZ03Emh
	jVj41lawINeaDzNq6jne8U7jQ2RYwqnM74PtqYHjU045qUJEBT43zBEH92q6ofHj8E5P
	/xiA==
X-Gm-Message-State: AIkVDXK4BorIDeXXoPE/r8uZL3FD2n7V8pE1iJvjAIAO3SavQdk8FmdIe8xIokTNn+NPJOfd2DLod6iUDxk1MA==
X-Received: by 10.31.108.149 with SMTP id j21mr5271616vki.93.1484895017306;
	Thu, 19 Jan 2017 22:50:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 19 Jan 2017 22:49:46 -0800 (PST)
In-Reply-To: <CAK18fxFr_GrVC4z5eVa_VOMsyPFGMKNc10ErCKKY=fGFhpQmQA@mail.gmail.com>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<1484826659-21692-4-git-send-email-andrei@gherzan.ro>
	<DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
	<CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
	<12A2100F-D90D-44BE-B337-D1CB34B30EBD@paulbarker.me.uk>
	<CAK18fxFr_GrVC4z5eVa_VOMsyPFGMKNc10ErCKKY=fGFhpQmQA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Jan 2017 22:49:46 -0800
Message-ID: <CAMKF1sr3FmoMT5hzWjqn0dXpBF4cMBbjj9SY016TVikPYAZTfQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][morty][PATCH 4/6] linux-raspberrypi: Drop v4.8
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
X-List-Received-Date: Fri, 20 Jan 2017 06:50:21 -0000
Content-Type: text/plain; charset=UTF-8

4.8 will build until rpi kernel folks rebase the branch :( moving
forward, we should only keep stable branches which they dont rebase
hopefully and 1 more recipe called linux-raspberrypi_dev.bb to track
the latest upstream release, so it will be clear that this is a dev
kernel.

On Thu, Jan 19, 2017 at 4:55 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Jan 19, 2017 at 12:41 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
>> On 19 January 2017 12:07:11 GMT+00:00, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>>On Thu, Jan 19, 2017 at 12:03 PM, Paul Barker <paul@paulbarker.me.uk>
>>>wrote:
>>>> On 19 January 2017 11:50:57 GMT+00:00, Andrei Gherzan
>>><andrei@gherzan.ro> wrote:
>>>>>From: Paul Barker <paul@paulbarker.me.uk>
>>>>>
>>>>>Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
>>>>>---
>>>>> recipes-kernel/linux/linux-raspberrypi_4.8.bb | 8 --------
>>>>> 1 file changed, 8 deletions(-)
>>>>> delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>>
>>>>>diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>>b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>>deleted file mode 100644
>>>>>index be25e65..0000000
>>>>>--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>>+++ /dev/null
>>>>>@@ -1,8 +0,0 @@
>>>>>-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>>>>-
>>>>>-LINUX_VERSION ?= "4.8.16"
>>>>>-
>>>>>-SRCREV = "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>>>>>-SRC_URI =
>>>>>"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y
>>>\
>>>>>-"
>>>>>-require linux-raspberrypi.inc
>>>>
>>>> I'm not sure on this one. I don't think we should drop kernel
>>>versions from a stable branch unless they're broken. Can we hold off on
>>>this and I'll have a look at it tomorrow.
>>>>
>>>> (Resending as I mis-clicked and didn't do reply all)
>>>
>>>I don't see the benefit in keeping 4.8 and 4.9. The default + the
>>>latest should be enough. Default would give stability and suitable for
>>>production while latest will give new features.
>>>
>>>BTW I already removed 4.8 from master.
>>>
>>
>> Agreed for master. I'm just wondering if we want to leave 4.8 on morty (if it currently builds) in case anyone depends on that version.
>>
>> I can see the other side though - if you need a stable branch of openembedded you should probably also use a linux-raspberrypi version that's stable.
>
> I'll try to compile and not remove it if it compiles. Doesn't hurt to
> leave it there anyway.
>
> --
> Andrei Gherzan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

