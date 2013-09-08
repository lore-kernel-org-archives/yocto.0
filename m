Return-Path: <carlo.caione@gmail.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB506E0051D
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 12:19:32 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id gf11so3468422vcb.11
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2013 12:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=9+z6ZNGQyat8qAMCcztMIzJdSi5ED4Pt8DZpkS4D6zc=;
	b=NaXn0otxeBXoS4pXZNozepkbTrjZ2qfsg3AlL6+oyQABvE76BS6JWjtnTg7R9SRypA
	rq2kdbStLLRzdj9M26mIS4UdX7rRHevUZ2348YjBGiVeAl0ZWkLfadcIP1fxPFah+Z+y
	32heFB17gvIF86iNmkhGF8a8OTSpK9nrRSJb/P5X6GvZbdupp2RnjyEsWgv4+ynWYnow
	KrV6Lx/NqMvAmv96QHBhpTN8lU2Pge/DW4YPTC7fM0esLGBzwC0wvYgPbitagNzrsFUn
	Vc2AZvPJ6+TX6xM0xpIs8ykp0Bwrou8G58rwafxc70lRqAAukDbCAP4mPzN02BkzYYIv
	xo5g==
MIME-Version: 1.0
X-Received: by 10.221.64.17 with SMTP id xg17mr13649386vcb.5.1378667961573;
	Sun, 08 Sep 2013 12:19:21 -0700 (PDT)
Received: by 10.220.220.138 with HTTP; Sun, 8 Sep 2013 12:19:21 -0700 (PDT)
Date: Sun, 8 Sep 2013 21:19:21 +0200
Message-ID: <CAOQ7t2b-UphcCwiQrbKqJmzjdGo=fyfQ7mh0UgWdeUTyUQEb=g@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
To: yocto@yoctoproject.org
Subject: linux-yocto-custom error on do_validate_branches()
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
X-List-Received-Date: Sun, 08 Sep 2013 19:20:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,
to build the v3.8.13 kernel I'm using the linux-yocto-custom recipe as
following:

---------------------------------------------
inherit kernel
require recipes-kernel/linux/linux-yocto.inc

SRC_URI =3D "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it;protocol=3Dgit;nocheckout=3D1"
SRC_URI +=3D "file://defconfig"
SRC_URI +=3D "file://0001-kernel-rskrza1_rzlspv0.patch"

LINUX_VERSION ?=3D "3.8.13"
LINUX_VERSION_EXTENSION ?=3D "-custom"

SRCREV=3D"dbf932a9b316d5b29b3e220e5a30e7a165ad2992"

PR =3D "r1"
PV =3D "${LINUX_VERSION}+git${SRCPV}"

COMPATIBLE_MACHINE =3D "rsr972"
------------------------------------------------

the problem is that bitbake returns an error:

------------------------------------------------
ERROR: Function failed: do_validate_branches (see
/home/carlo/work/RSR/yocto/build/tmp/work/rsr972-poky-linux-gnueabi/linux-y=
octo-custom/3.8.13+gitAUTOINC+dbf932a9b316d5b29b3e220e5a30e7a165ad2992-r1/t=
emp/log.do_validate_branches.7939
for further information)
ERROR: Logfile of failure stored in:
/home/carlo/work/RSR/yocto/build/tmp/work/rsr972-poky-linux-gnueabi/linux-y=
octo-custom/3.8.13+gitAUTOINC+dbf932a9b316d5b29b3e220e5a30e7a165ad2992-r1/t=
emp/log.do_validate_branches.7939
Log data follows:
| DEBUG: Executing shell function do_validate_branches
| error: no such commit dbf932a9b316d5b29b3e220e5a30e7a165ad2992
| usage: git branch [options] [-r | -a] [--merged | --no-merged]
|    or: git branch [options] [-l] [-f] <branchname> [<start-point>]
|    or: git branch [options] [-r] (-d | -D) <branchname>...
|    or: git branch [options] (-m | -M) [<oldbranch>] <newbranch>
|
| Generic options
|     -v, --verbose         show hash and subject, give twice for
upstream branch
|     -t, --track           set up tracking mode (see git-pull(1))
|     --set-upstream        change upstream info
|     --color[=3D<when>]      use colored output
|     -r, --remotes         act on remote-tracking branches
|     --contains <commit>   print only branches that contain the commit
|     --abbrev[=3D<n>]        use <n> digits to display SHA-1s
|
| Specific git-branch actions:
|     -a, --all             list both remote-tracking and local branches
|     -d, --delete          delete fully merged branch
|     -D                    delete branch (even if not merged)
|     -m, --move            move/rename a branch and its reflog
|     -M                    move/rename a branch, even if target exists
|     --list                list branch names
|     -l, --create-reflog   create the branch's reflog
|     --edit-description    edit the description for the branch
|     -f, --force           force creation (when already exists)
|     --no-merged <commit>  print only not merged branches
|     --merged <commit>     print only merged branches
|
| ERROR: SRCREV was set to "dbf932a9b316d5b29b3e220e5a30e7a165ad2992",
but no branches
|        contain this commit
| ERROR: Function failed: do_validate_branches (see
/home/carlo/work/RSR/yocto/build/tmp/work/rsr972-poky-linux-gnueabi/linux-y=
octo-custom/3.8.13+gitAUTOINC+dbf932a9b316d5b29b3e220e5a30e7a165ad2992-r1/t=
emp/log.do_validate_branches.7939
for further information)
ERROR: Task 0 (/home/carlo/work/RSR/yocto/meta-renesas/meta-rsr972/recipes-=
kernel/linux/linux-yocto-custom.bb,
do_validate_branches) failed with exit code '1'
-------------------------------

Actally the SHA is valid since using the Linus repo I have

~/work/linux-stable(branch:master) =BB git branch --contains
dbf932a9b316d5b29b3e220e5a30e7a165ad2992
  linux-3.8.y

what's the problem with the recipe?

Thank you,

--
Carlo Caione

