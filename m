Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3A43E0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 09:21:26 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-71-0.range86-170.btcentralplus.com
	[86.170.71.0]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 189D79ADB
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 17:21:25 +0100 (BST)
Message-ID: <4FBA6B85.2030002@r-finger.com>
Date: Mon, 21 May 2012 17:21:25 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>	<4278335.i6izktZTML@helios>
	<4FBA0A24.70704@gherzan.ro> <14387597.ECeojYX8cL@helios>
	<00b101cd3764$be9cd960$3bd68c20$@Distant-earth.com>
In-Reply-To: <00b101cd3764$be9cd960$3bd68c20$@Distant-earth.com>
Subject: Re: [poky] RaspberryPi Layer
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
X-List-Received-Date: Mon, 21 May 2012 16:21:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

So, I have run into three issues with the meta-raspberrypi layer when
trying use it with Poky:

 * the libav bbappend; this can be BBMASKED on distro level, so that's
not a significant problem,

 * rpi-zram-service: a simple but rather hackish fix is to provide
rpi-zram-service-initd package that provides the same functionality for
sysvinit (not a big task) and then BBMASK it in the distro. But I am
wondering if there is some way that both -systemd and -initd packages
could be generated from the same recipe in a way that would work for
both setups so we can avoid the masking?

 * GCC seems to have issues generating armv6 code; I have run into this
bug: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=47719.

Tomas

