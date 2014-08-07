Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42AFCE007FE; Wed,  6 Aug 2014 23:21:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EEE3E00543
	for <yocto@yoctoproject.org>; Wed,  6 Aug 2014 23:21:05 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id z10so4656596pdj.16
	for <yocto@yoctoproject.org>; Wed, 06 Aug 2014 23:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=1ECuFndGNJnCP9KC55XH3tvBoa1dXL5vAIvqgijc1nE=;
	b=UboOv9n4nlTeiDWZ7qvxiRmyMR0pZUjFGJYUbzij/4/FzWVKIUYz1Jdbaxx6Nzp/eT
	ymhhkc3u+ACWNDoivlJcyVA77W+e/N4yuJUMgfOoJGqd0jkYW3txJ+11QC/UF7yfNbVX
	mwnpJrKedJ+yV5SbPEYAQEy3bwBy8R/O49lo+UrUOVsISC4BHPt5t5FNmmz+tnRCT8w3
	T3689xF5UlHcMpAiuDZiTo7xvLS9fy+GUUm/XoP8apGk/HyTuhK9u508vdEBV3VPUCG0
	puuU49+a5xlJJpihDil/EAzYSE0K7H97U5CMyz0y2zPYew4jxf5NIwc4/EQQMX7B9ggA
	TXkA==
X-Received: by 10.67.30.163 with SMTP id kf3mr15765490pad.110.1407392464512;
	Wed, 06 Aug 2014 23:21:04 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id
	qm11sm4776879pdb.85.2014.08.06.23.21.03 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Aug 2014 23:21:04 -0700 (PDT)
Date: Wed, 6 Aug 2014 23:24:31 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20140807062431.GA4171@haswell>
References: <53E25433.5020003@dfki.de>
 <53E2572F.8020107@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <53E2572F.8020107@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Building yocto for Odroid XU. No login after boot.
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
X-List-Received-Date: Thu, 07 Aug 2014 06:21:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-06 10:26:23, Gary Thomas wrote:
> On 2014-08-06 10:13, Dr. Markus Eich wrote:
> >Dear all,
> >
> >I am trying to build an image for the Odroid XU, featuring the Samsung Octa 5 CPU
> >
> >I managed to build everything needed (modules, kernel, u-boot, etc.)
> >
> >The recipes can be found at: https://github.com/MarkusEich/meta-odroid.
> >
> >The last problem (hopefully last :-) I have is that I cannot log in after the kernel is loaded via UART console
> >
> >Maybe init.d or systemd is not setup properly?
> >
> >I am using the console-image-minimal.bb from meta.
> >
> >Here is the last console output. It seems that the kernel is loaded (including modules) and the rootfs is properly mounted. There is no error, there is simply no login or shell.
> >
> >Any ideas why I cannot login? Its a bit poking in the dark ATM.
> 
> If you are using systemd, make sure your kernel is built with CONFIG_FHANDLE=y
> Without this, systemd won't start a session on a serial port.
> 
> If you're using the old sysvinit, make sure your console settings
> are correct.  These normally live in your ${MACHINE}.conf and look
> something like this:
>   SERIAL_CONSOLE = "115200 ttymxc0"
> 
> You might also want to remove 'quiet' from your kernel bootargs,
> at least until you get things settled a bit more.

see the needed kernel config options here
http://dominion.thruhere.net/koen/cms/recommended-kernel-config-options-for-a-modern-angstrom-system

> >[    5.993533] Freeing init memory: 256K
> >[    5.996898] Write protecting the kernel text section c0008000 - c09e2000
> >[    6.003931] rodata_test: attempting to write to read-only section:
> >[    6.009728] write to read-only section trapped, success
> >[    6.055010] systemd-udevd[1299]: starting version 204
> >[    6.350360] EXT4-fs (mmcblk0p2): recovery complete
> >[    6.356827] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: (null)
> >INIT: version 2.88 booting
> >Starting udev
> >[    6.880415] udevd[1376]: starting version 182
> >[    7.075108] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=ordered
> >Starting Bootlog daemon: bootlogd.
> >[    7.369381] max77802_rtc_read_time: 114/7/6 16:10:3(3)
> >INIT: Entering runlevel: 5
> >Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
> >[    7.431705] max77802_rtc_read_time: 114/7/6 16:10:4(3)
> >Starting syslogd/klogd: done
> >Stopping Bootlog daemon: bootlogd.

it seems you have a mix of systemd and sysvinit scripts stepping over
each other so may be just go for systemd only init system

in local.conf set

DISTRO_FEATURES_append = " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"

