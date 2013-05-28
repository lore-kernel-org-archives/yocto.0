Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80A62E01458
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 06:50:11 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UhKHx-0000ty-3J
	for yocto@yoctoproject.org; Tue, 28 May 2013 15:50:09 +0200
Received: from 212.50.246.123 ([212.50.246.123])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 15:50:09 +0200
Received: from jackrubby2010 by 212.50.246.123 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 15:50:09 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Tue, 28 May 2013 13:49:50 +0000 (UTC)
Message-ID: <loom.20130528T152012-210@post.gmane.org>
References: <loom.20130525T145157-762@post.gmane.org>
	<5394411.Nd6qyTtVKA@helios>
	<CAP71Wjx3xV7t5WUA_rEraDd3p0R2OE1mkZtOGkXFEk1hjEf2pg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.123 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:20.0) Gecko/20100101 Firefox/20.0)
Subject: Re: How can I remove packages from rootfs file ?
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
X-List-Received-Date: Tue, 28 May 2013 13:50:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Thanks Nicolas,

Nicolas Dechesne <nicolas.dechesne@...> writes:

> 
> 
> 
> On Sun, May 26, 2013 at 1:41 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Saturday 25 May 2013 13:58:46 Jack wrote:
> 
> 
> > I maked a fsl-image-minaml rootfs file and customized it with adding
> > particular packages. For example, I added
> > IMAGE_INSTALL_append_pn-fsl-image-minimal = " task-core-ssh-openssh
> > task-core-nfs-server" in local.conf file. The problem is that, the rootfs
> > file has 6-7 MB capacity but this capacity of file is very high and not
> > acceptable to me. So how can I remove some packages from rootfs file that I
> > do not want ?
> There are several different aspects to answering this question.
> The list of packages to be installed is composed of several things - the list
> of packages specified in IMAGE_INSTALL, packages brought in by IMAGE_FEATURES,
> and packages brought in to satisfy dependencies of either of the first two.
> One way to analyse the contents of your image is to enable buildhistory [1]
> which gives you the full list of installed packages, installed packages by
> size, as well as graphs (.dot) that will show you the dependency relationships
> between the packages. These dot graphs can be viewed by converting them to
> images using the "dot" command (from graphviz) or using a viewer such as xdot
> [2].
> Once you've analysed things at this level, you may find there are dependency
> relationships that can't easily be broken, or some packages that are overly
> large. At this point you will need to start looking at changing the build
> configuraton of the packages in question - disabling optional functionalty,
> removing optional dependencies etc. (usually this would be done by changing
> DISTRO_FEATURES, modifying the kernel configuration, changing PACKAGECONFIG
> options for individual recipes, or if those aren't available modifying
> EXTRA_OECONF). How far you want to go with this depends on how much you want
> to optimise the size of your image.
> If you do find you need to go down the latter path, I'd recommend checking out
> Darren Hart's presentation "Tuning Embedded Linux - When Less is More" [3].
> 
> > For example, remove packages like ar, arping,  basename, telnet, beep, .....
> Note that whilst some of these may be from packages you can remove, many of
> them may be functionality provided by busybox, i.e. where the command is just
> a symlink to the busybox binary. You can modify the busybox build-time
> configuration to disable these, but bear in mind that disabling them
> usually only saves you a few kB. For some applications that may be a useful
> saving, of course.
> 
> 
> on top of that, i wanted to remind that there is a dedicated chapter in
the Yocto manual about building 'tiny' systems [1]. Also you don't mention
which 'DISTRO' you are using, so make sure that you are aware that Yocto
comes with Poky, and Poky-tiny as well, which according to
conf/distro/poky-tiny.conf says:
> 

My MACHINE is p1022ds and DISTRO is fsl. When I changed fsl to poky I got
error.
What should I do ?

> # Poky-tiny is intended to define a tiny Linux system comprised of a      
                                                                           
                         
> 
> 
> # Linux kernel tailored to support each specific MACHINE and busybox.    
                                                                           
                          
> # Poky-tiny sets some basic policy to ensure a usable system while still  
                                                                           
                         
> 
> # keeping the rootfs and kernel image as small as possible.              
                                                                           
                          
> 
> see [2]
> 
> 
> 
> Finally, note that some packages comes with builtin "RRECOMMENDS" which
are installed by default in the RootFS. If you are using IPK backend you can
use the variables BAD_RECOMMENDS to make sure that though packages are
marked as RRECOMMENDS, they aren't installed in the rootFS. I believe this
only works with IPK for now.
> 
> 
> 
>
[1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-a-tiny-system
> 
> 
>
[2] http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto/conf/distro/poky-tiny.conf




