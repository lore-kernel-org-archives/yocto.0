Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA6A2E011F0
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 15:31:42 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:35924
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Qs0Gd-0005Zf-NL
	for yocto@yoctoproject.org; Fri, 12 Aug 2011 23:31:51 +0100
Message-Id: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 12 Aug 2011 23:31:49 +0100
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
Subject: Configuring a layer to support multiple targets
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
X-List-Received-Date: Fri, 12 Aug 2011 22:31:43 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

What is the best way to configure a layer to support multiple targets  
that share a common base?

For example, a set of targets that use the Vortex86DX SOC share common  
peripherals and also have per-variant peripherals.

I was thinking:

1) Have a conf/machine file for each variant;
2) Make these use an include for the Vortex86DX SOC.

However, I can't work out how to get a per-machine defconfig file. Is  
there some way of using the machine name to do this? Can I just use

FILESEXTRAPATHS := "${THISDIR}/${PN}/${MACHINE}"

in a kernel .bbappend file?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




