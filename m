Return-Path: <jc@vtkloud.com>
Received: from mail-bk0-f51.google.com (mail-bk0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAD1DE01542
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 01:20:45 -0700 (PDT)
Received: by mail-bk0-f51.google.com with SMTP id mx10so597079bkb.24
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 01:20:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=rWxEOc/j9M11HSGxHEYXRl0ZkXNajnyMYdH9D+jHzFU=;
	b=PP1sd6BtCWENLVljmyyXNFZ4I+d3YEe1RH/w/ieFLoZGxnuaEZLMIA6WA9VGWB4qB6
	itlMw6zLWDqwkqBONmX7HFB7tcyS8L0TbPZH3y5sPwesHz6S2sOU6qCAodHoT8ROUetJ
	rRPHnN8uo+VcxLMZ+6ve/oMjQkJR+sSS2B+FdhTAHkw7CLvsBss8t76Ado7p9vbN1yv1
	6sYWvcEQlA9X8iBdygqAYXkFy6ydiodmSdo9EXcS6e2Z9aao1fxaokUlcDgpVtFMz2w4
	h/LzTEYlrlXnRRMFMAoDA+F/P5JZo1G/02IDt1QRvELDGyRocQUxNqKcX1X478XC91s4
	lf2A==
X-Gm-Message-State: ALoCoQnP8GmkgUv7gZTkX7hYs28GsR/jKmjZE5LqGI/ira+OHbcZ8zThV7d7vD/2oJBDOlXSWqqw
X-Received: by 10.204.121.201 with SMTP id i9mr6054428bkr.13.1378369244069;
	Thu, 05 Sep 2013 01:20:44 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id pn6sm7458608bkb.14.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 01:20:43 -0700 (PDT)
Message-ID: <52283ED9.2070708@vtkloud.com>
Date: Thu, 05 Sep 2013 10:20:41 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>
References: <5227629A.5090505@vtkloud.com> <52276400.6070307@mlbassoc.com>
	<522830FF.6090100@vtkloud.com>
	<CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com>
	<522838E7.1060007@vtkloud.com>
	<CANyK_8f0bwoB8sd6PdN4ZV=bZtw6E-6AqQAQnMB9j7QgAypmtA@mail.gmail.com>
	<52283BEE.9020504@vtkloud.com>
	<CANyK_8c=yXSFuaU7JT2i5PP7K=QfoVe0x62mh9Ax+KQk9shvVg@mail.gmail.com>
In-Reply-To: <CANyK_8c=yXSFuaU7JT2i5PP7K=QfoVe0x62mh9Ax+KQk9shvVg@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 08:20:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

In the log you posted is the line:
>> ERROR: Failed to parse recipe: /media/yocto/yocto/openembedded-core/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.28.2.bb
> So something was adding the path
> /media/yocto/yocto/openembedded-core/meta to BBLAYERS. If you've just
> removed that, give it another try.
>

I did remove that and gave another try *before* sending the mail :) so 
some cache were present.
In order to make sure everything with fine I sourced oe-init-build-env 
to a new directory

As a reminder here's how my stuff is installed:

from a directory /media/yocto/yocto I performed a git clone of poky, 
meta-raspberrypi and meta-openembedded so I now have :
$ ls
meta-openembedded  meta-raspberrypi  poky  rpi

(rpi is the name of the directory I oe-init'd)


Here are the steps:

1. local.conf is unmodified, except for MACHINE set to raspberrypi

2. bblayers.conf is:
LCONF_VERSION = "6"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
   /media/yocto/yocto/poky/meta \
   /media/yocto/yocto/poky/meta-yocto \
   /media/yocto/yocto/poky/meta-yocto-bsp \
   /media/yocto/yocto/meta-openembedded/meta-oe \
   /media/yocto/yocto/meta-raspberrypi \
   "
BBLAYERS_NON_REMOVABLE ?= " \
   /media/yocto/yocto/poky/meta \
   /media/yocto/yocto/poky/meta-yocto \
   "


3. bitbake rpi-image-basic

Pseudo is not present but is required, building this first before the 
main build
Loading cache: 100% 
|##########################################################################################################| 
ETA:  00:00:00
Loaded 202 entries from dependency cache.
ERROR: ParseError at 
/media/yocto/yocto/meta-openembedded/meta-oe/recipes-devtools/libgee/libgee.inc:12: 
Could not inherit file classes/vala.bbclass
ERROR: Command execution failed: Exited with 1


If this is not something you get with a head checkout of poky, 
meta-raspberrypi and meta-openembedded, I can retry a new fresh git 
clone to test again...

Jay


