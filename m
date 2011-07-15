Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4708B4C80836
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 16:10:12 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6FLA4SK022863;
	Fri, 15 Jul 2011 16:10:05 -0500
From: Kumar Gala <galak@kernel.crashing.org>
Date: Fri, 15 Jul 2011 16:10:05 -0500
Message-Id: <2CA74704-73F9-4900-82C0-68A64AA6ED35@kernel.crashing.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: TARGET_OS issues with linux-gnuspe
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
X-List-Received-Date: Fri, 15 Jul 2011 21:10:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

In my attempts to get an e500v2/gnuspe toolchain working I was able to =
get core-image-minimal working.  However when I try the 'meta-toolchain' =
I run into the following below.  I believe this is because of TARGET_OS =
being 'linux-gnuspe'.

Any ideas ?

- k

[kumar@right build-p2020]$ bitbake meta-toolchain

OE Build Configuration:
BB_VERSION        =3D "1.13.2"
TARGET_ARCH       =3D "powerpc"
TARGET_OS         =3D "linux-gnuspe"
MACHINE           =3D "p2020-ds"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.0+snapshot-20110715"
TARGET_FPU        =3D "spe"
meta             =20
meta-yocto        =3D "master:068839698fe192d8846c0ed4db65861448e8e524"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'virtual/powerpc-poky-linux-libc-for-gcc'
NOTE: Runtime target 'gcc-cross-canadian-powerpc' is unbuildable, =
removing...
Missing or unbuildable dependency chain was: =
['gcc-cross-canadian-powerpc', =
'virtual/powerpc-poky-linux-libc-for-gcc']
NOTE: Runtime target 'task-cross-canadian-powerpc' is unbuildable, =
removing...
Missing or unbuildable dependency chain was: =
['task-cross-canadian-powerpc', 'gcc-cross-canadian-powerpc', =
'virtual/powerpc-poky-linux-libc-for-gcc']
ERROR: Required build target 'meta-toolchain' has no buildable =
providers.
Missing or unbuildable dependency chain was: ['meta-toolchain', =
'task-cross-canadian-powerpc', 'gcc-cross-canadian-powerpc', =
'virtual/powerpc-poky-linux-libc-for-gcc']
ERROR: Command execution failed: Traceback (most recent call last):
  File "/local/home/kumar/git/poky/bitbake/lib/bb/command.py", line 102, =
in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/command.py", line 200, =
in buildTargets
    command.cooker.buildTargets(pkgs_to_build, task)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/cooker.py", line 996, =
in buildTargets
    taskdata.add_unresolved(localdata, self.status)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
534, in add_unresolved
    self.remove_buildtarget(targetid)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
491, in remove_buildtarget
    self.fail_fnid(fnid, missing_list)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
476, in fail_fnid
    self.remove_runtarget(target, missing_list)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
517, in remove_runtarget
    self.fail_fnid(fnid, missing_list)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
476, in fail_fnid
    self.remove_runtarget(target, missing_list)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
517, in remove_runtarget
    self.fail_fnid(fnid, missing_list)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
471, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
501, in remove_buildtarget
    raise bb.providers.NoProvider(target)
NoProvider: meta-toolchain



