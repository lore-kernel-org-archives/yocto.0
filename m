Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id A24F04C80FD4
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 18:22:40 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBO0O2O9001591; Fri, 24 Dec 2010 00:24:03 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id T-PSrpVSj7QK; Fri, 24 Dec 2010 00:24:02 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBO0NtSh001587
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 24 Dec 2010 00:23:57 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6E8@orsmsx504.amr.corp.intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E8@orsmsx504.amr.corp.intel.com>
Date: Fri, 24 Dec 2010 00:22:21 +0000
Message-ID: <1293150141.17519.560.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recent build issues.
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
X-List-Received-Date: Fri, 24 Dec 2010 00:22:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 14:08 -0800, Flanagan, Elizabeth wrote:
> Next,  the following bugs have been making it difficult to track down build failures:
> 
> Sanity Test Boot test returns invalid results.
> http://bugzilla.pokylinux.org/show_bug.cgi?id=611

Fixes for #611, #612 and some other issues I found are merged into
master. Sanity tests are now working locally for me at least.

> Sanity tests do not always kill QEMU once timeout is reached
> http://bugzilla.pokylinux.org/show_bug.cgi?id=595

This is not fixed yet and we need to sort that as its hurting the
autobuilder.

> There are also sanity test failures in a few images:
> 
> qemuarm poky-image-sato
> qemuarm poky-image-minimal
> qemumips poky-image-sato
> 
> mips seems to have run poky-image-minimal ok, but with Bug #611, I
> can't be sure that is the case and I doubt it's actually the case. My
> inclination is that there is an issue with arm and mips builds that
> should be looked at.

Also, qemux86 was broken until a fix I pushed a few minutes ago (kernel
was missing IDE support and wouldn't boot in qemu).

It looks like the new version of opkg we've upgraded to fixing certain
meta-toolchain corruption issues has some other new characteristics such
as refusing to install overlapping files. This is good but its exposed
bugs (and why isn't rpm showing this?).

There is currently an issue with that when building meta-toolchain and
poky-image-lsb that I know of. Patches to fix these bugs welcome (and
bugs need filing).

> - PPC is broken.
> 
> PPC is having serious issues that seem to revolve around
> linux-yocto-2.6.37. Bruce I believe is working on this. Can anyone
> give an update around where this stands?

Bruce pushed a patch to disable -Os usage. If this isn't showing up in
the next round of autobuilds, we'll have to figure out why it isn't
getting applied.

Cheers,

Richard



