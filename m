Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B520E011AC
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 17:10:06 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:22374
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1RIUai-0003m7-9e
	for yocto@yoctoproject.org; Tue, 25 Oct 2011 01:10:04 +0100
Message-Id: <0E674E98-F46F-467D-B7F2-8066AA03A454@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Tue, 25 Oct 2011 01:10:01 +0100
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
Subject: How do I tell when a USB disk is ready?
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
X-List-Received-Date: Tue, 25 Oct 2011 00:10:07 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I've got a minimal root file system that will be used to install a  
poky image from a USB stick.

The init script this uses mounts sda1 (from where it's just booted),  
but sda1 isn't ready when it tries to do this - I can see the bus  
enumeration messages on the console after the mount fails.

How can my script test to see when the device is ready?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




