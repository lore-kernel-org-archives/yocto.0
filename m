Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A692E00C80; Mon, 28 Nov 2016 17:42:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4234E00C59
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 17:42:43 -0800 (PST)
Received: by mail-io0-f196.google.com with SMTP id k19so26382817iod.3
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 17:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=2awL6Pgd2AHiU2ERzQyEkfFQ83qtZq6vuBJkVTa/9dQ=;
	b=xihgfgKPy79pkAtq6uZeeIdxILIxF4xDSg0QcMKC7F0jGt6i+iondjsUoLruDmNP3+
	dRW+FBBBZ4MkzQk12QfdbaHrFMg5DM2tdxE6bxYT8MPMZ43Q/GiLLE/qI0BNYNCArPo5
	PS99OEZ5haVRxmrj2qxYKEIjKWEmKi3PwLtuDJSDlsLR8uxngbE6sdOe2G0zoZktGvrW
	WYaYaviOKzETg7OlTEPUuB3xlKuVzqoEGN383qAhDonLzS3cBxEUYVyH+pq5E+Z+2NOj
	v0k85u6NSaxMbphJV2Kr2A95fgpThXsnYa0JYjGGcIq0ON3upSvuIYYxhGJb8AWF94Y+
	VVvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2awL6Pgd2AHiU2ERzQyEkfFQ83qtZq6vuBJkVTa/9dQ=;
	b=dPRrw2C4QuS8mfcastWBy2jpuMkCbEbg4aCsBhJYhdFTGEtt6+U1izk9oUV7Wv9/g7
	kwT855nUHnEFsfAw6ElqJEh0s5Kq9vH5K3hZ0UolFgQj5j2Sxtd6HgRtiwxel+P5FhKZ
	arBSVuz2Fk8vx0Bht0rTPVSwbpqk0FUPsXj0LUxAe7SI0HP5wjtqmsi+JJcwglYr/O/M
	PEWUDxtya3NsJwZ65SXr8t4rAHykUr8wUO4pQd+TSUlz09lxOpQsJYOOdcthG8GRkXfr
	dAq0XwFJvQWIA4RP0a6R+NB1YbovIxFSwftLSXp+eW0HfTSgFi0qUx0uGYL3Yr5Tvf+B
	i+ow==
X-Gm-Message-State: AKaTC02nuR7b/Co/MaTdwsHaRJH+pT5rKexYxeIaglOFwqDoF5V4hvhT813QfdVqAPYrMA==
X-Received: by 10.107.10.205 with SMTP id 74mr22292075iok.165.1480383763460;
	Mon, 28 Nov 2016 17:42:43 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	l74sm83640ita.15.2016.11.28.17.42.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Nov 2016 17:42:42 -0800 (PST)
Date: Mon, 28 Nov 2016 20:42:40 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161129014240.GB30326@openSUSE-i7.site>
References: <20161128151233.8861-1-twoerner@gmail.com>
	<9045CDB4-3095-4352-A4A3-04EAC676F466@gmail.com>
MIME-Version: 1.0
In-Reply-To: <9045CDB4-3095-4352-A4A3-04EAC676F466@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: upgrade to 4.4.32
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
X-List-Received-Date: Tue, 29 Nov 2016 01:42:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-11-28 @ 03:21:50 PM, Khem Raj wrote:
> its at 4.4.35 now see
> https://github.com/kraj/meta-raspberrypi/commits/kraj/master <https://github.com/kraj/meta-raspberrypi/commits/kraj/master>

True. But there's no -rt patch for 4.4.35:
https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/

The latest 4.4.y -rt patch is 4.4.32.

Since I'm working on a separate recipe for 4.4.32-rt43 I guess I could just
base it on 4.4.32 and let the non-rt-mainline advance to 4.4.35 :-)

> 
> > On Nov 28, 2016, at 7:12 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> > 
> > This helps align the raspberry pi 4.4.y kernel with the latest 4.4.y
> > PREEMPT_RT patch.
> > 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> > recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> > index 19e8552..0724ac1 100644
> > --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> > +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> > @@ -1,8 +1,8 @@
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> > 
> > -LINUX_VERSION ?= "4.4.28"
> > +LINUX_VERSION ?= "4.4.32"
> > 
> > -SRCREV = "5afda48c3408e15742d4569459a4ff668e2857f7"
> > +SRCREV = "f779cabf56bc88319d582db58969ba6f7184a775"
> > SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
> >            file://0001-fix-dtbo-rules.patch \
> > "
> > -- 
> > 2.10.2
> > 
> > -- 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 

