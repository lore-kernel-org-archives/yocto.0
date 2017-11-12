Return-Path: <89dragon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87B50E00D4E; Sun, 12 Nov 2017 00:18:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (89dragon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A05E00D3A
	for <yocto@yoctoproject.org>; Sun, 12 Nov 2017 00:18:46 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id r68so9442743wmr.1
	for <yocto@yoctoproject.org>; Sun, 12 Nov 2017 00:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=D8b8xOwWV3uA6Ofq2oXbU1kBSxl2r+uyb/uqf0ogi8U=;
	b=FeNpa6xzVjYL3Xm9PK8vmkHBkiRlm4co3i4KRJM4YP/K+la6DZM6PzXw3wPVMZmbrZ
	QwWXLWzDfD8xyWWSefO683jIbxooRgOzTqiF6OHFbjB0EFvDVPjysUMvodGPkcrGrHWZ
	wfz5v3Gmm34pQdN3bPZdixocbqzXw3wGgydwKk9BstRRl9so0QkPbYlAEmx5DJ8GbHKA
	gQemPVZOrn3v/i0AyltqQvmG05J+zCGRVir45apqx6DGa0sdZztyYVaPc8AZuUDJcXFb
	KQad/avibJ08t/SzOKc+yBVhUow9zerIJSnrJ7QJTohrDMs6Bxp9/Uf3XOo0uc0XtwnL
	5xZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=D8b8xOwWV3uA6Ofq2oXbU1kBSxl2r+uyb/uqf0ogi8U=;
	b=qAhITsorGeaj228598Xr0I0edxshlKm4XTDjkJgI8lbUOym29bxgqCJFqWN/L2NaD0
	jN67dK+Ch7sbjbxu40lWrSPydulMuWbtC9UgomEnzeS1MVc03YDXYDgSdgZ8k4IiA+C5
	waGj38H8PJHcNVXmI2ZByc7zevcBiy6OOHKEt8URsXbpp/KEsOkfC5yBFRYxdzyoaUmx
	sYBfQGSPj+D5s+Lfxf8Buke8w/m/TLzsqjRAKcnwXUuiR7OAOAgHWpXvujF3RaKcejEF
	0t3EDrK/1OhkVIRdzbrjPKS6gm/h1V9EFwKGkU01NQMJFk2aKHXcTpXuR/ifmOQyQsh8
	ZvYQ==
X-Gm-Message-State: AJaThX77sIvk2MKnDBHNAxoalIoue51usHUYJ5M8ZCp2ZPiskc8yA8kY
	icVIalfkp0HaQ3ZxdHg3Sq5/aVE6IIOAqwvVOO1dpQ==
X-Google-Smtp-Source: AGs4zMZYHQffNJ0SyGkdids4B93uU9Nc7PouC4LCM76SMo3No7c+B5noVEj456fJwn5bqG3pw1qejnKR/mEpP9vzXhE=
X-Received: by 10.28.137.139 with SMTP id l133mr3422367wmd.123.1510474725612; 
	Sun, 12 Nov 2017 00:18:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.139.209 with HTTP; Sun, 12 Nov 2017 00:18:45 -0800 (PST)
From: Chris Hughes <89dragon@gmail.com>
Date: Sun, 12 Nov 2017 01:18:45 -0700
Message-ID: <CAG8GRtgq1qPe78V+fu-C6Mb7WZ_+B6_8r9Z0u594PLNE0BWR4w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Bitbake fails when enabling tools-testapps
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
X-List-Received-Date: Sun, 12 Nov 2017 08:18:48 -0000
Content-Type: multipart/alternative; boundary="001a1144490a7660fd055dc4cd17"

--001a1144490a7660fd055dc4cd17
Content-Type: text/plain; charset="UTF-8"

Hoping this is the right place to get help with the following issue.

I'm using bitbake to build a custom image of the intel-aero / yocto sources.

Having enabled the extra image feature 'tools-testapp' I'm given an error
saying nothing provides ltp. I've tried including ltp as a dependency in
many various places to try and get this build to work, but have so far been
unsuccessful. Any help would be much appreciated.

The full log is as follows

bitbake intel-aero-image
Loading cache: 100%
|#############################################################################################|
Time: 0:00:00
Loaded 2781 entries from dependency cache.
Parsing recipes: 100%
|###########################################################################################|
Time: 0:00:02
Parsing of 2021 .bb files complete (2014 cached, 7 parsed). 2786 targets,
145 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "intel-aero"
DISTRO            = "poky-aero"
DISTRO_VERSION    = "1.6.0"
TUNE_FEATURES     = "m64 corei7"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "HEAD:50cc15335ebcdfa2a2fc52c11fa01695dfdb9e26"
meta-oe
meta-python
meta-networking
meta-filesystems  = "HEAD:b2ce52334cf88e07f703cf25ced92302edd5b0e9"
meta-virtualization = "HEAD:88277c84962e9d07ec777896a0ca8bd7db9ff5e2"
meta-intel        = "HEAD:4cd63f57820ce0e4ebd598251d3a13b5a4b9b791"
meta-intel-realsense = "HEAD:211ce75af387b65fe894f13b3468148d2b9ab23d"
meta-intel-aero-base = "HEAD:0c9f7a359c71f3c8b9f47efede194da51ccaefd7"
meta-intel-aero   = "HEAD:a96a8fed779d6c02119ad9965e66bd051ff75a07"
workspace         = "HEAD:50cc15335ebcdfa2a2fc52c11fa01695dfdb9e26"

Initialising tasks: 100%
|########################################################################################|
Time: 0:00:19
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: intel-aero-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
'/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c
/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/oe-rootfs-repo
--installroot=/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/rootfs
--setopt=logdir=/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/temp
-x busybox-syslog,nfs-utils,at,tcp-wrappers,ed,libacpi,libnss-mdns
--nogpgcheck install locale-base-en-us locale-base-en-gb initscripts-aero
packagegroup-core-tools-testapps dmidecode cockpit-docker
packagegroup-airmap packagegroup-core-ssh-openssh camera-streaming-daemon
gstreamer1.0-meta-base aero-bios aero-http-server packagegroup-docker
packagegroup-core-tools gstreamer1.0-plugins-good
fix-cameras-enumeration-order ltp valgrind cockpit ppp notify-led
packagegroup-base-extended gstreamer1.0-plugins-base cockpit-dashboard
jam-stapl run-postinsts packagegroup-core-x11-base ardupilot-fw
aero-cockpit-plugins librealsense1 packagegroup-core-standalone-sdk-target
movidius packagegroup-core-sdk gstreamer1.0-plugins-bad intel-aero-repo
libva-intel-driver packagegroup-core-tools-debug rpm packagegroup-px4
openssh-sftp-server dnf resolvconf gstreamer1.0-rtsp-server va-intel
packagegroup-core-boot modemmanager librealsense-graphical-examples
gstreamer1.0-vaapi coav-control packagegroup-core-buildessential wget
cockpit-ws psplash mavlink-router os-release rsync libva rng-tools
packagegroup-core-full-cmdline cockpit-bridge optical-flow libcoav0
networkmanager px4-fw hostapd cockpit-system gstreamer1.0 opencv' returned
1:
Added oe-repo repo from
/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Sun Nov 12 07:47:41 2017 UTC.
Error:
 Problem 1: conflicting requests
  - nothing provides at needed by ltp-20170116-r0.corei7_64
 Problem 2: package packagegroup-core-tools-testapps-1.0-r2.intel_aero
requires ltp, but none of the providers can be installed
  - conflicting requests
  - nothing provides at needed by ltp-20170116-r0.corei7_64
(try to add '--allowerasing' to command line to replace conflicting
packages)

ERROR: intel-aero-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/temp/log.do_rootfs.14579
ERROR: Task
(/home/qb89dragon/intel_aero/poky/../meta-intel-aero/recipes-core/images/intel-aero-image.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 8911 tasks of which 8910 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/qb89dragon/intel_aero/poky/../meta-intel-aero/recipes-core/images/intel-aero-image.bb:
do_rootfs
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--001a1144490a7660fd055dc4cd17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hoping this is the right place to get help with the follow=
ing issue.<div><br></div><div>I&#39;m using bitbake to build a custom image=
 of the intel-aero / yocto sources.</div><div><br></div><div>Having enabled=
 the extra image feature &#39;tools-testapp&#39; I&#39;m given an error say=
ing nothing provides ltp. I&#39;ve tried including ltp as a dependency in m=
any various places to try and get this build to work, but have so far been =
unsuccessful. Any help would be much appreciated.</div><div><br></div><div>=
The full log is as follows</div><div><br></div><div><div>bitbake intel-aero=
-image</div><div>Loading cache: 100% |#####################################=
########################################################| Time: 0:00:00</di=
v><div>Loaded 2781 entries from dependency cache.</div><div>Parsing recipes=
: 100% |###################################################################=
########################| Time: 0:00:02</div><div>Parsing of 2021 .bb files=
 complete (2014 cached, 7 parsed). 2786 targets, 145 skipped, 1 masked, 0 e=
rrors.</div><div>NOTE: Resolving any missing task queue dependencies</div><=
div><br></div><div>Build Configuration:</div><div>BB_VERSION=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;1.34.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=
=A0 =C2=A0=3D &quot;universal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-poky-linux&quot;</div><div>MACHINE=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;intel-aero&quot;</div><div>DISTRO=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky-aero&quot;</div><div>=
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.6.0&quot;</div><div>TUNE_FEATURES=
=C2=A0 =C2=A0 =C2=A0=3D &quot;m64 corei7&quot;</div><div>TARGET_FPU=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-poky=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div><div>meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;HEAD:50cc1533=
5ebcdfa2a2fc52c11fa01695dfdb9e26&quot;</div><div>meta-oe=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0</=
div><div>meta-networking=C2=A0 =C2=A0</div><div>meta-filesystems=C2=A0 =3D =
&quot;HEAD:b2ce52334cf88e07f703cf25ced92302edd5b0e9&quot;</div><div>meta-vi=
rtualization =3D &quot;HEAD:88277c84962e9d07ec777896a0ca8bd7db9ff5e2&quot;<=
/div><div>meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:4cd63f57820c=
e0e4ebd598251d3a13b5a4b9b791&quot;</div><div>meta-intel-realsense =3D &quot=
;HEAD:211ce75af387b65fe894f13b3468148d2b9ab23d&quot;</div><div>meta-intel-a=
ero-base =3D &quot;HEAD:0c9f7a359c71f3c8b9f47efede194da51ccaefd7&quot;</div=
><div>meta-intel-aero=C2=A0 =C2=A0=3D &quot;HEAD:a96a8fed779d6c02119ad9965e=
66bd051ff75a07&quot;</div><div>workspace=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;HEAD:50cc15335ebcdfa2a2fc52c11fa01695dfdb9e26&quot;</div><div><br=
></div><div>Initialising tasks: 100% |#####################################=
###################################################| Time: 0:00:19</div><di=
v>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue Tasks</=
div><div>ERROR: intel-aero-image-1.0-r0 do_rootfs: Could not invoke dnf. Co=
mmand &#39;/home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-=
linux/intel-aero-image/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /home=
/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero=
-image/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/qb89drago=
n/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0=
-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-repo,/home/qb89dragon/intel_=
aero/poky/build/tmp/work/intel_aero-poky-linux/intel-aero-image/1.0-r0/oe-r=
ootfs-repo --installroot=3D/home/qb89dragon/intel_aero/poky/build/tmp/work/=
intel_aero-poky-linux/intel-aero-image/1.0-r0/rootfs --setopt=3Dlogdir=3D/h=
ome/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-poky-linux/intel-a=
ero-image/1.0-r0/temp -x busybox-syslog,nfs-utils,at,tcp-wrappers,ed,libacp=
i,libnss-mdns --nogpgcheck install locale-base-en-us locale-base-en-gb init=
scripts-aero packagegroup-core-tools-testapps dmidecode cockpit-docker pack=
agegroup-airmap packagegroup-core-ssh-openssh camera-streaming-daemon gstre=
amer1.0-meta-base aero-bios aero-http-server packagegroup-docker packagegro=
up-core-tools gstreamer1.0-plugins-good fix-cameras-enumeration-order ltp v=
algrind cockpit ppp notify-led packagegroup-base-extended gstreamer1.0-plug=
ins-base cockpit-dashboard jam-stapl run-postinsts packagegroup-core-x11-ba=
se ardupilot-fw aero-cockpit-plugins librealsense1 packagegroup-core-standa=
lone-sdk-target movidius packagegroup-core-sdk gstreamer1.0-plugins-bad int=
el-aero-repo libva-intel-driver packagegroup-core-tools-debug rpm packagegr=
oup-px4 openssh-sftp-server dnf resolvconf gstreamer1.0-rtsp-server va-inte=
l packagegroup-core-boot modemmanager librealsense-graphical-examples gstre=
amer1.0-vaapi coav-control packagegroup-core-buildessential wget cockpit-ws=
 psplash mavlink-router os-release rsync libva rng-tools packagegroup-core-=
full-cmdline cockpit-bridge optical-flow libcoav0 networkmanager px4-fw hos=
tapd cockpit-system gstreamer1.0 opencv&#39; returned 1:</div><div>Added oe=
-repo repo from /home/qb89dragon/intel_aero/poky/build/tmp/work/intel_aero-=
poky-linux/intel-aero-image/1.0-r0/oe-rootfs-repo</div><div>Last metadata e=
xpiration check: 0:00:00 ago on Sun Nov 12 07:47:41 2017 UTC.</div><div>Err=
or:=C2=A0</div><div>=C2=A0Problem 1: conflicting requests</div><div>=C2=A0 =
- nothing provides at needed by ltp-20170116-r0.corei7_64</div><div>=C2=A0P=
roblem 2: package packagegroup-core-tools-testapps-1.0-r2.intel_aero requir=
es ltp, but none of the providers can be installed</div><div>=C2=A0 - confl=
icting requests</div><div>=C2=A0 - nothing provides at needed by ltp-201701=
16-r0.corei7_64</div><div>(try to add &#39;--allowerasing&#39; to command l=
ine to replace conflicting packages)</div><div><br></div><div>ERROR: intel-=
aero-image-1.0-r0 do_rootfs: Function failed: do_rootfs</div><div>ERROR: Lo=
gfile of failure stored in: /home/qb89dragon/intel_aero/poky/build/tmp/work=
/intel_aero-poky-linux/intel-aero-image/1.0-r0/temp/log.do_rootfs.14579</di=
v><div>ERROR: Task (/home/qb89dragon/intel_aero/poky/../meta-intel-aero/rec=
ipes-core/images/intel-aero-image.bb:do_rootfs) failed with exit code &#39;=
1&#39;</div><div>NOTE: Tasks Summary: Attempted 8911 tasks of which 8910 di=
dn&#39;t need to be rerun and 1 failed.</div><div><br></div><div>Summary: 1=
 task failed:</div><div>=C2=A0 /home/qb89dragon/intel_aero/poky/../meta-int=
el-aero/recipes-core/images/intel-aero-image.bb:do_rootfs</div><div>Summary=
: There were 2 ERROR messages shown, returning a non-zero exit code.</div><=
/div><div><br></div></div>

--001a1144490a7660fd055dc4cd17--
