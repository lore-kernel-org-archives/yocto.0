Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C458E0043F; Thu, 23 Aug 2018 14:28:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f170.google.com (mail-yb0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFABCE003C1
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 14:28:22 -0700 (PDT)
Received: by mail-yb0-f170.google.com with SMTP id c4-v6so2721517ybl.6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 14:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=M6tS50I0nAr2nmx4hCjET5ueIemnETXbONzZTwV3MhU=;
	b=xTt89a917MjmXWjK2qiDRgkuX/G5Fm3CrE8A8HYzTBsPw970wiNWWhdzG/xckEGohT
	wdWT22iwb7HZynLgFyLaVvElsxEgPoPwLrzcC7DIUKviHsgy9q+EhzUlrVrz9+S39Kce
	qMdvnksVPTjr4EbrIzYxHlXCEuJ71+up+HJvI6qYnCW3ddqpzrtDhaT0fDUpILr3GRjx
	SYOOQESdekq02L5kRgsvo6UhkZcPjlhFR/tY7CGUHfSSxLQc4uWbGJKlQEsI3e6HTd4T
	nFLcTLAr71GREACeRzEvAXN0+fK3igbpDWAGb9ypOGIqqfomDazo1ltEX8/NWWKxriAa
	mJqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=M6tS50I0nAr2nmx4hCjET5ueIemnETXbONzZTwV3MhU=;
	b=ba9sRAJ/IbXQdbf9H6Tso2B/qtCi6hL+DUvz+PBrZEaUcgIzdgMyHVQHp7LrwvPmKT
	k4zuXtYShugX/a80l/pjMm/h+WR8toYED+3UlrcWGfDZd3DhBtp44iR7D+ogcA2pxezm
	0jp2XIDE5Pv4dhjnLwD5BdmycNwd0K8IL7Wuj5aS9ZINs+iHvtWcLCsDbfb55PdeFOdY
	tEjiaRpHF+pLJqKK7f+EwE0Vp/UdOwD7bqenYaImSPb/NjD6o9MwiKLGTiO3gnQ2fE+3
	lFg5tWAHUyl/PDxbydu8gaFTJcU9jRkI5bhjFtvZpfkqMXS1vj4Nv53dz6vmLq2d81sn
	YMTw==
X-Gm-Message-State: AOUpUlHoYVsHEijBX9krmZLnneQTFFckIEGY4ptdegFvNqTo98rl7eZo
	sup/7XzYjskN5tq4NtO21v51RMbf+IE=
X-Google-Smtp-Source: AA+uWPz787tT7vF8bEBm6ZkNj9nsZ4K0q6VnkO6DKHMPxD4laMxsP0pkfE+AL7PAr4Mk4VWuKhGNLQ==
X-Received: by 2002:a25:f212:: with SMTP id
	i18-v6mr34270609ybe.267.1535059701760; 
	Thu, 23 Aug 2018 14:28:21 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	o74-v6sm7745272ywo.54.2018.08.23.14.28.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Aug 2018 14:28:20 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 23 Aug 2018 17:28:19 -0400
Message-Id: <89D3CE4C-5BA0-4A37-B1BB-58AB48DB9006@korgrd.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3273)
Subject: [meta-raspberrypi] issue booting image containing alternate kernel
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
X-List-Received-Date: Thu, 23 Aug 2018 21:28:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

Sometimes, I need to build an image containing the raspberrypi / linux =
kernel as specified by the meta-raspberrypi layer recipes.  Other times, =
I need to build an image containing the ipipe-arm64 kernel instead.  =
This alternate kernel builds fine outside of Yocto and boots, so it =
should also build fine from within Yocto and boot, too.

I have a recipe to build this alternate kernel, and it works fine.  I =
simply tweaked the machine=E2=80=99s metadata for the device tree =
handling differences, and then specify PREFERRED_PROVIDER_virtual_kernel =
in local.conf.  The build completes just fine.  Easy peasy.

The problem occurs when I try to boot this alternate system.  (BTW, for =
this alternate build, I am using kernel=3Du-boot.bin with a boot.scr =
that specifies the proper dtb and has the same bootargs as my =
cmdline.txt)

During the boot process, after many messages are output to the console, =
the following message is displayed, and the boot appears delayed/hung:

[    3.270764] random: crng init done

After that time, the USB devices (keyboard and mouse) will regulary =
disconnect/reconnect after some number of minutes pass.

The boot never finishes.

Does anyone have any ideas what I can do in my Yocto configuration so I =
can rebake and not experience this problem?

Booting my system with the regular raspberrypi /linux kernel completes =
OK and finishes with an X11 terminal on the HDMI.

- Steve Pavao
Korg R&D







=20=

