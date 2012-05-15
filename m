Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68F3FE01206
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 15:38:20 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so126343bkc.35
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 15:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type:x-gm-message-state;
	bh=Bot4LY01dsXzGbcdxyCPut900mhEGFInsf+qUpfa1Og=;
	b=oICjtgv7sPzeKp9zN35rpfHEkRcWfxsbFOXbHqmGhddoYWPQyCC4UMPIUKs1fT+gj7
	nZ9uD64HLRMYr8CgWRQTS/cpE5Vpd00Ad2sbn6tS27f2xx/CurUcJsdb1SHlaXk47K//
	iH2HInGoXCFhL5DWAXQiM4i+huicyH4YA8B9T6pknhV2sCVPq4WHoIsY3oO9uvC5MBgh
	U8JTNQuJeKJCgjtwYM9+Cg7B0LLNd0yrxtLPvDAlDhABa5X98FYepnjTHoiJ7p4DLcrw
	AOvQDRpOLvs3++fqcdo/kbaqmhM1rGXjF6LJLWdfx5XfiZlm6JVYSW8xyIjRlWtyla6t
	gfYA==
MIME-Version: 1.0
Received: by 10.204.133.220 with SMTP id g28mr277965bkt.54.1337121499001; Tue,
	15 May 2012 15:38:19 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.205.65.134 with HTTP; Tue, 15 May 2012 15:38:18 -0700 (PDT)
Date: Tue, 15 May 2012 15:38:18 -0700
X-Google-Sender-Auth: y35GoOpU6Q0FmN_OujPqZ8DzPy0
Message-ID: <CA+gsK-ph__F9gNUYSnb_pN2xjLbv8zwB6Sk+J5qiKD43fZx7-w@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQknrRtZoXMgDPGElilcCQ+Y+3BaGM5aU+l/OTcxZLTpjuwyDbQuN6P3lsJhNUM1Nm1ZzFEv
Subject: How is the list in package.manifest derived?
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
X-List-Received-Date: Tue, 15 May 2012 22:38:20 -0000
Content-Type: multipart/alternative; boundary=00151743f7c2f8328704c01adb21

--00151743f7c2f8328704c01adb21
Content-Type: text/plain; charset=ISO-8859-1

I used poky-denzil-7.0 to build a core-image-minimal for the BeagleBoard.
Now I am looking for a list of everything that went into my image together
with the license information. The logical thing seems to be
${TMPDIR}/deploy/licenses/core-image-minimal-beagleboard-<timestamp>/package.manifest:

base-files
base-passwd
bash
busybox
busybox-syslog
busybox-udhcpc
initscripts
libc6
libgcc1
libtinfo5
libusb-1.0-0
libusb-compat
modutils-initscripts
ncurses-terminfo-base
netbase
pciutils-ids
sysvinit
sysvinit-inittab
sysvinit-pidof
task-core-boot
tinylogin
udev
udev-extraconf
udev-utils
update-alternatives-cworth
update-rc.d
usbutils-ids

However, I don't think this is everything that went into the image. I would
expect the kernel to be in the list as well as module-init-tools and
u-boot. Apparently package.manifest and the corresponding license.manifest
for an image target do not contain all the licensing information that a
device builder would need to give to the end customer. How is that list
created?

Rudi

--00151743f7c2f8328704c01adb21
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I used poky-denzil-7.0 to build a core-image-minimal for the BeagleBoard. N=
ow I am looking for a list of everything that went into my image together w=
ith the license information. The logical thing seems to be ${TMPDIR}/deploy=
/licenses/core-image-minimal-beagleboard-&lt;timestamp&gt;/package.manifest=
:<div>
<br></div><div><div>base-files</div><div>base-passwd</div><div>bash</div><d=
iv>busybox</div><div>busybox-syslog</div><div>busybox-udhcpc</div><div>init=
scripts</div><div>libc6</div><div>libgcc1</div><div>libtinfo5</div><div>
libusb-1.0-0</div><div>libusb-compat</div><div>modutils-initscripts</div><d=
iv>ncurses-terminfo-base</div><div>netbase</div><div>pciutils-ids</div><div=
>sysvinit</div><div>sysvinit-inittab</div><div>sysvinit-pidof</div><div>
task-core-boot</div><div>tinylogin</div><div>udev</div><div>udev-extraconf<=
/div><div>udev-utils</div><div>update-alternatives-cworth</div><div>update-=
rc.d</div><div>usbutils-ids</div></div><div><br></div><div>However, I don&#=
39;t think this is everything that went into the image. I would expect the =
kernel to be in the list as well as module-init-tools and u-boot. Apparentl=
y package.manifest and the corresponding license.manifest for an image targ=
et do not contain all the licensing information that a device builder would=
 need to give to the end customer. How is that list created?</div>
<div><br></div><div>Rudi</div>

--00151743f7c2f8328704c01adb21--
