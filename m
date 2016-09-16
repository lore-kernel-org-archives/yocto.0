Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E1F8E00C98; Fri, 16 Sep 2016 09:54:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B378EE00C8B
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:54:42 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id 133so4616362wmq.2
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=IH+DLaDcoi4qk9k6Bbq9ISxraIvOL3VANCfh3wYeWLs=;
	b=FFmPJ3OMU4RsgpQFABWuINp5nrQR9yoAeJemqgllQl9S/k4PHXeagTxB+JKD+kc21z
	e1WRgkrIh3ACyTCafjzFh1OPrUO4oMw8/zUFhoInd8Eh+fSvvZOLieP6eGzyU2gPCG3O
	MLsrHeMxJJd6cmPHblu+yzeESMuHagxBQuSM1Dc0vZsvouKFHfCZClCzu9KpJZTkYRA/
	qBueoX2g92PUFA9cVbq83Bsliq8CiYmUc0vqEpHbbokb8fbx62SFUOeK50ocAokB7A9Q
	LlXcV9FPf0757ClY0K+XiN07xuIOVDzCe2cQfXwcaKYu628oiVu5AIt4l1lKa6ko6si7
	UZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=IH+DLaDcoi4qk9k6Bbq9ISxraIvOL3VANCfh3wYeWLs=;
	b=lqX9klY0uAvgdsBWithcovxZ+WzAsFLMlwssXNyzR1Pi38ubwhUSKz2iUvcxf4pedc
	3B9BsPm6YIjbtona/4vnJN25LgZj62ZkHLkTfXUDmbqXoCwRElfXPFLpTIDq47JmEAM0
	noftaS+EDHwg41cQpHNtO9BnIcI16PEP/Sy25KI4f4lYwQMxDHNwxdIA14GQ/nCAc5Zu
	rNCQtUc8do1+rLnySkkCfbkT1pH4T4aRdYJf2ccuVHtjtfVHTqXj6J+CDvj2DEZ5WtxT
	XFuz/wIJwHO7K/G4M2o7CcsWASe49GrZBQ22kA4SItd9GJ0o8crYXS7KVWIOtcwipBL2
	et4Q==
X-Gm-Message-State: AE9vXwNig7ztGPxp4UCfw/YEPJ8fWggsgtGT2xE9L1Dhq1guYS6Uk4RO/nyfe3c6PDskkg==
X-Received: by 10.28.1.85 with SMTP id 82mr9329843wmb.11.1474044882005;
	Fri, 16 Sep 2016 09:54:42 -0700 (PDT)
Received: from resin.Hitronhub.home
	(host86-158-8-21.range86-158.btcentralplus.com. [86.158.8.21])
	by smtp.gmail.com with ESMTPSA id
	ce6sm9214775wjc.27.2016.09.16.09.54.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Sep 2016 09:54:41 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 16 Sep 2016 17:54:36 +0100
Message-Id: <20160916165436.13766-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.9.3
Subject: [meta-raspberrypi][PATCH 1/1] bcm2835: Compile examples correct LDFLAGS to avoid HASH errors
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
X-List-Received-Date: Fri, 16 Sep 2016 16:54:45 -0000

ERROR: bcm2835-1.50-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/spi'
No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/event'
No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/gpio'
No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/i2c'
No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/blink'
No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/spin'
No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/input'
No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/pwm'
[ldflags]

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/bcm2835/bcm2835_1.50.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/bcm2835/bcm2835_1.50.bb b/recipes-devtools/bcm2835/bcm2835_1.50.bb
index 634dac8..9cf6f48 100644
--- a/recipes-devtools/bcm2835/bcm2835_1.50.bb
+++ b/recipes-devtools/bcm2835/bcm2835_1.50.bb
@@ -21,7 +21,7 @@ do_compile_append() {
     # Now compiling the examples provided by the package
     mkdir -p ${B}/examples
     for file in `ls ${S}/examples`; do
-        ${CC} ${S}/examples/${file}/${file}.c -o ${B}/examples/${file} -Bstatic -L${B}/src -lbcm2835 -I${S}/src
+        ${CC} ${LDFLAGS} ${S}/examples/${file}/${file}.c -o ${B}/examples/${file} -Bstatic -L${B}/src -lbcm2835 -I${S}/src
     done
 }
 
-- 
2.9.3


