Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de [212.227.17.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21F094C80120
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2011 04:04:35 -0500 (CDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mreu3) with ESMTP (Nemesis)
	id 0M15EC-1Rgryv3MAS-00tCzr; Mon, 01 Aug 2011 11:04:30 +0200
Date: Mon, 1 Aug 2011 11:04:24 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20110801090424.GA19430@localhost.localdomain>
References: <20110729072359.GA5109@localhost.localdomain>
	<20110729100525.GA26451@localhost.localdomain>
	<4E32B1B6.4010608@windriver.com>
	<20110729140358.GA25648@localhost.localdomain>
	<4E32BF09.5070005@windriver.com> <4E32C463.1000306@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4E32C463.1000306@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:c8eEjAfL3L58V46MfMkwkynYXWugrGnYh6L/bgy93MN
	jfGLA2ktvrJeIKp8CvHyXw7RlQXtKF99Lld3EE7oDAVkRwv/TI
	Hdl2GMt/dZ3w3xmqQW2LKXPNP7EhWMDRnp1JExvYtr7RkDumpR
	vOWeh3nA0zE60b3Ge4okamRUcxkSca8ZvsQGXt2VQPsW8+PokG
	loIt7mGwjTtT62sjQX5r0l8hs+YenCnwEt5zlg60ko=
Cc: yocto@yoctoproject.org
Subject: Re: crownbay-noemgd poky-image-minimal fails to build
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
X-List-Received-Date: Mon, 01 Aug 2011 09:04:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 29, 2011 at 10:32:03AM -0400, Bruce Ashfield wrote:
> >>>As for the second, there's a patch in the 2.6.34 kernel tree
> >>>that is dealing with it:
> >>>
> >>>http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.34/commit/?h=standard&id=72ca49ab08b8eb475cec82a10049503602325791
> >>>
> >>>
> >>>It sounds like there may be a SRCREV problem for the board that
> >>>isn't picking up that change. Can you confirm that this commit
> >>>is in your board branch ? You can check in your build directory
> >>>for linux.
> >>This commit is not in the crownbay-standard branch.
> >
> >Argh. That explains it. You can always cherry pick / apply
> >it locally. This is intended to be a blanket fix, and
> >I just double checked and I for some reason *don't* see
> >it on that one branch either, which means it isn't a SRCREV
> >error hiding it.
> >
> >I'm going to merge the patch out to the BSP branch now, but
> >you'd still need a SRCREV update to see the change in your
> >build.
> 
> I pushed out the change. If your SRCREV is
> a945cd4a4b27c8f9165f4064c8c60e4df569b4c5 for the
> crownbay, you'll pickup the commit.

Thank you very much, Bruce. The patch is now picked up, and
the build runs successfully.

cheers,

Andre

