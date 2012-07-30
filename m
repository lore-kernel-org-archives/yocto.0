Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF00BE0142E
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 04:33:18 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so5304222yhf.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 04:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VotdxldgeNoPRUAnLpPf74j3C2LttYuVrnNAs42dooA=;
	b=Euj8XnLHewdylIHw6fzLNJzTFVrbNjYTxXgG71DfjDWMN2FSd7LB9TX5uZeNCXDWrr
	gJhC5bi61xn2fiDXBDSbTSyNJgkRLhnZB17mpvaXzEzVubm9sFcb9lPFouzqR4w/YkTv
	D8+uDd+yW6jJOgpgNiguYO7DyXRg4Ixdzt5EDbgYn75kKuuhDD7frS5rJu9VmWKYncqq
	o7KVtRnidj9hABNen7ODcVQKig3aAdOgPnrxVb4Y+4ofid92Dzr131L/JYC0IloQq+Gi
	TNm+Adb5gCv0PgmxnrUlKfiy3mkKd2AvMqbhWZTj50YetO8aXF4X4UDtQFfAk63d6EnO
	qQaA==
MIME-Version: 1.0
Received: by 10.66.83.161 with SMTP id r1mr23872784pay.69.1343647997517; Mon,
	30 Jul 2012 04:33:17 -0700 (PDT)
Received: by 10.68.201.4 with HTTP; Mon, 30 Jul 2012 04:33:17 -0700 (PDT)
Date: Mon, 30 Jul 2012 13:33:17 +0200
Message-ID: <CACW_hTZwzZUyWmmvDaFqaqt7do=_WfXOzA2ytAcs5CD1UmS0kA@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: denzil kernel build issues
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
X-List-Received-Date: Mon, 30 Jul 2012 11:33:19 -0000
Content-Type: multipart/alternative; boundary=f46d042ef4f198613e04c60a6de3

--f46d042ef4f198613e04c60a6de3
Content-Type: text/plain; charset=ISO-8859-1

Dear all,

I finally managed to find time to pick up porting my project to denzil and
did encounter two issues that I wanted to report back:

First is that I could not find what the preferred way was to disable a
kernel option in my bsp.
(the option concerned is CONFIG_PM).
Of course I can sed it out in do_configure but I'd hoped it could be simpler
(I have tried:
CONFIG_PM=n
in my config snippet)

Secondly a patch of mine does not seem to apply properly the first time,
but it does apply a second time.
This suggests a race between do_kernel_checkout and do_patch

Below is a log that illustrates this and demonstrates that things are ok
the 2nd time.
(btw I am also a little bit concerned on the command not found messages).
And of course any sugguestion for a fix is greatly appreciated.

Best regards, Frans

frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
Parsing recipes: 100%
|######################################################################################################################|
Time: 00:00:30
Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105 targets, 35
skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.15.1"
TARGET_ARCH       = "powerpc"
TARGET_OS         = "linux-uclibc"
MACHINE           = "syrcxx"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2"
TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
TARGET_FPU        = ""
meta
meta-yocto
meta-syrcxx       = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 162 of 664 (ID: 6,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_fetch)
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_fetch: Started
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_fetch: Succeeded
NOTE: Running task 644 of 664 (ID: 2,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_unpack)
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_unpack: Started
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_unpack: Succeeded
NOTE: Running task 645 of 664 (ID: 1,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_kernel_checkout)
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_kernel_checkout: Started
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_kernel_checkout: Succeeded
NOTE: Running task 646 of 664 (ID: 0,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_validate_branches)
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_validate_branches: Started
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_validate_branches: Succeeded
NOTE: Running task 647 of 664 (ID: 3,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_patch)
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_patch: Started
ERROR: Function failed: do_patch (see
/home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
for further information)
ERROR: Logfile of failure stored in:
/home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
Log data follows:
| Branch meta-temp set up to track remote branch meta from origin.
| Deleted branch meta-temp (was 3499d64).
| warning: could not find (or was already included):
cfg/dmaengine/dmaengine.scc
| warning: could not find (or was already included):
cfg/usb-mass-storage.scc
| warning: could not find (or was already included): cfg/vfat.scc
| warning: could not find (or was already included):
cfg/dmaengine/dmaengine.scc
| warning: could not find (or was already included): user-patches.scc
| ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:
dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
| ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:
dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
| [INFO] validating against known patches  (syrcxx-fsl-mpc8313e-rdb-meta)
Branch standard/default/syrcxx set up to track remote branch
standard/default/base from origin.
  [##################################ERROR: Function failed: do_patch (see
/home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
for further information)
error: patch failed: drivers/gpio/Makefile:41        ] (-)(76 %)
| error: drivers/gpio/Makefile: patch does not apply
| To force apply this patch, use 'guilt push -f'
| [ERROR] unable to complete push
| pending patches are:
| Patches directory doesn't exist, try guilt-init
| ERROR. could not update git tree
| ERROR. Could not modify standard/default/fsl-mpc8313e-rdb/syrcxx
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_patch: Failed
ERROR: Task 3 (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/
linux-yocto_3.2.bb, do_patch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 647 tasks of which 642 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_patch
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
frans@frans-desktop:~/poky-denzil-7.0-build$ ls -l
/home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile

-rw-r--r-- 1 frans frans 2663 2012-07-30 12:27
/home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile
frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
Loading cache: 100%
|########################################################################################################################|
ETA:  00:00:00
Loaded 1106 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.15.1"
TARGET_ARCH       = "powerpc"
TARGET_OS         = "linux-uclibc"
MACHINE           = "syrcxx"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2"
TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
TARGET_FPU        = ""
meta
meta-yocto
meta-syrcxx       = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 241 of 664 (ID: 3,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_patch)
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_patch: Started
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_patch: Succeeded
NOTE: Running task 648 of 664 (ID: 8,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_kernel_configme)
NOTE: Running task 649 of 664 (ID: 20,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_populate_lic)
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_populate_lic: Started
NOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
task do_kernel_configme: Started

--f46d042ef4f198613e04c60a6de3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Dear all,<br><br>I finally managed to find time to pick up porting my proje=
ct to denzil and did encounter two issues that I wanted to report back:<br>=
<br>First is that I could not find what the preferred way was to disable a =
kernel option in my bsp.<br>
(the option concerned is CONFIG_PM).<br>Of course I can sed it out in do_co=
nfigure but I&#39;d hoped it could be simpler<br>(I have tried:<br>CONFIG_P=
M=3Dn <br>in my config snippet)<br><br>Secondly a patch of mine does not se=
em to apply properly the first time, but it does apply a second time.<br>
This suggests a race between do_kernel_checkout and do_patch<br><br>Below i=
s a log that illustrates this and demonstrates that things are ok the 2nd t=
ime.<br>(btw I am also a little bit concerned on the command not found mess=
ages).<br>
And of course any sugguestion for a fix is greatly appreciated.<br><br>Best=
 regards, Frans<br><br>frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake=
 virtual/kernel<br>Parsing recipes: 100% |#################################=
###########################################################################=
##########| Time: 00:00:30<br>
Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105 targets, 35 =
skipped, 0 masked, 0 errors.<br><br>OE Build Configuration:<br>BB_VERSION=
=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.15.1&quot;<br>TARGET_ARCH=A0=A0=A0=A0=A0=
=A0 =3D &quot;powerpc&quot;<br>
TARGET_OS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;linux-uclibc&quot;<br>MACHINE=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;syrcxx&quot;<br>DISTRO=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =3D &=
quot;1.2&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;m32 fpu-hard ppce300c=
3&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;&quot;<br>meta=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 <br>meta-syrcxx=
=A0=A0=A0=A0=A0=A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;<br><br>N=
OTE: Resolving any missing task queue dependencies<br>NOTE: Preparing runqu=
eue<br>
NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>NOTE: R=
unning task 162 of 664 (ID: 6, /home/frans/poky-denzil-7.0/meta/recipes-ker=
nel/linux/<a href=3D"http://linux-yocto_3.2.bb">linux-yocto_3.2.bb</a>, do_=
fetch)<br>
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171fa=
a9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_fetch: Starte=
d<br>NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec=
171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_fetch: S=
ucceeded<br>
NOTE: Running task 644 of 664 (ID: 2, /home/frans/poky-denzil-7.0/meta/reci=
pes-kernel/linux/<a href=3D"http://linux-yocto_3.2.bb">linux-yocto_3.2.bb</=
a>, do_unpack)<br>NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077=
c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: tas=
k do_unpack: Started<br>
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171fa=
a9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_unpack: Succe=
eded<br>NOTE: Running task 645 of 664 (ID: 1, /home/frans/poky-denzil-7.0/m=
eta/recipes-kernel/linux/<a href=3D"http://linux-yocto_3.2.bb">linux-yocto_=
3.2.bb</a>, do_kernel_checkout)<br>
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171fa=
a9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_kernel_checko=
ut: Started<br>NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10=
942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task d=
o_kernel_checkout: Succeeded<br>
NOTE: Running task 646 of 664 (ID: 0, /home/frans/poky-denzil-7.0/meta/reci=
pes-kernel/linux/<a href=3D"http://linux-yocto_3.2.bb">linux-yocto_3.2.bb</=
a>, do_validate_branches)<br>NOTE: package linux-yocto-3.2.11+git1+b14a08f5=
c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a=
-r1.81: task do_validate_branches: Started<br>
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171fa=
a9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_validate_bran=
ches: Succeeded<br>NOTE: Running task 647 of 664 (ID: 3, /home/frans/poky-d=
enzil-7.0/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_3.2.bb">l=
inux-yocto_3.2.bb</a>, do_patch)<br>
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171fa=
a9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_patch: Starte=
d<br>ERROR: Function failed: do_patch (see /home/frans/poky-denzil-7.0-buil=
d/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a=
5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/=
temp/log.do_patch.27211 for further information)<br>
ERROR: Logfile of failure stored in: /home/frans/poky-denzil-7.0-build/tmp/=
work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c1=
0942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/l=
og.do_patch.27211<br>
Log data follows:<br>| Branch meta-temp set up to track remote branch meta =
from origin.<br>| Deleted branch meta-temp (was 3499d64).<br>| warning: cou=
ld not find (or was already included): cfg/dmaengine/dmaengine.scc<br>| war=
ning: could not find (or was already included): cfg/usb-mass-storage.scc<br=
>
| warning: could not find (or was already included): cfg/vfat.scc<br>| warn=
ing: could not find (or was already included): cfg/dmaengine/dmaengine.scc<=
br>| warning: could not find (or was already included): user-patches.scc<br=
>
| ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21: dmaengine_68b32=
9da9893e34099c7d8ad5cb9c940: command not found<br>| ./2-syrcxx-215ef69425ed=
902858630c959dabd5ce.sco: line 21: dmaengine_68b329da9893e34099c7d8ad5cb9c9=
40: command not found<br>
| [INFO] validating against known patches=A0 (syrcxx-fsl-mpc8313e-rdb-meta)=
<br>Branch standard/default/syrcxx set up to track remote branch standard/d=
efault/base from origin.<br>=A0 [##################################ERROR: F=
unction failed: do_patch (see /home/frans/poky-denzil-7.0-build/tmp/work/sy=
rcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e=
1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_p=
atch.27211 for further information)<br>
error: patch failed: drivers/gpio/Makefile:41=A0=A0=A0=A0=A0=A0=A0 ] (-)(76=
 %)<br>| error: drivers/gpio/Makefile: patch does not apply<br>| To force a=
pply this patch, use &#39;guilt push -f&#39;<br>| [ERROR] unable to complet=
e push<br>
| pending patches are:<br>| Patches directory doesn&#39;t exist, try guilt-=
init<br>| ERROR. could not update git tree<br>| ERROR. Could not modify sta=
ndard/default/fsl-mpc8313e-rdb/syrcxx<br>NOTE: package linux-yocto-3.2.11+g=
it1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d=
3493a1a2880a-r1.81: task do_patch: Failed<br>
ERROR: Task 3 (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb">linux-yocto_3.2.bb</a>, do_patch) failed wi=
th exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 647 tasks of whi=
ch 642 didn&#39;t need to be rerun and 1 failed.<br>
<br>Summary: 1 task failed:<br>=A0 /home/frans/poky-denzil-7.0/meta/recipes=
-kernel/linux/<a href=3D"http://linux-yocto_3.2.bb">linux-yocto_3.2.bb</a>,=
 do_patch<br>Summary: There was 1 ERROR message shown, returning a non-zero=
 exit code.<br>
frans@frans-desktop:~/poky-denzil-7.0-build$ ls -l /home/frans/poky-denzil-=
7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f=
5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880=
a-r1.81/linux/drivers/gpio/Makefile <br>
-rw-r--r-- 1 frans frans 2663 2012-07-30 12:27 /home/frans/poky-denzil-7.0-=
build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b=
469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1=
.81/linux/drivers/gpio/Makefile<br>
frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel<br>Load=
ing cache: 100% |##########################################################=
##############################################################| ETA:=A0 00:=
00:00<br>
Loaded 1106 entries from dependency cache.<br><br>OE Build Configuration:<b=
r>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.15.1&quot;<br>TARGET_ARCH=A0=
=A0=A0=A0=A0=A0 =3D &quot;powerpc&quot;<br>TARGET_OS=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;linux-uclibc&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;syrcxx&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.2&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;m32=
 fpu-hard ppce300c3&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;&quo=
t;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=
=A0=A0=A0=A0 <br>meta-syrcxx=A0=A0=A0=A0=A0=A0 =3D &quot;&lt;unknown&gt;:&l=
t;unknown&gt;&quot;<br>
<br>NOTE: Resolving any missing task queue dependencies<br>NOTE: Preparing =
runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Task=
s<br>NOTE: Running task 241 of 664 (ID: 3, /home/frans/poky-denzil-7.0/meta=
/recipes-kernel/linux/<a href=3D"http://linux-yocto_3.2.bb">linux-yocto_3.2=
.bb</a>, do_patch)<br>
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171fa=
a9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_patch: Starte=
d<br>NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec=
171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_patch: S=
ucceeded<br>
NOTE: Running task 648 of 664 (ID: 8, /home/frans/poky-denzil-7.0/meta/reci=
pes-kernel/linux/<a href=3D"http://linux-yocto_3.2.bb">linux-yocto_3.2.bb</=
a>, do_kernel_configme)<br>NOTE: Running task 649 of 664 (ID: 20, /home/fra=
ns/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_=
3.2.bb">linux-yocto_3.2.bb</a>, do_populate_lic)<br>
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171fa=
a9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_populate_lic:=
 Started<br>NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942=
f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81: task do_k=
ernel_configme: Started<br>
<br>

--f46d042ef4f198613e04c60a6de3--
