Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA4544C80479
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 11:58:09 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:51619
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PrDXs-0007sz-Ni
	for yocto@yoctoproject.org; Sun, 20 Feb 2011 17:58:08 +0000
Message-Id: <3776E9FA-795C-450E-83EF-FF154CF1B6FF@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sun, 20 Feb 2011 17:58:06 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: How do I use layers to replacing system configuration files?
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
X-List-Received-Date: Sun, 20 Feb 2011 17:58:09 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I want to be able to change the contents of 'interfaces' in a way that  
means I don't have to change the meta/ tree. It looks like layers  
should do this for me (section 3.4.1 of the Poky Reference Manual),  
but I can't seem to get my files to take precedence.

For example, a default build for laverne-4.0.1 uses core-recipes/ 
netbase/netbase/qemux86/interfaces.

I've created an empty copy of the meta-emenlow layer, changed its  
layer.conf as required and added it in to bblayers.conf. I can tell  
this is getting picked up as I get a warning that it contains no .bb  
files (it will eventually).

However, my meta-new/packages/netbase/netbase/qemux86/interfaces file  
isn't overriding the one above.

What else do I need to do? Do I need to have something other that .bb  
and .bbappend added to BBPATH (or something else)?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




