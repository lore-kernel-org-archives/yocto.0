Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7FBBE01D34; Mon, 14 May 2018 14:43:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 596D5E00D63
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 14:43:04 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id q22-v6so6633134pff.11
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 14:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:subject:message-id:date:to
	:mime-version; bh=k2frUiTtf6ByncUil3fvDiGbUqRrZ9wB7YrRQl6d2ss=;
	b=R2ha9bPHPFgQxOKwjnZ0OCq/hyFmXfzqJhE68FWn2uk5QFcJ8nfQ8sbee7qKVoKr20
	spsq6k8745NHrfYm1vQtZ3kHC91R+nxoynhaMKwZzbIa7ofagVHli+Ll+qzusGg1xm+Z
	mfY8mvx/rJo/ynO0PP5ddBKP3DbnoXShSCsNeLysFrFkZmYWpody1odFw9YMvwy6YhKe
	iuk+HRNVJ2+dxyxsTKfxGai1LiL0R4SGFG+ebuGu02suh2zwAZsu6DQ3dOTGNPMlXAwF
	7ksCGgb3HKMFz7/wAnVzSx6wj/A4m4QOsU1rMXnQNDAPlJjB5wuwHWCxeBbn0rOgnd1i
	4W+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:subject
	:message-id:date:to:mime-version;
	bh=k2frUiTtf6ByncUil3fvDiGbUqRrZ9wB7YrRQl6d2ss=;
	b=uTCLZVKyEWdevJQj1Wm357+nYvDgptKS/XWATzM1Qqy68s0duP+xP+ZI0hu4UeeIfE
	FvHLBV27roaEEwdYBi360IuYIJyY9qUSUU2DKFOwxeu/lvfe2fe+IiX5XpRzYbxyU1tY
	iE+Nwczf0CeC4EoNzjIszg5gc8EAVSX1ax7aO642RnI4+qlmruy2B89gp8iuedTU86Gp
	mXw6aKZ1fyslslxMMYdXzx2jSHo2yTP6ZzpQUzkc7T2YH00gwJpT3/9djY9RYd1+7jV1
	5L7ocJZ8WuA9P+i/aFeRq8HaeECeSdkAkLD1aRat6iRZeVo+jVF1edr2dIggHiVJvuTl
	e6rA==
X-Gm-Message-State: ALKqPwdNZNFwljUDr1eDvN/hkGzfiswveWo4oCLTfnMp0zS9omvJIVPA
	0EJca24NQrBulWZ9Uv6O2CORzwsdug==
X-Google-Smtp-Source: AB8JxZr3wkeExsTOuPoK9VBmnTSTNYjZ+vKL+aCLuO2svyUwylO3hoDljlzw94anG6n6GWitJEJ1qg==
X-Received: by 2002:a65:6585:: with SMTP id
	u5-v6mr9683413pgv.396.1526334184305; 
	Mon, 14 May 2018 14:43:04 -0700 (PDT)
Received: from ?IPv6:2601:644:8780:b9c:103c:d1e2:3d6d:7388?
	([2601:644:8780:b9c:103c:d1e2:3d6d:7388])
	by smtp.gmail.com with ESMTPSA id
	p6-v6sm21577126pfg.157.2018.05.14.14.43.03
	for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 14 May 2018 14:43:03 -0700 (PDT)
From: Bill Jenkins <bill@korgrd.com>
Message-Id: <0584D083-F27E-4336-9324-CFBACD55A653@korgrd.com>
Date: Mon, 14 May 2018 14:43:02 -0700
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [meta-raspberrypi] No package 'wayland-egl' found
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
X-List-Received-Date: Mon, 14 May 2018 21:43:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I just sync'd to the head of the master branch in the poky and =
meta-raspberrypi repos today=20
and tried a build that successfully completed last week, but now fails =
with the error message
"No package 'wayland-egl' found" during the =
gtk+3_3.22.29.bb:do_configure task.

I see some recent commits in both branches related to egl movement =
between wayland
and userland. I made sure to be up-to-date in both repos. What could I =
be missing?

I'm running the command "bitbake core-image-minimal -c populate_sdk"  =
and the relevant=20
lines in local.conf are:

MACHINE ??=3D "raspberrypi3-64"

IMAGE_INSTALL_append =3D " apt gdbserver openssh-sftp-server mdns-dev =
perfcnt-enable libasound alsa-utils-alsactl alsa-utils-alsamixer =
${VIRTUAL-RUNTIME_alsa-state} libjack jack-server jack-utils"

CORE_IMAGE_EXTRA_INSTALL +=3D " avahi-daemon"

TOOLCHAIN_HOST_TASK_append =3D " nativesdk-cmake"

EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks x11-base tools-debug splash =
ssh-server-dropbear package-management"


Everything else is pretty much the default. I've also tried it without =
the populate_sdk command=20
with the same result.

Any advice is greatly appreciated.

Thanks
Bill


