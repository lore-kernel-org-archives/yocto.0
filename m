Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35DC0E00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 08:28:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qan41 with SMTP id 41so4682023qan.14
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 08:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:cc:in-reply-to:references:content-type:date
	:message-id:mime-version:x-mailer:content-transfer-encoding;
	bh=EdIEHVeQx4XWrkYu0USvpriXca015XuegZ9tpqn8QCg=;
	b=xhLTRWrhuvbjSHMgPBBLRt4hxo5lytpbRluhlCE7yhE8zyQ055jxYyyLpGEIQYVlA/
	8mj+OOR3hMq3seUwdMR9UeWatNMTcxiZTZtd1lRVZe67HP346NBh5hMa4j7uAYL0l8il
	1aGXWtKE66kdIlGLszNY/mJ3KUx3AHz2PqaIk=
Received: by 10.224.9.211 with SMTP id m19mr3662824qam.6.1323793714557;
	Tue, 13 Dec 2011 08:28:34 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	j7sm44419982qaq.11.2011.12.13.08.28.32 (version=SSLv3 cipher=OTHER);
	Tue, 13 Dec 2011 08:28:33 -0800 (PST)
From: Jim Abernathy <jfabernathy@gmail.com>
To: autif khan <autif.mlist@gmail.com>
In-Reply-To: <CADzUK1Jr=9+-Q0Y+nQtdyELinjZdxz_27tTWDuCHTCF14x0Kcw@mail.gmail.com>
References: <CADzUK1Jr=9+-Q0Y+nQtdyELinjZdxz_27tTWDuCHTCF14x0Kcw@mail.gmail.com>
Date: Tue, 13 Dec 2011 11:28:32 -0500
Message-ID: <1323793712.1631.1.camel@jim-ubuntu>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: Where is the emgd.ko module?
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
X-List-Received-Date: Tue, 13 Dec 2011 16:28:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-12-13 at 11:13 -0500, autif khan wrote:
> I built the "crownbay" (not crownbay-noemgd) image as outlined in the
> E660 development kit (link
> http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1)
> 
> I used poky-edison-6.0.tar.bz2 and crownbay-edison-6.0.0.tar.bz2 and
> followed the instructions (short version - extract, move, add
> meta-intel/meta-crownbay to bblayers.conf, add MACHINE="crownbay" to
> local.conf, bitbake core-image-sato)
> 
> The result was the expected set of images in tmp/deploy/images
> 
> I loop mounted the core-image-sato-crownbay.ext3 and tried to find
> emgd.ko in the file system - I could not find it. (find output
> attached - notice that there is no emgd.ko)
> 
> Here is the kicker - crownbay-edison-6.0.0.tar.bz2 has a directory
> called "binary" which contains core-image-sato-crownbay.hddimg, which
> contains rootfs.img, which I also loop mounted and was able to find
> the emgd.ko (however this image does not work with my hardware, I am
> not sure why). Find output for this is also included below.
> 
> I very much doubt that it is included as a part of the kernel, I
> looked at the kernel's .config (in
> tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r2/linux-crownbay-standard-build)
> and could not find emgd there either.
> 
> So, my questions is if I am doing something wrong? Do I need to do
> something to get the emgd.ko to build? I am using the latest release
> (6.0 "Edison" (released on October 17th, 2011)). Please advise.
> 
Check out the README file in the meta-crownbay directory. There are
instructions on integrating the EMGD driver files into the build.

Jim A

> Thanks
> 
> Autif
> 
> autif@xu:~/data/dev/yocto/emgd/tmp/deploy/images/1$ sudo find . | grep emgd
> ./usr/lib/libemgdsrv_um.so.1.5.15.3226
> ./usr/lib/libemgdsrv_um.so
> ./usr/lib/libemgdglslcompiler.so.1.5.15.3226
> ./usr/lib/libemgdPVR2D_DRIWSEGL.so
> ./usr/lib/xorg/modules/drivers/emgd_drv.so
> ./usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
> ./usr/lib/libemgdsrv_init.so
> ./usr/lib/libemgdsrv_init.so.1.5.15.3226
> ./usr/lib/libemgdglslcompiler.so
> ./usr/lib/dri/emgd_dri.so
> autif@xu:~/data/dev/yocto/emgd/tmp/deploy/images/1$
> 
> autif@xu:~/data/dev/yocto/poky-edison-6.0/meta-intel/meta-crownbay/binary/2$
> sudo find . | grep emgd
> ./usr/lib/libemgdsrv_um.so
> ./usr/lib/dri/emgd_dri.so
> ./usr/lib/libemgdsrv_init.so.1.5.15.3226
> ./usr/lib/libemgdsrv_init.so
> ./usr/lib/xorg/modules/drivers/emgd_drv.so
> ./usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
> ./usr/lib/libemgdglslcompiler.so.1.5.15.3226
> ./usr/lib/libemgdsrv_um.so.1.5.15.3226
> ./usr/lib/libemgdPVR2D_DRIWSEGL.so
> ./usr/lib/libemgdglslcompiler.so
> ./lib/modules/3.0.4-yocto-standard+/kernel/drivers/gpu/drm/emgd
> ./lib/modules/3.0.4-yocto-standard+/kernel/drivers/gpu/drm/emgd/emgd.ko
> ./etc/rpm-postinsts/kernel-module-emgd.sh.done
> autif@xu:~/data/dev/yocto/poky-edison-6.0/meta-intel/meta-crownbay/binary/2$
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



