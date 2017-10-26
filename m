Return-Path: <vishalashapur@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D565E00D0B; Wed, 25 Oct 2017 20:59:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vishalashapur[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.50 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 280F8E00D03
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 20:59:17 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id r196so5487452wmf.2
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 20:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zyimU2znDODKhNhtgFrNC/PQyGug7klMJmwr6LOv7xo=;
	b=hudptvIF1Y4qVbEwRJr221kPm87vHzKzLUpi8isDhOAbkK2IPx8j19qpl7O+Oec9pj
	ObgNpIzRiMzhDJZxmI4ejwYo0T7MrcvA6EBZ67e7FGvpn50hK1ONSLl/7Lrv4fKC/brU
	dmbseK1UIfu0q0j6hpvIrf5eC3wE7SsQ/D0ebjf5MNE4f9e6EKQROLKbKczL4NJkg7XV
	MZNboQk2EZlkCQ+rBCoySm6uB6gGLg6I8MOAmkaNrsX9RBRV58ELIZ4dY189+1QRv97h
	NzOdT3NgLr1KhQbccFZUq1c+CjRDOiAg9ofA065WDCtLopaYGtpVDl+sbsXQBXeAIZL6
	ZodQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zyimU2znDODKhNhtgFrNC/PQyGug7klMJmwr6LOv7xo=;
	b=DV8LFYHZFLBs+2g8paMJWqnWbWernOie/J1678kWmOM53g/80DhKfIjan3P97EgPHh
	vnH4BL6krizr8cC3F5m6oTQz1YMd3mlkNNW0j19DUWVdg22JW7dkE+DbZuUyOg6ex5vW
	d79LsiHXahv7vtZLdBdm6QP59fsw9LOXdLvYKtyj6EeOSmAX5UPkeqB+oUysN6jS/rl6
	EdBv8OW3/1hJKx8v8uVJijXwTpaCL2wirqvPrpY/e2nzWeMVhcXDzLrhUw8OD42OW2VD
	uA9kqw49tNMkM25SZ4y4RmTyD5lfizHJRVwuvyOYzU/2CEucuJ38Kje9+MBrFZoXpKHK
	kdnA==
X-Gm-Message-State: AMCzsaUrkIqIbfw4jqyH1pJ4LTXRnqAmpYhKateofXaMIbynfy9xrgJa
	wrvSyCzpTzVrTcTvh8i+IvZsvXCgjUGSgYRq1ljS5w==
X-Google-Smtp-Source: ABhQp+SDRQZe/cvrvyperEj6cchL4DNQ4cbEw4B4Gi++n4hY6AZJO1q64IT/Hv8vSJMNrK4RYmDn+3FNM0VgxvP5ArY=
X-Received: by 10.80.145.6 with SMTP id e6mr19082769eda.34.1508990356842; Wed,
	25 Oct 2017 20:59:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.162.7 with HTTP; Wed, 25 Oct 2017 20:59:16 -0700 (PDT)
From: vishal ashapur <vishalashapur@gmail.com>
Date: Thu, 26 Oct 2017 09:29:16 +0530
Message-ID: <CAAWyHBJC30Bna_XhjWZaPPDRaAUHQ1z8_SqwtFiPv5iaQw43Xg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: build error on raspberrypi3
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
X-List-Received-Date: Thu, 26 Oct 2017 03:59:18 -0000
Content-Type: text/plain; charset="UTF-8"

hi im buliding linux on rpi3 using yocto pyro branch. after doing
"bitbake linux-raspberrypi -c menuconfig"  it is downloading all
sources but at the end it is showing the following error.

ERROR: linux-raspberrypi-1_4.9.30+gitAUTOINC+e54215a9bc-r28 do_fetch:
Fetcher failure for URL:
'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y'.
Unable to fetch URL from any source.
ERROR: linux-raspberrypi-1_4.9.30+gitAUTOINC+e54215a9bc-r28 do_fetch:
Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/u/rpi2/rpi/build/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.9.30+gitAUTOINC+e54215a9bc-r28/temp/log.do_fetch.30856
ERROR: Task (/u/rpi2/sources/poky-morty/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb:do_fetch)
failed with exit code '1'

so can anybody help with this error.
my detailed procedure for build is below
git clone -b pyro git://git.yoctoproject.org/poky
cd poky
git clone -b pyro git://git.openembedded.org/meta-openembedded
git clone -b pyro git://git.yoctoproject.org/meta-raspberrypi

source sources/poky/oe-init-build-env rpi-build

changes in local.conf
MACHINE = "raspberrypi3"
PREFERRED_VERSION_linux-raspberrypi = "4.9.%"
DISTRO_FEATURES_remove = "x11 wayland"
DISTRO_FEATURES_append = " systemd"
VIRTUAL-RUNTIME_init_manager = "systemd"
IMAGE_INSTALL += "packagegroup-core-buildessential"

changes in bblayers.conf
BBLAYERS ?= " \
  ${BSPDIR}/sources/poky/meta \
  ${BSPDIR}/sources/poky/meta-poky \
  ${BSPDIR}/sources/poky/meta-yocto-bsp \
  ${BSPDIR}/sources/meta-openembedded/meta-oe \
  ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
  ${BSPDIR}/sources/meta-raspberrypi \

bitbake linux-raspberrypi -c menuconfig

