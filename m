Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D0DC4C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 21:36:21 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6F2aJZB021627
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 21:36:20 -0500
From: Kumar Gala <galak@kernel.crashing.org>
Date: Thu, 14 Jul 2011 21:36:19 -0500
Message-Id: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: toolchain queries
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
X-List-Received-Date: Fri, 15 Jul 2011 02:36:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Where is the best place to ask questions and try and get support for =
adding some toolchain variations in?

I'm wanting to add support in for a few different flavors of PPC that =
are not currently supported:

* e500v2 (gcc needs --enable-e500_double, eglibc=20
* e5500 (64-bit embedded ppc)
* e5500 - multilib support for 32/64-bit

- k=

