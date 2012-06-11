Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 155DBE00746
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 00:29:36 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-62-149.range86-170.btcentralplus.com
	[86.170.62.149]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id C90539C07
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 08:29:34 +0100 (BST)
Message-ID: <4FD59E5D.4080008@r-finger.com>
Date: Mon, 11 Jun 2012 08:29:33 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
In-Reply-To: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
Subject: Re: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Mon, 11 Jun 2012 07:29:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 10/06/12 12:30, Chris Tapp wrote:
> I've been building the 3.1.9 Raspberry Pi kernel under Denzil using
> the meta layer at https://github.com/djwillis/meta-raspberrypi. This
> uses a kernel recipe based on the git repository at
> https://github.com/raspberrypi/linux/commits/rpi-patches.
> 
> Some of the kernel commit IDs (e.g.
> 94fbbc4e3988075abad0d3b32842b82c590324fc) seem to build ok, but they
> don't always run. As in, if I -c clean and build then sometimes I end
> up with a bootable image, sometimes I don't. I'm not changing
> anything else in the build environment.
> 
> Any ideas what can cause this?

I find that -c clean does not work very well, afterward the package gets
recompiled but instead of the actual package packages being rebuilt, an
earlier version of the packages gets pulled out of sstate into the
image. I definitely saw this behaviour with Yocto kernels, but I think
happens with other packages as well; I always do -c cleansstate now to
avoid this.

Tomas

