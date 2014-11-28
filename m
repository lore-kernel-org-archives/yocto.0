Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8589E00970; Fri, 28 Nov 2014 04:38:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65325E0082F
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 04:38:00 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:29930
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>) id 1XuKo6-003VfC-2x
	for yocto@yoctoproject.org; Fri, 28 Nov 2014 12:37:57 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <98D134EE-9E05-4289-BA83-F0369DA15620@keylevel.com>
Date: Fri, 28 Nov 2014 12:37:55 +0000
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: Adding firmware to initramfs
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
X-List-Received-Date: Fri, 28 Nov 2014 12:38:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm network booting a system using iPXE. The process uses a =
core-image-minimal-initramfs image to select the final rootfs that gets =
loaded.

This generally works fine, but I need to be able to install =
linux-firmware in the initramfs image (specifically for the NIC that =
gets used to load the final rootfs).

How do I get linux-firmware to install in core-image-minimal-initramfs? =
I've tried adding the following into local.conf, but with no luck:

MACHINE_ESSENTIAL_EXTRA_RDEPENDS +=3D "linux-firmware"
IMAGE_INSTALL_append =3D " linux-firmware"
CORE_IMAGE_EXTRA_INSTALL +=3D " linux-firmware"

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


