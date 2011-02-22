Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD1B84C800B2
	for <yocto@yoctoproject.org>; Tue, 22 Feb 2011 02:25:35 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:12411
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PrnYs-0003P0-FQ
	for yocto@yoctoproject.org; Tue, 22 Feb 2011 08:25:34 +0000
Message-Id: <3A4E344D-7CA9-4093-97BA-9C807E985CD3@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Tue, 22 Feb 2011 08:25:31 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Adding v86d support to a new machine
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
X-List-Received-Date: Tue, 22 Feb 2011 08:25:36 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

How do I get v86d in to my rootfs image?

I'm building using my own machine.conf (LX800) and I've got a  
v86d_0.1.9.bbappend file so I can add compatibility for it:

COMPATIBLE_MACHINE_LX800 = "LX800"

The LX800.conf machine file has:

MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "v86d"

v86d builds ok and is in work/LX800-poky-linux/v86d-0.1.9-r0. However  
it's not making it in to the image.

What else do I need to do to get it in?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




