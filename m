Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0260FE00992; Mon, 20 Apr 2015 01:43:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AD85E0091D
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 01:43:05 -0700 (PDT)
Received: by lbcga7 with SMTP id ga7so125108109lbc.1
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 01:43:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=0z+PmaYNHRIPlXKjLtGUPYZo4VzW0AcA8TgykVZNG0g=;
	b=V6T25Z7vqWXCha6SmI+en/6M+DgD1IvGZf/48UR6uWln/hlrXBIOMYLZCpYRG9qBXE
	yEJlJJ1jKH9TTVAryzyyr0uU0P5YrBebwy8v4ZGWr/ke+DmgbKMJMtBMmLjk3HFXUc1d
	9madBC5tkEiHmZRfTCQbA9PAQ/udFuHQpm6iiDcE2Jp6YbxvGq10UrY2HvrjBkoVbKQf
	8jpDdgxAXr90T3hhLgYRS/kXsgfltBkAVuWM74V7xqHTpyA1OjSrLHpgHEmFw2Z/Y4qu
	iXP+HM1MCpQP9xX2f3m2/wdBQ0EggHKCkmu3jEKFRZ0P92G3hc++G/KpzAF5Kz1DCxrE
	Qn/A==
X-Gm-Message-State: ALoCoQkt0FMHQ6QOK+SrjaLoSnQQgPZiIh3W9mgG1qf7ww7yI2MM4yxurBD+BKEOC0gUZOeUo+Xd
X-Received: by 10.112.198.225 with SMTP id jf1mr14354899lbc.91.1429519383202; 
	Mon, 20 Apr 2015 01:43:03 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by mx.google.com with ESMTPSA id uj9sm4157649lbb.38.2015.04.20.01.43.02
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Apr 2015 01:43:02 -0700 (PDT)
Date: Mon, 20 Apr 2015 10:43:00 +0200
From: Anders Darander <anders@chargestorm.se>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Message-ID: <20150420084300.GC11779@ad.chargestorm.se>
Mail-Followup-To: Matt Schuckmann <Matt.Schuckmann@planar.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDCA585B2@MSXBEBVT12.planar.net>
MIME-Version: 1.0
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDCA585B2@MSXBEBVT12.planar.net>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Problems enabling systemd
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
X-List-Received-Date: Mon, 20 Apr 2015 08:43:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Matt Schuckmann <Matt.Schuckmann@planar.com> [150417 23:27]:
> I've got an image for a AM3352 system based on Dylan and Arago and I'm
> trying to switch to systemd for init. 

> So far I haven't had much luck. 
> First off I'm getting different results depending on where I turn it on. 
> I'm turning it on via the following 2 lines: 

> DISTRO_FEATURES_append = " systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd" 

These two lines looks correct, though, if you're building a systemd-only
distro & image, you migth want to add:

DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"

> If I place these lines in my_image.bb file I seem to get a partial
> install of systemd, systemd_udev is there and seems to run but that's
> about it, there is no systemctrl journalctl and the sysvinit init
> scripts still seem to be called. 

DISTRO_FEATURES is a distro (policy) configuration, and thus, can't be
modfied in a recipe. The correct way would be to add this in your own
my_distro.conf.

> If I place these lines in either local.conf or my_distrobution.conf
> all of the systemd utility seem to get installed and systemd startups
> up but it's clearly not configured correctly. 

Good that it seems to be installed OK.

> For starters the systemd dbus isn't getting created and that seems to
> lead to a whole host of other problems, including journald constant
> spewing the following error messages: 

> [   55.926223] systemd-journald[715]: Failed to write entry, ignoring: Argument list too long
> [   55.936931] systemd-journald[715]: Failed to rotate /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory
> [   55.950911] systemd-journald[715]: Failed to write entry, ignoring: Argument list too long
> [   55.961580] systemd-journald[715]: Failed to rotate /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory
> [   55.975568] systemd-journald[715]: Failed to write entry, ignoring: Argument list too long
> [   55.986329] systemd-journald[715]: Failed to rotate /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory

> I don't know if it matters but this system has no display at all, it's
> a strictly embedded installation. 

That shouldn't really matter, I'm running systemd in headless setups.

I'd guess that you're getting some errors earlier than this in the
bootlog? Could you paste them?

Cheers,
Anders


-- 
Anders Darander
ChargeStorm AB / eStorm AB

