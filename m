Return-Path: <daltonfury42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CB57E009C3; Mon,  3 Aug 2015 11:16:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daltonfury42[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9828DE0034B
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 11:16:15 -0700 (PDT)
Received: by obbop1 with SMTP id op1so105473142obb.2
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 11:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=AnjEjAO/gfuj1sScooeB0WczjhmNZOMd3p1knpBGHtM=;
	b=i5SEwPJMfLVeM1mTUj3PnT8kKyejxGhOlqKudb4ySoKBSegaDF08ZxfsxOjVUgarUy
	j/WZPwWopPyovexLhNn/4ZwmfckPvGd5wIfTQhorTvusISadCKpY/r4R7NWsnXfZ3Vtm
	8GZv8VGQYj/vplTrxTLRAISO40taHQwXYyajQ5HpvrgQqIvEcaa16Np58RV2CibYEZZ1
	QMuJfGdMFTDSk2LvOnKtKdXR1slGV9CtWkSTCIHfYyhR4kuQJqUcRFB0sH0a8l7A3zwN
	YBUy7Nhg8SD3q2trYhEpEOKFbJ6UAiOMaDnLmbgbzypeR2wQ44GLpPwDRfKrVKTaRTF7
	LZqw==
X-Received: by 10.60.78.104 with SMTP id a8mr17384894oex.58.1438625775246;
	Mon, 03 Aug 2015 11:16:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.243.69 with HTTP; Mon, 3 Aug 2015 11:15:35 -0700 (PDT)
From: Dalton Fury <daltonfury42@gmail.com>
Date: Mon, 3 Aug 2015 23:45:35 +0530
Message-ID: <CALH0Xhn6OnMMcQoH=XZQVzv+nVDjTkw0Ggrfxb93x7TVGKHAeQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to flash core-image-sato to a Nvidia Jetson TK1?
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
X-List-Received-Date: Mon, 03 Aug 2015 18:16:18 -0000
Content-Type: multipart/alternative; boundary=089e0111b78e4c6180051c6c2a2c

--089e0111b78e4c6180051c6c2a2c
Content-Type: text/plain; charset=UTF-8

Hi,

I am a hobbyist, and liked yocto very much since I used in on an old
Pandaboard ES. Now I got my hands on a Nvidia Jetson TK1, and want to get a
yocto running on it. I intend to use it for heavy image processing and I
prefer not to do it with the Ubuntu which comes with it loaded with GUI and
Unity and all. So I build the image, but could not find any information on
how to flash it to the eMMC on the board.

Nvidia provides scripts for doing this. The process is as follows:

1) Download the driver package and extract it.

2) Download the sample rootfs and extract it to `rootfs` folder in where
the driver package is extracted.

3) Run the apply_binaries.sh script. Upon inspecting the script, I found
that it copies NVIDIA user space components, Nvidia firmware files, BSP
test tools, gst test applications, create a lot of symbolic links within
the rootfs extracted to the 'rootfs' folder. It also places the firmwares
and kernel modules, and also copies some configuration files for the boot
loader(U-Boot).

4) Run flash.sh.

What I did is to copy the rootfs that was made with yocto, and entirely
skip Step 3 assuming that all the necessary software is already made with
yocto as a result of adding the BSP. This attempt of course, failed.
Thought the kernel booted, it froze halfway. No error message. Just a flack
screen with a while "_" on the top left corner.

This is the bsp I used: https://github.com/kraj/meta-jetson-tk1

This is the guide I used as reference:
http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC

If anyone has experience performing this(i bet you do), please help me out.
Thanks.

--089e0111b78e4c6180051c6c2a2c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am a hobbyist, and liked yocto ve=
ry much since I used in on an old Pandaboard ES. Now I got my hands on a Nv=
idia Jetson TK1, and want to get a yocto running on it. I intend to use it =
for heavy image processing and I prefer not to do it with the Ubuntu which =
comes with it loaded with GUI and Unity and all. So I build the image, but =
could not find any information on how to flash it to the eMMC on the board.=
=C2=A0</div><div><br></div><div>Nvidia provides scripts for doing this. The=
 process is as follows:</div><div><br></div><div>1) Download the driver pac=
kage and extract it.</div><div><br></div><div>2) Download the sample rootfs=
 and extract it to `rootfs` folder in where the driver package is extracted=
.</div><div><br></div><div>3) Run the apply_binaries.sh script. Upon inspec=
ting the script, I found that it copies NVIDIA user space components, Nvidi=
a firmware files, BSP test tools, gst test applications, create a lot of sy=
mbolic links within the rootfs extracted to the &#39;rootfs&#39; folder. It=
 also places the=C2=A0firmwares and kernel modules, and also copies some co=
nfiguration files for the boot loader(U-Boot).</div><div><br></div><div>4) =
Run flash.sh.</div><div><br></div><div>What I did is to copy the rootfs tha=
t was made with yocto, and entirely skip Step 3 assuming that all the neces=
sary software is already made with yocto as a result of adding the BSP. Thi=
s attempt of course, failed. Thought the kernel booted, it froze halfway. N=
o error message. Just a flack screen with a while &quot;_&quot; on the top =
left corner.</div><div><br></div><div>This is the bsp I used:=C2=A0<a href=
=3D"https://github.com/kraj/meta-jetson-tk1">https://github.com/kraj/meta-j=
etson-tk1</a></div><div><br></div><div>This is the guide I used as referenc=
e:=C2=A0<a href=3D"http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC">=
http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC</a></div><div><br></=
div><div>If anyone has experience performing this(i bet you do), please hel=
p me out. Thanks.=C2=A0</div></div>

--089e0111b78e4c6180051c6c2a2c--
