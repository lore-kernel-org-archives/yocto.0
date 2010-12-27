Return-Path: <psanchez@fosstel.com>
Received: from a2s40.a2hosting.com (a2s40.a2hosting.com [216.119.135.130])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3466D4C81069
	for <yocto@yoctoproject.org>; Mon, 27 Dec 2010 16:22:15 -0600 (CST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=default; d=fosstel.com;
	h=Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding:X-A2-Score:X-A2-checked;
	b=V3M/VVzve+OtGKst4hoyx3sk+6eMv9b3lDCpJvh2GamOrUlGw6fCnCt3PQxobK9droa8cKUdbjLxlLprrh4UtTcgmttRfy0N/f5vMUt/sBtNy6dQBn1QheUmqhyY2dDI;
Received: from cpe0014d14df253-cm001e6b1a7260.cpe.net.cable.rogers.com
	([99.224.55.53] helo=[192.168.1.160])
	by a2s40.a2hosting.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <psanchez@fosstel.com>)
	id 1PXLRi-0002EQ-2U
	for yocto@yoctoproject.org; Mon, 27 Dec 2010 17:22:14 -0500
Message-ID: <4D191170.20103@fosstel.com>
Date: Mon, 27 Dec 2010 17:21:36 -0500
From: Pedro Sanchez <psanchez@fosstel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-A2-Score: -4.1 (----)
X-A2-checked: Yes
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2s40.a2hosting.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - fosstel.com
Subject: Failing to compile Yocto (acl package)
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
X-List-Received-Date: Mon, 27 Dec 2010 22:22:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm trying to compile Yocto from sources as described in the quick start 
documentation but the build fails as follows:

$ wget http://www.yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2
$ tar xjf poky-laverne-4.0.tar.bz2
$ (edited conf/local.conf to select qemuarm)
$ source poky-laverne-4.0/poky-init-build-env poky-4.0-build
$ bitbake poky-image-minimal


... (30 minutes of work)

NOTE: package acl-2.2.49-r0: task do_fetch: Succeeded
NOTE: Running task 582 of 1621 (ID: 1261, 
/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb, 
do_unpack)
NOTE: package acl-2.2.49-r0: task do_unpack: Started
NOTE: Unpacking 
/home/psanchez/Oven/poky-4.0-build/downloads/acl-2.2.49.src.tar.gz to 
/home/psanchez/Oven/poky-4.0-build/tmp/work/armv5te-poky-linux-gnueabi/acl-2.2.49-r0/
ERROR: Task failed:
NOTE: package acl-2.2.49-r0: task do_unpack: Failed
ERROR: Task 1261 
(/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb, 
do_unpack) failed with 1
ERROR: 
'/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb' 
failed


I tried compiling the Laverne branch on a cloned Poky git repo. It also 
fails when processing the acl package. Any workarounds? Is there any log 
file I can look at for more details?

Thanks,

-- 
Pedro


-- 
Pedro

