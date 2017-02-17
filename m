Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FF19E00924; Thu, 16 Feb 2017 19:33:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89717E00726
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 19:33:53 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id 203so758543ith.2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 19:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=vzz3cmxGLicKZVnex8nZymtCGUhxeKZoT9swDmyp3n8=;
	b=qUz3mZRwpMco2xMdmzdogrbxr3GvxAUu87gRArIUnlHuaezCEGGN049rWCY8Wsvs8f
	gHg5OBCkeXAv3ikzWIKeLILPD5MJwrKMzRKnSRP7zd2CpAgL52XzQ7kcWKm3JPwzHCMd
	4TwaA6bg2OJc1VNEQyDdXqHkb3fL4pwdjCs7cSB2pIiHZzD0wV8FQbgrDiGhjyQwmikN
	aZw+73UIL8JmRenciM1FWtBBTq6/KZDd4VJqBaPY8oFvRSbPg6blGjLGzaBnSuLe2PZE
	IJ7yMCTHhqa3qAnHk+EySZRYeGU6rBo410zZub5YgRm/FD8ATQFOFnO6WwzCU0xZXSuc
	rfRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=vzz3cmxGLicKZVnex8nZymtCGUhxeKZoT9swDmyp3n8=;
	b=DVv7SnVgsK9bKwAjJE7kz5pjTUx2rqXn/QAtO6IKOiWpp3Ftcehy5Q9w+Rs89w/nR2
	qG1VmsL0ZeKMwZVbfHaymWqWI7KNfj9Q/YcTPufbLN36sAeEliRth3ndsBiv7t9jQ1Wg
	eI250K2EIOV8Q2ZYzk7I2tYEWRsco2ScixxCqY6BX7Z/YtuUApe9DnsMFWxHYwtkJocv
	zHr9s/r/QoGl6+J1vKQrDASucGVnvGB5JwUYglzYE7QoxiJiyQcdMp168G0HnVDmeMtQ
	/Q4tJ+UHiIc/KB8/6NL3o1zJt71Lqea9Vm6VtMcJE/kjOL8BPgPYjXDSbubYxUzpjiYE
	HfvA==
X-Gm-Message-State: AMke39lpa/H3HptFtVfje9PoIPNrMmXWx8+/icm9v09KMUJ9BoAgJjPpbL/bqD4QXh6fMQ==
X-Received: by 10.36.241.15 with SMTP id c15mr863334iti.77.1487302432520;
	Thu, 16 Feb 2017 19:33:52 -0800 (PST)
Received: from linux-uys3 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id x127sm5216itg.26.2017.02.16.19.33.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 19:33:51 -0800 (PST)
Date: Thu, 16 Feb 2017 22:33:50 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Message-ID: <20170217033349.GA12618@linux-uys3>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][morty][PATHV2 0/6] add main line kernel support
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
X-List-Received-Date: Fri, 17 Feb 2017 03:33:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Eddie (and the rest of the Rockchip team),

First let me reiterate how happy I am to see that Rockchip is interested in
supporting Yocto/OE builds, this is great! I hope this trend continues.

Second, thank you so much for your patience while I reviewed these patches. I
don't like my review to be only visual, I want to see the code running on my
device(s), so reviewing is going to take a bit of time. In this case I hadn't
flashed my firefly board in a long time, and the flashing procedure was quite
a bit different now from what I last remember.

For future reference, these patches have the string "PATH" in the subject line
instead of "PATCH". Also, if you're creating a v2 or a v3 etc please put a
space between "PATCH" and "v2". But I won't ask you for a "PATCH v3", I'll
just fix these things up as I apply the patches (I hope you don't mind).

You've put "morty" in the subject lines which to me means you're hoping these
patches will be applied against the morty branch of meta-rockchip. Morty was
released in October of 2016 which, at this point, is almost 5 months ago. At
this point patches should only go against morty to fix critical issues. These
patches look more like they're adding functionality, so I'll apply them to
master instead. The next release is Pyro which is expected around April 2017.

On Tue 2017-02-14 @ 01:54:20 PM, Eddie Cai wrote:
> This patch set add main line kernel support for meta-rockchip
> 
> Eddie Cai (6):
>   machine: Use cortexa17hf-neon-vfpv4 as default tune for rk3288.inc

As I've mentioned before, Yocto/OE is a _distribution_ builder, not just an
image builder. As such most people in the community consider DEFAULTTUNES to
be a DISTRO-level policy. In other words, this is not something that should be
set by the BSP. One distro might want to use softfloat, while another wants
hard-float. It will be easier for people who make distributions using Yocto/OE
to use this layer when these types of things are not set at this level. Users
are free to use these distributions (by adding their layers) or they can set a
DEFAULTTUNE in their conf/local.conf file.

I'll add a note to the README pointing this out so people can be aware of this
configuration tweak, but I won't take this patch into the BSP. I've been able
to build and run images where the DEFAULTTUNE is not set and they run just
fine. Another patch (which I'll be happy to create) will need to look for this
tune in recipes that provide things like mali support.

>   machine: Use SOC specific assignements

The above patch is fine, but I am going to adjust the synopsis line to include
the machine to which this patch refers. I.e. instead of:

	machine: Use SOC specific assignments

I'll say:

	rk3288: Use SOC specific assignments

>   machine: separate rk3188 inc file from rk3066

The above patch is okay, but I'm going to remove the DEFAULTTUNE line.

>   machine: Use SOC specific assignements

Adjusted to specify machine (rk3188).

>   machine: Use SOC specific assignements

Adjusted to specify machine (rk3066).

>   recipes-kernel: linux: Add mainline kernel

If Romain is happy with this patch I will apply it.

Best regards,
	Trevor

