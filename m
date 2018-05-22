Return-Path: <rahuljangra017@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D82DE00903; Mon, 21 May 2018 23:52:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rahuljangra017[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB5D5E0086B;
	Mon, 21 May 2018 23:52:07 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id 196-v6so376930qke.9;
	Mon, 21 May 2018 23:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZT1DjRDyObUWJVjEcIok/0jq2sjcdtxo4XkDKA6kCbw=;
	b=g5/ZNvNTi8PUcx6akX8utCzTl1gxDQdoAag7GzYSUIVm998zLmrZRvE+ax8zdbTOe0
	o1S53UYvbRsIQ4C6p31KzCDC6Fuey4xCB1UFaAgRDCDdchyzNNZQGMtMnDwuh13TTYkh
	qpTBtTfQ6R35T1L2Snk3F4ErdF/SvmAn3sCyN+0XJmhXmkmJTljrE1crm13N+curfdq+
	7HBgHQJSHQLPZyZbPR9ryVUa6C6s6lQ/RFdM0YB69pS7vUGkZ2LE5K3THd7xlPUnVikc
	ksYJGpwEQHPiPn4Ct2jxgJuPkYx51hmnKl0jpOb6CpGFFLBY01q3ACLrRZNd8eATsZvz
	ksQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZT1DjRDyObUWJVjEcIok/0jq2sjcdtxo4XkDKA6kCbw=;
	b=Yt20ufFH902FsSJ3G0tXT6rXfpRdxqiD4shRSCuMCdx8xQ2BfP5ldh8e0tWDf/mT/P
	9pxFZeTk4J+e50GDHe+FC5LvHOuGBTCA5ozoPDLwFOGgvANrJ4jw2pVrZ2V9h8PKyYpn
	GxIkAuFFTgH4kZMdu150Zve2ui0/NS+MBNub+lB6XEQ31h9zcUuZ/a97s48bQYyDjYn1
	GXRdfaPrfkQqnK5CTVkzV/LwyBT62ZCsCtyPfxEdELnwFsf4p9Wck4WiiVKIWeg2/eFF
	FTSS90w1j+kOEHYiheRkXzGZ4q+dU2jiYX2fmN2VIrOuvM0niexjQkU78FqI1v/IhUIn
	1CFw==
X-Gm-Message-State: ALKqPwf7WtSxHAQN3IzVrZ433WM8rfybdJam6IvcrF7fp+ZLlpn8Y0cZ
	z+txzxVFS9SXgptHxAhPoQV9ZKODBJA04AvkUfQ=
X-Google-Smtp-Source: AB8JxZoJUZ9aLsOzDXS5anyL+lKaxsQ5U0hXS9/CQ7piUsXCyfN0BTYa0LA1fivi+41fgLqCaUtx+i5/2Z3tnM8hnOg=
X-Received: by 2002:a37:48cf:: with SMTP id
	v198-v6mr19736554qka.128.1526971926722; 
	Mon, 21 May 2018 23:52:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.229.132 with HTTP; Mon, 21 May 2018 23:52:06 -0700 (PDT)
From: Rahul jangra <rahuljangra017@gmail.com>
Date: Tue, 22 May 2018 12:22:06 +0530
Message-ID: <CAGUdgLYNbUfcgphEhWfkb5EVjehCz8VsQj6g4yNfb--nRAd1Zg@mail.gmail.com>
To: yocto-request <yocto-request@yoctoproject.org>,
	yocto <yocto@yoctoproject.org>, 
	yocto-builds-owner <yocto-builds-owner@yoctoproject.org>
Subject: (No subject)
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
X-List-Received-Date: Tue, 22 May 2018 06:52:09 -0000
Content-Type: text/plain; charset="UTF-8"

Hi team
I am facing the issue when creat deb base core-image-full-cmdline he
is getting this error but when I switch to rpm easily to built.
kindly help me.

 Executing 'cd /home/nsspl/rpi/build/tmp/deploy/deb/all;
PSEUDO_UNLOAD=1
/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-ftparchive
packages . > Packages;/home/nsspl/rpi/build/tmp/hosttools/gzip -fcn
Packages > Packages.gz;PSEUDO_UNLOAD=1
/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-ftparchive
release . >> Release' ...
NOTE: Executing 'cd
/home/nsspl/rpi/build/tmp/deploy/deb/cortexa7hf-neon-vfpv4;
PSEUDO_UNLOAD=1
/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-ftparchive
packages . > Packages;/home/nsspl/rpi/build/tmp/hosttools/gzip -fcn
Packages > Packages.gz;PSEUDO_UNLOAD=1
/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-ftparchive
release . >> Release' ...
NOTE: Executing 'cd /home/nsspl/rpi/build/tmp/deploy/deb/raspberrypi3;
PSEUDO_UNLOAD=1
/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-ftparchive
packages . > Packages;/home/nsspl/rpi/build/tmp/hosttools/gzip -fcn
Packages > Packages.gz;PSEUDO_UNLOAD=1
/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-ftparchive
release . >> Release' ...
NOTE: Installing the following packages: locale-base-en-us locale-base-en-gb
NOTE: Installing the following packages: dpkg hello-mender
psplash-raspberrypi packagegroup-core-full-cmdline apt run-postinsts
mender packagegroup-core-boot packagegroup-core-ssh-openssh
kernel-devicetree shadow kernel-image-4.14.37 base-passwd
ERROR: Unable to install packages. Command
'/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-get
 install --force-yes --allow-unauthenticated dpkg hello-mender
psplash-raspberrypi packagegroup-core-full-cmdline apt run-postinsts
mender packagegroup-core-boot packagegroup-core-ssh-openssh
kernel-devicetree shadow kernel-image-4.14.37 base-passwd' returned
100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 packagegroup-core-full-cmdline : Depends:
packagegroup-core-full-cmdline-initscripts but it is not going to be
installed
E: Unable to correct problems, you have held broken packages.

Regards

Rahul

