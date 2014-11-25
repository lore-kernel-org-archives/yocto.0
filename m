Return-Path: <tritini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE250E0085F; Tue, 25 Nov 2014 07:52:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tritini[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22313E0084A
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 07:52:06 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id b13so1238005wgh.31
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 07:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7YY+l0k8RqA6dUTTBc12Y1spU+T6bZRRUzSQOmwwfuI=;
	b=aMqFtDLSsyB7IHmyFAapgpAA8DlcMGECF0n+bOc0j8WnNlmJGB8XiYKqJEORYrcmL9
	0LhUnB7jVaMYDFdNapBjxqDlR0iyCqU/32bsSuEqSjqS3OV0PBWP5lablBN57t8fDQ2X
	vG2YiU/PPPkNo7BTqzTYpqE5PU8cbgcyDzquVKJ3fWE2stVKx+GScvYve+Fz5E8Z07go
	tTWdPvUt0yPLdSaIguuWldvJ9ofOuMQejclozKgrYEd5OC/VYFTV+5BPbfyRY1xxJDqe
	FCIbet+4XTp1LU2OWcN/Js2j7cnxTkjobs2Lt1F7y7FsKo6RuVDMH3YkK5ufQYnEGm22
	xiTQ==
MIME-Version: 1.0
X-Received: by 10.180.98.170 with SMTP id ej10mr32436868wib.74.1416930725022; 
	Tue, 25 Nov 2014 07:52:05 -0800 (PST)
Received: by 10.216.45.81 with HTTP; Tue, 25 Nov 2014 07:52:05 -0800 (PST)
Date: Tue, 25 Nov 2014 16:52:05 +0100
Message-ID: <CAAkv465A4n-xaP6McmAHsRLkDQNpuKyGAuAiX7ifwgqkgMiqeQ@mail.gmail.com>
From: Tran TriTin <tritini@gmail.com>
To: yocto@yoctoproject.org
Subject: Meta-Raspberry and Meta-Oracle-Java: ERROR
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
X-List-Received-Date: Tue, 25 Nov 2014 15:52:15 -0000
Content-Type: multipart/alternative; boundary=f46d044288888a11960508b0e4ad

--f46d044288888a11960508b0e4ad
Content-Type: text/plain; charset=UTF-8

Hi all,

i am newbie to Yocto. Last days i tried to build an image for my
RaspberryPi with Meta-Raspberry and Meta-Oracle-Java but it did not work.
This is error i received. Can anyone help me?
Thanks in advance.






































*[tvtritin@g-105-1 build-raspberry-java]$ bitbake -k rpi-basic-imageLoading
cache: 100% |###########################################| ETA:
00:00:00Loaded 1320 entries from dependency cache.NOTE: Resolving any
missing task queue dependenciesBuild Configuration:BB_VERSION        =
"1.24.0"BUILD_SYS         = "x86_64-linux"NATIVELSBSTRING   =
"CentOS-6.5"TARGET_SYS        = "arm-poky-linux-gnueabi"MACHINE           =
"raspberrypi"DISTRO            = "poky"DISTRO_VERSION    =
"1.7"TUNE_FEATURES     = "arm armv6 vfp"TARGET_FPU        =
"vfp"meta              meta-yocto        meta-yocto-bsp
meta-raspberrypi  =
"dizzy:db7f4f31c915a59c502cac4be905d23df5246b3d"meta-oracle-java  =
"master:d5256fe7ae592f19ffe0619c093b333eb9f92a93"NOTE: Preparing
runqueueNOTE: Executing SetScene TasksNOTE: Executing RunQueue TasksERROR:
Unable to install packages. Command
'/home/tvtritin/DemoYOCTO/poky1.7/build-raspberry-java/tmp/sysroots/x86_64-linux/usr/bin/smart
--quiet
--data-dir=/home/tvtritin/DemoYOCTO/poky1.7/build-raspberry-java/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.0-r0/rootfs/var/lib/smart
install -y packagegroup-core-ssh-dropbear@all run-postinsts@all
psplash-raspberrypi@armv6_vfp kernel-modules@raspberrypi
oracle-jse-ejre-arm-vfp-hflt-client-headless@armv6_vfp
packagegroup-core-boot@raspberrypi' returned 1:error: Can't install
oracle-jse-ejre-arm-vfp-hflt-client-headless-1.7.0-u71r0@armv6_vfp: no
package provides ld-linux-armhf.so.3(GLIBC_2.4)ERROR: Function failed:
do_rootfsERROR: Logfile of failure stored in:
/home/tvtritin/DemoYOCTO/poky1.7/build-raspberry-java/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.0-r0/temp/log.do_rootfs.17752ERROR:
Task 7
(/home/tvtritin/DemoYOCTO/poky1.7/meta-raspberrypi/recipes-core/images/rpi-basic-image.bb
<http://rpi-basic-image.bb>, do_rootfs) failed with exit code '1'NOTE:
Tasks Summary: Attempted 2074 tasks of which 2073 didn't need to be rerun
and 1 failed.No currently running tasks (2073 of 2075)Summary: 1 task
failed:
/home/tvtritin/DemoYOCTO/poky1.7/meta-raspberrypi/recipes-core/images/rpi-basic-image.bb
<http://rpi-basic-image.bb>, do_rootfsSummary: There were 2 ERROR messages
shown, returning a non-zero exit code.*

--f46d044288888a11960508b0e4ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi all,<br><br></div>i am newbie to Yocto. Last =
days i tried to build an image for my RaspberryPi with Meta-Raspberry and M=
eta-Oracle-Java but it did not work. This is error i received. Can anyone h=
elp me?<br></div>Thanks in advance.<br><div><br><i>[tvtritin@g-105-1 build-=
raspberry-java]$ bitbake -k rpi-basic-image<br>Loading cache: 100% |#######=
####################################| ETA:=C2=A0 00:00:00<br>Loaded 1320 en=
tries from dependency cache.<br>NOTE: Resolving any missing task queue depe=
ndencies<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;1.24.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=
=C2=A0=C2=A0 =3D &quot;CentOS-6.5&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;raspber=
rypi&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &=
quot;1.7&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv6=
 vfp&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;vfp&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 <br>meta-raspberrypi=C2=A0 =3D =
&quot;dizzy:db7f4f31c915a59c502cac4be905d23df5246b3d&quot;<br>meta-oracle-j=
ava=C2=A0 =3D &quot;master:d5256fe7ae592f19ffe0619c093b333eb9f92a93&quot;<b=
r><br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: E=
xecuting RunQueue Tasks<br>ERROR: Unable to install packages. Command &#39;=
/home/tvtritin/DemoYOCTO/poky1.7/build-raspberry-java/tmp/sysroots/x86_64-l=
inux/usr/bin/smart --quiet --data-dir=3D/home/tvtritin/DemoYOCTO/poky1.7/bu=
ild-raspberry-java/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/=
1.0-r0/rootfs/var/lib/smart install -y packagegroup-core-ssh-dropbear@all r=
un-postinsts@all psplash-raspberrypi@armv6_vfp kernel-modules@raspberrypi o=
racle-jse-ejre-arm-vfp-hflt-client-headless@armv6_vfp packagegroup-core-boo=
t@raspberrypi&#39; returned 1:<br>error: Can&#39;t install oracle-jse-ejre-=
arm-vfp-hflt-client-headless-1.7.0-u71r0@armv6_vfp: no package provides ld-=
linux-armhf.so.3(GLIBC_2.4)<br><br><br>ERROR: Function failed: do_rootfs<br=
>ERROR: Logfile of failure stored in: /home/tvtritin/DemoYOCTO/poky1.7/buil=
d-raspberry-java/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.=
0-r0/temp/log.do_rootfs.17752<br>ERROR: Task 7 (/home/tvtritin/DemoYOCTO/po=
ky1.7/meta-raspberrypi/recipes-core/images/<a href=3D"http://rpi-basic-imag=
e.bb">rpi-basic-image.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<=
br>NOTE: Tasks Summary: Attempted 2074 tasks of which 2073 didn&#39;t need =
to be rerun and 1 failed.<br>No currently running tasks (2073 of 2075)<br><=
br>Summary: 1 task failed:<br>=C2=A0 /home/tvtritin/DemoYOCTO/poky1.7/meta-=
raspberrypi/recipes-core/images/<a href=3D"http://rpi-basic-image.bb">rpi-b=
asic-image.bb</a>, do_rootfs<br>Summary: There were 2 ERROR messages shown,=
 returning a non-zero exit code.<br></i><br></div></div>

--f46d044288888a11960508b0e4ad--
