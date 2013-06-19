Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93747E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 05:11:43 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id ib11so3759816vcb.3
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 05:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=hf+3UAISkslmQVsYRbz7GzY2pb7IexDSxYSG2tbChWQ=;
	b=McIQnyu28xC4IUXIgzRitR47DJDBZbI50FeQT6yqFuV1nCN/5yfvyoFFd27d6M0g28
	vStLOjtJpQA1lX4cWgGfGXZtFglS8M40RJ+w9IUb6jAQSq5tgWb+kKxbJgqJYO426etp
	AcYGPmuLUuO9OCR8ziH2/+a6E/qwCn4obZupEmXR7cbIvfDUwGzkz8dScVhsTXyViOLB
	qqRoaDinhxne1IL9ZDbBSm8Fogk9uYpRaIfraPP7vFuMgvUTIvY48Z3xT/OfgcImaMMy
	UbcMPwVI/INgHBXp6hb0Rk7NTbpp+oHr9MfmT7aL3FECjO76XqU+Dy99VVD8B6urfQV1
	DTLQ==
X-Received: by 10.220.42.147 with SMTP id s19mr523315vce.46.1371643902484;
	Wed, 19 Jun 2013 05:11:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 19 Jun 2013 05:11:22 -0700 (PDT)
In-Reply-To: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
References: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Jun 2013 13:11:22 +0100
Message-ID: <CAJTo0LbzcSMRwoowq00MZr1G=+Vo-M6=VA=6HRuTBf6YMiBnAg@mail.gmail.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQm7sE8QGCOoHwy7TV7+mv+bhqF+FYa5s9Zk0dgI9/rI1sgVS6qqBIQLT205ttBzph8HsGn8
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain... Issues with systemd (probably)
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
X-List-Received-Date: Wed, 19 Jun 2013 12:11:47 -0000
Content-Type: text/plain; charset=UTF-8

On 19 June 2013 13:08, DAMARLA Satya Swaroop <swaroop.damarla@gmail.com> wrote:
> I think I had to open the issue as its not closed... Here is more
> clarity....
>
> The issue is I decided the problem may be with init_manager. I did two
> builds one with sysvinit using traditional Poky distro and other one is
> uisng systemd using new distribution which is different as we need a new
> distribution for using systemd
>
> .. I didno t get any errors when i build using bitbake -c populate_sdk
> rootfs-smartcpu with sysvinit and got build errors using systemd...
>
> Any possible resons what could have caused failure to build the toolchain?

It really helps when you tell us what the errors are.

Note that changing DISTRO_FEATURES in an existing build directory
isn't supported and may well cause problems.

Ross

