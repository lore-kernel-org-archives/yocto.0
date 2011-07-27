Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id E81B44C803E4
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 09:23:09 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6REN8Tb020516
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 09:23:09 -0500
From: Kumar Gala <galak@kernel.crashing.org>
Date: Wed, 27 Jul 2011 09:23:09 -0500
Message-Id: <0871F19F-E6BF-481E-920E-87091DEF7F49@kernel.crashing.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: BSP in meta layer vs poky
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
X-List-Received-Date: Wed, 27 Jul 2011 14:23:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I was wondering what distinction qualified for a BSP existing in a meta =
layer vs in poky directly.

For FSL PPC we currently have MPC8315-RDB in poky.  Ideally we'd have =
one BSP for each major flavor [ associated with a unique compiler / libc =
target ].  This would end up being something like P2020-RDB (e500v2 =
core), P204x-RDB (e500mc core), P5020DS (e5500 core - 32/64 bit).

Than everything else would live in the meta-fsl-ppc layer.

- k=

