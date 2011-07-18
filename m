Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0008E4C800B2
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 10:07:25 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6IF7OAZ030677
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 10:07:24 -0500
From: Kumar Gala <galak@kernel.crashing.org>
Date: Mon, 18 Jul 2011 10:07:23 -0500
Message-Id: <9EC0E014-A4D9-4B1A-89C9-23F37F4BB661@kernel.crashing.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: EXTRA_IMAGE_FEATURES question
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
X-List-Received-Date: Mon, 18 Jul 2011 15:07:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I was trying a core-image-minimal build with 'tools-sdk' added to =
EXTRA_IMAGE_FEATURES and was expecting a native gcc in the generated =
rootfs.  This was for mpc8315e-rdb config.

conf/local.conf has:

EXTRA_IMAGE_FEATURES =3D "tools-sdk debug-tweaks"

Is this wrong?  is my expectation wrong based on the comments?

- k=

