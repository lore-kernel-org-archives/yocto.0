Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 41D7D4C8007E
	for <yocto@yoctoproject.org>; Sun, 13 Feb 2011 07:40:47 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:40866
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PocBx-00008Q-KB
	for yocto@yoctoproject.org; Sun, 13 Feb 2011 13:40:45 +0000
Message-Id: <BC794782-AADE-4A58-8837-29ACC0497B1E@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sun, 13 Feb 2011 13:40:42 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Where is 'my' defconfig ?
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
X-List-Received-Date: Sun, 13 Feb 2011 13:40:47 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I've created my own machine ('MyMachine') that has virtual/kernel set  
to 'linux-yocto-stable'. I would now like to change the kernel  
configuration to enable some drivers that aren't enabled by default.

This leads me to a couple of questions:

1) Where is the defconfig file for 'linux-yocto-stable'? Or does this  
just use the default configuration provided by the kernel?
2) Where do I place the defconfig file for MyMachine? Should this be  
in meta/recipes-kernel/linux/linux-yocto-stable/MyMachine/defconfig?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




