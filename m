Return-Path: <pvta2pn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AD95E009C2; Sat, 18 Feb 2017 08:06:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pvta2pn[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EF29E0074B
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 08:06:54 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id u63so7292593wmu.2
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 08:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yzEfe/ipI+f511jOlLqu4zWk50AzMsajRIHfGXluRY4=;
	b=eVhI6yMcE+eO2QlYcpxTR2l6eWys1I8Cc3vjFy+7vkynALA2cE17NdEXnjGjt4e8PQ
	KkXYZbbTNdLPa5brM5hGMnkMrAk+79QUfrC0YSWMm4fbcyfeSjBepsa0H3jOaB3JWi8h
	8SsajthuhZrHsqkHrpesOO+DIRmKwmXdx8afK/zuTqV/2BLABiru2HbF5+VGjpgtImdm
	CxSdOs00LT3WRCwZcEgrJnBViNhO4JX0Dwh38QejGrOUBIgtZxU0JG+euLrRaauK8EQV
	QM0gumRoo10W4/voa/RXPmKA/Xwwm4MQ5gHFsuKq/H5ATke0Ycsp2bMcube9FQGX5RyL
	vc0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yzEfe/ipI+f511jOlLqu4zWk50AzMsajRIHfGXluRY4=;
	b=f/U0Kku+D/Y10lkXb++7u5jXCk/BRmwsX/Yz2uQ6oVXJbSGPdUAH6LGEbbNI2C22Z7
	IA6b14h1r7arMhY5ko0coMtrHUQg65/nGfUbcYoHO4USzO4QOm8iybOubV6SxzlG6YZ9
	2JxOEhwPl2KYr2T9R/0dwfY+ZB0Ld5/iROHsX6l6OkhXcvX6vUDICVSKB31GcKnb4VEA
	TffTUDlflRQ1kGSAZ1ntI3BuStIM52U+NbJmXWe+JKzXupby0SZJvY0RqFIIBvefgjwm
	jz48WYHgGf++NKsT/8sJm0zf7HQrzm+c4SlqN/QRqX6u/On3G8ujtIG/msZBlFqJMsRt
	jzbw==
X-Gm-Message-State: AMke39nRugBAhFePmDcRME8WFwfuYam73O2L2fKFEr4hfUJZjpxbK+5mpOXAsu0DkPk/uchde8zyphVjCxO3Jw==
X-Received: by 10.28.163.194 with SMTP id m185mr5477545wme.122.1487434013771; 
	Sat, 18 Feb 2017 08:06:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.182.196 with HTTP; Sat, 18 Feb 2017 08:06:53 -0800 (PST)
From: TU PHUNG VAN <pvta2pn@gmail.com>
Date: Sun, 19 Feb 2017 01:06:53 +0900
Message-ID: <CAL5oxfN0opQ_wGuY_HDLQde19iT4iWyAkjRoDNQzp0OLsyucGg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 20 Feb 2017 09:46:41 -0800
Subject: rpi-basic-image.bb: do_image_ext3 failed
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
X-List-Received-Date: Sat, 18 Feb 2017 16:06:57 -0000
Content-Type: multipart/alternative; boundary=94eb2c064160048db30548d038cd

--94eb2c064160048db30548d038cd
Content-Type: text/plain; charset=UTF-8

Hi all.

I have a problem when build poky (krogoth) for Raspberry PI.

When run with : $bitbake rpi-basic-image
I got the following errors:

ERROR: rpi-basic-image-1.0-r0 do_image_ext3: Function failed: do_image_ext3
(log file is located at
/media/oedev/YoctoLearning/build_rpi/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.0-r0/temp/log.do_image_ext3.10647)

ERROR: Logfile of failure stored in:
/media/oedev/YoctoLearning/build_rpi/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-
basic-image/1.0-r0/temp/log.do_image_ext3.10647
Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_ext3
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 1.7803e-05 s, 0.0 kB/s
| mke2fs 1.43-WIP (18-May-2015)
| Discarding device blocks: done
| Creating filesystem with 86016 1k blocks and 21560 inodes
| Filesystem UUID: b0f1932b-e06d-416c-9eec-253db25b8053
| Superblock backups stored on blocks:
| 8193, 24577, 40961, 57345, 73729
|
| Allocating group tables: done
| Writing inode tables: done
| Creating journal (4096 blocks): done
| Copying files into the device: set_inode_xattr: No data available while
listing
attributes of "Image"
| __populate_fs: No data available while setting xattrs for "Image"
| mkfs.ext3: No data available while populating file system
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_image_ext3 (log file is located at
/media/oedev/YoctoLearning/build_rpi/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-
basic-image/1.0-r0/temp/log.do_image_ext3.10647)

ERROR: Task 18 (/media/oedev/YoctoLearning/poky/meta-raspberrypi/recipes-
core/images/rpi-basic-image.bb, do_image_ext3) failed with exit code

I thinks there is some problems when creating ext3 file system.
After tracing back, I found out that following command which is
used to create a sparse image block not work properly.

File : poky/meta/classes/image_types.bbclass: 64:
dd if=/dev/zero
of=${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.$fstype
seek=$ROOTFS_SIZE count=$COUNT bs=1024
mkfs.$fstype -F $extra_imagecmd
${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.$fstype -d
${IMAGE_ROOTFS}

After adding some shell codes to print out above command to /tmp/debug,
I ran bitbake again, and got the same error, of course.

After that, I run /tmp/debug manually, no errors occurred. I don't know why
I am getting errors when run with bitbake.

In my system, all of files (poky and builds) is located in mount point
which
is mounted with following options:

/dev/sdc on /media/oedev/YoctoLearning type ext4
(rw,nosuid,nodev,relatime,stripe=8191,data=ordered,uhelper=udisks2)
[YoctoLearning

Have any filesystem-related errors here?

Thanks and best regards.

-- 
------------------------------------------------
Minatu Phung (doime)
Email : pvta2pn@gmail.com
------------------------------------------------
Work with best effort.

--94eb2c064160048db30548d038cd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all.<div><br></div><div>I have a problem when build pok=
y (krogoth)=C2=A0for Raspberry PI.</div><div><br></div><div>When run with :=
 $bitbake rpi-basic-image</div><div>I got the following errors:</div><div><=
div><br></div><div><div>ERROR: rpi-basic-image-1.0-r0 do_image_ext3: Functi=
on failed: do_image_ext3=C2=A0</div><div>(log file is located at /media/oed=
ev/YoctoLearning/build_rpi/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basi=
c-image/1.0-r0/temp/log.do_image_ext3.10647)</div><div><br></div><div>ERROR=
: Logfile of failure stored in: /media/oedev/YoctoLearning/build_rpi/tmp/wo=
rk/raspberrypi-poky-linux-gnueabi/rpi-</div><div>basic-image/1.0-r0/temp/lo=
g.do_image_ext3.10647</div><div>Log data follows:</div><div>| DEBUG: Execut=
ing python function set_image_size</div><div>| DEBUG: Python function set_i=
mage_size finished</div><div>| DEBUG: Executing shell function do_image_ext=
3</div><div>| 0+0 records in</div><div>| 0+0 records out</div><div>| 0 byte=
s copied, 1.7803e-05 s, 0.0 kB/s</div><div>| mke2fs 1.43-WIP (18-May-2015)<=
/div><div>| Discarding device blocks: done =C2=A0 =C2=A0 =C2=A0=C2=A0</div>=
<div>| Creating filesystem with 86016 1k blocks and 21560 inodes</div><div>=
| Filesystem UUID: b0f1932b-e06d-416c-9eec-253db25b8053</div><div>| Superbl=
ock backups stored on blocks:</div><div>| <span class=3D"gmail-Apple-tab-sp=
an" style=3D"white-space:pre">	</span>8193, 24577, 40961, 57345, 73729</div=
><div>|=C2=A0</div><div>| Allocating group tables: done=C2=A0</div><div>| W=
riting inode tables: done=C2=A0</div><div>| Creating journal (4096 blocks):=
 done</div><div>| Copying files into the device: set_inode_xattr: No data a=
vailable while listing=C2=A0</div><div>attributes of &quot;Image&quot;</div=
><div>| __populate_fs: No data available while setting xattrs for &quot;Ima=
ge&quot;</div><div>| mkfs.ext3: No data available while populating file sys=
tem</div><div>| WARNING: exit code 1 from a shell command.</div><div>| ERRO=
R: Function failed: do_image_ext3 (log file is located at /media/oedev/Yoct=
oLearning/build_rpi/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-</div><div>=
basic-image/1.0-r0/temp/log.do_image_ext3.10647)</div><div><br></div><div>E=
RROR: Task 18 (/media/oedev/YoctoLearning/poky/meta-raspberrypi/recipes-</d=
iv><div>core/images/<a href=3D"http://rpi-basic-image.bb">rpi-basic-image.b=
b</a>, do_image_ext3) failed with exit code=C2=A0</div></div><div><br></div=
><div>I thinks there is some problems when creating ext3 file system.</div>=
<div>After tracing back, I found out that following command which is</div><=
div>used to create a sparse image block not work properly.</div><div><br></=
div><div>File : poky/meta/classes/image_types.bbclass: 64:</div><div><div>d=
d if=3D/dev/zero of=3D${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}=
.$fstype seek=3D$ROOTFS_SIZE count=3D$COUNT bs=3D1024<span class=3D"gmail-A=
pple-tab-span" style=3D"white-space:pre">		</span></div><div><span class=3D=
"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>mkfs.$fstype -F $e=
xtra_imagecmd ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.$fstype=
 -d ${IMAGE_ROOTFS}</div></div><div><br></div><div>After adding some shell =
codes to print out above command to /tmp/debug,</div><div>I ran bitbake aga=
in, and got the same error, of course.</div><div><br></div><div>After that,=
 I run /tmp/debug manually, no errors occurred. I don&#39;t know why I am g=
etting errors when run with bitbake.</div><div><br></div><div>In my system,=
 all of files (poky and builds) is located in mount point which=C2=A0</div>=
<div>is mounted with following options:</div><div><br></div><div>/dev/sdc o=
n /media/oedev/YoctoLearning type ext4 (rw,nosuid,nodev,relatime,stripe=3D8=
191,data=3Dordered,uhelper=3Dudisks2) [YoctoLearning<br></div><div><br></di=
v><div>Have any filesystem-related errors here?</div><div><br></div><div>Th=
anks and best regards.</div><div><br></div>-- <br><div class=3D"gmail_signa=
ture">------------------------------------------------<br>Minatu Phung (doi=
me)<br>Email : <a href=3D"mailto:pvta2pn@gmail.com" target=3D"_blank">pvta2=
pn@gmail.com</a><br>------------------------------------------------<br>Wor=
k with best effort.<br></div>
</div></div>

--94eb2c064160048db30548d038cd--
