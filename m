Return-Path: <philb@gnu.org>
Received: from hetzner.pbcl.net (mail.pbcl.net [88.198.119.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF06F4C80986
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2011 14:05:05 -0500 (CDT)
Received: from blundell.swaffham-prior.co.uk ([91.216.112.25]
	helo=[192.168.114.3])
	by hetzner.pbcl.net with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <philb@gnu.org>)
	id 1QmVtF-0003FA-NV; Thu, 28 Jul 2011 21:05:01 +0200
From: Phil Blundell <philb@gnu.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <20110728185400.GK15286@jama.jama.net>
References: <1F827C13-EF18-4D1E-AAA1-381361929F39@kernel.crashing.org>
	<65A75BC37EC7EE4F88AB5EB98759A97003E6E32F@LONMLVEM04.e2k.ad.ge.com>
	<315B4992-8E1A-4DD3-8D3D-E8FD2436B365@kernel.crashing.org>
	<4E3188D3.8040405@linux.intel.com>
	<312066B0-7200-477F-A875-B610335E6153@kernel.crashing.org>
	<20110728185400.GK15286@jama.jama.net>
Date: Thu, 28 Jul 2011 20:04:55 +0100
Message-ID: <1311879895.3398.19.camel@lenovo.internal.reciva.com>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.3 
X-Mailman-Approved-At: Thu, 28 Jul 2011 15:14:51 -0500
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [OE-core] mpc8315e-rdb core-image-minimal fails (PACKAGE_ARCHS question)
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
X-List-Received-Date: Thu, 28 Jul 2011 19:05:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-28 at 20:54 +0200, Martin Jansa wrote:
> this change causes ERROR here with nokia900:
> Error, the PACKAGE_ARCHS variable contains duplicates. The following archs are listed more than once: armv7a-vfp-neon

It isn't totally obvious to me that it needs to be an error for
PACKAGE_ARCHS to contain dupes.  AFAIK there is no reason that it
couldn't simply be uniquified before use.

p.



