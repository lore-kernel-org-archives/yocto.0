Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E51FE00524; Sun, 16 Apr 2017 17:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B4FE00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 17:45:14 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id r16so135481688ioi.2
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 17:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=4KJZWubX4g5YWFAQ7jzQwzDUxkR4dwtdh3ducSzHnls=;
	b=W4tVVLQRgPkfzZHEQrz+Mk21TecfvOeCMWgtkWumtYflnVyWM5HZHnrpMawS+uy7Yy
	+rQVTIDolIiKBaLzYas/et12QOOTlD3q2qpmWkn3zHNZv5x+4tZaUhUJKrHHT6ySIlbZ
	1KArNhXbqd10RjtkHRHJc/FBJJhNe31gW+sATODmc7reJPzj60sgfZEZKcELZCYgSkfx
	r6j5hNX3prRSPsf17Dcg81Z99WqWOkpCU5557cCiy9qE+h66wOVwHFh4h2JQZHNRkytV
	JszWcFdQ6YxOjKJm3aKdZ6U7hqTdklyFl2xuC03nEXaE/e5wG5XZzFJ+Mc/6Kd97F9GS
	QtHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=4KJZWubX4g5YWFAQ7jzQwzDUxkR4dwtdh3ducSzHnls=;
	b=AQVjZo4CCSzssLkfKkF/vFF7+vfIi0Mp94H4n15kAmQkQWmt7IR9PbWzuEpRgIfQSn
	3cIKvxPNCB48FCBuP/5ql4QnotlI7KgzeVQTMxuKDLYUptd1fpzVfqJpzrpFwOGPc2vx
	wLeXe2vQIbnsdpTkYFAnKoxrvw8certh6qhWHiL4i1rhhSc9BOTt/3ajb8ohm8bGaxNc
	tKDsLDGGomva0lOAPnAOEmFoqVhkFeDM0nrz4sx9HyuCgkiKJA7nSkkjnBGKSqMzITZk
	pBves5DnAU2cR9NPZPatxMMzhtCM4DMLza35E+ywC7m0tsfOoxNVfE/kszm1TZaUKgJK
	qO3w==
X-Gm-Message-State: AN3rC/7M9AIFbdM6lPE8hzZbSHzA0kDZNDGHZkFK/W52XeKpHtrfOAMJ
	dY8XBk3Tbyw2JyH+nPE=
X-Received: by 10.36.78.76 with SMTP id r73mr7716333ita.48.1492389913635;
	Sun, 16 Apr 2017 17:45:13 -0700 (PDT)
Received: from linux-uys3 (76-10-137-103.dsl.teksavvy.com. [76.10.137.103])
	by smtp.gmail.com with ESMTPSA id
	m83sm4289178ioi.32.2017.04.16.17.45.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 17:45:12 -0700 (PDT)
Date: Sun, 16 Apr 2017 20:45:10 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170417004510.GC5766@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<20170415231603.GA20857@linux-uys3>
	<CALbNGRRgHasv5rdG1SyPCogY8Az6ZowvoZc59XV=Jpmi4TMwvQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRRgHasv5rdG1SyPCogY8Az6ZowvoZc59XV=Jpmi4TMwvQ@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Mon, 17 Apr 2017 00:45:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon 2017-04-17 @ 01:23:25 AM, Andreas Müller wrote:
> > I got chromium building with it (it was a simple DEPENDS) and on the image I
> > just built sound is already working!
> * You have chromium building (and running?). This is on my endless
> TODO-list (have firefox on my image but that crashes more or less
> immediately - wonder what other people do with it)

There's been a nice surge in interest/help with chromium lately (not to
mention getting people to push upstream!) The recipes in OE are still building
a rather old version (54.0.2810.2) but it builds and works for x11 on x86
(qemux86), x86-64 (minnow), armv7 (bbb, raspi3-32), and armv8 (dragon 410c);
it builds for a couple more (firefly and raspi3-64) but I can't get xorg
working so I can't test it running.

You'll probably want to set the following PACKAGECONFIGs:

	PACKAGECONFIG_pn-chromium = "disable-api-keys-info-bar ignore-lost-context impl-side-painting"

And (as I've mentioned) you'll need to add "mesa" to the DEPENDS (although I'm
not sure why it's now needed nor how to make that change in a "nice" way since
the non-accelerated version doesn't need it).

I'm not fully up-to-date on the wayland side, but I believe it builds and
works on wayland for roughly the same list plus beagleX15 and hikey. The
wayland version is slightly older at 53.0.2785.143.

There are people working on newer versions up to 59, but so far nobody's
pushing upstream. I'm hoping to take a look and getting something working. The
way chromium is built changed around the late 53 early 54 timeframe so a new
procedure is needed.

I've been running and testing with vc4 on my raspi3 for the last two hours
or so. I've seen one crash once when I tried to full-screen youtube, but
subsequent attempts have succeeded, so I'm not sure if those two events are
related. I've been doodling around in youtobe for all this time and it's been
mostly working except for that one instance.

> * I have not tested that (I need low latency and plugs for playing music)

The sound came though the HDMI for me. It's the first time I've heard a board
make noise :-)

