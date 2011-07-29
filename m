Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id CBA8A4C803E4
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2011 09:04:00 -0500 (CDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mreu1) with ESMTP (Nemesis)
	id 0MNyEJ-1QkIhI1xoR-007UkI; Fri, 29 Jul 2011 16:03:59 +0200
Date: Fri, 29 Jul 2011 16:03:58 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20110729140358.GA25648@localhost.localdomain>
References: <20110729072359.GA5109@localhost.localdomain>
	<20110729100525.GA26451@localhost.localdomain>
	<4E32B1B6.4010608@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4E32B1B6.4010608@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:xRz2ACzhj1oUGSGMHQGJwn5a+KVgk/0QLLItykMgdSn
	goHYZ35SH6aMMethq8KGHhGAx/8v5leuhsTXQuqEiY6mFA4uJC
	IQ9+qGbZq0iLrPTiZQ1I2e4YAjILPQA5rHKhwzojTJ9N1WOPPs
	/IXmSspFN1GcpvPTwrv2ab7A3KEajZKagcboB6fxghEK4Yw6kF
	hXaFA4KxTpvwVxNsE/5v9R8/Ut4na4IK+hhLQtyeSw=
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
X-List-Received-Date: Fri, 29 Jul 2011 14:04:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Bruce,

thanks for your comments. See below

On Fri, Jul 29, 2011 at 09:12:22AM -0400, Bruce Ashfield wrote:
> I'm trying to dust off my memory here. I know that this has
> been seen, and I also know that this built fine in the bernard
> release.
> 
> The first part of the issue is the:
> 
> Makefile:508: No libdw.h found or old libdw.h found, disables dwarf
> support. Please install elfutils-devel/elfutils-dev
> 
> We may have a missing host dependency in the checks. Have you
> tried installing the relevant package for F13 ?
I had elfutils-devel installed.

> As for the second, there's a patch in the 2.6.34 kernel tree
> that is dealing with it:
> 
> http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.34/commit/?h=standard&id=72ca49ab08b8eb475cec82a10049503602325791
> 
> It sounds like there may be a SRCREV problem for the board that
> isn't picking up that change. Can you confirm that this commit
> is in your board branch ?  You can check in your build directory
> for linux.
This commit is not in the crownbay-standard branch.

cheers,

Andre

