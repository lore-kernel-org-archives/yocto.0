Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A04CE0076C; Sun, 24 Aug 2014 22:31:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 024AAE0044A
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 22:31:03 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id y13so19541367pdi.17
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 22:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=UCFIux61o8lyWsKCZ4Zlr4kLIZFpmMeu5tJl/Rw/WD8=;
	b=jZH447vI/TM6bn/uOoVh4m9r5bf5MMdGQDTznZwgYNYxWBsJqVMMxhPCMnwl4FHLGs
	T4rOFfiskcxe3Zn9xPwKjB4KRt/rDYlIrhY6CMUqBYoXXgD6Bq82+gnNkIDfmf9h/hqj
	LPUlgkbRkK6ZN3AHrX/Q2DYMOb4Bl5narNc6vRPGN4mLKJH66symqfMRGuspQXbkuGK0
	muOJGQq5CsyAFlTgTkTxXc87QA1a1RK97qzSF3liWL1NT3poGqpyAHGjAFd0zNmWSASb
	797Wj+NQoiiE4Xur5y/411haOeaCJPMpg+QUdgd46gae0wR0QZqhtoJ3P0ZssDW96VlT
	ZLfA==
X-Received: by 10.66.158.130 with SMTP id wu2mr25343896pab.59.1408944661402;
	Sun, 24 Aug 2014 22:31:01 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id u2sm36142647pbs.42.2014.08.24.22.31.00
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 24 Aug 2014 22:31:00 -0700 (PDT)
Date: Sun, 24 Aug 2014 22:34:48 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
Message-ID: <20140825053448.GD1014@haswell>
References: <36A43B0E1E88D84791516F9D44BC48331B3C9E7D@corpmail01.corp.sensis.com>
MIME-Version: 1.0
In-Reply-To: <36A43B0E1E88D84791516F9D44BC48331B3C9E7D@corpmail01.corp.sensis.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bundling initramfs with uImage
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
X-List-Received-Date: Mon, 25 Aug 2014 05:31:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-21 20:18:41, Crast, Nicholas wrote:
> All,
> 
> I am currently working in an embedded environment, struggling to get the entire system running in RAM, so that everything is fresh after a reboot. I can currently use the initramfs-live-boot functionality to generate a .cpio.gz file, but I am lost on how to get this to 'bundle' with the uImage. The uImage will be stored on an SD card and we are using u-boot.
> 
> I see mentions of the CONFIG_INITRAMFS_SOURCE kernel option, but I am unsure if I need to change this.
> 
> Can someone help me? I've been googling all day and haven't gotten much further.

if you add 

INITRAMFS_IMAGE_BUNDLE = "1"
INITRAMFS_IMAGE = "<name of your initramfs-image>"

in you local.conf that should help it to create uImage with everything
in it.

-Khem


