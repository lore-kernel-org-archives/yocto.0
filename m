Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8A1AE006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 23:17:21 -0700 (PDT)
Received: by dadz8 with SMTP id z8so6334166dad.35
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 23:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=7Una46ZmZxYxr3jw9TZE290hZfduacMfUn5zAGG9wLU=;
	b=EP/g5HBKF7fn3dDqjpANe5syBNfM3vjzME0P7nGsVuBIEs3as8PrFZ1M58KDyJEB7v
	o2maU4G0GVA/BXdgDfY00lUwh2yl+J2L01NgLutanzbTIWpe8V9si4hdoNNI4ayePKuK
	uLJL0f1FGvmnmri/XaoZZMt7P6lm5CeO3YnQgeEJe+CHIcu9s3tFHZHfAsUquCW4x3hY
	T8yTz1ztwZOZAY55+WwcFDIcDnv7j0vaIfGKCTox0d4rQF6nK0NaRoW7CvIEFBLHfOtX
	hrm47jtLIiyQDVEQ2riun0jiZxbUNHscnXYTslcV0cPYDmVXmlL5Xl2RG1tjgfPKsG1+
	1O8g==
Received: by 10.68.237.106 with SMTP id vb10mr12774164pbc.148.1341037041241;
	Fri, 29 Jun 2012 23:17:21 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id rs4sm7521182pbc.0.2012.06.29.23.17.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 29 Jun 2012 23:17:20 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 30 Jun 2012 10:17:15 +0400
Message-Id: <A44F3AEF-22D3-4C66-A9AC-15DE9D355ECE@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: linux-xilinx: uImage.dtb files not being generated anymore
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
X-List-Received-Date: Sat, 30 Jun 2012 06:17:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      About a week ago, my linux-xilinx builds used to correctly =
generate the *.dtb files, required for the PowerPC440 processor on my =
Xilinx ML-507 development board. After having recently updated poky, I =
find that the required *.dtb files are not generated anymore.

Would someone be able to tell me which file I should take a look at to =
restore this functionality?

My build configuration is as follows:

Build Configuration:
BB_VERSION        =3D "1.15.2"
TARGET_ARCH       =3D "powerpc"
TARGET_OS         =3D "linux"
MACHINE           =3D "virtex5"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2+snapshot-20120630"
TUNE_FEATURES     =3D "m32 fpu-soft ppc440"
TARGET_FPU        =3D "soft"
meta             =20
meta-yocto        =3D "master:4d48398798c898c5db08294ba64d9bfc7daca19c"
meta-oe           =3D "master:3eb5f6eecf6faf7b2701f94b12cf779350d31acc"
meta-xilinx       =3D "master:c977270d6f0608cc5fa83f57254202713af37be0"


Best regards,

Elvis Dowson=

