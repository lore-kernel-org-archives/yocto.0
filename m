Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2260AE0027D
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 11:06:02 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10728795pbb.35
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 11:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=hkAcxkVaKFPgZ8X7G7y55ZvqzvE6BIQzKP1APPKz1ts=;
	b=GDmoqovr+IQSpmE8tZBW1iwDMY+JQ1XGtTEENAmfa0HK59GoEy7wvgiTXrT56w8Sq4
	Zg+gQ9lNtNkt9h2FBJ8Gj2+h7+Z8l5T2fyCzSxrQIp0u74y7IdYVe/oQODnPSLt4H0DY
	ARETTQG9McCBXdgS6r6DRouSdDriJpD5StrdIDxv3htmML1T88cL2YYRvoNW8lTjrf1u
	Ga/ZWZWA3y540HJJdvdhiwnAbjV9LnccrWOW+FefQAo6CfLYeDuZImrj5K9uxEhC7mp8
	DElZ+THxAEUbFb+ZO6YhA9KoDBfEaa+nmiv89m9ycWOF+z8sNR8EDLG0A0jpeBLlnGZy
	J2cg==
Received: by 10.66.73.133 with SMTP id l5mr17236561pav.74.1342375561903;
	Sun, 15 Jul 2012 11:06:01 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id to1sm10255658pbc.27.2012.07.15.11.05.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 15 Jul 2012 11:06:01 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <D4B0883B-1498-4743-BF9D-1AAE07113E18@gmail.com>
Date: Sun, 15 Jul 2012 22:05:54 +0400
Message-Id: <4E3AEEE4-7B09-4F03-BCCA-3E0B7C73A399@gmail.com>
References: <A44F3AEF-22D3-4C66-A9AC-15DE9D355ECE@gmail.com>
	<78C7EA88-D00A-45E7-8DB4-038E07A7BCBA@gmail.com>
	<CAMKF1spOYQD1LRK+AbRo-Tes5Ykch3ELJ==6+r7N=igngeBP+Q@mail.gmail.com>
	<D4B0883B-1498-4743-BF9D-1AAE07113E18@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: linux-xilinx: uImage.dtb files not being generated anymore
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
X-List-Received-Date: Sun, 15 Jul 2012 18:06:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Jul 15, 2012, at 9:23 PM, Elvis Dowson wrote:

> I tried various combinations, but all of them did not yield a dtb =
file.
>=20
> KERNEL_DEVICETREE =3D "virtex440-ml507.dtb"  (as you suggested in your =
original email, but I guess it might have been a typo? should be .dts?)
> KERNEL_DEVICETREE =3D "virtex440-ml507.dts"
> KERNEL_DEVICETREE =3D "arch/powerpc/boot/dts/virtex440-ml507.dts"
>=20
> How exactly should I specify the .dts to get yocto to generate the =
.dtb file?

I found the solution, I had to ensure that the KERNEL_DEVICE tree =
variable evaluate to the following=20

KERNEL_DEVICETREE =3D "${S}/arch/powerpc/boot/dts/virtex440-ml507.dts"

i.e. it was missing the ${S} prefix.

Elvis Dowson


