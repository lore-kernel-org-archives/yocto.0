Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BDDE00DA9; Tue, 22 Aug 2017 23:57:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 906 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Aug 2017 23:57:05 PDT
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DBB8E00D7C
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 23:57:05 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1dkPMF-0004G7-R6
	for yocto@yoctoproject.org; Wed, 23 Aug 2017 08:41:43 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@telfort.nl>
Date: Wed, 23 Aug 2017 06:41:35 +0000 (UTC)
Message-ID: <onj82v$64m$1@blaine.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Pan/0.141 (Tarzan's Death; 168b179 git.gnome.org/pan2)
Subject: Problems building U-Boot for x86_64
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Aug 2017 06:57:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

I am having trouble building a specific U-Boot version with Yocto. 
Outside of Yocto on 64 bit Ubuntu 17.04 with multilib it builds fine.

I am extending meta-intel-edison to build a 64 bit Poke Morty, with a 
vanilla 64-bit kernel (4.12). This is working quite well.

My host is x86_64, the target is core2 with tune=core-64.

Without 64bit tune I can build U-Boot fine. With 64bit it can not link, 
appearently because it needs lbgcc.a

I attempted to add multilib, but although that immediately exposed bugs 
in other recipes but actually adds libgcc.a, it does that for the target 
sysroot only.

And for some reason, U-Boot is built with the native gcc (x86_64-linux), 
and multilib does not add libgcc.a to that sysroot.

So, how do I add multilib to -native sysroot, preferably only to -native 
and not to the target, as the target has not further use for it?

Strangest thing is in u-boot.inc there is: 
EXTRA_OEMAKE = 'CROSS_COMPILE=${TARGET_PREFIX} CC="${TARGET_PREFIX}gcc 
${TOOLCHAIN_OPTIONS}" V=1'
EXTRA_OEMAKE += 'HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}"'

But when I check my log file:
NOTE: make -j8 CROSS_COMPILE=x86_64-poky-linux- CC=x86_64-poky-linux-
gcc  ......

So TARGET_PREFIX resolves to x86_64-poky-linux, but I think my target is 
core2_64 (or something like that). Is that normal for U-Boot?

I am a little lost, so any help would be greatly appreciated!

Ferry 


