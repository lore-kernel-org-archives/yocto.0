Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EC98E00C9A; Sat,  4 Jun 2016 08:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C04A6E008A4
	for <yocto@yoctoproject.org>; Sat,  4 Jun 2016 08:43:49 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id m124so22807137wme.1
	for <yocto@yoctoproject.org>; Sat, 04 Jun 2016 08:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=TnXeeNJ89SNyR0vin4DWDC/eWdMs2XMmGvn2c3FgJqs=;
	b=PQYW7/iEa8dzY5TNBw06M6lTX6SG3vKYMzWH57AlNqc6S53S9TlVh5PEPwC3Xvt4dV
	si6j90bCv7xq11jfZQ+29jLm72ktdEBhdDDlA1Euw7RR4HWdji6rfOGyLhSRsjYPOUrY
	APD09i2GcjiQArSdc/PMJoM6xibmFh1CIOKnCBQfEzf50EgkXOJ77HcjFC4FKKmWEepU
	ZlTCx0SD8qGbHF/IXH8QoqRC9Q5eFo7+tRJiJLM1j/jpbxRCFK0GrZy29TsxMyhTguQv
	1s+0TWIZIkuwNZ4XlfIUsiCF92sMnMMgsbNKpih4WbVuiOZs0E/TyhsAtDWyoCWm2Kmv
	EPag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TnXeeNJ89SNyR0vin4DWDC/eWdMs2XMmGvn2c3FgJqs=;
	b=isuLhaJkst+4WYoWsNPEkZ+xj4CXKqbVEaCsgcaCQ3tF1oV6Z9CXF+EuPfN06URxLA
	sCEuNNQzU9dezQoMuO5zbMaQHmHJP0L7FxDbl3Px05VfmC4CU74ljBXOzb295lCqoOhS
	wS/CK5Dg9ehA+zjJsf/yJfRBtE3Zitwi1/9ZdthM9WYNdvlQ5njK1H+I59S9KFpJtkDv
	EEAIGc3r9W/auBkx28zdsX2YLDhUkBl9e4A2HwxIDZpcn8dys7fOVmC06VkHcbTcP9h0
	FumEg0zad4aeuxoZdlOLDzSVetqOOT5Roon1xb1FTumg5/1TUi3rUA7NTbuBALtNtGIp
	h5+g==
X-Gm-Message-State: ALyK8tKXoES3TMZBqQdTfk27qk0xZeURwGT0Ct/5/bMCXG0j7vhIkU+dyTDoM2Yg5yrwLpdkE4EiqISKR9lvDQ==
X-Received: by 10.28.20.139 with SMTP id 133mr4187531wmu.19.1465055028401;
	Sat, 04 Jun 2016 08:43:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.149.210 with HTTP; Sat, 4 Jun 2016 08:43:47 -0700 (PDT)
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Sat, 4 Jun 2016 17:43:47 +0200
Message-ID: <CA+-BmJZf0ZDerwno86M67JVHdLp07SceRyegNcQZHuE6FaQbzA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Initramfs framework buggy ?
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
X-List-Received-Date: Sat, 04 Jun 2016 15:43:50 -0000
Content-Type: multipart/alternative; boundary=001a1145b52c8b5d0e053475b4c5

--001a1145b52c8b5d0e053475b4c5
Content-Type: text/plain; charset=UTF-8

Hello,

when udev is not included in PACKAGE_INSTALL within the initramfs image
recipe (which I don't want to use !), the boot fails (no device nodes !)
even when using both USE_DEVFS = "0" and "1" because the dev/ folder is not
created !

here my recipe :

DESCRIPTION = "base initramfs"

PACKAGE_INSTALL = "${VIRTUAL-RUNTIME_base-utils}
${ROOTFS_BOOTSTRAP_INSTALL}"

# Do not pollute the initrd image with rootfs features
IMAGE_FEATURES = ""

export IMAGE_BASENAME = "base-initramfs-image"
IMAGE_LINGUAS = ""

LICENSE = "MIT"

IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
inherit core-image

USE_DEVFS = "0"

IMAGE_ROOTFS_SIZE = "8192"
IMAGE_ROOTFS_EXTRA_SPACE = "0"

BAD_RECOMMENDATIONS += "busybox-syslog"

I'm using latest krogoth branch, same isssue with jethro.

--001a1145b52c8b5d0e053475b4c5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>when udev is not included in PAC=
KAGE_INSTALL within the initramfs image recipe (which I don&#39;t want to u=
se !), the boot fails (no device nodes !) even when using both USE_DEVFS =
=3D &quot;0&quot; and &quot;1&quot; because the dev/ folder is not created =
!</div><div><br></div><div>here my recipe :</div><div><br></div><div><div>D=
ESCRIPTION =3D &quot;base initramfs&quot;</div><div><br></div><div>PACKAGE_=
INSTALL =3D &quot;${VIRTUAL-RUNTIME_base-utils} ${ROOTFS_BOOTSTRAP_INSTALL}=
&quot;</div><div><br></div><div># Do not pollute the initrd image with root=
fs features</div><div>IMAGE_FEATURES =3D &quot;&quot;</div><div><br></div><=
div>export IMAGE_BASENAME =3D &quot;base-initramfs-image&quot;</div><div>IM=
AGE_LINGUAS =3D &quot;&quot;</div><div><br></div><div>LICENSE =3D &quot;MIT=
&quot;</div><div><br></div><div>IMAGE_FSTYPES =3D &quot;${INITRAMFS_FSTYPES=
}&quot;</div><div>inherit core-image</div><div><br></div><div>USE_DEVFS =3D=
 &quot;0&quot;</div><div><br></div><div>IMAGE_ROOTFS_SIZE =3D &quot;8192&qu=
ot;</div><div>IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;0&quot;</div><div><br></di=
v><div>BAD_RECOMMENDATIONS +=3D &quot;busybox-syslog&quot;</div></div><div>=
<br></div><div>I&#39;m using latest krogoth branch, same isssue with jethro=
.</div><div><br></div><div><br></div><div><br></div></div>

--001a1145b52c8b5d0e053475b4c5--
