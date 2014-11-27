Return-Path: <tritini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C901E0087D; Thu, 27 Nov 2014 00:10:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tritini[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2854CE007BA
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 00:10:40 -0800 (PST)
Received: by mail-wg0-f47.google.com with SMTP id n12so5710134wgh.6
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 00:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tIKh4NuG4kdyPHZuRxng/Z/3BXEGjP7f6YL1noAKNsw=;
	b=jJIXv0VypB6rza76j8Ro72s+NCeRPmw+lRE/oQGi8noWmLfs1BAFP5xCGYfU0T8EH/
	QoTK2gqBpxcRRel3EOQu7JxbmrpM94YAVvXweDS9+NfF0OHwIJNjfq9t0YzlfazRtjwX
	KJJRejdsMhieGJcy9s/YQwW4yIEYuRTzaUn+4FVzD01Zn1QyOuElmlB2OogfSSg5SL0M
	KdDOaCrIy9P0Gi2mOCx3UOh9LMJ3uR99QPVWlGs2YIkVDYd0vxk5XNfDJQguJRdGhc9K
	Nvjwwiwh68b2KhUifLh/jOo29PwWj74tQuSQFwXNF3fhCMFUNIQvAnpJOAUHpwO7fy7X
	VRRw==
MIME-Version: 1.0
X-Received: by 10.180.74.68 with SMTP id r4mr47611563wiv.33.1417075839673;
	Thu, 27 Nov 2014 00:10:39 -0800 (PST)
Received: by 10.216.45.81 with HTTP; Thu, 27 Nov 2014 00:10:39 -0800 (PST)
Date: Thu, 27 Nov 2014 09:10:39 +0100
Message-ID: <CAAkv465EVKpnrB3DBGLkxzgBr6z1qpiw66L-ttQ82bo9Lq0c7A@mail.gmail.com>
From: Tran TriTin <tritini@gmail.com>
To: yocto@yoctoproject.org
Subject: Install Java on Core-Image-Sato-Sdk
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
X-List-Received-Date: Thu, 27 Nov 2014 08:10:50 -0000
Content-Type: multipart/alternative; boundary=f46d043d67e50b2c000508d2aebc

--f46d043d67e50b2c000508d2aebc
Content-Type: text/plain; charset=UTF-8

Hi,

i tried to install Java (meta-oracle-java) on Core-image-Sato-sdk, but i
always received this following error. Please help me

ERROR: runstrip: ''i586-poky-linux-strip' --remove-section=.comment
--remove-section=.note
'/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/i586-poky-linux/oracle-jse-ejre-arm-vfp-hflt-client-headless/1.7.0-u71r0/package/usr/ejre1.7.0_71/lib/jexec''
strip command failed

ERROR: Unable to install packages. Command
'/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/sysroots/x86_64-linux/usr/bin/smart
--quiet
--data-dir=/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/qemux86-poky-linux/core-image-sato-sdk/1.0-r0/rootfs/var/lib/smart
install -y packagegroup-core-x11-sato-games@qemux86
packagegroup-core-standalone-sdk-target@all packagegroup-core-x11-base@all
packagegroup-base-extended@qemux86 smartpm@i586
packagegroup-core-tools-debug@all packagegroup-core-tools-testapps@qemux86
packagegroup-core-eclipse-debug@all packagegroup-core-qt-demoapps@all
packagegroup-core-boot@qemux86 packagegroup-core-tools-profile@qemux86
packagegroup-core-sdk@all psplash@i586
oracle-jse-ejre-arm-vfp-hflt-client-headless@i586 rpm@i586
packagegroup-core-ssh-openssh@all packagegroup-core-x11-sato@qemux86
kernel-dev@qemux86 locale-base-en-us@i586 locale-base-en-gb@i586' returned
1:
error: Can't install
oracle-jse-ejre-arm-vfp-hflt-client-headless-1.7.0-u71r0@i586: no package
provides libdl.so.2(GLIBC_2.4)


ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/qemux86-poky-linux/core-image-sato-sdk/1.0-r0/temp/log.do_rootfs.32175
ERROR: Task 7 (/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-sato/images/
core-image-sato-sdk.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6174 tasks of which 44 didn't need to be
rerun and 1 failed.
No currently running tasks (6174 of 6175)


Best regard,
Van Tri Tin Tran

--f46d043d67e50b2c000508d2aebc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>i tried to install Java (m=
eta-oracle-java) on Core-image-Sato-sdk, but i always received this followi=
ng error. Please help me<br><br>ERROR: runstrip: &#39;&#39;i586-poky-linux-=
strip&#39; --remove-section=3D.comment --remove-section=3D.note &#39;/home/=
tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/i586-poky-linux/o=
racle-jse-ejre-arm-vfp-hflt-client-headless/1.7.0-u71r0/package/usr/ejre1.7=
.0_71/lib/jexec&#39;&#39; strip command failed<br><br>ERROR: Unable to inst=
all packages. Command &#39;/home/tvtritin/DemoYOCTO/poky1.7/build-core-imag=
e-java/tmp/sysroots/x86_64-linux/usr/bin/smart --quiet --data-dir=3D/home/t=
vtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/qemux86-poky-linux=
/core-image-sato-sdk/1.0-r0/rootfs/var/lib/smart install -y packagegroup-co=
re-x11-sato-games@qemux86 packagegroup-core-standalone-sdk-target@all packa=
gegroup-core-x11-base@all packagegroup-base-extended@qemux86 smartpm@i586 p=
ackagegroup-core-tools-debug@all packagegroup-core-tools-testapps@qemux86 p=
ackagegroup-core-eclipse-debug@all packagegroup-core-qt-demoapps@all packag=
egroup-core-boot@qemux86 packagegroup-core-tools-profile@qemux86 packagegro=
up-core-sdk@all psplash@i586 oracle-jse-ejre-arm-vfp-hflt-client-headless@i=
586 rpm@i586 packagegroup-core-ssh-openssh@all packagegroup-core-x11-sato@q=
emux86 kernel-dev@qemux86 locale-base-en-us@i586 locale-base-en-gb@i586&#39=
; returned 1:<br>error: Can&#39;t install oracle-jse-ejre-arm-vfp-hflt-clie=
nt-headless-1.7.0-u71r0@i586: no package provides libdl.so.2(GLIBC_2.4)<br>=
<br><br>ERROR: Function failed: do_rootfs<br>ERROR: Logfile of failure stor=
ed in: /home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/qemu=
x86-poky-linux/core-image-sato-sdk/1.0-r0/temp/log.do_rootfs.32175<br>ERROR=
: Task 7 (/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-sato/images/<a href=
=3D"http://core-image-sato-sdk.bb">core-image-sato-sdk.bb</a>, do_rootfs) f=
ailed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 6174 tas=
ks of which 44 didn&#39;t need to be rerun and 1 failed.<br>No currently ru=
nning tasks (6174 of 6175)<br><br><br></div>Best regard,<br></div>Van Tri T=
in Tran<br><div><br></div></div>

--f46d043d67e50b2c000508d2aebc--
