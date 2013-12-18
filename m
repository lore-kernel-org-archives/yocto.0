Return-Path: <billmartin544@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7055DE00803
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 15:54:20 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id qd12so517694ieb.1
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 15:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=rFT15P6VCKJ6UFQqOQeFsxFihWi8HCg64kHPYiMNkxE=;
	b=RVw6dheLkzhfxZuK/XGCL+DtQTRXsdby1nyAnkZhOCeWUqzJp6bkDRepyGdEwDJQ61
	nb8pBgdGrSjpjoECCLS27dpVDUkPwgKwNJwnrDxjoQkWBP1bS5RrbSLOCZll2SOT4v/D
	SsOsDlrWtRBrvgnhNiy9GP7n63kVEp9kyexZlExO1ndcGFM7boSWTT9A7YtS3cXyYBDY
	208AWhCtu+TqHJBGMw3Vgxl+6OrUek7XbEIMvdDxGDuOfztY7urq0ReWHq7MqJEVmwFk
	gU7aX/Pw2OfezyEQXqKZw6c8+acKXuAWE8MP54SmsLxPzh8rzRTZ1720T4cVbK/cbH1s
	7rXw==
MIME-Version: 1.0
X-Received: by 10.50.126.74 with SMTP id mw10mr249854igb.24.1387410859657;
	Wed, 18 Dec 2013 15:54:19 -0800 (PST)
Received: by 10.64.228.199 with HTTP; Wed, 18 Dec 2013 15:54:19 -0800 (PST)
Date: Wed, 18 Dec 2013 15:54:19 -0800
Message-ID: <CAJGS5=HtGV8Fs08F3NQMmHbxUOqcGrH7OveP5CvOg9EPZj4GoA@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: Kontron CONFIG_I2C_KEMPLD support in Fish River Island 2? Or Crownbay?
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
X-List-Received-Date: Wed, 18 Dec 2013 23:54:28 -0000
Content-Type: multipart/alternative; boundary=047d7b4141767299c504edd7c3c2

--047d7b4141767299c504edd7c3c2
Content-Type: text/plain; charset=ISO-8859-1

We are in need of enabling the CONFIG_I2C_KEMPLD  for a build for our
Kontron (architecture is x86).

We have been using the Crownbay BSP. But of course I did a google search
and found patches in the Linux kernel for allowing i2c_kempld. Also these
patches were associated with Fish River Island II.

I was under the impression that these names "Crownbay," "Fish River Island
II" and such were all part of Yocto. The patches I encountered were dated
earlier this year and I was assuming the Fish River Island II BSP for our
Dylan (9.0.2) build would support I2C

--047d7b4141767299c504edd7c3c2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We are in need of enabling the CONFIG_I2C_KEMPLD =A0for a =
build for our Kontron (architecture is x86).=A0<div><br></div><div>We have =
been using the Crownbay BSP. But of course I did a google search and found =
patches in the Linux kernel for allowing i2c_kempld. Also these patches wer=
e associated with Fish River Island II.</div>
<div><br></div><div>I was under the impression that these names &quot;Crown=
bay,&quot; &quot;Fish River Island II&quot; and such were all part of Yocto=
. The patches I encountered were dated earlier this year and I was assuming=
 the Fish River Island II BSP for our Dylan (9.0.2) build would support I2C=
=A0</div>
</div>

--047d7b4141767299c504edd7c3c2--
