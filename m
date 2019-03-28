Return-Path: <linuxhippy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8125E00D1B; Thu, 28 Mar 2019 16:44:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (linuxhippy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C29E00D16
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 16:44:41 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id y6so84920pll.13
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 16:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FjCkcGtYyRNtSxp4Yadc8xsu71YUVzo+FHDhRhb87JE=;
	b=Vl17mDuOpsJS39Dt5gOO10Nn51KxuiwJGO9/BL0WO8gllEHpotVgx/0gOb4h/LUE97
	/Zl4lu0MAYhPNmBYyZEWNLTq5qI3pNW5mRAiCttfk79ijghNwXVXEwUNE9FLSk8Rjseg
	iyjd/F46EeSEP0bVyHuDB2J2fJglOI9aUKzj6mibF9oj/mdnwE/xxgJYQKKOxJkBuLNa
	pp0tZRhi3ePHeCsOujMxHJtGSGCYliIIKtKXHMvbMmd5DWyQMIAWQ2r/B8i3ByMy8hzO
	MhaFJ/E2M0TzVIlXjwqlXHOtimuGIt8vzO36Gfupgc5SGQZTcyWl3nnnp0O+Klr1fLjn
	ScJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FjCkcGtYyRNtSxp4Yadc8xsu71YUVzo+FHDhRhb87JE=;
	b=L/9WmLrKzjlXtgIPmOMkkuNIwYonwFeFr2dM1AHts5MNNX4nMq1LO9ock5dXeYxxcc
	WfD+d0FRSLVW/wH//Q3NLggKrVtN7W40k8y1r3q4am50rxJmexD8IfZxiPN9+z/y7Tyf
	G6yanS2Oc/x4y11Wz10OedRj6b5e9HcnOu+rsd9426fJaAHbRFUrNkDyY+twNqSboqHg
	XFbaim5IBkBx3tI/fda7Ie4jRHMULZhiyoOes2tdVh0p8Pt2Ih2vAorpdM6h8DLD1uDf
	qZBJaxvrvrPNwLulUtBzJ9IyPjDovoxhT+4cR9HC5fm5ZlBYL5JeRD4HuBJqX9by+Y74
	jPiA==
X-Gm-Message-State: APjAAAXoxX3ILA/orltI82L4xBMm/8qUfuDRq3J/OfXRrWLEWHTsf6AS
	GaycM94V6hqxvL6mQD1s+lN73zIgq/9Atb6VMV4VzGF8
X-Google-Smtp-Source: APXvYqwcpfjBsL7Pf16tid6C0WwcAyW2VO7uqsF65xPmh1yOQjCebN/f1JZuSJ8PjCHbG3Ye3f/k117BXCIvnpUlsAg=
X-Received: by 2002:a17:902:784d:: with SMTP id
	e13mr46459895pln.152.1553816680707; 
	Thu, 28 Mar 2019 16:44:40 -0700 (PDT)
MIME-Version: 1.0
From: Clemens Eisserer <linuxhippy@gmail.com>
Date: Fri, 29 Mar 2019 00:44:28 +0100
Message-ID: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: pkg-config does not find "luajit" since upgrade to sumo
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
X-List-Received-Date: Thu, 28 Mar 2019 23:44:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to compile an autotools based in-house project which
compiled as expected on angstrom-v2016.06-yocto2.
It is a rather boring setup where configure.ac checks for luajit using
the following line: "PKG_CHECK_MODULES([LJ], [luajit])".

The bb-file specifies luajit as runtime-dependency as well as inherits
pkgconfig:

RDEPENDS_${PN} = "luajit"
inherit autotools pkgconfig

This all seems to work as intended - when building the project I first
see luajit-2.0.5 being fetched and successfully compiled.

However the project itself fails to build, during configure pkg-config
states it is unable to find luajit.
Exactly the same sources + bb-files worked well with angstrom-v2016.06-yocto2.

Any ideas what could be going wrong here?

Thank you in advance, Clemens


 checking for arm-angstrom-linux-gnueabi-pkg-config... no
| checking for pkg-config...
/home/ce/yocto_xposure2019/build/tmp-angstrom-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/xpcompiler/0.1-r0/recipe-sysroot-native/usr/bin/pkg-config
| configure: WARNING: using cross tools not prefixed with host triplet
| checking pkg-config is at least version 0.9.0... yes
| checking for luajit... no
| configure: error: Package requirements (luajit) were not met:
|
| No package 'luajit' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables LJ_CFLAGS
| and LJ_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| NOTE: The following config.log files may provide further information.
| NOTE: /home/ce/yocto_xposure2019/build/tmp-angstrom-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/xpcompiler/0.1-r0/build/config.log

