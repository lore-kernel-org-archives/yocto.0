Return-Path: <maryem.ayady@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2F3DE00E22; Fri,  9 Mar 2018 04:53:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maryem.ayady[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB726E00CE2
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2018 04:53:17 -0800 (PST)
Received: by mail-qk0-f174.google.com with SMTP id o25so3452505qkl.7
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2018 04:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=U1QcIkoXZ9BqmlsQdgfuQ9pcEQFlaS1GLEoj2KeFFBY=;
	b=vWg65Ch+f5qTzVzrG2UAh85Vspqv4xtGY2NNcoOGjGwPWRdIyIrOTV5gkHK04LYLVH
	DX+npP5THqtdg/WKhgEzOeUknLHgGhBVQQuGH2mvN1jX25vZFIl6YHFDx8wPWXoM5ZMn
	VPLo+hOF7DAKEAO5roZWQMrLAwOM2L8B53+DWOxXJEthMEuXj/Jwc4kM6OgOJQwYOdMA
	0Rh7FcCMyMU41Puc3qH3dOI3ScUAfUvxiqdRJVcghunVwjnGL805e7emjI2CNVqKtBYO
	0yeIKUJv+CISS03HiTYXxfnB20cXSYwXRA6GTEGDEXq95QCiGu7UxKP+OtnkLfsDZrH9
	48JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=U1QcIkoXZ9BqmlsQdgfuQ9pcEQFlaS1GLEoj2KeFFBY=;
	b=g79wTb363+oWFAQulEQwMYz1OB0oSQwNk8B9urR5NYHfw3eeqkBiMhSRuI9iIvvNnJ
	GShIPpF+rcCC5PUjsYDfPZICrNNWroYS640HUEKi2dtIpH67f4YBApGUN10zIVtkBvVT
	qBshRal1idVjOCaqAk98QVUq6cvegkDE34QrqSAYPE7t1SxqL9xxZ0wnnbFg8zzjNHI7
	b6WrXdNPiFYU60//lYRg0yLItFki5Mp9d5uU4tyFexD607+oIR6KeAo+cnDGf60wEgOg
	jp9A6kKxMwLm2E26rsgit/7RunZWZGORU06PgmTu7m2LS4yTpPlvTTEJRRqC96Xl5GWK
	q+hg==
X-Gm-Message-State: AElRT7FWWBX1e8Twlvsie7ndZBZIfnnbWNyBLUxjEPVibEGgQkaDq+Fh
	i3bLEDN+lVLG6yYN+Zgw9/W6X+4nCH5vneF3/qrWqw==
X-Google-Smtp-Source: AG47ELvZesAdTT9PkbtP8XY+97BxlRscT+XgPI+fOkWaGBgsmzXzD3Zu3ZoCvwUddUvqHWFgtp4q0vUHIYOX+kQClvg=
X-Received: by 10.55.100.149 with SMTP id y143mr42135839qkb.307.1520599996946; 
	Fri, 09 Mar 2018 04:53:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.133.132 with HTTP; Fri, 9 Mar 2018 04:53:16 -0800 (PST)
From: Maryem Ayadi <maryem.ayady@gmail.com>
Date: Fri, 9 Mar 2018 13:53:16 +0100
Message-ID: <CAFA3ZMr-CT-zE+kt_p0OYGNrkiQ3y96pivLTf7t-jaOJSs_Njw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 11 Mar 2018 16:02:55 -0700
Subject: Writing the image to a USB Key.
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
X-List-Received-Date: Fri, 09 Mar 2018 12:53:19 -0000
Content-Type: multipart/alternative; boundary="94eb2c0574bca9de550566fa46fa"

--94eb2c0574bca9de550566fa46fa
Content-Type: text/plain; charset="UTF-8"

Dear Mr, Mrs,

I built a minimal image for up board 2 and I've tried to write the image to
a USB Key to boot the hardware later. The problem is with partitioning ! I
copied both image and mkefidisk.sh file in the same directory and run this
command:


* ./mkefidisk.sh  /dev/sdb core-image-minimal-intel-corei7-64.ext4
/dev/mmcblk0*


And I got this :
















*WARNING: This script is deprecated and will be removed soon.Please
consider using wic EFI images instead.Image details    image:
'core-image-minimal-intel-corei7-64.ext4'     size: 13227008
bytes modified: 2018-03-09 12:12:19.306773676 +0100     type: Linux rev 1.0
ext4 filesystem data, UUID=c15962c7-cc72-4413-b478-96457cffeef6 (extents)
(large files) (huge files)Device details  device: /dev/sdb  vendor:
VendorCo   model: ProductCode         size: 8053063680 bytes*










*Prepare EFI image on /dev/sdb [y/N]? yBoot partition size:   20 MB
(/dev/sdb1)ROOTFS partition size: 7631 MB (/dev/sdb2)Swap partition size:
402 MB (/dev/sdb3)Partitioning installation media (/dev/sdb)Formatting
partitionsFailed to format /dev/sdb1*



Any ideas ?

Best regards,
Maryem

--94eb2c0574bca9de550566fa46fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Dear Mr, Mrs,<br><br></div>I built a m=
inimal image for up board 2 and I&#39;ve tried to write the image to a USB =
Key to boot the hardware later. The problem is with partitioning ! I copied=
 both image and mkefidisk.sh file in the same directory and run this comman=
d:<br><br><span style=3D"font-family:times new roman,serif"><i><br>=C2=A0<b=
>./mkefidisk.sh=C2=A0 /dev/sdb core-image-minimal-intel-corei7-64.ext4=C2=
=A0 /dev/mmcblk0</b></i></span><br><br><br>And I got this :<br><br><br><br>=
<span style=3D"font-family:times new roman,serif"><i><b>WARNING: This scrip=
t is deprecated and will be removed soon.<br>Please consider using wic EFI =
images instead.<br><br>Image details<br>=C2=A0</b>=C2=A0=C2=A0 image: &#39;=
core-image-minimal-intel-corei7-64.ext4&#39;<br>=C2=A0=C2=A0=C2=A0=C2=A0 si=
ze: 13227008 bytes<br>=C2=A0modified: 2018-03-09 12:12:19.306773676 +0100<b=
r>=C2=A0=C2=A0=C2=A0=C2=A0 type: Linux rev 1.0 ext4 filesystem data, UUID=
=3Dc15962c7-cc72-4413-b478-96457cffeef6 (extents) (large files) (huge files=
)<b><br><br>Device details<br>=C2=A0</b> device: /dev/sdb<br>=C2=A0 vendor:=
 VendorCo<br>=C2=A0=C2=A0 model: ProductCode=C2=A0=C2=A0=C2=A0=C2=A0 <br>=
=C2=A0=C2=A0=C2=A0 size: 8053063680 bytes</i><b><i><br><br>Prepare EFI imag=
e on /dev/sdb [y/N]? y<br><br>Boot partition size:=C2=A0=C2=A0 20 MB (/dev/=
sdb1)<br>ROOTFS partition size: 7631 MB (/dev/sdb2)<br>Swap partition size:=
=C2=A0=C2=A0 402 MB (/dev/sdb3)<br><br>Partitioning installation media (/de=
v/sdb)<br>Formatting partitions<span style=3D"color:rgb(204,0,0)"><br><font=
 size=3D"2">Failed to format /dev/sdb1</font></span></i><br></b><br><br></s=
pan><br><br></div>Any ideas ? <br><br></div>Best regards,<br></div>Maryem<b=
r></div>

--94eb2c0574bca9de550566fa46fa--
