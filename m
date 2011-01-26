Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA84B4C80BCF
	for <yocto@yoctoproject.org>; Wed, 26 Jan 2011 07:09:56 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:60873
	helo=[192.168.1.99])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Pi57L-0006e2-6C
	for yocto@yoctoproject.org; Wed, 26 Jan 2011 13:08:59 +0000
Message-Id: <46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 26 Jan 2011 13:08:56 +0000
References: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: rootfs image size
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
X-List-Received-Date: Wed, 26 Jan 2011 13:09:57 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I know this is probably a basic question, but I'm not having much luck !

I've built poky-image-minimal for atom-pc using the 0.9 Poky release.

This gives me an ext3 rootfs of over 80MB, which doesn't sound minimal  
to me ;-)

Can I reduce the size of the image, or is it expected to be this size?

I've tried changing

IMAGE_ROOTFS_SIZE_ext3 = "500000"

  in atom-pc.conf to another value, but this didn't make any  
difference to the image that gets created (by re-running bitbake poky- 
image-minimal after making the above change).

I've also tried using

ROOT_FLASH_SIZE = "64"

also without any luck.

Any help would be much appreciated !

Chris


