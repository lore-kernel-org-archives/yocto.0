Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38D12E012B8
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 06:17:50 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p89DNiJt001569; Fri, 9 Sep 2011 14:23:45 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id sZpW28Oq6sI3; Fri,  9 Sep 2011 14:23:44 +0100 (BST)
Received: from [192.168.1.43] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p89DNeUK001562
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 9 Sep 2011 14:23:42 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: tom.zanussi@intel.com
In-Reply-To: <cover.1315509303.git.tom.zanussi@intel.com>
References: <cover.1315509303.git.tom.zanussi@intel.com>
Date: Fri, 09 Sep 2011 14:17:35 +0100
Message-ID: <1315574255.1986.0.camel@ted>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] More fixes for bug 1428
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
X-List-Received-Date: Fri, 09 Sep 2011 13:17:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-09-08 at 14:27 -0500, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> oe-core commit dc3a8274c7e935fa564eea142d2535c9bcf2b272 for YOCTO #1428
> broke meta-intel x86_64 builds:
> 
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'initramfs-live-install' (but /usr/local/src/yocto/sugarbay/meta/recipes-core/images/core-image-minimal-initramfs.bb RDEPENDS on or otherwise requires it)
> ERROR: initramfs-live-install was skipped: incompatible with host x86_64-poky-linux
> 
> This patchset restores the build.
> 
> Build and install-tested on sugarbay and crownbay.
> 
> More fixes for [YOCTO #1428]
> 
> The following changes since commit b86f811663d834064af1e6778c408eb904fad0b9:
>   Darren Hart (1):
>         n450: update linux-yocto PREFERRED_VERSION to 3.0%
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/meta-intel.git tzanussi/1428-fix
>   http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/1428-fix
> 
> Tom Zanussi (2):
>   meta-intel/common: create a grub2 version initramfs-live-install
>   meta-intel/common: remove initramfs-live-install 1.0 bbappend

Is there a disadvantage to moving to grub2 in OE-Core and then bringing
these pieces into sync?

Cheers,

Richard


