Return-Path: <autif.mlist@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99500E00739
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 08:13:04 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yhpp56 with SMTP id p56so592429yhp.35
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 08:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5DZflUM2u3P5AImQZgO0MOCFiSGiuSE7m19q+5pz6R4=;
	b=J9Q36CxPuRgTUsj4AA77Ommn4ToUKgqo63yZlGP9Hm4IJdTur9sel7iXXztQ8LoaAG
	xx83dYTj55h696Mk+Elrs+eTJbXMj6T12w+icILbafarYsg4vvwL+G1jxAdk+1EFeKDi
	BuGffw663N9JmD9ct2ai/jTIfCUte0dk1xkI8=
MIME-Version: 1.0
Received: by 10.236.77.72 with SMTP id c48mr4474617yhe.55.1323792783983; Tue,
	13 Dec 2011 08:13:03 -0800 (PST)
Received: by 10.236.121.234 with HTTP; Tue, 13 Dec 2011 08:13:03 -0800 (PST)
Date: Tue, 13 Dec 2011 11:13:03 -0500
Message-ID: <CADzUK1Jr=9+-Q0Y+nQtdyELinjZdxz_27tTWDuCHTCF14x0Kcw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Where is the emgd.ko module?
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
X-List-Received-Date: Tue, 13 Dec 2011 16:13:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

I built the "crownbay" (not crownbay-noemgd) image as outlined in the
E660 development kit (link
http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1)

I used poky-edison-6.0.tar.bz2 and crownbay-edison-6.0.0.tar.bz2 and
followed the instructions (short version - extract, move, add
meta-intel/meta-crownbay to bblayers.conf, add MACHINE="crownbay" to
local.conf, bitbake core-image-sato)

The result was the expected set of images in tmp/deploy/images

I loop mounted the core-image-sato-crownbay.ext3 and tried to find
emgd.ko in the file system - I could not find it. (find output
attached - notice that there is no emgd.ko)

Here is the kicker - crownbay-edison-6.0.0.tar.bz2 has a directory
called "binary" which contains core-image-sato-crownbay.hddimg, which
contains rootfs.img, which I also loop mounted and was able to find
the emgd.ko (however this image does not work with my hardware, I am
not sure why). Find output for this is also included below.

I very much doubt that it is included as a part of the kernel, I
looked at the kernel's .config (in
tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r2/linux-crownbay-standard-build)
and could not find emgd there either.

So, my questions is if I am doing something wrong? Do I need to do
something to get the emgd.ko to build? I am using the latest release
(6.0 "Edison" (released on October 17th, 2011)). Please advise.

Thanks

Autif

autif@xu:~/data/dev/yocto/emgd/tmp/deploy/images/1$ sudo find . | grep emgd
./usr/lib/libemgdsrv_um.so.1.5.15.3226
./usr/lib/libemgdsrv_um.so
./usr/lib/libemgdglslcompiler.so.1.5.15.3226
./usr/lib/libemgdPVR2D_DRIWSEGL.so
./usr/lib/xorg/modules/drivers/emgd_drv.so
./usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
./usr/lib/libemgdsrv_init.so
./usr/lib/libemgdsrv_init.so.1.5.15.3226
./usr/lib/libemgdglslcompiler.so
./usr/lib/dri/emgd_dri.so
autif@xu:~/data/dev/yocto/emgd/tmp/deploy/images/1$

autif@xu:~/data/dev/yocto/poky-edison-6.0/meta-intel/meta-crownbay/binary/2$
sudo find . | grep emgd
./usr/lib/libemgdsrv_um.so
./usr/lib/dri/emgd_dri.so
./usr/lib/libemgdsrv_init.so.1.5.15.3226
./usr/lib/libemgdsrv_init.so
./usr/lib/xorg/modules/drivers/emgd_drv.so
./usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
./usr/lib/libemgdglslcompiler.so.1.5.15.3226
./usr/lib/libemgdsrv_um.so.1.5.15.3226
./usr/lib/libemgdPVR2D_DRIWSEGL.so
./usr/lib/libemgdglslcompiler.so
./lib/modules/3.0.4-yocto-standard+/kernel/drivers/gpu/drm/emgd
./lib/modules/3.0.4-yocto-standard+/kernel/drivers/gpu/drm/emgd/emgd.ko
./etc/rpm-postinsts/kernel-module-emgd.sh.done
autif@xu:~/data/dev/yocto/poky-edison-6.0/meta-intel/meta-crownbay/binary/2$

