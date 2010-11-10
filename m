Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB1844C80815
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 00:41:45 -0600 (CST)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id oAA6fhHD010797
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 00:41:44 -0600
From: Kumar Gala <galak@kernel.crashing.org>
Date: Wed, 10 Nov 2010 00:41:43 -0600
Message-Id: <BA703559-6EAC-43D9-BB84-E95DDCB1ED62@kernel.crashing.org>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1081)
X-Mailer: Apple Mail (2.1081)
Subject: problem with fetching?
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
X-List-Received-Date: Wed, 10 Nov 2010 06:41:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to build the MPC8135E RDB and have the following setup in =
conf/local.conf:

# Uncomment and set to allow bitbake to execute multiple tasks at once.
# For a quadcore, BB_NUMBER_THREADS =3D "4", PARALLEL_MAKE =3D "-j 4" =
would
# be appropriate.
BB_NUMBER_THREADS =3D "16"
# Also, make can be passed flags so it run parallel threads e.g.:
PARALLEL_MAKE =3D "-j 16"

# The machine to target
MACHINE ?=3D "mpc8315e-rdb"

....

$ bitbake  poky-image-minimal

I see errors likes:

Waiting for 1 active tasks to finish:
1: linux-libc-headers-2.6.34-r1 do_fetch (pid 6952)
NOTE: package binutils-cross-2.20.1-r3: task do_unpack: Succeeded
NOTE: linux-libc-headers-2.6.34: =
http://kernel.org/pub/linux/kernel/v2.6/linux-2.6.34.tar.bz2 has no =
entry in conf/checksums.ini, not checking URI
NOTE: package linux-libc-headers-2.6.34-r1: task do_fetch: Succeeded
ERROR: =
'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/g=
nu-config/gnu-config_20080123.bb' failed

---

if I re-run it gets further.  ideas on what's going on?

- k=

