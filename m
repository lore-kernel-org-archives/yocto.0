Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77501E00C1E; Tue, 11 Dec 2018 01:10:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.44 listed in list.dnswl.org]
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3821CE00B92
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 01:10:41 -0800 (PST)
Received: by mail-ed1-f44.google.com with SMTP id h50so11884483ede.5
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 01:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gCdhvYSGEN1ZGPUhINSw7yKTCBonCzBQwmpZxt6rS9w=;
	b=iuqTKfufYTNA/ra3fPyh3TA8MoOjhe8JRN2nNWVQkKUXsPUpWn7eomcXu8BzfNUJ5O
	7ij/Lmy0k5zaho37cqnJcIRaWbHqd25QvZh3E8ObicGCVK/E9t2cnv63EV/OuPXv8olJ
	ExR1hhILkQkjsZMDVRCyuSfX35/SE/Npn0OGwW48V+51tL8EKh9sscQCNJwnjYODthXI
	xIzNxSpPTZ8UDxS9lT+dUCKJt+yvdNNjJwUvGyM8bMs33MiMR5EjEk6A9W0cY7ZiuoFW
	xYfeRwiYz0CAZDqWJjRdkzT1wtYsvKZMCXYDdAovS7LuqD7r1zTsMRxNmNV8FQuTsLFy
	l4yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gCdhvYSGEN1ZGPUhINSw7yKTCBonCzBQwmpZxt6rS9w=;
	b=A8hCuv6UHV4FlZDmBBNivCkDOUDaZ2Goxgrf7xloCZvMxO9qmkmLQQXdpoGbJMGjtl
	1UgcxiHDN5XGGFvqEivCIkuUfvRi06gRR/3ketBGpegtAW+oKWc7peXCKk0DSrX26ikG
	LNmm8mgmGG57HC66vlgAZnyTbkjFb1iFQYfLUQFF5J+6fvkl1t4OpgAaYBY5reM/wtuC
	vhd7iIUd3j8cdHl+MtqjN8LMd+AG0VsMqXzamwzG12O+t5TtSL8jCdgsJU/fdxgW2itO
	SWlkRQCu5xwkciLODX1ok0mHGrsM+ewN3vUF/08UIAZRE84tRu4bZGvxU7LYbwpbHbPT
	XxeA==
X-Gm-Message-State: AA+aEWbI7uHzP7lyt1WKzKHCECN02zh8E6LE4wFhaKxUNNpRzP1XLi7k
	tOUPPqDLH+3YKJvkB8cgGOFyzvxfHp7ByXVMalUp+xYs
X-Google-Smtp-Source: AFSGD/WGjlB4iyU6SH0BCYr3lr/s6J7ZxoI6indX4M7KNlKZNILa4mZ5Pgd/iJyNWzX7R7K2hVE/EpK+Lfmp/7uBZds=
X-Received: by 2002:a17:906:404a:: with SMTP id
	y10-v6mr11992000ejj.30.1544519440183; 
	Tue, 11 Dec 2018 01:10:40 -0800 (PST)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Tue, 11 Dec 2018 10:10:29 +0100
Message-ID: <CAKpuFdeEtgn9SFt6OsTca7zHFKDc32ORmbn69EO01P+YdybVDw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Do rootfs fail when switch from rpm to deb
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
X-List-Received-Date: Tue, 11 Dec 2018 09:10:42 -0000
Content-Type: multipart/alternative; boundary="00000000000094b533057cbb74a2"

--00000000000094b533057cbb74a2
Content-Type: text/plain; charset="UTF-8"

Hi

We have an recipe based on microservicebus-node npm package created with
devtool.

When we build with PACKAGE_CLASSES = "package_rpm" it builds but  when
switching to package_deb do_rootfs fails.
What can I do to get more information about the packages that is reported
as broken, are there any known issues with npm and deb?

Here is my build output
_______________________________________________________________________________________________________
Build Configuration:
BB_VERSION           = "1.38.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "raspberrypi3"
DISTRO               = "poky"
DISTRO_VERSION       = "2.5.1"
TUNE_FEATURES        = "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp       = "sumo:36d5cee56bd389ecbe66dbfad9e5d57c13b56b95"
meta-oe              = "sumo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
meta-microservicebus
meta-example-msb-rpi = "dev:be586f405a92a563ff49b8adf9ef7a9da5cc7192"
meta-raspberrypi     = "sumo:2d40b000021bc8a9ef7f329ed0ad410f8d227b97"
meta-rauc            = "sumo:40a5890478a50ad80e404be5d9de197dd9a79d44"

NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 2864 of 3398
(/home/jonas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/recipes-core/images/msb-image-rauc.bb:
do_rootfs)
NOTE: recipe msb-image-rauc-1.0-r0: task do_rootfs: Started
ERROR: msb-image-rauc-1.0-r0 do_rootfs: Unable to install packages. Command
'/home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnueabi/msb-image-rauc/1.0-r0/recipe-sysroot-native/usr/bin/apt-get
install --force-yes --allow-unauthenticated microservicebus-node
packagegroup-core-boot psplash-raspberrypi packagegroup-base-extended
packagegroup-core-ssh-openssh run-postinsts' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 microservicebus-node : Depends: microservicebus-node-npm but it is not
going to be installed
                        Depends: microservicebus-node-npm-JSONStream but it
is not installable
                        Depends:
microservicebus-node-npm-JSONStream-jsonparse but it is not installable
                        Depends:
microservicebus-node-npm-JSONStream-through but it is not installable
E: Unable to correct problems, you have held broken packages.

ERROR: msb-image-rauc-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnueabi/msb-image-rauc/1.0-r0/temp/log.do_rootfs.7424
NOTE: recipe msb-image-rauc-1.0-r0: task do_rootfs: Failed
ERROR: Task
(/home/jonas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/recipes-core/images/msb-image-rauc.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3391 tasks of which 3390 didn't need to be
rerun and 1 failed.
_______________________________________________________________________________________________________

/Jonas

--00000000000094b533057cbb74a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi</div><div dir=3D"ltr"><br></div><=
div dir=3D"ltr">We have an recipe based on microservicebus-node npm package=
 created with devtool.<div><br></div><div>When we build with PACKAGE_CLASSE=
S =3D &quot;package_rpm&quot; it builds but=C2=A0 when switching to package=
_deb do_rootfs fails.=C2=A0</div><div>What can I do to get more information=
 about the packages that is reported as broken, are there any known issues =
with npm and deb?</div><div><br></div><div>Here is my build output</div><di=
v>_________________________________________________________________________=
______________________________</div><div><div>Build Configuration:</div><di=
v>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.38.0&quot;=
</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86=
_64-linux&quot;</div><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;uni=
versal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;raspberrypi3&quot;</div><div>DIST=
RO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quo=
t;</div><div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5.1&quot;=
</div><div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7ve v=
fp thumb neon vfpv4 callconvention-hard cortexa7&quot;</div><div>TARGET_FPU=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;</div><div>met=
a=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>m=
eta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-yoct=
o-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:36d5cee56bd389ecbe66dbfad9e5=
d57c13b56b95&quot;</div><div>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;sumo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966&quot;</d=
iv><div>meta-microservicebus=C2=A0</div><div>meta-example-msb-rpi =3D &quot=
;dev:be586f405a92a563ff49b8adf9ef7a9da5cc7192&quot;</div><div>meta-raspberr=
ypi=C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:2d40b000021bc8a9ef7f329ed0ad410f8d227=
b97&quot;</div><div>meta-rauc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D =
&quot;sumo:40a5890478a50ad80e404be5d9de197dd9a79d44&quot;</div><div><br></d=
iv><div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue T=
asks</div><div>NOTE: Running task 2864 of 3398 (/home/jonas/git/devtool/met=
a-microservicebus-node/meta-example-msb-rpi/recipes-core/images/msb-image-r=
auc.bb:do_rootfs)</div><div>NOTE: recipe msb-image-rauc-1.0-r0: task do_roo=
tfs: Started</div><div>ERROR: msb-image-rauc-1.0-r0 do_rootfs: Unable to in=
stall packages. Command &#39;/home/jonas/git/devtool/build-deb/tmp/work/ras=
pberrypi3-poky-linux-gnueabi/msb-image-rauc/1.0-r0/recipe-sysroot-native/us=
r/bin/apt-get=C2=A0 install --force-yes --allow-unauthenticated microservic=
ebus-node packagegroup-core-boot psplash-raspberrypi packagegroup-base-exte=
nded packagegroup-core-ssh-openssh run-postinsts&#39; returned 100:</div><d=
iv>Reading package lists...</div><div>Building dependency tree...</div><div=
>Reading state information...</div><div>Some packages could not be installe=
d. This may mean that you have</div><div>requested an impossible situation =
or if you are using the unstable</div><div>distribution that some required =
packages have not yet been created</div><div>or been moved out of Incoming.=
</div><div>The following information may help to resolve the situation:</di=
v><div><br></div><div>The following packages have unmet dependencies:</div>=
<div>=C2=A0microservicebus-node : Depends: microservicebus-node-npm but it =
is not going to be installed</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Depends: microservicebus-n=
ode-npm-JSONStream but it is not installable</div><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Depends: mi=
croservicebus-node-npm-JSONStream-jsonparse but it is not installable</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Depends: microservicebus-node-npm-JSONStream-through but it i=
s not installable</div><div>E: Unable to correct problems, you have held br=
oken packages.</div><div><br></div><div>ERROR: msb-image-rauc-1.0-r0 do_roo=
tfs: Function failed: do_rootfs</div><div>ERROR: Logfile of failure stored =
in: /home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnue=
abi/msb-image-rauc/1.0-r0/temp/log.do_rootfs.7424</div><div>NOTE: recipe ms=
b-image-rauc-1.0-r0: task do_rootfs: Failed</div><div>ERROR: Task (/home/jo=
nas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/recipes-core=
/images/msb-image-rauc.bb:do_rootfs) failed with exit code &#39;1&#39;</div=
><div>NOTE: Tasks Summary: Attempted 3391 tasks of which 3390 didn&#39;t ne=
ed to be rerun and 1 failed.</div></div><div>______________________________=
_________________________________________________________________________=
=C2=A0=C2=A0<br></div><div><br></div><div>/Jonas<br></div></div></div></div=
>

--00000000000094b533057cbb74a2--
