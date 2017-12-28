Return-Path: <drew.moseley@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0A79E00D94; Thu, 28 Dec 2017 15:00:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3814E00D7B
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 15:00:51 -0800 (PST)
Received: by mail-oi0-f66.google.com with SMTP id 184so27928710oii.2
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 15:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google; h=from:to:subject:date:message-id;
	bh=Sz/0u4cyEKZpmTxDgYE5df+ZyyqbQHiUyFHAukpl+08=;
	b=OqzhrVZFEjSeco31EIkOncU9SWCjtsO+hZa3JBEWaI8CRjD8392p65ki2Gd+SKnsYn
	fCxLJIJwUbMbfcqD6ODdMresMXDQgjZI8D8SPKrEy7eI89V+1Tvd7H9jzV/MqMgIp7qt
	atEj0h6d3rn7eaOGwb0ehlONAoX9zyhShgPrx+Uk5+xVHbtLtMBahU4O7lDcqQeWfgQz
	ftZMgq9q5TJ/GnGWjWGH7CoRhjQ/31ZbDocnFFDpyxLQs1wSiXW3BCDno/YSS8uaBUC4
	O4cu8IB86EuCKyIIuieEBKnzTDcLzjKq4cSi73HUnXvBRcv4coArvunMzZpSi8roKbxD
	+ekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Sz/0u4cyEKZpmTxDgYE5df+ZyyqbQHiUyFHAukpl+08=;
	b=eZayPQSpQxCeDhcdD0qaxuglNUGXSpP1kNEcJdh07YeoavSGHlLhXqA6u464yzFYyO
	SiXePUKi+qXM77hOOqfCOk+JiAAruJ6QqtIAZx0nXX0otRHLD/h4WIfd5Bl4BvmHnAHz
	RkFoOnGzbIz0/sUSf64LsExTrQ4j/0zNRWKl0pobf5kC47bsPKZaE2TzB0Oq1RD5uGGM
	qFht3ccwl4uOVio9P/pq0skLR2JgQfBubCy7hmRR50J79PBOEPELxoJLWrhlCHROXwQg
	vqNKqsOfAQFv+2pMD3M0rEZVnIbvIaV5B9LomJX4OOWOoRFyKytwnVu9FYbpiuTcq02u
	/iqQ==
X-Gm-Message-State: AKGB3mJIlkLlBpcXwF8AaECM3CCCASqQqYuz9o5Rk0CCkmGcO6RAPugK
	wERHRGNWgz858s4LOr0joCy5LDe1C9Q=
X-Google-Smtp-Source: ACJfBosSJ6kDszKrU6illfJ2lLqnIFS89rZ815+txX+xT0TAW9eHEpX1u+Dqrh/R8SnUjgFfTZhYwQ==
X-Received: by 10.202.170.76 with SMTP id t73mr23620831oie.298.1514502050272; 
	Thu, 28 Dec 2017 15:00:50 -0800 (PST)
Received: from tobago.home.moseleynet.net ([173.168.237.167])
	by smtp.googlemail.com with ESMTPSA id
	w43sm10496059ota.64.2017.12.28.15.00.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Dec 2017 15:00:49 -0800 (PST)
From: drew.moseley@northern.tech
To: yocto@yoctoproject.org
Date: Thu, 28 Dec 2017 18:00:46 -0500
Message-Id: <1514502046-18414-1-git-send-email-drew.moseley@northern.tech>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] rpi-config: Allow arbitrary additions to config.txt.
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
X-List-Received-Date: Thu, 28 Dec 2017 23:00:53 -0000

From: Drew Moseley <drew.moseley@northern.tech>

Setup a bitbake variable to allow users to specify
arbitrary additions to config.txt that are not otherwise
covered by specific settings.

Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
---
 docs/extra-build-config.md              | 12 ++++++++++++
 recipes-bsp/bootfiles/rpi-config_git.bb |  5 +++++
 2 files changed, 17 insertions(+)

diff --git a/docs/extra-build-config.md b/docs/extra-build-config.md
index 380d969..f66abdf 100644
--- a/docs/extra-build-config.md
+++ b/docs/extra-build-config.md
@@ -183,6 +183,18 @@ RaspberryPi3 will have to explicitely set in local.conf:
 
     ENABLE_UART = "1"
 
+## Extra configuration
+
+You can add arbitrary configuration settings to your local.conf using the following:
+
+    RPI_EXTRA_CONFIG = " \n\
+        # Raspberry Pi 7\" display/touch screen \n\
+        lcd_rotate=2 \n\
+    "
+The above will configure the system to use the Raspberry Pi 7 inch Capacitive Touch Screen
+in rotated mode which is needed for some setups.  Any text can be placed in the target
+config.txt file using this setting.
+
 Ref.:
 * <https://github.com/raspberrypi/firmware/issues/553>
 * <https://github.com/RPi-Distro/repo/issues/22>
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index ca4160b..b38c42a 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -127,6 +127,11 @@ do_deploy() {
         echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "hdmi_drive=1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # Arbitrary config.txt additions
+    if [ -n "${RPI_EXTRA_CONFIG}" ]; then
+        echo "${RPI_EXTRA_CONFIG}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 do_deploy_append_raspberrypi3-64() {
-- 
2.7.4


