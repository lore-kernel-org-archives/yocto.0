Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C354CE0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 08:50:07 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1SQKlh-0008UE-3A
	for yocto@yoctoproject.org; Fri, 04 May 2012 17:50:05 +0200
Received: from ip66-35-226-228.altera.com ([66.35.226.228])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 17:50:04 +0200
Received: from jrucker by ip66-35-226-228.altera.com with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 17:50:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jim Rucker <jrucker@altera.com>
Date: Fri, 4 May 2012 15:46:13 +0000 (UTC)
Message-ID: <loom.20120504T174109-199@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 66.35.226.228 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162
	Safari/535.19)
Subject: error with bb.fetch2.get_srcrev(d)
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
X-List-Received-Date: Fri, 04 May 2012 15:50:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

In the project that I'm working on we have a recipes-bsp and recipes-kernel, and 
when I try to build virtual/kernel I'm getting the following error. It looks to 
me like it's trying to get the git from our u-boot server so it can find the 
version, but at this point I'm trying to build the kernel, not u-boot. So, is 
there a way to build it independently, and if so how do I isolate the issue? 
bitbake -DDD doesn't provide any additional info



ERROR: Failure expanding variable SRCPV, expression was 
${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher 
failure for URL: 'None'. Fetch command export HOME="/home/jrucker"; export 
SSH_AGENT_PID="1461"; export SSH_AUTH_SOCK="/tmp/keyring-yphCY1/ssh"; export 
GIT_CONFIG="/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686-
linux/usr/etc/gitconfig"; export PATH="/home/jrucker/poky/6.0/poky-edison-
6.0/build/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-poky-linux-
gnueabi:/home/jrucker/poky/6.0/poky-edison-
6.0/build/tmp/sysroots/socfpga5xs1/usr/bin/crossscripts:/home/jrucker/poky/6.0/p
oky-edison-6.0/build/tmp/sysroots/i686-
linux/usr/sbin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686-
linux/usr/bin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686-
linux/sbin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686-
linux//bin:/home/jrucker/poky/6.0/poky-edison-
6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
6.0/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sb
in:/usr/bin:/sbin:/bin:/usr/games:/home/jrucker/poky/6.0/poky-edison-
6.0/scripts"; git ls-remote ssh://git@ec2-67-102-16-93.compute-
1.amazonaws.com/uboot.git socfpga5xs1_v2011.12 failed with signal 128, output:
Permission denied (publickey).
fatal: The remote end hung up unexpectedly



