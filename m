Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45CDBE00C91; Thu, 31 Mar 2016 20:30:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB14FE00C84
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 20:30:11 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id 191so5492798wmq.0
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 20:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=98f8KnGRtK8Ju0LpONRbDiNvCn/IBjNLz2j5UqVXIU8=;
	b=Yq4Ft0xla/30FxU4Z0VfjbWAKiPxyLq37PrxoCM/tKF6DrCfBuy5ZHswf4GBxjrKEA
	2x3pQddf5qCtJAwbH0gijkdiUxl/GBoC/VPMMX1BaNtTDfAYAaL7vbcvtG8yuOiyK68U
	w2vNJE7eBhsJkDFexOuckK67mnagWZGSFGJjTjRpb4iEDVfN0ISgrkoonacR83rtd24i
	anI6uABwaFVpEsMxEo6Zx+YHudglkKBh3VAsao4KXidfGbm7q8zRA29oEZmjoKmB1fFZ
	bEepq9mdxvg02rz2WFtbt9FwytR8TFEL7W/IfupyN/iurR4XgIjFxPWZ0YhGq0FMRxRW
	Hufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=98f8KnGRtK8Ju0LpONRbDiNvCn/IBjNLz2j5UqVXIU8=;
	b=LUVQMJJqv4V0Uze/Vv0uE9ZIGaJcGOv8gf/eys6naTo1mbMWjBmaHRNcqEIt68a+Qd
	lCA9ni4W6phPEN41AoNVn/hoBuNE5XjrXoDKFgpR18iElMr+T1s/ndPKIyKl2Gpxj5z4
	4ef9XefDm+k7ODMcx/PYCNapx55bD4AMxff/gm0HQOdJVoHCXettjTQXA+zNpLJUlEsv
	7juCjPvRoInQtv9pyXVQi5bMbEr6Ohllbhgj1oKcXVWQTzWtvqE1Fo3xaeX89na3dWj8
	yo9Pr6ZvzNlgQCkLSUdGYtLfW57N2d63ktH+Vd4c9evxkR8TRYQWl6UFoBNqsiMEX2Af
	8VWg==
X-Gm-Message-State: AD7BkJIo62e68kBQh4QLQPnnrwGwXob70+pTKl4CDa0RNZPFGCO7LZvFLmK2KGyIaghH+2GtNxc1Q86iema0Xg==
MIME-Version: 1.0
X-Received: by 10.28.59.87 with SMTP id i84mr1012145wma.61.1459481409939; Thu,
	31 Mar 2016 20:30:09 -0700 (PDT)
Received: by 10.194.201.104 with HTTP; Thu, 31 Mar 2016 20:30:09 -0700 (PDT)
In-Reply-To: <1459464929161.35262@seescan.com>
References: <32E0B8718AB0814882747D62286E529302958AF532@ex10.portwell.com.tw>
	<1459379742245.35790@seescan.com> <1459464929161.35262@seescan.com>
Date: Thu, 31 Mar 2016 20:30:09 -0700
Message-ID: <CAJ86T=UKMP7xh-BoC4st5B-Pq2eJ=3qrUjq2jTjf_GhctTuu+A@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Debian Stretch build error "Install SDL devel"
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
X-List-Received-Date: Fri, 01 Apr 2016 03:30:14 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 31, 2016 at 3:55 PM, Fred Ollinger
<Fred.Ollinger@seescan.com> wrote:
> I know that Debian Stretch is not supported, but I'd like to help shake out the errors to get support.
>
>
> I'm on poky
>
>
> commit 9fd145d27ec479668fac490a9f1078089f22bf59
>
>
> I tried to build qemu-native and it failed with the following:
>
>
> | ERROR: User requested feature sdl
> |        configure was not able to find it.
> |        Install SDL devel
>
>
> libsdl1.2-dev is installed.
>
>
> Any ideas?

See the "Qemu configuration" section of conf/local.conf.

You can either disable qemu support for SDL by commenting out the
following lines:

  PACKAGECONFIG_append_pn-qemu-native = " sdl"
  PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"

Or (if you do actually need qemu with SDL support enabled) try using
OE's version of libsdl instead of the one provided by the host system,
by commenting out:

  ASSUME_PROVIDED += "libsdl-native"

Note that using OE's version of libsdl was only recently enabled in
OE's master branch (see below) so may or may not work with the Dizzy
based release you are using.

  http://git.openembedded.org/openembedded-core/commit/?id=81f009d173f24501ab0e04d845db74ecb5f8e332


>
> Frederick
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

