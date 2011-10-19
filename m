Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45951E004E9
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 14:51:01 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:30067
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1RGe2M-0002rL-E0
	for yocto@yoctoproject.org; Wed, 19 Oct 2011 22:50:58 +0100
Message-Id: <0FC92EF8-16EF-4E20-91A4-B7431A2DD411@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 19 Oct 2011 22:50:56 +0100
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: unionfs, initrd, switch_root ...
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
X-List-Received-Date: Wed, 19 Oct 2011 21:51:03 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I'm booting using the rootfs produced by bitbake as in initrd. This  
works nicely and gives a read-only boot device and a system that runs  
from RAM.

What I want to do now is allow changes to be made to some files (e.g.  
network configuration) and have these saved on the boot device so that  
they can be restored at startup. To do this I plan to use unionfs to  
join / and something like /var/tmp/ufs. e.g.

mkdir /var/tmp/ufs
mount -t unionfs -o dirs=/var/tmp/ufs=rw:/=ro unionfs /media/union

This all works as expected. However, I now need to make /media/union  
the system root so that the system sees the ufs union copies of files.  
I think I need to 'switch_root'. However,

switch_root /media/union /sbin/init 3

gives errors like:

switch_root: failed to mount moving /proc to /media/union/proc: No  
such file or directory

This is where I get lost and I can't seem to find anything on the web  
that helps. A 'grep' of meta hasn't thrown anything up that helps -  
does anyone have a good web reference I can go and read? Lots of  
learning to do...

Chris Tapp

opensource@keylevel.com
www.keylevel.com




