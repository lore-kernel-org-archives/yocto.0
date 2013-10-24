Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2F72E01764
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 13:56:57 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id cz12so1785301veb.17
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 13:56:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=w5+g7ds7JkzmIMl1QoBZ8SfVqaIJKHgV1xtJ8GP35R0=;
	b=DotEeH1o+PbjTwAeTa1PbtgSEiYMfHU33FN8pId5DRY2b4ju+c5nKx+Zpq3UaQ7WXM
	bT5kTG1TRWpmEzBRj68RVR8aeEGdYU2ADAUB9kLeAAgC7w4V0OcbaTxLoak8mdcWgLSR
	p7RP2oYrWckz/8jAYV5LmA5FISD0bHI48yYXPABHFlM4JDz+Xu1hYnd5T61gOjcAKqte
	XJPS4iTCJ7Pos3mJAk2wuye/QQzVB6z0P8NlZ2sKnkfMdhX6/07y/OLWRyXbRJwx6vSL
	XSc1dm+/2Hff8zdljtNSmCU7GIMTcnjqrnbPYf78oljZN9rGzte4whHTxLF6SYLm4RL/
	tj4Q==
X-Gm-Message-State: ALoCoQmJUlPCU2DoF5L1DxQ/0KGvBUdhaXT3nAS6tDsEFBC/pqT2SUjyB0rx1ciZbgtNgdL5GUIu
X-Received: by 10.58.29.37 with SMTP id g5mr1858436veh.38.1382648216626; Thu,
	24 Oct 2013 13:56:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 24 Oct 2013 13:56:36 -0700 (PDT)
In-Reply-To: <52693BCC.100@mlbassoc.com>
References: <52693BCC.100@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Oct 2013 21:56:36 +0100
Message-ID: <CAJTo0LY+HATyHnKB-SDT+WKfXc_DSzm94cUfcU6ghgvzoy8GJA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Testing wayland/weston
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
X-List-Received-Date: Thu, 24 Oct 2013 20:56:58 -0000
Content-Type: text/plain; charset=UTF-8

On 24 October 2013 16:25, Gary Thomas <gary@mlbassoc.com> wrote:
> I'd like to try testing wayland/weston on my BeagleBoard (clone).
> I've built core-image-weston, but it fails to start up with this error:
>
> [15:07:01.465] weston 1.1.0
>                http://wayland.freedesktop.org/
>                Bug reports to:
> https://bugs.freedesktop.org/enter_bug.cgi?product=Wayland&comp0
>                Build:
> [15:07:01.466] OS: Linux, 3.3.0, #1 Mon Oct 21 14:35:36 MDT 2013, armv7l
> couldn't open //.config/weston.ini
> [15:07:01.472] Loading module '/usr/lib/weston/drm-backend.so'
> couldn't open //.config/weston.ini
> [15:07:01.484] initializing drm backend
> couldn't open //.config/weston.ini
> couldn't open //.config/weston.ini
> [15:07:01.492] compositor: using new vt /dev/tty1
> [15:07:01.511] no drm device found
> [15:07:01.511] failed to drop master: Invalid argument
> [15:07:01.557] fatal: failed to create compositor
>
> What would I need to add/change to get this basic setup to work?

Are you using the beagleboard BSP in meta-yocto-bsp or meta-ti?  IIRC,
Koen had Weston running on a Black so maybe he'll have some tips.

No idea if it will help but I do have an upgrade to Weston 1.3 on
poky-contrib:ross/upgrades which you may want to try as I'll be
submitting this once I have the time (although with ELC-E this week
and vacation most of next, it may not be for another week).

Ross

