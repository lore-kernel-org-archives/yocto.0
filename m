Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A60CE00524
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 16:21:48 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id p27so2600060qat.14
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 16:21:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type:x-gm-message-state;
	bh=oKMBUmSJmdkK5EQL81KxtvkgEHL1U2Yic1f8tC5Zudo=;
	b=BZ3sscV+jJWNId+MWzxjulpm49vkycLWB5xrqMLvIHFVGKd94qLGG5vxJaDA8MU72v
	sZtRaugOL60G56LD3MBS9eGpcTkCWFX43p8GgIZ8n7ZKTv2tbLoCBHhBlwHXeF2AeOM5
	V3glPVXDqbZ3vMo1OnytTa8BWGE+/TYSRcB1S/iJPjh4mqzqqyGgINNZm46Ret4z8cfG
	OKR7892t5kimAgjsI9BuWOFEduudc5ezmeheD2TiEysdFG2Ct8yyNzAG/VWEtovB9lcI
	UJUgOISifJKqCbwICvexr2MS630BTtBQ7TI+A9CpO8RTeXAYHOzBxxKzhfiUKs0Cw+X8
	QN7g==
MIME-Version: 1.0
Received: by 10.224.78.81 with SMTP id j17mr9911095qak.56.1349306507563; Wed,
	03 Oct 2012 16:21:47 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Wed, 3 Oct 2012 16:21:47 -0700 (PDT)
Date: Wed, 3 Oct 2012 16:21:47 -0700
X-Google-Sender-Auth: Hk6HJ2zyGvTSt66XSeH9g9p2oXs
Message-ID: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQngp+gtyEiBrC9hZHbm+vMy22bG5B11j5F9eWhb+lvWmCifKtL9d72+xmKeGeb3JJY5PyMQ
Subject: [Poky] Baking core-image-minimal with Poky from Master fails with libffi dependency
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
X-List-Received-Date: Wed, 03 Oct 2012 23:21:48 -0000
Content-Type: multipart/alternative; boundary=20cf3071d14e13929e04cb2fe7db

--20cf3071d14e13929e04cb2fe7db
Content-Type: text/plain; charset=ISO-8859-1

I checked out Poky from Master and tried to build core-image-minimal.
do_rootfs failed on the libffi dependency [1]. Is that known/expected?

:rjs

--------

[1]

bitbake core-image-minimal
Loading cache: 100%
|################################################################################|
ETA:  00:00:00
Loaded 1131 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2+snapshot-20121003"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:09aaad16be178bd675750aa6cfe7a373d7c9a8a6"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_rootfs (see
/data/Develop/yocto-develop/x86/tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.29559
for further information)
ERROR: Logfile of failure stored in:
/data/Develop/yocto-develop/x86/tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.29559
Log data follows:
| DEBUG: Executing shell function do_rootfs
| Generating solve db for
/data/Develop/yocto-develop/x86/tmp/deploy/rpm/qemux86...
| Generating solve db for
/data/Develop/yocto-develop/x86/tmp/deploy/rpm/i586...
| Generating solve db for
/data/Develop/yocto-develop/x86/tmp/deploy/rpm/all...
| Generating solve db for
/data/Develop/yocto-develop/x86/tmp/deploy/rpm/all...
| Processing packagegroup-core-tools-profile...
| Processing packagegroup-core-boot...
| Processing packagegroup-core-tools-testapps...
| Processing packagegroup-core-tools-debug...
| error: Failed dependencies:
|       libffi.so.5 is needed by lttng-viewer-0.12.38-r3.i586
|       libffi.so.5 is needed by
clutter-box2d-0.12.1+git1+de5452e56b537a11fd7f9453d048ff4b4793b5a2-r1.qemux86
|       libffi.so.5 is needed by
libowl-av0-0.1+git1+03030c41ea578cfa74a2ffceb875675b248318ae-r3.i586
|       libffi.so.5 is needed by libclutter-glx-1.0-0-1.8.4-r2.i586
| ERROR: Function failed: do_rootfs (see
/data/Develop/yocto-develop/x86/tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.29559
for further information)
ERROR: Task 7 (/data/Develop/yocto-develop/poky/meta/recipes-core/images/
core-image-minimal.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3891 tasks of which 3890 didn't need to be
rerun and 1 failed.
No currently running tasks (3890 of 3892)

Summary: 1 task failed:
  /data/Develop/yocto-develop/poky/meta/recipes-core/images/
core-image-minimal.bb, do_rootfs
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--20cf3071d14e13929e04cb2fe7db
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I checked out Poky from Master and tried to build core-image-minimal. =
do_rootfs failed on the libffi dependency [1]. Is that known/expected?</div=
><div><br></div><div>:rjs</div><div><br></div><div>--------</div><div><br>
</div><div>[1]</div><div><br></div><div>bitbake core-image-minimal</div><di=
v>Loading cache: 100% |####################################################=
############################| ETA: =A000:00:00</div><div>Loaded 1131 entrie=
s from dependency cache.</div>
<div><br></div><div>Build Configuration:</div><div>BB_VERSION =A0 =A0 =A0 =
=A0=3D &quot;1.16.0&quot;</div><div>TARGET_ARCH =A0 =A0 =A0 =3D &quot;i586&=
quot;</div><div>TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux&quot;</div><div>M=
ACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;qemux86&quot;</div>
<div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VE=
RSION =A0 =A0=3D &quot;1.2+snapshot-20121003&quot;</div><div>TUNE_FEATURES =
=A0 =A0 =3D &quot;m32 i586&quot;</div><div>TARGET_FPU =A0 =A0 =A0 =A0=3D &q=
uot;&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>
<div>meta-yocto =A0 =A0 =A0 =A0</div><div>meta-yocto-bsp =A0 =A0=3D &quot;m=
aster:09aaad16be178bd675750aa6cfe7a373d7c9a8a6&quot;</div><div><br></div><d=
iv>NOTE: Resolving any missing task queue dependencies</div><div>NOTE: Prep=
aring runqueue</div>
<div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue Task=
s</div><div>ERROR: Function failed: do_rootfs (see /data/Develop/yocto-deve=
lop/x86/tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_r=
ootfs.29559 for further information)</div>
<div>ERROR: Logfile of failure stored in: /data/Develop/yocto-develop/x86/t=
mp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.295=
59</div><div>Log data follows:</div><div>| DEBUG: Executing shell function =
do_rootfs</div>
<div>| Generating solve db for /data/Develop/yocto-develop/x86/tmp/deploy/r=
pm/qemux86...</div><div>| Generating solve db for /data/Develop/yocto-devel=
op/x86/tmp/deploy/rpm/i586...</div><div>| Generating solve db for /data/Dev=
elop/yocto-develop/x86/tmp/deploy/rpm/all...</div>
<div>| Generating solve db for /data/Develop/yocto-develop/x86/tmp/deploy/r=
pm/all...</div><div>| Processing packagegroup-core-tools-profile...</div><d=
iv>| Processing packagegroup-core-boot...</div><div>| Processing packagegro=
up-core-tools-testapps...</div>
<div>| Processing packagegroup-core-tools-debug...</div><div>| error: Faile=
d dependencies:</div><div>| =A0 =A0 =A0 libffi.so.5 is needed by lttng-view=
er-0.12.38-r3.i586</div><div>| =A0 =A0 =A0 libffi.so.5 is needed by clutter=
-box2d-0.12.1+git1+de5452e56b537a11fd7f9453d048ff4b4793b5a2-r1.qemux86</div=
>
<div>| =A0 =A0 =A0 libffi.so.5 is needed by libowl-av0-0.1+git1+03030c41ea5=
78cfa74a2ffceb875675b248318ae-r3.i586</div><div>| =A0 =A0 =A0 libffi.so.5 i=
s needed by libclutter-glx-1.0-0-1.8.4-r2.i586</div><div>| ERROR: Function =
failed: do_rootfs (see /data/Develop/yocto-develop/x86/tmp/work/qemux86-pok=
y-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.29559 for further info=
rmation)</div>
<div>ERROR: Task 7 (/data/Develop/yocto-develop/poky/meta/recipes-core/imag=
es/<a href=3D"http://core-image-minimal.bb">core-image-minimal.bb</a>, do_r=
ootfs) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Att=
empted 3891 tasks of which 3890 didn&#39;t need to be rerun and 1 failed.</=
div>
<div>No currently running tasks (3890 of 3892)</div><div><br></div><div>Sum=
mary: 1 task failed:</div><div>=A0 /data/Develop/yocto-develop/poky/meta/re=
cipes-core/images/<a href=3D"http://core-image-minimal.bb">core-image-minim=
al.bb</a>, do_rootfs</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div><div><br></div>

--20cf3071d14e13929e04cb2fe7db--
