Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D03E006CD; Tue,  4 Apr 2017 10:36:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E09CDE00546
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 10:36:01 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id k6so41808206wre.3
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 10:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=W4uyUQNFgaVTX0Wr4R5hQkKFar0DByENa/aiUEvqihs=;
	b=RXG6BViGtA+c10cS6tHb35WGA8fGDhtACcgyM5V6YFnQmVEiE4kfWWWurAVZP1fQ0M
	B7oQ2AFkRXZ+A77GLlLkQzVL1m74qjnsyzyTm8EVxte821i5O2iiKi4/wfZ+OBa+Gzxb
	eLnfuqyeKQDfg0YB5gftczrAsjjEhTT+GWZKF9GziPT0S7lXFLHCFoZhJZpRPeGwPuha
	MMJEqvCN+3yGiYh1d5RR9zim8P9kOoPjnj+qX8C8ADfcEUZePbkUGvQMe/Bmdos94QAa
	ED40EfWvLc95RZM4vobYpouH9ldT3idX2iuqlYP7HOngpkNT2ELSV+CIfmyL2L1MPDYB
	S4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=W4uyUQNFgaVTX0Wr4R5hQkKFar0DByENa/aiUEvqihs=;
	b=aQ8u8VvAKqgMQrAJKY05pYaHZKrSyaXVY4ecI7alEHdlKrIobdZV13Flz0xPX7d5XB
	KmrDHumoGgSB76FFewDegQgad60MIFi6JOvFocTeEXbWj0VBRU8/xDFvPj38/3fT7Rai
	9HHsSkruuwUMCJA/X/yl7V2PamVJw2XbdsoWyg36TcZY7CrE5XmixO9BNwEyuXdyMaU1
	eCoPszyDmEAx8GNpYenhvVyO0ewch7cnVteZ6FEDwuMVAmVHAxvZnegIj/iZMquQDqn1
	fGlUR2CVYIKMt3BqqbF72rxtAqyfk7l/hbdWN08WiuN5/jgS4uTmDUOx91ozWtBw101n
	zdOA==
X-Gm-Message-State: AFeK/H3jWPN/Z/LjBk3w5llBLZwlFjxAQvoFIUdZO1YhplC4LJjxH7SJ7zUUgmK8og4nGA==
X-Received: by 10.223.169.70 with SMTP id u64mr20511888wrc.187.1491327360660; 
	Tue, 04 Apr 2017 10:36:00 -0700 (PDT)
Received: from gizero-desktop.tw.it
	(host168-65-static.12-87-b.business.telecomitalia.it. [87.12.65.168])
	by smtp.gmail.com with ESMTPSA id
	o22sm8252993wro.45.2017.04.04.10.35.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 04 Apr 2017 10:35:59 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Apr 2017 19:35:50 +0200
Message-Id: <1491327350-31629-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2] rpi-config: fix invalid shell variable name
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
X-List-Received-Date: Tue, 04 Apr 2017 17:36:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Commit da32aac introduced an invalid shell variable name in do_deploy():
according to bash manpage variable names cannot contain dots. Replace
dot with underscore to fix it.

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---

v2: also update README accordingly
Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 README                                  | 2 +-
 recipes-bsp/bootfiles/rpi-config_git.bb | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/README b/README
index c58bc99..9fdd5eb 100644
--- a/README
+++ b/README
@@ -247,7 +247,7 @@ List of currently supported models:
 If you would like to use the Waveshare "C" 1024×600, 7 inch Capacitive Touch
 Screen LCD, HDMI interface (http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
 Rev 2.1, please set the following in your local.conf
-WAVESHARE_1024X600_C_2.1 = "1"
+WAVESHARE_1024X600_C_2_1 = "1"
 
 3.P. Enable UART
 ===============
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 8adc938..af55983 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -112,7 +112,7 @@ do_deploy() {
     fi
 
     # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
-    if [ "${WAVESHARE_1024X600_C_2.1}" = "1" ]; then
+    if [ "${WAVESHARE_1024X600_C_2_1}" = "1" ]; then
         echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS capacitive touch screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "max_usb_current=1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "hdmi_group=2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
-- 
2.7.4


