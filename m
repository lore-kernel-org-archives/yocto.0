Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A69BE01584
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:55 -0700 (PDT)
Received: by mail-ea0-f182.google.com with SMTP id o10so344407eaj.13
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OUzLssg/nXoz7BGemtKotjSXiVe6C08frAiY3ukJgkA=;
	b=D6teWRGbFEZH8lj74RT8KymyBPYvEjuJD9gjcksAIgivsMrouiyMLoxH8bVvR//ARy
	q3P9huZRfhnC+CaA+kSmidTL2Yst/gkTxK0cPvGJOnue91H7W2+XkszwBcXdrVMkpzoV
	ztJZw44TpIj844zflC6u3GMcA+Hft73PVmt7IXVmZrhubpybyidLG61S57Sqo0uMcU0R
	33D4D1OJD7WBYRdXcRdCtbkyD12crfZHU6xT4ImjyC82jDJwQxU7obIZZs0zfGJtTgdr
	gWYe+XRgNlvxYjf214l+L1kiUzL/zmj2zyEVm2RgvceNYsoBAxyWsaOfRoqc8DPTSY/I
	ypfQ==
X-Gm-Message-State: ALoCoQmognyT4I3CnQGAp4i4rvbji5rC/RLe4muHIzQTMT2gAJgJE5CMIAZHH7X/AOrxnTh8H1gi
X-Received: by 10.14.103.129 with SMTP id f1mr169502eeg.114.1377018174549;
	Tue, 20 Aug 2013 10:02:54 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:54 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:33 +0300
Message-Id: <1377018158-2983-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 06/11] rpio: Integrate v0.10.0
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:56 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/python/rpio_0.10.0.bb |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 recipes-devtools/python/rpio_0.10.0.bb

diff --git a/recipes-devtools/python/rpio_0.10.0.bb b/recipes-devtools/python/rpio_0.10.0.bb
new file mode 100644
index 0000000..1cc1661
--- /dev/null
+++ b/recipes-devtools/python/rpio_0.10.0.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "Advanced GPIO for the Raspberry Pi. Extends RPi.GPIO with PWM, \
+GPIO interrups, TCP socket interrupts, command line tools and more"
+HOMEPAGE = "https://github.com/metachris/RPIO"
+SECTION = "devel/python"
+LICENSE = "LGPLv3+"
+LIC_FILES_CHKSUM = "file://README.rst;beginline=41;endline=53;md5=d5d95d7486a4d98c999675c23196b25a"
+
+SRCNAME = "RPIO"
+
+SRC_URI = "\
+          http://pypi.python.org/packages/source/R/RPIO/${SRCNAME}-${PV}.tar.gz \
+          "
+S = "${WORKDIR}/${SRCNAME}-${PV}"
+
+inherit setuptools
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRC_URI[md5sum] = "cefc45422833dcafcd59b78dffc540f4"
+SRC_URI[sha256sum] = "b89f75dec9de354681209ebfaedfe22b7c178aacd91a604a7bd6d92024e4cf7e"
-- 
1.7.9.5


