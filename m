Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5359EE00AF4; Thu, 19 Jan 2017 04:55:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A80EE007B5
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 04:55:50 -0800 (PST)
Received: by mail-io0-f196.google.com with SMTP id m98so4862064iod.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 04:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zEGCpK8/8wyqgzEdvuaq/LqLoYPXykeuviMkGv2MtTI=;
	b=dl9TMyXqyeWW6odFCPjWsO4cJtG1DT4SIg8mcXBwvhm3LEk72Skm1cmexOwU7sW/l/
	RyOir5C7B461Saak1w0Jc6Sh5cVy/Kp1MzpIQPHmcRfvf4zb4+4t4zdZIlzMHEpQZjfh
	DyhogQmDILq3ilNCLo84PF7yEjgx2lXtpHwOSt3wA2UddQIjdj6/YGAIx28RSWfuomTU
	FiLPYW4AAcslrEVdvznYcUpHSZRdIL+eKFBVON9AT8Uu+cdSzBXUewAlsSQ8vLh8Tca+
	d9pl+5nKj17IlqphlaHkBO5yTob9Ss9M28vKYW6rfcWzdwyVTQemkBWOeB9eQ78TRis2
	xZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zEGCpK8/8wyqgzEdvuaq/LqLoYPXykeuviMkGv2MtTI=;
	b=HcwGzGmKeH7IUw1dUgWitod8uILqR17/gFCsfZVWqFJfvyj9DT8mqb2kAvahe5y/C0
	SX47zT+xcvmC7FO5CPQ0HR8cqfu8jIFPNRGInKJyPpFiAHS/MWKfEYGrUBGu+XcSakVm
	apBtS6pse5Sip6M0YtHUBxyVaMNM6gqDLENNigHX8m4E6hHJVm1buxJdEnHS2PDZT1CR
	qagJ4vcXQx5uvpvskmciw7YEcTJpTwd1XlCPdb5vQmnqgQde7IgDjgJngMBbPt+kMUom
	Suz3knLvPPw/PxrKB+reHsDEx4l07BkgvNU3ynlcf/440HlNQLE7UkhKkiZR7KVTIJAi
	MN5Q==
X-Gm-Message-State: AIkVDXLQzbNMZgAAjpazJywqDw/NuEaWN73Efk7BsOcj5yT0jUBLGHUtYfSAjyJmn0y+f6c7gaK80+Y63FJpTw==
X-Received: by 10.107.44.74 with SMTP id s71mr8940922ios.111.1484830550088;
	Thu, 19 Jan 2017 04:55:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.195.69 with HTTP; Thu, 19 Jan 2017 04:55:09 -0800 (PST)
X-Originating-IP: [86.141.163.25]
In-Reply-To: <12A2100F-D90D-44BE-B337-D1CB34B30EBD@paulbarker.me.uk>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<1484826659-21692-4-git-send-email-andrei@gherzan.ro>
	<DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
	<CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
	<12A2100F-D90D-44BE-B337-D1CB34B30EBD@paulbarker.me.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 19 Jan 2017 12:55:09 +0000
Message-ID: <CAK18fxFr_GrVC4z5eVa_VOMsyPFGMKNc10ErCKKY=fGFhpQmQA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 19 Jan 2017 12:55:58 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 19, 2017 at 12:41 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 19 January 2017 12:07:11 GMT+00:00, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>On Thu, Jan 19, 2017 at 12:03 PM, Paul Barker <paul@paulbarker.me.uk>
>>wrote:
>>> On 19 January 2017 11:50:57 GMT+00:00, Andrei Gherzan
>><andrei@gherzan.ro> wrote:
>>>>From: Paul Barker <paul@paulbarker.me.uk>
>>>>
>>>>Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
>>>>---
>>>> recipes-kernel/linux/linux-raspberrypi_4.8.bb | 8 --------
>>>> 1 file changed, 8 deletions(-)
>>>> delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>
>>>>diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>deleted file mode 100644
>>>>index be25e65..0000000
>>>>--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>+++ /dev/null
>>>>@@ -1,8 +0,0 @@
>>>>-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>>>-
>>>>-LINUX_VERSION ?= "4.8.16"
>>>>-
>>>>-SRCREV = "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>>>>-SRC_URI =
>>>>"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y
>>\
>>>>-"
>>>>-require linux-raspberrypi.inc
>>>
>>> I'm not sure on this one. I don't think we should drop kernel
>>versions from a stable branch unless they're broken. Can we hold off on
>>this and I'll have a look at it tomorrow.
>>>
>>> (Resending as I mis-clicked and didn't do reply all)
>>
>>I don't see the benefit in keeping 4.8 and 4.9. The default + the
>>latest should be enough. Default would give stability and suitable for
>>production while latest will give new features.
>>
>>BTW I already removed 4.8 from master.
>>
>
> Agreed for master. I'm just wondering if we want to leave 4.8 on morty (if it currently builds) in case anyone depends on that version.
>
> I can see the other side though - if you need a stable branch of openembedded you should probably also use a linux-raspberrypi version that's stable.

I'll try to compile and not remove it if it compiles. Doesn't hurt to
leave it there anyway.

--
Andrei Gherzan

