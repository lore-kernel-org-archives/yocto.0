Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF8DBE013CC
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 02:36:43 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1TAaecn029056;
	Wed, 29 Feb 2012 10:36:40 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28765-01; Wed, 29 Feb 2012 10:36:36 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1TAaTou029050
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 29 Feb 2012 10:36:31 GMT
Message-ID: <1330511792.9185.149.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Date: Wed, 29 Feb 2012 10:36:32 +0000
In-Reply-To: <1330498010.1785.48.camel@dongxiao-osel>
References: <1330498010.1785.48.camel@dongxiao-osel>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: COMPATIBLE_HOST in initramfs-live-install_1.0.bb
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
X-List-Received-Date: Wed, 29 Feb 2012 10:36:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-02-29 at 14:46 +0800, Xu, Dongxiao wrote:
> I saw in initramfs-live-install_1.0.bb recipe, there is a line to set
> the COMPATIBLE_HOST:
> 
> COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
> 
> But actually initramfs-live-install is set as dependency in
> core-image-minimal-initramfs.bb. Therefore if we set machine to be
> "qemuarm" or something else that is not x86 architecture, and then
> execute:
> # bitbake core-image-minimal-initramfs
> or
> # bitbake universe
> 
> System will report an error of:
> 
> ERROR: Nothing RPROVIDES
> 'initramfs-live-install' (but /home/yocto-build5/poky-contrib/meta/recipes-core/images/core-image-minimal-initramfs.bb RDEPENDS on or otherwise requires it)
> ERROR: initramfs-live-install was skipped: incompatible with host
> arm-poky-linux-gnueabi (not in COMPATIBLE_HOST)
> NOTE: Runtime target 'initramfs-live-install' is unbuildable,
> removing...
> Missing or unbuildable dependency chain was: ['initramfs-live-install']
> ERROR: Required build target 'core-image-minimal-initramfs' has no
> buildable providers.
> Missing or unbuildable dependency chain was:
> ['core-image-minimal-initramfs', 'initramfs-live-install']
> 
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> 
> Could you help to explain the background to set compatible host for the
> initramfs-live-install recipe?

It uses syslinux which only works on IA32?

Cheers,

Richard


