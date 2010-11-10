Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4527F4C80815
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 00:46:54 -0600 (CST)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id oAA6kq6N013354
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 00:46:53 -0600
From: Kumar Gala <galak@kernel.crashing.org>
Date: Wed, 10 Nov 2010 00:46:52 -0600
Message-Id: <414DA7D8-2E3E-4DEE-9C36-24EF976D7A99@kernel.crashing.org>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1081)
X-Mailer: Apple Mail (2.1081)
Subject: TARGET_FPU for mpc8315e-rdb listed as SPE??
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
X-List-Received-Date: Wed, 10 Nov 2010 06:46:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Why does the meta/conf/machine/mpc8315e-rdb.conf list TARGET_FPU as SPE. =
 This isn't correct for an MPC8313 SoC.

- k=

