Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id F068D4C803E4
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2011 05:05:27 -0500 (CDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mrbap3) with ESMTP (Nemesis)
	id 0M8zxV-1QhYL538k1-00CUnq; Fri, 29 Jul 2011 12:05:26 +0200
Date: Fri, 29 Jul 2011 12:05:25 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: Andre Haupt <andre@bitwigglers.org>
Message-ID: <20110729100525.GA26451@localhost.localdomain>
References: <20110729072359.GA5109@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <20110729072359.GA5109@localhost.localdomain>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:MQuYjmeK5cF63ZRiJJIfeUisC6ROUbdfEr30/sAdoi6
	pqIn7bTpE4CnmKlBDkwosoyH1Ibcpg2gIsIldUnr3hVIb7rbuE
	yltH5JA7WbAxxfPTvc1bQGpYvpXYDIW4DdZ5nSfqqhVomz6JDj
	XOzdNlwUR6T7htWmycKj9JRTG8DwkeArEFT5Q6TirxaDVhEgoB
	LyDnlNaOtw4eLbwGa9Nb2roPxE/W8XrVM99kmEFMhc=
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
X-List-Received-Date: Fri, 29 Jul 2011 10:05:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 29, 2011 at 09:23:59AM +0200, Andre Haupt wrote:
> Hi all,
> 
> I am trying to build a poky bernard image for crownbay-noemgd.
> For this i checked out the bernard branch of both poky and meta-intel
> from git.yoctoproject.org.
> 
> Bitbake fails during the kernels compile_perf task complaining that it can not
> find libdw.h and bfd.h and that using /usr/local/include as include
> location is unsafe for cross compilation (full log attached).
> 
> What do i miss here?

I did work around this with

diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-
index 3c1e669..85caa92 100644
--- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
@@ -42,4 +42,4 @@ KERNEL_FEATURES=features/netfilter
 addtask kernel_link_vmlinux after do_compile before do_install
  addtask validate_branches before do_patch after do_kernel_checkout
   
  -require linux-tools.inc
  +#require linux-tools.inc


not sure that this is the right thing to do though.

cheers,

Andre

