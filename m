Return-Path: <danwalkes@trellis-logic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21E60E00C89; Sun, 10 Sep 2017 13:35:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE0AE00C35
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 13:35:08 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id i189so27538936wmf.1
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 13:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trellis-logic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=GDggH1AMxpalg4wjs1NlDbSqClhpIH9Kez6LQpVp+e0=;
	b=Nkzaj+Dcib6siRYMBvfXVSvYrDuKxWEw01lVCrQcuVoKeont5GN0wfl5kLOSVQIbIU
	+xMzytX45rpHmrAZp87RVftqn9B+SDKqeJp6hcTBNENCvpBe8Wbbdiz2OZyMc3msQGQ7
	l3+eALr21aJqGSeLGaDxx5KxyKvEEi++kq4x8Q3YffoN6EfjvUfSYyNC6764lOB1g1Wr
	Qc3jEoA5izCzPEwOA0TURtX7xnmy4Uf/Jf7rVgHnIxx8F8o4YGBZpptyi4R8PVncWo8K
	fddyes+wRHELfZsbSQyMnm/y1h8NnosL1OvCmdZGrvNvJt+ylXQwbguXhooH3QM/GH4W
	N3nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=GDggH1AMxpalg4wjs1NlDbSqClhpIH9Kez6LQpVp+e0=;
	b=Oq3Wy7jIrH1ehOkBTMYshBbIBWjm6PCNroKliymCUafbdple7H7cJsE0aOqCH/DDIg
	vJUKiObB/Ng9Zd/176LGLNUtIakXWtfnNNv1kdktZG/IWOWDl36TxJ6AmqwixUrMsa+u
	saQCZDYrkIC4S6x4A+bkWetc6uHOpRFRi1AFUzpFN3Rq9mxb3yFL1zk9GIN5+f5MfAgn
	OhqBXf8Lrp2pxMbE6+1pualj3qZ5D2Lgvqzp7kmYrvusmLfhgLGVtRZeZBnk34bY8Azd
	abdn1rz2hMXUfgou9gQBWFTtKQBQOaNbgfzgkzVHXeSAQrspLB9/FGaW0d6A4MaI8Mmm
	9bGw==
X-Gm-Message-State: AHPjjUjQIkGrhbB60qwF0QbLFBKCUUhWYNCt0VxXspiSC2hIwfwmvfip
	20j7hBL4IFSv2aWhyVOjGTaTWSRONGBwH2JRWjxGi+ig+dg=
X-Google-Smtp-Source: AOwi7QDHiXy9mOJm8gbM4YOCPZjnS9RXrPO1VkczaOUhlxzlwAd3q/zDW0//RuyWzTHtcCbxaIXxpY5963ztXD3mnDk=
X-Received: by 10.28.11.85 with SMTP id 82mr7139655wml.158.1505075707286; Sun,
	10 Sep 2017 13:35:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.102.69 with HTTP; Sun, 10 Sep 2017 13:35:06 -0700 (PDT)
From: Dan Walkes <danwalkes@trellis-logic.com>
Date: Sun, 10 Sep 2017 14:35:06 -0600
Message-ID: <CAAhKrJ0Vcq=udaGzcWi5s4cMyxEnNoyXWoeYW+wJhzWD_zxM8g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: pyro openembedded gpsd update-rc.d problems with read-only-rootfs
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
X-List-Received-Date: Sun, 10 Sep 2017 20:35:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We=E2=80=99ve successfully included gpsd from meta-openembedded in a projec=
t
with IMAGE_FEATURES including read-only-rootfs on the morty branch.
However, I=E2=80=99m running into issues on an attempt to upgrade from mort=
y
to pyro.  The do_rootfs for my image build step is failing with
message:

...

ERROR: core-image-fs5-nand-1.0-r0 do_rootfs: The following packages
could not be configured offline and rootfs is read-only: ['100-gpsd']

...

Earlier In the do_rootfs log I see these messages:

...

 Installing  : gpsd-gpsctl-3.14-r1.armv7ahf_neon                        98/=
407

Removing any system startup links for gpsd ...

 Installing  : gpsd-3.14-r1.armv7ahf_neon                               99/=
407

update-alternatives: Linking
/home/dan/ASD/Yocto/build-am3517/tmp/work/fs5_am3517-poky-linux-gnueabi/cor=
e-image-fs5-nand/1.0-r0/rootfs/usr/bin/gpsd-defaults
to /etc/default/gpsd.default

update-rc.d: /home/dan/ASD/Yocto/build-am3517/tmp/work/fs5_am3517-poky-linu=
x-gnueabi/core-image-fs5-nand/1.0-r0/rootfs/etc/init.d/gpsd:
file does not exist

warning: %post(gpsd-3.14-r1.armv7ahf_neon) scriptlet failed, exit status 1
...

Complete!

Non-fatal POSTIN scriptlet failure in rpm package gpsd

Non-fatal POSTIN scriptlet failure in rpm package gpsd


NOTE: Saving postinstall script of gpsd

=E2=80=A6


It looks like because the update-rc.d step fails this setup gets moved
into a gpsd post install script, which won=E2=80=99t work because I=E2=80=
=99m
configured to use a read only root filesystem.  So I need to find a
way to keep the update-rc.d step from failing.


If I do ls-la on the path
/home/dan/ASD/Yocto/build-am3517/tmp/work/fs5_am3517-poky-linux-gnueabi/cor=
e-image-fs5-nand/1.0-r0/rootfs/etc/init.d/gpsd
after the failure the file does in fact exist.  So it must be added
sometime after the failure occurs.

If I remove the dependency on gpsd I=E2=80=99m able to build my image, so i=
t
appears this is the only dependency which is causing issues for me
after attempting the switch from morty to pyro branches.

The =E2=80=9CRemoving any system startup links for gpsd=E2=80=9D message du=
ring the
gpsd-gpsctl install step just before the error looks suspicious and
I=E2=80=99m wondering if something about multiple packages being provided i=
n
the gpsd_3.16.bb file at
https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/recip=
es-navigation/gpsd/gpsd_3.16.bb
is related.  It=E2=80=99s not obvious to me from a review of the yocto
development manual what might be missing in the setup for update-rc.d
which would explain this.

Any suggestions about what I=E2=80=99m doing wrong or how I could debug thi=
s
would be greatly appreciated.

Thanks,
Dan

