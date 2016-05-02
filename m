Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 571F9E00D03; Mon,  2 May 2016 07:43:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 401B6E00CD3
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 07:43:24 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id o66so291207936ywc.3
	for <yocto@yoctoproject.org>; Mon, 02 May 2016 07:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=Yh12IAVb0ETm+G/PKF9hub/8kwFUimlxVZ/fxvcnuZQ=;
	b=ctwONMkHrmRSJXeN37Go3fwRB9Cno8i6YEGI+/amIwf/ma6hNnDUBH7zt7+8FWWaRC
	Wa10Kf/rFtJHRzC3TOOibP+089Ra9DbdpMKIG4/HCE++oGqZnlDaCzskmASY3gQ4IBCe
	IpKxVkU7ltDdg9g+CMR5fqrBg7AaSUvg6UnJHxO2aheqvrb/M71Ue2VxKztf4w8mmy/3
	bd8n60RDTWAlUzvhoy+VqpAaDDiecCKlJxK/UTwiTJyvOkB3TJJ3iZ+P8FOyF4F16Z1v
	7ZZXF9wwlUeBli1W+940Um/mDkmO5tnCMDAHARe02U6YkwsnhvLkLC5G2w1sOrJNwZQ9
	MlQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Yh12IAVb0ETm+G/PKF9hub/8kwFUimlxVZ/fxvcnuZQ=;
	b=ZWfSBdP4AoyiNzpC3N0ZGe3PEjez8YPEKHwhjpZYl7MR7lcLSaGkaC7Q4zunCbC9OO
	ZhcPbbLpu7BrYpfCmvMqqF4LATk0c970Se8mDAp29wtQpwxZWAgNtHFrENkXEoF2qPun
	2MRPdW4gty/VDFY3jpEOLUpihuJPODEkrFA/qM78yThaHshZKd/5bIeZrXkC1ISgjfpu
	/8T6R4gRjjl5PoFV7QIrOrlOelKTnpK0mK6yAfOEwHgYi7nTHzvzGQtnTPHbMmHFyS4k
	3Hljlia4AOOvdnw4vZPBVE9xb4Q/gRt4OWiVENduURAV5L9lNChcjfaglB/MU6504gSt
	3v/g==
X-Gm-Message-State: AOPr4FW1Sc4oqkcwBJiyZjq0Zh3zjhiE6U/iK0cHxlNfESL09r6hHL16BWBoVF9MNYzNDlQTtC5RnN1VlAHghw==
MIME-Version: 1.0
X-Received: by 10.159.40.132 with SMTP id d4mr21174903uad.21.1462200204010;
	Mon, 02 May 2016 07:43:24 -0700 (PDT)
Received: by 10.31.213.131 with HTTP; Mon, 2 May 2016 07:43:23 -0700 (PDT)
Date: Mon, 2 May 2016 10:43:23 -0400
Message-ID: <CABfz71dUBbkQdidZkzLijTpesepXUJ0uUn4P5W3Nd6Cw2y27AQ@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
To: yocto@yoctoproject.org
Subject: Booting live images (core-image-minimal-initramfs) on ARM
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
X-List-Received-Date: Mon, 02 May 2016 14:43:28 -0000
Content-Type: multipart/alternative; boundary=94eb2c123e28c046550531dd03ed

--94eb2c123e28c046550531dd03ed
Content-Type: text/plain; charset=UTF-8

I have created kernel with an initramfs bundled that uses
"initramfs-live-boot" to search for a "root.img" file on any mounted media
devices (/media/*/root.img). I have added some rules to udev to automount a
block device correctly.

However, when I attempt to create the live image, it depends on syslinux,
which isn't available for ARM.

ERROR: Nothing PROVIDES 'syslinux'
ERROR: syslinux was skipped: incompatible with host arm-poky-linux-gnueabi
(not in COMPATIBLE_HOST)

I have the following in my image.

IMAGE_FSTYPES = "live"

Why do we need the syslinux dependency? I have already booted my kernel via
u-boot, so it seems unnecessary. Is there another IMAGE_FSTYPE that is
compatible with the "initramfs-live-boot" package? cramfs? If so, do I need
to change the "init-live.sh" script in "initramfs-live-boot" to support
this new file type?

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--94eb2c123e28c046550531dd03ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have created kernel with an initramfs bundled that =
uses &quot;initramfs-live-boot&quot; to search for a &quot;root.img&quot; f=
ile on any mounted media devices (/media/*/root.img). I have added some rul=
es to udev to automount a block device correctly.</div><div><br></div><div>=
However, when I attempt to create the live image, it depends on syslinux, w=
hich isn&#39;t available for ARM.</div><div><br></div><div><div>ERROR: Noth=
ing PROVIDES &#39;syslinux&#39;</div><div>ERROR: syslinux was skipped: inco=
mpatible with host arm-poky-linux-gnueabi (not in COMPATIBLE_HOST)</div></d=
iv><div><br></div><div>I have the following in my image.</div><div><br></di=
v><div><div>IMAGE_FSTYPES =3D &quot;live&quot;</div></div><div><br></div><d=
iv>Why do we need the syslinux dependency? I have already booted my kernel =
via u-boot, so it seems unnecessary. Is there another IMAGE_FSTYPE that is =
compatible with the &quot;initramfs-live-boot&quot; package? cramfs? If so,=
 do I need to change the &quot;init-live.sh&quot; script in &quot;initramfs=
-live-boot&quot; to support this new file type?</div><br clear=3D"all"><div=
><div class=3D"gmail_signature"><div dir=3D"ltr"><div>Thanks,</div><div>Pau=
l Knopf</div><div>Software Engineer</div><div>Med X Change, Inc</div><div><=
a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medxchange=
.com</a></div></div></div></div>
</div>

--94eb2c123e28c046550531dd03ed--
