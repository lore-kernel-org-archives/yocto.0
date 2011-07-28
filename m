Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C7534C803E4
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 22:37:15 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6S3bCOV005437
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 22:37:13 -0500
From: Kumar Gala <galak@kernel.crashing.org>
Date: Wed, 27 Jul 2011 22:37:12 -0500
Message-Id: <A836DA06-E769-4562-99BF-16812ED33270@kernel.crashing.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Thu, 28 Jul 2011 03:37:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

It seems like there is a way to use a prebuilt toolchain with poky but =
no real details.

Some refs in the docs like:

POKYMODE
Toolchain selector. It can be external toolchain built from Poky or few =
supported combinations of upstream GCC or CodeSourcery Labs toolchain.

But grepping the code there doesn't seem to be any actual use of =
POKYMODE.  There seems to be some references even on the autobuilder =
about this 'nightly-external-toolchain'.  So wondering what the details =
where on how to configure things to use an external toolchain.

- k=

