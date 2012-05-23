Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A940AE01304
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 01:32:01 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-37-213.range86-170.btcentralplus.com
	[86.170.37.213]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 3C3659ADB
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 09:32:00 +0100 (BST)
Message-ID: <4FBCA07F.1050001@r-finger.com>
Date: Wed, 23 May 2012 09:31:59 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
	<4904220.mFpDsjEpuq@helios>
	<850EEF2D-6A67-4987-B202-A24461737544@keylevel.com>
	<8363795.7bU7lvsc4a@helios>
	<2B5CA5ED-EFE8-4F53-B592-55BCDA9AA8FD@keylevel.com>
In-Reply-To: <2B5CA5ED-EFE8-4F53-B592-55BCDA9AA8FD@keylevel.com>
Subject: Re: Per-machine DEPENDS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 May 2012 08:32:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/05/12 08:55, Chris Tapp wrote:
> Do overrides work with any variable? The RPi layer is using BBMASK to
> filter out some recipes when building against Yocto. This has to be
> manually added to local.conf. 

It does not have to be local.conf; if you are adding meta-raspberrypi,
you have to set up the layer configuration at minimum, and probably
other things, so you can set it up somewhere more appropriate.
local.conf is really just for changes when testing things, etc.

> Would it be possible to do this
> automatically in the layer using an override based on the distro
> name/version? e.g. could something like the following be added to the
> layer.conf file?
> 
> BBMASK_poky_7.0? += " ${LAYERDIR}/stuff-i-dont-want"

I don't know if the overrides work with this variable in particular, but
even if they did, it is not a good idea for a layer of any kind to be
changing the BBMASK value, because the layer cannot make any assumptions
about what might or might not be appropriate to mask out.

(Also note that BBMASK is pyton regex, so BBMASK += "
${LAYERDIR}/stuff-i-dont-want" will not work, it would need, e.g., to
include the '|' operator)

> 
> Or would it be better to have distro-specific recipe trees

Specifically to the m-rpi, there are only two problematic recipes, the
libav.bbappend, but you only know on the distro level whether you need
to mask this out or now (i.e., someone's poky-derrived distro might well
include libav).

The second is the rpi-zram-service which needs systemd.
This recipe needs to be reworked so it produces both -systemd and -initd
packages, from which the distro can then pull in the appropriate one;
one of the packages can even be a dummy (which for poky could be
achieved by adding systemd.bbclass stub).

Tomas

