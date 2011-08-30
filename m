Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8327AE01200
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 11:08:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7UI85dM020796;
	Tue, 30 Aug 2011 19:08:05 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19923-09; Tue, 30 Aug 2011 19:08:01 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7UI7rBq020790
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 30 Aug 2011 19:07:56 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
Date: Tue, 30 Aug 2011 19:07:42 +0100
Message-ID: <1314727662.5939.388.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Tue, 30 Aug 2011 18:08:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-08-12 at 00:51 +0100, Chris Tapp wrote:
> I've got a linux-wrs_git.bbappend file in a layer (under poky laverne  
> 4.0.1) that contains:
> 
> COMPATIBLE_MACHINE_Vortex86DX = "Vortex86DX"
> WRMACHINE_Vortex86DX  = "common_pc"
> 
> FILESEXTRAPATHS := "${THISDIR}/${PN}"
> 
> SRC_URI += " file://defconfig"
> 
> Where should the defconfig file be relative to the bbappend?
> 
> I've tried:
> 
> MyLayer
>        +--- recipies
>                    +--- linux
>                             +--- linux-wrs_git.bbappend
>                             +--- linux-wrs_git
>                                              +--- defconfig
> 
> 
> However, my defconfig file isn't being picked up during do_unpack:
> 
> cp: cannot stat `/home/chris/yocto/yocto-versions/laverne-4.0.1/meta/ 
> recipes-kernel/linux/files/defconfig': No such file or directory
> NOTE: Unpacking /home/chris/yocto/yocto-downloads/ 
> git_git.pokylinux.org.linux-2.6-windriver.git.tar.gz to /home/chris/ 
> yocto/mbox-3300-build/tmp/work/Vortex86DX-poky-linux/linux- 
> wrs 
> -2.6.34 
> + 
> git0 
> + 
> b67e060194a38c6331da1532bd06446087a42b3b_0 
> +0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
> NOTE: Unpacking /home/chris/yocto/yocto-versions/laverne-4.0.1/meta/ 
> recipes-kernel/linux/files/defconfig to /home/chris/yocto/mbox-3300- 
> build/tmp/work/Vortex86DX-poky-linux/linux- 
> wrs 
> -2.6.34 
> + 
> git0 
> + 
> b67e060194a38c6331da1532bd06446087a42b3b_0 
> +0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
> ERROR: Task failed:
> 
> Which seems to show that it's not looking in FILESEXTRAPATHS.
> 
> The .bbappend file seems to be processed, as commenting out the  
> SRC_URI line gets rid of the error.
> 
> What have I got wrong?

I've just been looking at the open bug related to this
(http://bugzilla.yoctoproject.org/show_bug.cgi?id=1379) and I can't
reproduce an issue with layers ending with -numeric causing a
problem :/.

In the above example, 

recipies/linux/linux-wrs/defconfig

is the correct path since PN == "linux-wrs". (you had linux-wrs_git).
Could you check whether the layer numeric part is a red herring please
and whether the above path works?

Cheers,

Richard



