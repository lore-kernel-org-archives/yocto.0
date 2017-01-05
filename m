Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A680E009BC; Thu,  5 Jan 2017 12:16:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74EBEE009B9
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 12:16:23 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id n85so37587355ioi.1
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2017 12:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YGzUfUW3IEX7vhzPkRjMGMQikoscGZtB2Pu8HpQd1jo=;
	b=mPNHf8yLLHfb2LZWJsF24X9d/CD8NrZGp5fnzQv6yoMYsRSGN7sxiZn/1970EdGoJV
	AfNomHUAbdkF9a9PfcAoaW/iBGnL7zqCE3r/0ZO1aWNvRmKVtImL1g190AEkuY+Pp73C
	rJW22+dSadV1AqR73cOtWA/sT7IESZ9amO7ZCLafjl9RuquzhqtiQHHJOWuH8yzT/vTN
	BQT7U51B6QRfNQRFFtlJ7kMTZLH69ij3QIxL1D3g363zqmscao93fsJE3EozeXvGeA4d
	LuKz812TYdixBMIZVGBMaSfTg2NNJf9TjnSUOIKZfEfXnrT3lwzYX8E73h0KaA85EdGq
	cgjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YGzUfUW3IEX7vhzPkRjMGMQikoscGZtB2Pu8HpQd1jo=;
	b=L6nJKOKhnDKM+r+GAuHyomo92h36S7J6jytkr7dP/rgW5cCRBsfQS9PPtEf68PiP8s
	r8kWFWboIjo+1s7f3Y0yPARopUGG9TA6hMp+iQ2sg0f4t22cANJMKr5LY7+bjjo4awKp
	ByLE6mGFAlvgcPTzfz0oKESWZEEOc9xdaN8YzbP96QpnQfzKyakhSpHYrTSD1h0/8HnW
	To8CNvek9kLx2L14l34frTf+21BS2VE3Sfxffs9t/lbMXTPkg54x1a4QtoMFRdS9HMuX
	A1LIZdFQXk0YhNULAPRsVavLGFcgebjTaruEBZfvY6s6Dj69HJJxq/l3xtNW9gE5h2oi
	j+dQ==
X-Gm-Message-State: AIkVDXJL9hooAggSoyGPkgSzfNZMnJ8XBMlUrsBzzFxKt5GtpGh72FtOC684f7LGGEno+w==
X-Received: by 10.107.2.210 with SMTP id 201mr54211947ioc.67.1483647382383;
	Thu, 05 Jan 2017 12:16:22 -0800 (PST)
Received: from openSUSE-i7.site (76-10-182-217.dsl.teksavvy.com.
	[76.10.182.217])
	by smtp.gmail.com with ESMTPSA id d77sm33640itc.10.2017.01.05.12.16.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Jan 2017 12:16:21 -0800 (PST)
Date: Thu, 5 Jan 2017 15:16:19 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20170105201619.GA7568@openSUSE-i7.site>
References: <20170105174229.1648-1-twoerner@gmail.com>
	<20170105193338.5b1360ec@nuc.betafive.co.uk>
MIME-Version: 1.0
In-Reply-To: <20170105193338.5b1360ec@nuc.betafive.co.uk>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Thu, 05 Jan 2017 20:16:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu 2017-01-05 @ 07:33:38 PM, Paul Barker wrote:
> On Thu,  5 Jan 2017 12:42:29 -0500
> Trevor Woerner <twoerner@gmail.com> wrote:
> 
> > Add an -rt kernel recipe for Raspberry Pi that includes the FIQ patch which
> > adds stability to the -rt kernel (with full preemption enabled) and is an
> > improvement to simply disabling FIQ on the kernel cmdline.
> > 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> > 
> > changes since v1:
> > 	- use "make savedefconfig" to generate the defconfig instead of just
> > 	  using the full .config
> > 
> >  .../0001-fix-dtbo-rules.patch                      |    44 +
> >  .../FIQ_PREEMPT_RT_on_raspi.patch                  |   310 +
> >  .../linux/linux-raspberrypi-rt-4.4/defconfig       |  1249 +
> >  .../patch-4.4.32-rt43.patch                        | 31403 +++++++++++++++++++
> >  recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb   |    55 +
> >  5 files changed, 33061 insertions(+)
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/0001-fix-dtbo-rules.patch
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/FIQ_PREEMPT_RT_on_raspi.patch
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/defconfig
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/patch-4.4.32-rt43.patch
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb
> > 
> 
> Would it be possible to point SRC_URI at kernel.org [1] instead of
> including the whole patch in meta-raspberrypi? It feels a bit much to
> me to include a >1MB patch file.
> 
> [1]: https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/older/patch-4.4.32-rt43.patch.gz

The "virgin" -rt patch from kernel.org doesn't apply cleanly. First off there
is a slight version mismatch and secondly this is the raspberrypi kernel, not
a pure upstream kernel.

Is there a way to patch a patch before it gets applied? If it could be
fetched from kernel.org then patched before applying that would be ideal!
The diff isn't that big; it's sad to have to provide a >1MB patch for such
a small tweak. I guess that's why the yocto kernels/patches have their own
repositories on yoctoproject.org?

