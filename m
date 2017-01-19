Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C1EBE004E5; Thu, 19 Jan 2017 04:07:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7E72E004D2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 04:07:52 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id e137so4774937itc.0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 04:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bHrx581e4AHKA9tliJbMR3tZU3c0V4cRDvHF82XEF4c=;
	b=w5rbimBhLkOn7cTPFhKumFLzgAs/6kecogHgz8taWJp6LHLab0VaUGLkq2fPxxq/kI
	/EDbtVjW0ndQ1p/GIWXPoHddnR9CPXgCIcAwDYrmSCqFHd/vOfgjfFSvyEgvQNxPBG08
	za6FBLTms98n7tPs3MqquvnuKLAEDIi7olHqHGIxnIaY/pf9wbOLRe5iE39u6PkbfII7
	tPPLS2oombtBZCOZJf+T/o/7RKMDU6GHwCAX7p+jLKMWWO2CGja+Es2ezs783O3vGo/L
	23gjg4o2wKn1TSIkz20PMpDqhnBKlsTIBimmj11byDhxxP6miLoNZh5wWFyjbnm2rWg9
	P1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bHrx581e4AHKA9tliJbMR3tZU3c0V4cRDvHF82XEF4c=;
	b=gAT9ALIOtrltgMdN3M0E4Ned9F/Zp2CRlHfb9n0qxd89K2CekS4XmxrdN3WK7AzzET
	kL3lHVx2Gb60pht0Y3kJLD9dDUFoC41LwtM7QlmpHWKchqOS1TqQqrJ7hDGQHKac6YY/
	koaFHtRRHlXsW9dw2UYsYjaASz4ovEWWqVvupTwO19fWrzqhes7TzDBEHz5tSujCwsc1
	zJe3Zt3frVySAt98hnF71PpuoFfu40IFDHWZkNr7w5Q5v+DOpff5D2DggBu3m4tJ7EXy
	913EPnN9Kwmcjcfdt913HB5CEfGkd0FSz3EpLUoQm3D3Hi+jmaxMLwtDcB0qRIVQCXK4
	kVqQ==
X-Gm-Message-State: AIkVDXIuupRoFjOl+gMvySL1YkNHgEJHMNcDuMdanhKjrvzIPil2hwb5IXp3Z4BLFOyONZNBgelR2gIpCHD/yA==
X-Received: by 10.36.118.133 with SMTP id z127mr15555331itb.74.1484827671914; 
	Thu, 19 Jan 2017 04:07:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.195.69 with HTTP; Thu, 19 Jan 2017 04:07:11 -0800 (PST)
X-Originating-IP: [86.141.163.25]
In-Reply-To: <DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<1484826659-21692-4-git-send-email-andrei@gherzan.ro>
	<DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 19 Jan 2017 12:07:11 +0000
Message-ID: <CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 19 Jan 2017 12:07:55 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 19, 2017 at 12:03 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 19 January 2017 11:50:57 GMT+00:00, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>From: Paul Barker <paul@paulbarker.me.uk>
>>
>>Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
>>---
>> recipes-kernel/linux/linux-raspberrypi_4.8.bb | 8 --------
>> 1 file changed, 8 deletions(-)
>> delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>
>>diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>deleted file mode 100644
>>index be25e65..0000000
>>--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>+++ /dev/null
>>@@ -1,8 +0,0 @@
>>-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>-
>>-LINUX_VERSION ?= "4.8.16"
>>-
>>-SRCREV = "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>>-SRC_URI =
>>"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
>>-"
>>-require linux-raspberrypi.inc
>
> I'm not sure on this one. I don't think we should drop kernel versions from a stable branch unless they're broken. Can we hold off on this and I'll have a look at it tomorrow.
>
> (Resending as I mis-clicked and didn't do reply all)

I don't see the benefit in keeping 4.8 and 4.9. The default + the
latest should be enough. Default would give stability and suitable for
production while latest will give new features.

BTW I already removed 4.8 from master.

--
Andrei Gherzan

