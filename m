Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44CADE00559; Tue,  8 Jul 2014 14:03:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF001E00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 14:03:31 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id w8so5311383qac.36
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 14:03:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=5oRFNLzKhTZuIMmy0KKPWs9Rdixn46V+h+zjoFHcU6M=;
	b=U5Zrtu0KVqM+1V4fljG7XNS6sSrh1AQ+P8hLHKYWSU+YI0Kdy/wxKs23iXte9MKNOH
	4GhqO2O1k2tW4djvVKppOPOBx+LXCXjYjR5JKXshYntdjAfZYx0cFMDeGf6iEQDJA+o8
	fZQfLVKRLiZDNPk4o1N3jVzbY+sMJ0oVZP3Q1bv4SbRg5Ly9fi/C6eOR9RpfRZshwdP8
	oQ0uiSsHFGZKbBobj65xu++XGy25Jggry0T4DGI7FHXhaRktLAYp1flE1ETorZopyq9s
	0gmNSEc5PQsaN9tMqJ+V/6DAPj6fDvUGRRXxeD6x4COWUPXxMm6u2I5MgABxwWT7Do8J
	b53A==
X-Gm-Message-State: ALoCoQm2/xwq1kXRb83bCCBk9Mn3AMaPuaPjtVPeyRozNgcbQinTMaGeMa7cpRp/m+LWqJ9MHhOB
X-Received: by 10.224.120.68 with SMTP id c4mr25461760qar.17.1404853411205;
	Tue, 08 Jul 2014 14:03:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.40 with HTTP; Tue, 8 Jul 2014 14:03:11 -0700 (PDT)
In-Reply-To: <53B8C942.6010405@gmail.com>
References: <53B8C942.6010405@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 8 Jul 2014 22:03:11 +0100
Message-ID: <CAJTo0LYhsisa6QNTv_VJo_9O8VuAqBKPyp9NU_Z3uAa5vvirxA@mail.gmail.com>
To: Jeremy Moles <cubicool@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minimalist Initrd
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
X-List-Received-Date: Tue, 08 Jul 2014 21:03:40 -0000
Content-Type: text/plain; charset=UTF-8

On 6 July 2014 04:57, Jeremy Moles <cubicool@gmail.com> wrote:
> I've encountered a scenario wherein I have only (and this constraint can't
> be worked around) 13MB of space into which I can place a JFFS2 image which
> can be used to continue the system startup (which is initially started by an
> older version of uboot).
>
> I'm having trouble finding a clean solution within the Yocto/OE world for
> this issue. Thus far, I've been using an old, generic, super-tiny ARM-based
> initrd I made years ago which just does a few (proprietary) things in the
> linux and then fires off /sbin/init in the "real" filesystem.
>
> What I need now, however, is a recipe (or perhaps hints on where to start
> when rolling my own recipe) for generating little more than an image (JFFS2
> or cpio.gz) with busybox in it. I can handle the rest view function
> overrides, I just need the base startup.

This sounds exactly like what core-image-minimal-initramfs is for.  If
it's not what you want, it certainly demonstrates how to trim an image
down in size.

Ross

