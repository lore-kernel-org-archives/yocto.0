Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 521684C800E5
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 07:59:02 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6ICwwk3031143;
	Mon, 18 Jul 2011 07:58:58 -0500
From: Kumar Gala <galak@kernel.crashing.org>
Date: Mon, 18 Jul 2011 07:58:58 -0500
Message-Id: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: native gcc compiler error
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
X-List-Received-Date: Mon, 18 Jul 2011 12:59:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've been working on trying to get an e500v2 (linux-gnuspe) compiler =
working and seem to have build a native toolchain.  However when I try =
and compile a simple hello world style app I get:

root@p2020-ds:~# gcc float.c=20
gcc: fatal error: -fuse-linker-plugin, but liblto_plugin.so not found
compilation terminated.

Wondering if anyone's seen this before and had any ideas.

- k=

