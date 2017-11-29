Return-Path: <drew.moseley@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11720E00D04; Wed, 29 Nov 2017 14:20:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,URIBL_SBL autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: waveshare.com]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 181E3E00CC4
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 14:20:22 -0800 (PST)
Received: by mail-oi0-f66.google.com with SMTP id r63so3533277oia.6
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 14:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google; h=from:to:subject:date:message-id;
	bh=bqgitZ09AtfatdlnyMkSCymGcQHxHNCCPQm1T8JDstI=;
	b=ciqKrtLgxxnjYMK7QGiTIwhgtXVoNssouJumkiIhdDx7X1rrfWwLhArID5/Q1MBKWT
	CA3QmCUSfmlqkXSZHmXQrxvJVJknJX/rcI27OjQa1O5KdSd9g4iEXxjnTTSMSOsiiW91
	Fgg+qDkhMAKZQlabeDm8Rqh8ocSVs16eQY1XWZ/VS8OQqboreDJiovwBwZz5vpW6IRSq
	Hs54vEG7NsrA2e9S3x6ddkGZlaKQueh0J3iaFEUoI+FdBOnqYkRsJxHWZmpqSJ3SNg6I
	Om+QG46/VjNog6QJcDEN5bOWueKIV4dYmW6gYkQvRmYg7DDrLCvXjNRr1SEwB9KEiyAX
	rpZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=bqgitZ09AtfatdlnyMkSCymGcQHxHNCCPQm1T8JDstI=;
	b=imjM1YgsxsUfwT66mJF/vv5knOcDCfhW6jMzucqynBEAtGfz7eeJoglvsJkWmentyC
	Nysd8fFj59/X0eKt/r/cKGby1qGG+OeUk4zz+PLA+6xQaybYXDmKHfvvvr1zmum22W1e
	tSZ2J6f6dQUwBCntr0BlpKJKetaeZMZzAhADF1qw4YtW8ZHbw412pVvgUVYxdfgwtgvG
	NRb5pRCwNOoAWWd5jRPZbnHJfvN0tofkxR9WWVK9uHnHr0IOcg5w2tzudubCEhe499Ol
	6ERYcZ1WJE37LAKI1aK0XLD9CSjyE4k+ZP0AZW0czQ8v58pgNiT24MePHZp+hHkEzXzg
	eycQ==
X-Gm-Message-State: AJaThX71IPNzRRP6FmJ8uxeIhpPgQ2HYI5Afa0DtRQMJQUXGJNqBb1K0
	pfeFO/8CEH2RMmBIqExHdunXQdlpWdA=
X-Google-Smtp-Source: AGs4zMbrgl0Xb0nd3modmt05xxwlKI9RY4cz03srE6/l35mijpE5G8OlyFfHuNhQhD363ApGLCEQfQ==
X-Received: by 10.202.117.13 with SMTP id q13mr3002047oic.52.1511994021615;
	Wed, 29 Nov 2017 14:20:21 -0800 (PST)
Received: from tobago.home.moseleynet.net ([173.168.237.167])
	by smtp.googlemail.com with ESMTPSA id
	m53sm1202610otb.47.2017.11.29.14.20.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 29 Nov 2017 14:20:20 -0800 (PST)
From: drew.moseley@northern.tech
To: yocto@yoctoproject.org
Date: Wed, 29 Nov 2017 17:20:09 -0500
Message-Id: <1511994009-11240-1-git-send-email-drew.moseley@northern.tech>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] rpi-config: Setup lcd_rotate for Raspberry Pi display
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
X-List-Received-Date: Wed, 29 Nov 2017 22:20:24 -0000

From: Drew Moseley <drew.moseley@northern.tech>

Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
---
 docs/extra-build-config.md              | 6 ++++++
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/docs/extra-build-config.md b/docs/extra-build-config.md
index 380d969..0390eee 100644
--- a/docs/extra-build-config.md
+++ b/docs/extra-build-config.md
@@ -170,6 +170,12 @@ Screen LCD, HDMI interface (<http://www.waveshare.com/7inch-HDMI-LCD-C.htm>) Rev
 
     WAVESHARE_1024X600_C_2_1 = "1"
 
+If you would like to use the Raspberry Pi, 7 inch Capacitive Touch Screen
+LCD (https://www.raspberrypi.org/products/raspberry-pi-touch-display/), please
+set the following in your local.conf:
+
+    RASPBERRYPI_DISPLAY = "1"
+
 ## Enable UART
 
 RaspberryPi 0, 1, 2 and CM will have UART console enabled by default.
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index ca4160b..e9a4fe2 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -127,6 +127,12 @@ do_deploy() {
         echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "hdmi_drive=1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # Raspberry Pi 7" Display/Touch screen (https://www.raspberrypi.org/products/raspberry-pi-touch-display/)
+    if [ "${RASPBERRYPI_DISPLAY}" = "1" ]; then
+        echo "# Raspberry Pi 7\" display/touch screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "lcd_rotate=2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 do_deploy_append_raspberrypi3-64() {
-- 
2.7.4


