Return-Path: <yoctouser@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A6CE00BDF; Thu, 12 Jun 2014 12:35:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctouser[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f194.google.com (mail-ob0-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC7EE00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:35:08 -0700 (PDT)
Received: by mail-ob0-f194.google.com with SMTP id uy5so463342obc.1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VFzLPpLOnZnr1TEgffTWw/VwCFxu7Ppki962yWZQ5j8=;
	b=IHwlQca3gJB8+Pt+UEPd4viQj3NVvkiCYdFMRgl1OBpl8lH346zpz815XhR5VOMAdC
	4a32c6Gvfw9jEqu+aQiGf2gyjJivzc4eGwKlPqOZw0Si5KH1zZsF1e0f0Bd0CMe97Lq2
	eYQsY5lPS5Mnn3X+n+8kDAPpjjD+4blU4WA1D2s8bcyKQatRViuyZM0T8bUGVCJWaUSi
	QBfrQhcZz7k9BMpqnLfxtykY9Ko2qL1wyGpB8A6ZFZZkSWWVSu3TBXQlNjbLB9V9khnC
	rwBc3HUPoGLN+khIAnoT1s5tauBTBoGyLhfgctXX0km+D6ctdE3GxtJo+/d6s4Rj1UNO
	s37w==
MIME-Version: 1.0
X-Received: by 10.182.44.233 with SMTP id h9mr25283024obm.68.1402601706595;
	Thu, 12 Jun 2014 12:35:06 -0700 (PDT)
Received: by 10.76.12.33 with HTTP; Thu, 12 Jun 2014 12:35:06 -0700 (PDT)
Date: Thu, 12 Jun 2014 15:35:06 -0400
Message-ID: <CA+U9ZE7CvrOoRTQJ67hZ61X94nzvyaDuTkboE6pUTmbRsW71GA@mail.gmail.com>
From: Yocto user <yoctouser@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 13 Jun 2014 09:25:24 -0700
Subject: Custom image for EMB-3500
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
X-List-Received-Date: Thu, 12 Jun 2014 19:35:15 -0000
Content-Type: multipart/alternative; boundary=001a11c2ddee7bab5c04fba8a8e9

--001a11c2ddee7bab5c04fba8a8e9
Content-Type: text/plain; charset=UTF-8

Hi,

This is Rohit, I am trying to get yocto wokring on a ARM Board (EMB-3500
iMX6).

The board doesn't support booting from Memory card. So we use the mfgtools
to flash the image to on board Nand. We have Ubuntu Image which works with
no issue.
The Ubuntu Image has 3 files,
1. rootfs.tar.bz2
2. u-boot.bin
3. uImage

I have build a Yocto iMX6qSabreauto core-image-full-cmdline image, copied
the "core-image-full-cmdline-imx6qsabreauto.tar.bz2" and
"uImage-imx6qsabreauto.bin" in place of "rootfs.tar.bz2" and "uImage"

Tried to flash the image to Nand, it fails to boot. I get following error,

MMC read: dev # 3, block # 2048, count 8192 ... 8192 blocks read: OK
## Booting kernel from Legacy Image at 10800000 ...
   Image Name:   Linux-3.10.17-1.0.0_ga+g232293e
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    5264120 Bytes =  5 MB
   Load Address: 10008000
   Entry Point:  10008000
   Verifying Checksum ... Bad Data CRC
ERROR: can't get kernel image!

I have tried to use the working kernel (Ubuntu - uImage). The kernel loads,
but the board turns off automatically. I get following message before it
turn off,

EXT3-fs: barriers not enabled
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p1): using internal journal
EXT3-fs (mmcblk0p1): recovery complete
EXT3-fs (mmcblk0p1): mounted filesystem with writeback data mode
VFS: Mounted root (ext3 filesystem) on device 179:1.
Freeing init memory: 212K
Any help in fixing this issue is really appreciated.
Thanks,
Rohit

--001a11c2ddee7bab5c04fba8a8e9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>This is Rohit, I am tryi=
ng to get yocto wokring on a ARM Board (EMB-3500 iMX6).</div><div><br></div=
><div>The board doesn&#39;t support booting from Memory card. So we use the=
 mfgtools to flash the image to on board Nand. We have Ubuntu Image which w=
orks with no issue.</div>
<div>The Ubuntu Image has 3 files,</div><div>1.=C2=A0rootfs.tar.bz2<br>2.=
=C2=A0u-boot.bin<br>3.=C2=A0uImage</div><div><br></div><div>I have build a =
Yocto iMX6qSabreauto core-image-full-cmdline image, copied the &quot;core-i=
mage-full-cmdline-imx6qsabreauto.tar.bz2&quot; and &quot;uImage-imx6qsabrea=
uto.bin&quot; in place of &quot;rootfs.tar.bz2&quot; and &quot;uImage&quot;=
</div>
<div><br></div><div>Tried to flash the image to Nand, it fails to boot. I g=
et following error,</div><div><br></div><div>MMC read: dev # 3, block # 204=
8, count 8192 ... 8192 blocks read: OK<br>## Booting kernel from Legacy Ima=
ge at 10800000 ...<br>
=C2=A0=C2=A0 Image Name:=C2=A0=C2=A0 Linux-3.10.17-1.0.0_ga+g232293e<br>=C2=
=A0=C2=A0 Image Type:=C2=A0=C2=A0 ARM Linux Kernel Image (uncompressed)<br>=
=C2=A0=C2=A0 Data Size:=C2=A0=C2=A0=C2=A0 5264120 Bytes =3D=C2=A0 5 MB<br>=
=C2=A0=C2=A0 Load Address: 10008000<br>=C2=A0=C2=A0 Entry Point:=C2=A0 1000=
8000<br>=C2=A0=C2=A0 Verifying Checksum ... Bad Data CRC<br>
ERROR: can&#39;t get kernel image!</div><div><br>I have tried to use the wo=
rking kernel (Ubuntu - uImage). The kernel loads, but the board turns off a=
utomatically. I get following message before it turn off,</div><div><br>
</div><div>EXT3-fs: barriers not enabled<br>kjournald starting.=C2=A0 Commi=
t interval 5 seconds<br>EXT3-fs (mmcblk0p1): using internal journal<br>EXT3=
-fs (mmcblk0p1): recovery complete<br>EXT3-fs (mmcblk0p1): mounted filesyst=
em with writeback data mode<br>
VFS: Mounted root (ext3 filesystem) on device 179:1.<br>Freeing init memory=
: 212K</div><div>Any help in fixing this issue is really appreciated.</div>=
<div>Thanks,<br>Rohit</div><div></div>
</div>

--001a11c2ddee7bab5c04fba8a8e9--
