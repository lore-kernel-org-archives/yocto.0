Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D35EE007A9
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:20:48 -0800 (PST)
Received: by mail-ee0-f42.google.com with SMTP id e49so3019138eek.15
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:20:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=rDpd6HMGPHOK1bLJ8udcmKYTbYVa5ztKuhl22RpYxtg=;
	b=JSOc24PRaf3Ab94kiom89qn32OxKkHv7SUeajjzzaCha+xQ4HVz79Ldy95SLwv0GxC
	TSf/ur6UURvEhaCx9KoQpfaEp7hTKTgIL8VXBqw9QYYSWLSbIdKAtnl5M8TDPebXeklk
	gAmYoowoEbZooywhlodsqmgjl17ndlywuhrkOy1ECFwsciBgKKSFX/dVYWJn0GPADz0g
	ExqajwtImbbVHGoaC2CWgJ7sMld4qDeYJEcghLkASyGkf585K7WnVcMqPOvm45p85Yoo
	FVWwVJZLivHOvUryOFvqAnCZN/Wkneoal/+lAuGrOp1DunpP/h05p8uyGd71LWMvi1Ff
	u9fA==
X-Gm-Message-State: ALoCoQkyu8iUOqNAR/3jjNGIdLOWw2fgrsuuicyhXobmJeladdM7cLUvshNBeUblUeGw2SFwOTsc
X-Received: by 10.15.43.10 with SMTP id w10mr14018091eev.13.1390159248000;
	Sun, 19 Jan 2014 11:20:48 -0800 (PST)
Received: from gmail.com ([79.116.111.233])
	by mx.google.com with ESMTPSA id x2sm43379319eeo.8.2014.01.19.11.20.46
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sun, 19 Jan 2014 11:20:47 -0800 (PST)
Date: Sun, 19 Jan 2014 21:20:44 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20140119192044.GC5660@gmail.com>
References: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [meta-raspberrypi][PATCH 0/4] Some updates
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
X-List-Received-Date: Sun, 19 Jan 2014 19:20:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2014 at 09:15:52PM +0200, Andrei Gherzan wrote:
> Updates and some additions in packagegroup-rpi-test
>
> Andrei Gherzan (4):
>   bcm2835: Update to v1.36
>   rpi-gpio: Update to v0.5.4

These changes are only renames. Sorry for missing -M (AGAIN!!!).

>   packagegroup-rpi-test: Add some packages
>   omxplayer: Update to remote HEAD
>
>  recipes-bcm/bcm2835/bcm2835_1.34.bb                | 41 ----------------------
>  recipes-bcm/bcm2835/bcm2835_1.36.bb                | 41 ++++++++++++++++++++++
>  .../packagegroups/packagegroup-rpi-test.bb         |  4 ++-
>  recipes-devtools/python/rpi-gpio_0.5.3a.bb         | 20 -----------
>  recipes-devtools/python/rpi-gpio_0.5.4.bb          | 19 ++++++++++
>  ...nd-headers-from-ffmpeg-are-installed-in-u.patch | 24 ++++++-------
>  .../omxplayer/fix-tar-command-with-DIST.patch      | 18 ++++++++++
>  recipes-multimedia/omxplayer/omxplayer_git.bb      | 10 +++---
>  8 files changed, 98 insertions(+), 79 deletions(-)
>  delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.34.bb
>  create mode 100644 recipes-bcm/bcm2835/bcm2835_1.36.bb
>  delete mode 100644 recipes-devtools/python/rpi-gpio_0.5.3a.bb
>  create mode 100644 recipes-devtools/python/rpi-gpio_0.5.4.bb
>  create mode 100644 recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch
>
> --
> 1.8.1.4
>

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

