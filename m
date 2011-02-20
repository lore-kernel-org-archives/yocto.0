Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54B2F4C8086E
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 09:31:34 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:55748
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1PrBG0-0007Ff-QR; Sun, 20 Feb 2011 15:31:32 +0000
Message-Id: <72C3267D-6313-42A0-A105-A288B7576F53@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D612A83.7040302@windriver.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sun, 20 Feb 2011 15:31:30 +0000
References: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
	<4D612A83.7040302@windriver.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: What builds 'netbase'?
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
X-List-Received-Date: Sun, 20 Feb 2011 15:31:35 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 20 Feb 2011, at 14:51, Mark Hatle wrote:

> If you already have a built copy of netbase in your sstate-cache,  
> all clean will
> do is remove the built version, and resync from the cache.  (bitbake  
> -c cleanall
> will remove the sstate-cache files as well, forcing a complete  
> rebuild from
> fetch down to packaging...)

That's what I thought, but if I look to see the sstate files that  
exist after building I see:

ls sstate-cache/sstate-net*
sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
i586-1-5116b681b84a7131255c1771674a020a_deploy-ipk.tgz
sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
i586-1-5116b681b84a7131255c1771674a020a_deploy-ipk.tgz.siginfo
sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
i586-1-733405fb78b4c7e19a746582a97504b2_deploy-rpm.tgz
sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
i586-1-733405fb78b4c7e19a746582a97504b2_deploy-rpm.tgz.siginfo
sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
i586-1-7422fec9d26be091358f8e930110bf37_populate-sysroot.tgz
sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
i586-1-7422fec9d26be091358f8e930110bf37_populate-sysroot.tgz.siginfo
sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1-i586-1- 
f1585ecd0d04332f3ff9b372cac08dd0_package.tgz
sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1-i586-1- 
f1585ecd0d04332f3ff9b372cac08dd0_package.tgz.siginfo

bitbake -c cleanall netbase reports:
...
NOTE: package netbase-4.41-r1: task do_cleanall: Started
NOTE: Removing /home/chris/yocto/sjs-build/sstate-cache/sstate-netbase- 
qemux86-poky-linux-4.41-r1- 
i586-1-4c81cdca2e1c8da43ee609321b93895f_populate-sysroot.tgz
NOTE: Removing /home/chris/yocto/sjs-build/sstate-cache/sstate-netbase- 
qemux86-poky-linux-4.41-r1- 
i586-1-4c81cdca2e1c8da43ee609321b93895f_package.tgz
NOTE: Removing /home/chris/yocto/sjs-build/sstate-cache/sstate-netbase- 
qemux86-poky-linux-4.41-r1- 
i586-1-4c81cdca2e1c8da43ee609321b93895f_deploy-rpm.tgz
NOTE: Removing /home/chris/yocto/sjs-build/sstate-cache/sstate-netbase- 
qemux86-poky-linux-4.41-r1- 
i586-1-4c81cdca2e1c8da43ee609321b93895f_deploy-ipk.tgz
NOTE: Removing /home/chris/yocto/yocto-downloads/netbase_4.41.tar.gz*
NOTE: package netbase-4.41-r1: task do_cleanall: Succeeded

Which looks to me like it just tried to delete the wrong files.  
Looking in sstate-cache shows that the original files are still present.

This is with a virgin laverne-4.0.1.

> To avoid this, the best way (after changing the netbase) is to  
> adjust the PR
> within the recipe.
>
> My suggestion is if the PR is "12", change it to "12.1" on your first
> modification, "12.2" on your second, etc..

I'll give that a try. Thanks.

Chris


