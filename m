Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AC0AE0070C
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 04:07:36 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so6721692pbb.35
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 04:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=hmCbhqCJH3+nFBDrUIx5l8fqUyRa2cJoEhA12vjW/gM=;
	b=MtiJsEPRJ7jmt0HhHNl9dI5yM6Xv7LJEqOIhG+sViCNxacot5+Zukq3iG26nPsgf3h
	o/EJGZNdo4lsdN1klQ22jcr5+VrcGI0oXjCSyjObPwfez55eqdTGOLngj/cDTIP5twJy
	7UlSFzqdcid5h/75Jxn7XG1AcFqy8TikUgVLdnLt9AMlYNxneAeTSS6sQXT/BC/qELS3
	9I9/BBT5r5nHYG+4xass8v9uRqT8retiYoZ8v4/KJhVDakzMwnaYkLFoJrOYhpW13M+4
	9E95RuYXf/Asap2fhb1Ibc3DTcJo1Mg4NAUuuX50H+TLmUGhQFu54tmTj2loEIRJ+0i0
	7wbQ==
Received: by 10.68.222.163 with SMTP id qn3mr14357532pbc.135.1341054455721;
	Sat, 30 Jun 2012 04:07:35 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id ob9sm8000226pbb.28.2012.06.30.04.07.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 30 Jun 2012 04:07:35 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <A44F3AEF-22D3-4C66-A9AC-15DE9D355ECE@gmail.com>
Date: Sat, 30 Jun 2012 15:07:29 +0400
Message-Id: <78C7EA88-D00A-45E7-8DB4-038E07A7BCBA@gmail.com>
References: <A44F3AEF-22D3-4C66-A9AC-15DE9D355ECE@gmail.com>
To: Zhenhua Luo <b19537@freescale.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
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
X-List-Received-Date: Sat, 30 Jun 2012 11:07:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Jun 30, 2012, at 10:17 AM, Elvis Dowson wrote:

> About a week ago, my linux-xilinx builds used to correctly generate =
the *.dtb files, required for the PowerPC440 processor on my Xilinx =
ML-507 development board. After having recently updated poky, I find =
that the required *.dtb files are not generated anymore.
>=20
> Would someone be able to tell me which file I should take a look at to =
restore this functionality?
>=20
> My build configuration is as follows:
>=20
> Build Configuration:
> BB_VERSION        =3D "1.15.2"
> TARGET_ARCH       =3D "powerpc"
> TARGET_OS         =3D "linux"
> MACHINE           =3D "virtex5"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.2+snapshot-20120630"
> TUNE_FEATURES     =3D "m32 fpu-soft ppc440"
> TARGET_FPU        =3D "soft"
> meta             =20
> meta-yocto        =3D =
"master:4d48398798c898c5db08294ba64d9bfc7daca19c"
> meta-oe           =3D =
"master:3eb5f6eecf6faf7b2701f94b12cf779350d31acc"
> meta-xilinx       =3D =
"master:c977270d6f0608cc5fa83f57254202713af37be0"

I traced the reason for the dtb file not build due to the following =
commit:

=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D8c904eb643ad8c=
a1bc29cb2d870a80b355dcb341

Should I specify DTS_FILE in order to get my recipe to build the *.dtb?

Best regards,

Elvis Dowson=

