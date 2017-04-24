Return-Path: <alexis.lothore@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F028E0094C; Mon, 24 Apr 2017 11:25:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alexis.lothore[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A73BE00777
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 11:25:34 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id w64so4114388wma.0
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 11:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:subject:message-id:user-agent:mime-version;
	bh=LtUYDNPvi/AAtiJszHSprDXgXqgojXbeXRkue0gstvs=;
	b=diP4y3VqCwEj8q1wuMi9MiDyYKIXquAFf4MjNJc4D0YQzAJTlq7sdftnKpIiA5Mpi0
	KpY0anr1dICB0Zp5Tdc4tQod8dZpqQ+9E93aT3Kh3Dt0Tfj/uOOm2rM9axLSaZK/Jm4i
	GT4j+FZ3qFjeydTHrWRfTxAUXME/MEafDnDKwPEsJSgZO7MtKjOzETHRndftRu1KGU5a
	y3/XzYGy7+ETQl72cOODYl8jgz5pBCZVnhyVjvkMlcywMJQSwWPJ9zgYsYtd0rWgHyIt
	Z5QAdhfhb1HPoRGDMZKPYqyHA0r4hXEDHRd/2Q3he9OToka5a6MvTGJ8GM3N+GFzOFAR
	AxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:subject:message-id:user-agent
	:mime-version;
	bh=LtUYDNPvi/AAtiJszHSprDXgXqgojXbeXRkue0gstvs=;
	b=KM4pB5lQQJmuBCgXzAkAzhAIKDIOXChfkBMCSuScBg2gMDILK36aVTpTnVtWXOYEKy
	eKPrrAsLRb0k3sgiBWgORVDQd/18iHHkL3rE0aJjv99nVQ1dTqXMh7KryCy54FZE2IlW
	LEBD2G/6WfXNKWwIgJ+zVoIss+4xdEINaJc8+qeEap6K2a/vjYgOR/oRMdjxI5st5Q4b
	fKu3ZHS0ZFZWXxaZGFWVodBSGdK9F/9qYmNc3YR5i5pCol0BooZ+b4F2EsPTyAm5CPOn
	t2V+jpu924aTDHTnfveQkTSJkP9si3vTOzexnfN2y6rmjIkLxKUHu3lGZiFYcPWyRT4q
	aulA==
X-Gm-Message-State: AN3rC/6zIY2M2xwSkIDk8sG9c8J+aW7VIh9eJc0abiZliFUZ7ouAziQ8
	zlCaIkOerpO4OpvR
X-Received: by 10.28.143.194 with SMTP id r185mr9514856wmd.139.1493058333129; 
	Mon, 24 Apr 2017 11:25:33 -0700 (PDT)
Received: from [192.168.0.10] (6.167.141.77.rev.sfr.net. [77.141.167.6])
	by smtp.gmail.com with ESMTPSA id
	y60sm17247480wrb.39.2017.04.24.11.25.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Apr 2017 11:25:32 -0700 (PDT)
From: alexis.lothore@gmail.com
X-Google-Original-From: alexis@gmail.com
Date: Mon, 24 Apr 2017 20:25:35 +0200 (CEST)
X-X-Sender: alexis@debian
To: yocto@yoctoproject.org
Message-ID: <alpine.DEB.2.21.1.1704242008400.4869@debian>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Subject: Raspberry Pi 3 build issue
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
X-List-Received-Date: Mon, 24 Apr 2017 18:25:36 -0000
Content-Type: multipart/mixed; boundary="8323329-1843380201-1493058336=:4869"

--8323329-1843380201-1493058336=:4869
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Hello, 
I am currently encountering an issue with meta-raspberry and more 
specifically Raspberry Pi 3 build. Since I was not sure the problem was 
not my fault, I cloned a fresh copy of poky and meta-raspberrypi (both 
checked out on morty, and meta dependencies on morty too), but the problem 
is still appearing, trying to build the image rpi-hwup-image with BDISTRO 
poky for MACHINE 
raspberrypi3 :

➜ build git:(morty) bitbake rpi-hwup-image
Loading cache: 100% 
|#########################################################################################################################################################################################################| 
Time: 0:00:00
Loaded 2 entries from dependency cache.
WARNING: 
/home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb: 
Exception during build_dependencies for PKG_kernel-image | ETA: --:--:--
WARNING: 
/home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb: 
Error during finalise of 
/home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb
WARNING: 
/home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb: 
Exception during build_dependencies for PKG_kernel-image
WARNING: 
/home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb: 
Error during finalise of 
/home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb
ERROR: ExpansionError during parsing 
/home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb
Traceback (most recent call last):
bb.data_smart.ExpansionError: Failure expanding variable PKG_kernel-image, 
expression was 
kernel-image-${@legitimize_package_name('${@get_kernelversion_headers('/home/alexis/Projets/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.9.21+git${SRCPV}-r0/linux-raspberrypi3-standard-build')}')} 
which triggered exception SyntaxError: invalid syntax (PKG_kernel-image, 
line 1)
Summary: There were 4 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

I am executing the build on an x86 machine with Debian 8.

Unfortunately, since the problem seems to appear right at parsing, I 
cannot get the exact variable expansion with bitbake -e. Apparently my 
Yocto setup does not encounter the issue if I try the build for another 
RPI target, like raspberrypi0. Any advice on how to troubleshoot this 
issue ?

--8323329-1843380201-1493058336=:4869--
