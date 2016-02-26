Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D007BE00DCA; Fri, 26 Feb 2016 11:55:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B4AE00DB5
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 11:55:08 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id g62so85771636wme.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 11:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=EcZ0pppINV5jP+9pXqxR5VszCzDqugk/d3cEagz2YVM=;
	b=DAodbMp6gbE2BriKOGb3K8OTgRGxyrHm2DgpPsOj5ZawKycTDM4qc/aByTWNxlemc0
	LNdN9Ip2t0Oc/S/4UUpAQFExKgc8BvJC869d63L8Hx4/kDHHfvxgAvmMYmM5lRyqRZYi
	H1pi/qFKh9DwnLqVv7wg6QE4WFapSun7ILk+tJCB7CzFvnJtBa7fKyJKWOsccVmAasMF
	24BrOP7q3vbIaT435y2+m42OhCAAOXxKqW8GWXrFirF8SNdx7fW99kVvL9qTvT7jZJrs
	Do/Ngxlyalj0hyzUjBhUTGcN54jMPDERdN9vAsJ4+o1AscnAEt4kHHMmAbL5q38KgUOJ
	PtuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=EcZ0pppINV5jP+9pXqxR5VszCzDqugk/d3cEagz2YVM=;
	b=KejJprQdlN25caHjda4DmmTcYoU28Cfyhf8Gun8gGV+2OfsPifRUs50kA6HaV6ZUhQ
	hAcBetwdSRRgOUfJS5tdeJ9myG+iGC9Iqct+GDmrmB0RqcM7TMoEpwBmNytIjx593CHb
	SDp0cYtPlq+C1QOSlc3xiXhgEGjTGCdopMg6suXr2YPOkhcYa8ub2fKYKxgBpUUQsBPG
	MILjzwmhYbpyyAYLQ0yf3m845YGXsIXpJlg0hVHGgUVZzCHlxFyW/uz33GbkX/ooeFhr
	bygoFAOcLkXc7N4J2uBd8oyJ4rZBvnEr2IATWf/FeD58Q6i893v0gEgBOBGo590+PblH
	6LYw==
X-Gm-Message-State: AD7BkJJBbr54bUCQvI4SoH2Pp2hTvfxAgpdLiZZ305MfvAiuTztxvNgWB75oc4/D60quvg==
X-Received: by 10.28.218.145 with SMTP id r139mr5287504wmg.52.1456516508045;
	Fri, 26 Feb 2016 11:55:08 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	js8sm13774168wjc.37.2016.02.26.11.55.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Feb 2016 11:55:06 -0800 (PST)
Date: Fri, 26 Feb 2016 20:55:05 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160226195505.GB27062@resin.home>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
	<876d8b2d6f4549cebde5792d84860bee@technux.se>
	<CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: fix path to mkknlimg
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
X-List-Received-Date: Fri, 26 Feb 2016 19:55:14 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Feb 26, 2016 at 07:04:28PM +0100, Andrei Gherzan wrote:
>    --
>    Andrei Gherzan
>    On Fri, Feb 26, 2016 at 6:48 PM, Petter Mabäcker
>    <[1]petter@technux.se> wrote:
>
>    2016-02-26 18:14 skrev Andrei Gherzan:
>
> On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
>
>      The path had libexecdir hardcoded so it was no longer correct when
>      libexecdir was changed in meta/conf/bitbake.conf from
>      ${libdir}/${BPN} to ${prefix_native}/libexec for nativesdk recipes.
>      Fixes "No such file or directory" error when executing
>      do_rpiboot_mkimage. Signed-off-by: Jonathan Liu
>      <[2]net147@gmail.com> --- recipes-kernel/linux/linux-raspberrypi.inc
>      | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) diff --git
>      a/recipes-kernel/linux/linux-raspberrypi.inc
>      b/recipes-kernel/linux/linux-raspberrypi.inc index 70e8bfe..8c7c46c
>      100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
>      b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@
>      do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" != "xuImage" ;
>      then if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootloader
>      trailer to kernel image to enable DeviceTree support -
>      ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok
>      ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} +
>      ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}
>      ${KERNEL_OUTPUT} fi fi } -- 2.7.1
>
> Back alive. testing this.
>
> --
> Andrei Gherzan
>
>
>    Hi,
>    I think we should use the older patchset from Maciej Borzecki (that
>    solves this and some other minor stuffs) instead. It also keeps the
>    rpi-mkimage structure:
>    [3]https://lists.yoctoproject.org/pipermail/yocto/2016-February/028271.
>    html
>    BR Petter
>
>    Very good catch Petter. I'll test that PR.

Merged the patch set sent by Maciej. Which covers this patch too.
Thanks,

--
Andrei Gherzan

