Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24C74E0027E
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 10:12:09 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so3779912ghb.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 10:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=4yUTY+z+dlRjlsajaVeHWzvrruRf127gWHCAPzFSP0k=;
	b=IHZWy6fPud7FjtdUpENgOLVr5cb+bQyWeus4UIxt5KGuaRjseHHi+oig8qdtYlxr26
	EvlHwJTPFOxEt1pK8g/+GJ7pdsEzhHpgIb/qofZLeKe0PkfBP3czLFk6wTN6HR4NMXpt
	gCOrSFSVPSABivB/1uGSkyEbNmIxLIagHNsZ5Wm/4UDSwdpdXkyRAkww2fknUxzSwKB2
	qMBn5rQvg+c9hUSvR4w5+JwRsnf3ycLxFekiZgMVBsa2KGVK8IBQkDli7+EVN3uoUvpp
	Su1+VTgfVQAtNJZi1Dpl8Uxdid+knJ0yep6JUxzC+mjNXl1o9JNE6wijKd6Z+Ei0j8Eu
	ubCg==
Received: by 10.66.74.97 with SMTP id s1mr25920887pav.11.1344877928226;
	Mon, 13 Aug 2012 10:12:08 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id sh10sm42756pbc.29.2012.08.13.10.12.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 13 Aug 2012 10:12:07 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Mon, 13 Aug 2012 21:12:02 +0400
Message-Id: <95FCC856-D0D4-4DB8-8078-C4BBC4172410@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: poky: core-image-minimal cannot login
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
X-List-Received-Date: Mon, 13 Aug 2012 17:12:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      I've created a ramdisk with core-image-minimal for powerpc 440 =
soft-float, and find that I cannot login

Yocto (Built by Poky 7.0) 1.2+snapshot-20120812 (none) ttyS0             =
                                      =20
                                                                         =
                                      =20
(none) login:

I type root, but it doesn't do anything.

Putting init=3D/bin/sh works, and I get a bash prompt ok, but I don't =
get a login prompt if I let the default /etc/inittab run using getty.

Best regards,

Elvis Dowson=

