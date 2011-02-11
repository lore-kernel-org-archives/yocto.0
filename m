Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2D9594C800AB
	for <yocto@yoctoproject.org>; Fri, 11 Feb 2011 17:00:52 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:29692
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Po1xz-0007PP-RV
	for yocto@yoctoproject.org; Fri, 11 Feb 2011 22:59:55 +0000
Message-Id: <6F14423B-D0BC-40AA-99BC-55719A73B51A@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 11 Feb 2011 22:59:53 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Kernel configuration using 'menuconfig'
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
X-List-Received-Date: Fri, 11 Feb 2011 23:00:53 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I'm trying to use 'menuconfig' to add a driver to the kernel.

I've been following the instructions I found at http://groups.google.com/group/beagleboard/browse_thread/thread/7ebbfd2948579be0 
  that were posted by Frans Meulenbroeks. However, when I run

bitbake -c menuconfig virtual/kernel

I get

| Failed to parse arguments: Cannot open display:
| ERROR: Function 'do_menuconfig' failed (see ...

Any ideas? Only thing I can think is this is something to do with  
ncurses...

Chris Tapp

opensource@keylevel.com
www.keylevel.com




