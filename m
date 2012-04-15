Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 501BFE0030B
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2012 15:30:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3FMUkHR025388;
	Sun, 15 Apr 2012 23:30:46 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25291-01; Sun, 15 Apr 2012 23:30:42 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3FMUaGP025381
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 15 Apr 2012 23:30:36 +0100
Message-ID: <1334529038.16992.58.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Johannes =?ISO-8859-1?Q?K=F6nig?= <koenig@inmach.de>
Date: Sun, 15 Apr 2012 23:30:38 +0100
In-Reply-To: <op.wco6222ky8ugr7@farbauti.inmach.dnsalias.com>
References: <op.wco6222ky8ugr7@farbauti.inmach.dnsalias.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: bitbake gets confused with ~/user-config.jam
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
X-List-Received-Date: Sun, 15 Apr 2012 22:30:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2012-04-13 at 11:53 +0200, Johannes König wrote:
> Hi,
> 
> It seems that bitbake (or more precisely the boost_1.44.0.bb recipe) gets
> confused with an user-config.jam file in the users home directory.
> 
> When trying to build core-image-sato (or zypper) the build aborts due to
> an error in the zypper package. I use poky-edison-6.0.1.tar.gz.
> 
> Relevant part of the do_compile.log:
> 
> > build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-poky-linux/4.6.3/ld:  
> > skipping incompatible  
> > build/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.so when  
> > searching for -lboost_signals-mt
> > build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-poky-linux/4.6.3/ld:  
> > skipping incompatible  
> > build/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.a when searching  
> > for -lboost_signals-mt
> > build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-poky-linux/4.6.3/ld:  
> > skipping incompatible  
> > build/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.so when  
> > searching for -lboost_signals-mt
> > build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-poky-linux/4.6.3/ld:  
> > skipping incompatible  
> > build/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.a when searching  
> > for -lboost_signals-mt
> > build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-poky-linux/4.6.3/ld:  
> > cannot find -lboost_signals-mt
> > collect2: ld returned 1 exit status
> > make[2]: *** [zypp/libzypp.so.810.1.0] Error 1
> > make[2]: Leaving directory  
> > `build/tmp/work/crownbay-poky-linux/libzypp-0.0-git1+15b6c52260bbc52b3d8e585e271b67e10cc7c433-r16/git'
> > make[1]: *** [zypp/CMakeFiles/zypp.dir/all] Error 2
> > make[1]: Leaving directory  
> > `build/tmp/work/crownbay-poky-linux/libzypp-0.0-git1+15b6c52260bbc52b3d8e585e271b67e10cc7c433-r16/git'
> > make: *** [all] Error 2
> > ERROR: oe_runmake failed
> > ERROR: Function 'do_compile' failed (see  
> > build/tmp/work/crownbay-poky-linux/libzypp-0.0-git1+15b6c52260bbc52b3d8e585e271b67e10cc7c433-r16/temp/log.do_compile.31334  
> > for further information)
> 
> After removing the ~/user-config.jam file and recompiling zypper with
> 
>      bitbake -c cleanall libzypp boost zypper && bitbake zypper
> 
> no more errors are reported.
> 
> Content of the ~/user-config.jam file is:
> 
> > using gcc ;
> 
> (Usually I have more options in my user-config.jam, but I can strip it
> down to the single line above to reproduce the error.)
>
> Can this problem be fixed without removeing the user-config.jam?

This sounds like a host contamination issue, we shoudn't be looking at
files like that during the build. We probably need to stop the system
looking at those files but I'm not familiar with boost to know enough
about how to stop it doing that.

I'd recommend filing a bug in the bugzilla to ensure this doesn't get
forgotten about...

Cheers,

Richard




