Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F607E00C9B; Fri,  1 Apr 2016 12:17:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
Received: from mail-ig0-f195.google.com (mail-ig0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2EF8E00911
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 12:17:33 -0700 (PDT)
Received: by mail-ig0-f195.google.com with SMTP id sy18so319111igc.3
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2016 12:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=rsYpKv5sbsIcR4g6dRMyKBlHeqWFzgeX8BwkyrQu5a0=;
	b=e4qKgbw/JSuYJXjy42SBwjHKKb4scNystvx3feW0iCQyAl4q469grfrJ/kE5mXpANs
	81eb9M68QAQUkyoGY0KR2dRQsrkK7bx5sV5JRNRgkFKsbr06Eb0tb3x0Ah3PbnXkbeLY
	vEU9SeL0GFvgfmyqmP6+JS+T0YUjxib3u/2Isw3Cz2gczyrJ4Tb1h0vvR3wPAsYZ5Q53
	sj/sFUMnWpl3SVVjW2LbCGKj0gf13ecGQcXRmfiVleq96PsGy/m4El+XTysUVa2P4SUu
	aFIPdWJ8yPActuw7/BXFP9TzhHmImRgGCpIgECmYYY92hm1p49PbxPW80kTzsL72APBl
	Q0Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=rsYpKv5sbsIcR4g6dRMyKBlHeqWFzgeX8BwkyrQu5a0=;
	b=USU+BpYP9P/cCo2cEF7BMhW0i57J+oDY+K1Bxkes1ZoBK6THoxqx7mfDfvTzSsbn0d
	EfHC5eU0lzps9eydYileQXgLHVCf63aIODOFDBWocSzFQeg5ndXnKxy/n+bweyJJT/wA
	+My8vJM5fo24KdopK1M7xc68Ndb4MCbPjqpjK8WmzSAaSI9oo53G7KzEuCY/1BYd9N58
	IyKWkAgXVmRbBveyQSGWkrh8Mec1WUl7uTUUrZBSC6h3sIMcIZbBMEQQhkzJkJZjHVry
	4bnsGAGdFVOw0eHSz7mo+LuRDGFQh+ujS7G4OD8qrrP5qQ1OxImf5Rs9IdsiYkjDUiVW
	bhfQ==
X-Gm-Message-State: AD7BkJLlIenWGhCxRnIBKWnuB2kreaRZKXhME8P0jNWP1vv/x6ikF73/DSeI2f5CjOh9Vg==
X-Received: by 10.50.107.101 with SMTP id hb5mr412014igb.7.1459538252943;
	Fri, 01 Apr 2016 12:17:32 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	a126sm6386272ioe.7.2016.04.01.12.17.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Apr 2016 12:17:32 -0700 (PDT)
Date: Fri, 1 Apr 2016 15:17:29 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160401191729.GA25051@linux-yxv0>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
	<655B9BF4-0067-4E41-9B09-BD74A530B79C@gmail.com>
MIME-Version: 1.0
In-Reply-To: <655B9BF4-0067-4E41-9B09-BD74A530B79C@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Fri, 01 Apr 2016 19:17:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu 2016-03-31 @ 09:36:16 AM, Khem Raj wrote:
> 
> > On Mar 31, 2016, at 8:26 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> > 
> > On Fri 2016-03-18 @ 10:15:39 AM, David Weisgerber wrote:
> >> Hi,
> >> did anyone succeed in building an image that runs on Raspberry Pi 3? I set my
> >> conf/local.conf to
> >> 
> >> MACHINE ??= "raspberrypi3"
> >> GPU_MEM = "128"
> >> DISABLE_OVERSCAN = "1"
> >> 
> >> and built rpi-basic-image but when booting the Pi 3 up I only see 4
> >> raspberries in the top right but nothing else happens. The image works
> >> perfectly on a Pi 2 though.
> > 
> > I'm able to get a raspi3 image running on my Raspberry Pi 3, but my console is
> > messed up. Everything works fine via the usb+hdmi ports, but plugging a
> > console cable into the GPIO header is messed up.
> > 
> > It looks like what happens when the baud rate is set incorrectly, but I've
> > tried every baud rate in my terminal emulator and it all looks the same
> > (messed up).
> > 
> > Anyone got their console working? The same cable/setup works fine on the
> > raspi2 (ttyAMA0) but doesn't work on my raspi3 (ttyS0).
> 
> did you try
> 
> https://www.mail-archive.com/yocto@yoctoproject.org/msg28476.html

As far as I can tell there are two raspberry pi OE layers which include this
commit:

1. git://git.yoctoproject.org/meta-raspberrypi::master
2. https://github.com/kraj/meta-raspberrypi.git::kraj/master

Building two fresh, from-scratch Poky images using the latest up-to-date
sources for:

	meta-openembedded/meta-oe
	openembedded-core/meta
	meta-poky/meta-poky

and swapping in the two raspberrypi layers (one at a time) I get:

 - Using 1 (the official layer from Andrei) I get an image that boots but the
   console remains messed up (as before).

 - Using 2 (the layer from Khem) I get an image that flashes the rainbow
   pattern on the HDMI monitor, shows the 4 berries, then stops. Nothing else
   happens, no messages on the console.

In both cases I'm building core-image-full-cmdline, and the only tweak in
local.conf is:

	ENABLE_SPI_BUS = "1"

As far as I can tell, the only difference between the two raspberry pi layers
is the kernel. Andrei's uses 4.1 and Khem is using 4.4:

	$ git show-branch kraj/master origin/master 
	* [kraj/master] userland: Fix tearing effect seen with wayland compositors
	 ! [origin/master] userland: Fix tearing effect seen with wayland compositors
	--
	 + [origin/master] userland: Fix tearing effect seen with wayland compositors
	 + [origin/master^] firmware: Update to 20160326
	*  [kraj/master] userland: Fix tearing effect seen with wayland compositors
	*  [kraj/master^] firmware: Update to 20160326
	*  [kraj/master~2] linux-raspberrypi: Make 4.4 default kernel
	*+ [origin/master~2] userland: Implement dispmanx_wrap_buffer

I'll try core-image-minimal and no SPI flag. Unless someone else has
better-sounding ideas?

Best regards,
	Trevor

