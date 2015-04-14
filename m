Return-Path: <yoctomailing@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E09AE00953; Tue, 14 Apr 2015 02:42:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailing[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f196.google.com (mail-wi0-f196.google.com
	[209.85.212.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC61E00932
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 02:42:27 -0700 (PDT)
Received: by wivr20 with SMTP id r20so1614997wiv.3
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 02:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=XOekYEF8RZU1vcvwlx+lHd3bdm5ukMquGZ27Ga3wAGM=;
	b=ClTuWbkpuddz6+jvw5Gi+ErKfPetpvAQmZpU1/E2fRGBDGLaR8z031spNg/Mik5GHF
	aKIuzThetuAzOJQL09Y5NXy9gmmJY8C+W1n3mxNR3/w85D8isCRmHIp+SZynHowDLyMY
	GW1VIpBYo0fJ6y8471l+tXSIQBdqvkMkQFKQqDSDpJ4QE8zol+FCboe9rYX/gZudyXkk
	nxJ+dCNUnfc9089kggFgXHNwvdmcuSyV9zckvy8oKShV3iz5jH5a9zcIPVS2eoTSlkm6
	lOMowDCl+RfpuN4+3Ppxl0NHm+rAmF9RhMINdsVjvi1SPi397KdmcDC4bulmLvcLmRB0
	YwXQ==
MIME-Version: 1.0
X-Received: by 10.194.93.195 with SMTP id cw3mr6271790wjb.150.1429004546571;
	Tue, 14 Apr 2015 02:42:26 -0700 (PDT)
Received: by 10.28.182.135 with HTTP; Tue, 14 Apr 2015 02:42:26 -0700 (PDT)
Date: Tue, 14 Apr 2015 11:42:26 +0200
Message-ID: <CAMXMwxVdZHPmbr+dh4nF8tHJWXAFxL5n-ZbgE_0rOFUxDge40Q@mail.gmail.com>
From: yocto yocto <yoctomailing@gmail.com>
To: yocto@yoctoproject.org
Subject: [Intel Edison] Changing kernel configuration results in "do_rootfs"-failure (Code 255)
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
X-List-Received-Date: Tue, 14 Apr 2015 09:42:28 -0000
Content-Type: multipart/alternative; boundary=047d7bacbd486182180513ac0cae

--047d7bacbd486182180513ac0cae
Content-Type: text/plain; charset=UTF-8

I tried to add a module to the kernel configuration according to

http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#changing-the-configuration

Here is what I have done:

File:
meta-mylayer/recipes-kernel/linux/linux-yocto_3.10.bbappend

Contains:
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://FTDI.cfg"

File:
meta-mylayer/recipes-kernel/linux/files/FTDI.cfg

Contains:
CONFIG_USB_SERIAL=y
CONFIG_USB_SERIAL_FTDI_SIO=y

File:
meta-mylayer/recipes-mylayer/images/mylayer-image.bb

Contains:
IMAGE_INSTALL += " \
    linux-yocto \
    [...]


Bitbake result:
ERROR: Unable to install packages. Command
'/home/ubuntu/development/edison-src/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl
-f
/home/ubuntu/development/edison-src/build/tmp/work/edison-poky-linux/geent-image/1.0-r0/opkg.conf
-o
/home/ubuntu/development/edison-src/build/tmp/work/edison-poky-linux/geent-image/1.0-r0/rootfs
--force_postinstall --prefer-arch-to-version   install i2c-tools
run-postinsts nano useradd linux-yocto base-files postgresql
packagegroup-core-boot' returned 255:
[...]
Collected errors:
 * opkg_install_cmd: Cannot install package linux-yocto.
[...]
ERROR: Function failed: do_rootfs


What might be wrong here?

--047d7bacbd486182180513ac0cae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>I tried to add a module to the ke=
rnel configuration according to <br><br><a href=3D"http://www.yoctoproject.=
org/docs/1.6.1/kernel-dev/kernel-dev.html#changing-the-configuration">http:=
//www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#changing-the-c=
onfiguration</a> <br><br>Here is what I have done:<br><br>File:<br>meta-myl=
ayer/recipes-kernel/linux/linux-yocto_3.10.bbappend<br><br></div>Contains:<=
br>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>SRC_URI +=
=3D &quot;file://FTDI.cfg&quot;<br><br>File:<br>meta-mylayer/recipes-kernel=
/linux/files/FTDI.cfg<br><br>Contains:<br>CONFIG_USB_SERIAL=3Dy<br>CONFIG_U=
SB_SERIAL_FTDI_SIO=3Dy<br><br></div>File:<br>meta-mylayer/recipes-mylayer/i=
mages/<a href=3D"http://mylayer-image.bb">mylayer-image.bb</a><br><br></div=
>Contains:<br>IMAGE_INSTALL +=3D &quot; \<br>=C2=A0=C2=A0=C2=A0 linux-yocto=
 \<br>=C2=A0=C2=A0=C2=A0 [...]<br><br></div><br>Bitbake result:<br>ERROR: U=
nable to install packages. Command &#39;/home/ubuntu/development/edison-src=
/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -f /home/ubuntu/developmen=
t/edison-src/build/tmp/work/edison-poky-linux/geent-image/1.0-r0/opkg.conf =
-o /home/ubuntu/development/edison-src/build/tmp/work/edison-poky-linux/gee=
nt-image/1.0-r0/rootfs --force_postinstall --prefer-arch-to-version=C2=A0=
=C2=A0 install i2c-tools run-postinsts nano useradd linux-yocto base-files =
postgresql packagegroup-core-boot&#39; returned 255:<br>[...]<br>Collected =
errors:<br>=C2=A0* opkg_install_cmd: Cannot install package linux-yocto.<br=
>[...]<br>ERROR: Function failed: do_rootfs<br><br><br></div>What might be =
wrong here?<br><div><br><br></div></div>

--047d7bacbd486182180513ac0cae--
