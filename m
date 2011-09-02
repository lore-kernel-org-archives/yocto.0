Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 250F4E01220
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 01:03:47 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:48743
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1QzO9B-0007IU-7F
	for yocto@yoctoproject.org; Fri, 02 Sep 2011 08:26:41 +0100
Message-Id: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 2 Sep 2011 08:26:38 +0100
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
Subject: Splitting processor and target in BSPs
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
X-List-Received-Date: Fri, 02 Sep 2011 08:03:48 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

How should meta data be structured so that a layer can support a set  
of systems using a set of processors?

For example, many of the 'eBox' systems use variants of the Vortex86  
SoC. So, a set of machine files are needed for these (e.g. ebox-3300,  
ebox-3500mx, etc.).

These have different peripherals available (e.g. some have serial,  
some don't) and use different SoC variants with different cpu, sound,  
etc. It would therefore make sense for the machine configuration to  
inherit the SoC attributes (for the common features) and add (or  
remove) machine specific attributes (e.g. serial) to these. This can  
be done by putting the SoC bits in to an include.

However, kernel configuration becomes a little bit more complicated as  
this is done by machine name. A kernel recipe will be needed for each  
machine (e.g. for the different sound drivers), but I can't work out  
how to do this using a base configuration for the SoCs that are shared  
and then adding machine specific parts. I can do it using (for  
example) a .defconfig for each machine, but that would require updates  
to multiple files to change the SoC configuration.

I guess what I'm really asking is, is it possible to have a base CPU  
configuration and add a machine configuration to this ?

I've recently seen discussion of .cfg kernel fragment files. Are these  
what I should be looking at? Are these available in the releases or  
only in the development branch?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




