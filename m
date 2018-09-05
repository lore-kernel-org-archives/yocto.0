Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94E3EE00950; Wed,  5 Sep 2018 07:05:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw1-f50.google.com (mail-yw1-f50.google.com
	[209.85.161.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64C20E006C7
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2018 07:05:14 -0700 (PDT)
Received: by mail-yw1-f50.google.com with SMTP id x83-v6so2677142ywd.4
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2018 07:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=5iNLg20jtSQmv+UO1QVsc/Ga5ahOCmjVg8w7hBBZ/vM=;
	b=IcTPwVPPsidW66cbE3eKed5qgrb7NVF9xlTBWFiPWeuIThxawRDygl0fKV+FKWP8XX
	NDoHMugpIJ+cpaF8r7pIj2eFk/qJP2CZI0VIQxLgMrJEilgTb4cNum3aPdvMei+l0iJS
	dqoy+dMLs88GiQd1uW4cs6jEn2tHrUM8zn6P4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=5iNLg20jtSQmv+UO1QVsc/Ga5ahOCmjVg8w7hBBZ/vM=;
	b=T53DEZsc16IOHSg/Fj+X4fzNQ8BOl5d0hcFwtzSz+NAsAyVkg2fn3op4HHhE1rpI/8
	G7QWyjbDHPvgnaBQd5kLvIUjZD516b5AyD+GSeED7C8GZIWxdY6UUHAGWlJ8qh04lODZ
	Q0GLUWsyTr5BbTDbOR51fO93vYxtcTmggosid0aBo4s7TBQ642o7qZWkhr+Z7s15jqHs
	9UIrhD/1NuHeYwMX+qTP57OOCEzD51CPtcrbijCQ2A+wQdmlz53b2zjGOFFohP8jnQwD
	bbtYgVOyuo6Y5vrBTtG0jdjFZA8Ugz1mId7ziAl/t7UdlUKlAbMtBllSHIMVFSbkI2mx
	Tqlg==
X-Gm-Message-State: APzg51DRDI3sMrAghjGjivN/GPHJu45KZA5Rx56OdjBpFMBnsUpafQxN
	xEASYq9ycDfD25/Awyu1xJ97GYLsK9g=
X-Google-Smtp-Source: ANB0VdYbDVJn8+hxkI5EBi4+1G64Ld6CVETPWxiaa+6P+dGcWvO3wCsRfXoFcZ0OO3O62HJoozksMg==
X-Received: by 2002:a81:7006:: with SMTP id
	l6-v6mr20448089ywc.445.1536156313558; 
	Wed, 05 Sep 2018 07:05:13 -0700 (PDT)
Received: from bill-the-cat (cpe-65-184-142-68.ec.res.rr.com. [65.184.142.68])
	by smtp.gmail.com with ESMTPSA id
	12-v6sm665683yww.77.2018.09.05.07.05.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Sep 2018 07:05:12 -0700 (PDT)
Date: Wed, 5 Sep 2018 10:05:10 -0400
From: Tom Rini <trini@konsulko.com>
To: Amol Lad <Amol.Lad@4rf.com>
Message-ID: <20180905140510.GD26633@bill-the-cat>
References: <ce7e843af41d4e8599fc9500e43ef066@4rf-nz-exchange.local.4rf.com>
MIME-Version: 1.0
In-Reply-To: <ce7e843af41d4e8599fc9500e43ef066@4rf-nz-exchange.local.4rf.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building two initramfs images
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
X-List-Received-Date: Wed, 05 Sep 2018 14:05:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 01:21:18PM +0000, Amol Lad wrote:

> Hi,
> 
> I want to build two initramfs images when building core-image-minimal. First initramfs gets bundled with kernel and available after build. This is all good.
> 
> Now, how to include second initramfs image also in core-image-minimal? It will be standalone initramfs image i.e. it won't be bundled with kernel. If I specify this recipe in local.conf in CORE_IMAGE_EXTRA_INSTALL or IMAGE_INSTALL_append then I get below error:
> 
> "Task do_populate_sdk in core-image-minimal.bb rdepends upon non-existent task do_package_write_rpm in second-initramfs-image.bb"
> 
> I can build second-initramfs-image.bb with command "bitbake second-initramfs-image" but I want this to get build automatically when I build core-image-minimal. Please advise

What is your end goal for first-initramfs and second-initramfs?  Are you
trying to have first-initramfs be the bundled initramfs for the system
and the second one be the initrd that's the main rootfs?  Something
else?

-- 
Tom

