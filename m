Return-Path: <enelson1000@comcast.net>
Received: from qmta01.emeryville.ca.mail.comcast.net
	(qmta01.emeryville.ca.mail.comcast.net [76.96.30.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE2D0E01456
	for <yocto@yoctoproject.org>; Tue,  1 Jan 2013 09:34:11 -0800 (PST)
Received: from omta21.emeryville.ca.mail.comcast.net ([76.96.30.88])
	by qmta01.emeryville.ca.mail.comcast.net with comcast
	id iebJ1k0041u4NiLA1haA2b; Tue, 01 Jan 2013 17:34:10 +0000
Received: from [192.168.0.101] ([67.180.186.245])
	by omta21.emeryville.ca.mail.comcast.net with comcast
	id iha91k00L5J6Mc38hhaAMF; Tue, 01 Jan 2013 17:34:10 +0000
Message-ID: <50E31E11.2090708@comcast.net>
Date: Tue, 01 Jan 2013 09:34:09 -0800
From: ed nelson <enelson1000@comcast.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20121106; t=1357061650;
	bh=q09pIxiZOmC4eS3+RO3DXU8gxPCbjRWkYm7vil9ksPU=;
	h=Received:Received:Message-ID:Date:From:MIME-Version:To:Subject:
	Content-Type;
	b=sIyXl9FULe4T0F9hGdLUX58FMMccsUBqXvqsQa6N64ZN5VFDiSJtRMsgKt2/RbVaR
	HfPnuDo9814CwwiFGGQSmPj7tUhZOkPzHpRPogJfBTRnLlwEKMUitj2DkhQ7xIgG/I
	r7Eu+xR4RpIyo8yDX7lhvSG9ZY17R2xiEqZ0UdkWB7gcXVrsIbq/jtnAh0dHmA2Cjf
	wmGZM/DZTymoF17ns7rrk3ST/dnqA0LGl+/XJdMBkiew78JF/QjUU6QqGcbkcCv8hC
	8hCzPays2VkPoF0wuiSQuI29N/pVhSz6Bu84jC2pwNKAwjbU2YDbj5pr4tgVSS00AN
	SSLbWEvmly0IA==
X-Mailman-Approved-At: Tue, 01 Jan 2013 15:29:57 -0800
Subject: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Tue, 01 Jan 2013 17:34:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I am getting a do_fetch failure on raspberrypi kernel.  Is anyone else 
having this problem?

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "raspberrypi"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3"
TUNE_FEATURES     = "armv6 vfp"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "danny:bf909b267498dbab4d7695c26b0dce903ac8b6b0"
meta-raspberrypi  = "master:305c5259e24eaa9fb285ca983dc4f9454743fa0c"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL 
git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27, 
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
Cloning into bare repository 
'/home/ed/oe/poky-danny/rasperryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'...

fatal: read error: Connection reset by peer
fatal: early EOF
fatal: index-pack failed

ERROR: Function failed: Fetcher failure for URL: 
'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'. 
Unable to fetch URL from any source.

Thanks

