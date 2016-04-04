Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7052E00C2F; Mon,  4 Apr 2016 08:02:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20749E00B9C
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 08:02:50 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id e128so124434407pfe.3
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 08:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ca9Jk6tCoF6mRr/wuoh+rFVrwi4SuSM/uttkkuWlkCs=;
	b=BU3bHz3h0C80OPHWRZnHUQjx/yIU837rCdEXei2+KV+pD6Sw3+hBsvdO5xYQfQviD0
	jKuar+odiss4wQ4iYqkeFO+tpDMNfjaLf5jU3bEs8+QheAR2/Tf506bch5RfEqz5xTJl
	7ao0LdI3EqTZp40i99DmAYK9CHhloseTEdoZUh+AkVoyFvnhl64mCG7QkyYpH3yRRFsL
	sztQdXzGYOW2sWif01vXtr0irvrlsTKXWgKSO+mYftxhGJZDnBUDtiiyKoboTvGBBk3R
	R1bJkz9qb8KzEFZhaBF8OPX8NkMDk4IzVO7tJl16QgcyxZLx0vql+MckFJzhKsawghTK
	LVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ca9Jk6tCoF6mRr/wuoh+rFVrwi4SuSM/uttkkuWlkCs=;
	b=jLRWQ0f2BNA7o7pjWrRQsW/gA9kX2qb/YIuLs6xuo+d5SM+Xnu5DujxPsMofzZId9b
	Z92Dz5FxNDUm/yJeWtZEW2ISU46JYOH2vP98Sz5xKN45EuBt9DLmt1C2pkKYpvBvJjDx
	V2B1GjMr3QXjYt7vaFrlr1X+0LhNKb757xFA9oQjBhJdp8onXjO2pGJ/M+Rz7vR6h4hd
	Mint5A4b0SVdPaFjJek15lK8sX8pv4gyzYSNld285tY21s1VpFZHtX3qaE+pMvGV681z
	q8fSGefNUz82z3hE90uUTiC4H35erLcFkaE1vHc82UC4whvaJ8ob9+ex/KYQTopmPvzV
	tXHA==
X-Gm-Message-State: AD7BkJKpUuF5tDIIxzPWZabBzEGslhW/3JoZZ5NooPBfzjtOGicIPr3sL8IlBF+QyxJ1Ig==
X-Received: by 10.98.75.157 with SMTP id d29mr21559634pfj.33.1459782170190;
	Mon, 04 Apr 2016 08:02:50 -0700 (PDT)
Received: from linux-mkz6 ([209.65.105.133])
	by smtp.gmail.com with ESMTPSA id ta2sm967410pab.42.2016.04.04.08.02.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Apr 2016 08:02:48 -0700 (PDT)
Date: Mon, 4 Apr 2016 08:02:38 -0700
From: Trevor Woerner <twoerner@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20160404150238.GA29635@linux-mkz6>
References: <1459776291-5464-1-git-send-email-twoerner@gmail.com>
	<57027B09.2090808@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <57027B09.2090808@mlbassoc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi 1/2] raspberrypi3: serial console
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
X-List-Received-Date: Mon, 04 Apr 2016 15:02:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-04-04 @ 04:32:41 PM, Gary Thomas wrote:
> On 04/04/2016 03:24 PM, Trevor Woerner wrote:
> >The serial console on the Raspberry Pi 3 is located at /dev/ttyS0 and not
> >/dev/ttyAMA0.
> >
> >Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> >---
> >  conf/machine/raspberrypi3.conf | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> >diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> >index 1b73f2f..2c3df41 100644
> >--- a/conf/machine/raspberrypi3.conf
> >+++ b/conf/machine/raspberrypi3.conf
> >@@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
> >  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
> >
> >  include conf/machine/raspberrypi2.conf
> >+
> >+SERIAL_CONSOLE_raspberrypi3 = "115200 ttyS0"
> >
> 
> Why the _raspberrypi3 modifier?  Wouldn't SERIAL_CONSOLE = "115200 ttyS0" do?

...because the raspi3 MACHINE just basically includes/requires the raspi2
MACHINE, and the raspi2 MACHINE includes/requires include/rpi-base.inc, and
it's in rpi-base.inc that we find the SERIAL_CONSOLE definition.

Originally I had pulled out the SERIAL_CONSOLE from rpi-base and added it to
each of the raspi MACHINES, 3 of which were the same (AMA0) and one was ttyS0.
Then, looking over the patch set, I thought it would be cleaner to just keep
everything as it was and only add the ttyS0 to the raspi3 MACHINE (which
requires the override).

> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

