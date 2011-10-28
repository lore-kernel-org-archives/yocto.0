Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31C9CE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 15:11:27 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:40093
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1RJue4-00022w-QL
	for yocto@yoctoproject.org; Fri, 28 Oct 2011 23:11:24 +0100
Message-Id: <6722EDB4-6AD2-4E51-A826-B00D3AABC6A0@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 28 Oct 2011 23:11:22 +0100
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
Subject: Which filesystem for target?
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
X-List-Received-Date: Fri, 28 Oct 2011 22:11:29 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

A bit of an open-ended question, but...

Which is the 'best' filesystem to use for an embedded device that's  
using a CF card?

It needs to survive loss-of-power, have a RO root filesystem, allow  
user configuration data to persist and (ideally) only use 'Busybox'  
commands.

This seems to imply the use of a partition for booting (mount RO) and  
a second partition or a loop-device on the boot partition for  
persistent storage.

I would normally go for ext3, but Busybox doesn't support it (afaik).  
The Busybox tune2fs also only supports -L, so I can't stop 'disk needs  
checking after <n> mounts' messages.

Is btrfs a suitable alternative?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




