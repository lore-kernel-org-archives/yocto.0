Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49408E00AE0; Sat,  4 Mar 2017 01:01:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28FB1E00ACD
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 01:00:50 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 25so14926944pgy.3
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 01:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=8tfW5DcWbJCCWPqJF+XPJ130KPoH6SGIUA30NfPdugs=;
	b=ZoJ8nUbGHBEYueYA6xph/BQqJ9865a15K+dhMy63uaMFEdzAo1CcgMh5PGd3DFyosm
	TEBcUzeKXe9mLsHNB3d5EQt3QNLN9fd88sXxZnpB/2oUEg7xszZOcfWR3mEZSJSh4t9q
	Bl4uVkLl7/qIYR0TJ0ci1L1J1+9kTPUPtUhVtkRpFAujGAxOSqrefZacnHlU5krS9KkE
	XhlnDNrFVKUb8rE/JN8b3rcF59QizDFyvVQ5Z0ehyit8yZcQQibqxbHbzUnHnN2nPpc6
	l1xD8U5oXUj6KE4jtb9SeeCE3HdGrcUFPsLFy2Gle3JVikd3zkb4FsE10+Y081clJ5zW
	LCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=8tfW5DcWbJCCWPqJF+XPJ130KPoH6SGIUA30NfPdugs=;
	b=sWa3cMLTwJlkN+04VcNhWBi7sIcfWplAXhtjhPAWvAqYbvPbwa5vtjRnUR62/Ga7wl
	NEtJCPsda9NvJCyirxpQXfHbCdG7r1f+4CKQF3wW0ICamA+/reMfEayhXEds4s9NTlgx
	uJP5Ly/zePefxXAkZX+UkiRUKMXb7AAz5FfKFjAplzdP0KIAawnlEsw3wMtrIpqsUgSm
	Tyu3jhAsLwk94TMxLGA4dqGsHn0qInLhFr4uuqJDvpztvE8myC1X/grhL2upIC1pMEeq
	J6k1ZB8HMz+1yFNdCLMHwCk9nI80NfRvMU7Mgn0ryGWpfU8HywSMF4vcma/pOqy2i16X
	wf4A==
X-Gm-Message-State: AMke39lPXY1kwLTlSZ3elX1UebcLD4MKc83iMAWvpmM62AIKt+SUCu0ypJtQqgTN881L5w==
X-Received: by 10.84.130.66 with SMTP id 60mr10397135plc.135.1488618050387;
	Sat, 04 Mar 2017 01:00:50 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	k74sm22019001pfj.27.2017.03.04.01.00.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 Mar 2017 01:00:49 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Mar 2017 01:00:38 -0800
Message-Id: <20170304090038.7577-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.0
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Default to 4.9 kernel
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
X-List-Received-Date: Sat, 04 Mar 2017 09:01:01 -0000

4.9 is now declared stable for raspberrypi

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 conf/machine/raspberrypi3-64.conf             | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index 2007cc0..faa6b41 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ??= "4.4.%"
+PREFERRED_VERSION_linux-raspberrypi ??= "4.9.%"
diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index 0bf1397..ca10ed9 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -37,5 +37,3 @@ VC4_CMA_SIZE ?= "cma-256"
 
 UBOOT_MACHINE = "rpi_3_config"
 MACHINE_FEATURES_append = " vc4graphics"
-
-PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
-- 
2.12.0


