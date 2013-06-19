Return-Path: <0xf777@gmail.com>
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCEB7E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 05:33:44 -0700 (PDT)
Received: by mail-la0-f47.google.com with SMTP id fe20so4569936lab.34
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 05:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=l8dVDT1PkVPP0g3NZxgR8ppPW9rKWFbU96W/xfXHKhI=;
	b=UbNb6zg2OD7D72BVNP+uo27hF2n/j58NkSOjktPL8cqrKmXgOh28nbP7LYMoMiLHTd
	cat0Yx6j89UjfmmaEPzwQv0xwWDMUN7OtUoz0qZu0Sr+yrgy64ETyirnmdwcb1IMrqiA
	opkHof59arLNPLYOziE9IauQNQkXEGoWLtrRGd4XIVB9nFcDmo2vhMoOpsYpSsqvUdt4
	NwRupG1WalKbwMtImnFCG18YS/cTazOTcxcKBsus/E/HH1YzNp1mAmf6ytnC78S7UFBk
	BGw37bkQFgkSQc13FQfLlOO18ntLu7KfCfXeKREAjqRPhYmFH2DH88MgVJ0LWs+OtBR0
	Ot7w==
MIME-Version: 1.0
X-Received: by 10.152.4.137 with SMTP id k9mr1302560lak.11.1371645222601; Wed,
	19 Jun 2013 05:33:42 -0700 (PDT)
Received: by 10.152.27.161 with HTTP; Wed, 19 Jun 2013 05:33:42 -0700 (PDT)
Date: Wed, 19 Jun 2013 16:33:42 +0400
Message-ID: <CAHyyKN=uJoee1pchKtEMbKT8paYrwiewrPKS8wWZQ5g5RHwpSA@mail.gmail.com>
From: Alex M <0xf777@gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-x11 works on QEMU and not on real hardware
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
X-List-Received-Date: Wed, 19 Jun 2013 12:33:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello!
I'm using poky-dylan-9.0.0.tar.bz2

I just built core-image-x11 and able to run it on qemux86, but all my
attempts to run image on real hardware with nVidia GTX465 or AMD
HD6320 - failed. In X11 logs I see errors about GLX module.

What I should do to add GLX and OpenGL 2.1 3D acceleration with Mesa
and opensource drivers for nVidia, Intel and AMD cards at the same
time?

P.S.
Strange, I expected to see working graphics with plain software VGA
driver not only with QEMU but on all hardware... BTW, when starting
Yocto I see graphic logo and progress bar.

