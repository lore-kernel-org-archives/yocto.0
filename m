Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C67FFE00524; Thu, 14 Aug 2014 20:26:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 676EFE0044A
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 20:26:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s7F3Qhrr020952
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 20:26:43 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.174.1; Thu, 14 Aug 2014 20:26:42 -0700
From: Kai Kang <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Aug 2014 11:21:32 +0800
Message-ID: <1408072893-28126-1-git-send-email-kai.kang@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [128.224.153.152]
Subject: [meta-yocto][PATCH] enable aarch64 support for qemu in yocto
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
X-List-Received-Date: Fri, 15 Aug 2014 03:26:46 -0000
Content-Type: text/plain

Enable aarch64 support for qemu in yocto. Var QEMU_TARGETS in poky.conf
overrides the var in qemu recipe, so add in poky.conf too.

Use linaro prebuilt aarch64 for test. Test steps:
1 run native qemu with aarch64 image:

$ wget http://people.linaro.org/~alex.bennee/images/aarch64-linux-3.15rc2-buildroot.img

$ tmp/sysroots/x86_64-linux/usr/bin/qemu-system-aarch64 -machine virt -cpu cortex-a57 -machine type=virt -nographic -smp 1 -m 2048  -kernel aarch64-linux-3.15rc2-buildroot.img


2 run qemu-system-aarch64 on core-image-sato of qemux86-64
$ runqemu qemux86 qemuparams="-m 2048"

When booted, run
$ qemu-system-aarch64 -machine virt -cpu cortex-a57 -machine type=virt -nographic -smp 1 -m 2048  -kernel aarch64-linux-3.15rc2-buildroot.img

Boot could boot aarch64 image successfully.

Kai Kang (1):
  qemu: enable aarch64 support in yocto

 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.9.1


