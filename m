Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E59C14C800FB
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2011 11:07:23 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5MG7EPM005681;
	Wed, 22 Jun 2011 17:07:14 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05329-07; Wed, 22 Jun 2011 17:07:10 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5MG78OL005673
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 22 Jun 2011 17:07:08 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <cover.1308639171.git.dvhart@linux.intel.com>
References: <cover.1308639171.git.dvhart@linux.intel.com>
Date: Wed, 22 Jun 2011 17:06:51 +0100
Message-ID: <1308758811.20015.84.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH v2 0/3] beagleboard: machine conf, xorg, audio mixer
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
X-List-Received-Date: Wed, 22 Jun 2011 16:07:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-06-21 at 00:19 -0700, Darren Hart wrote:
> Refresh the meta-yocto components of the beagleboard BSP in support of the
> recently sent linux-yocto updates for the kernel. The audio mixer patch is a
> stop-gap that should be eventually replaced with a more generic implementation,
> such as alsa-state - but it ensures the beagleboard boots with sane mixer
> defaults. Also, switch to the xf86-lite xserver from kdrive. This keeps the
> Yocto Project BSP more inline with the meta-texasinstruments BSP, and eliminates
> some trouble with keyboard handling present with the kdrive server.
> 
> 
> The following changes since commit 2163461ec94528ecf046a04edc5db3d2dd3a6b8b:
> 
>   systemtap: remove non-core COMPATIBLE_MACHINES (2011-06-16 22:14:06 +0100)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib dvhart/beagle
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle
> 
> Darren Hart (3):
>   beagleboard: cleanup machine config commentary
>   beagleboard: add basic audio mixer defaults
>   beagleboard: switch to xserver-xf86-lite

I merged these but I did add a commit of my own following up on
beagleboard-audio to make it machine specific (using COMPATIBLE_MACHINE)
and also INHIBIT_DEFAULT_DEPS which just means it can build before the
toolchain is built.

Cheers,

Richard


