Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5AE1E00B23; Tue,  4 Apr 2017 07:19:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24047E00AF4
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 07:19:30 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id k6so41157817wre.3
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 07:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=N2knGyEu2hiEdTnLAAo8ewAKm8PNnh6gzXiKzHMha58=;
	b=Tx/SfsgSWI1Wl9gW2HLjD7SYDvIwNSSEUV8YlpRqHXSpT5/EFk5g69AfLtmUa5L44e
	rfc7TLohDfwjg0whtm39IEj4Sz+CHmuLyhA1ff0ZcDSo2Ym0LpsafTTlQRIvT7qheO14
	KWGQl2kAF1/2OFQKyT1ZvM+pYN676Un/G9mamKUuIQO5hiPvRLHArGwR/FxJATz56j7n
	qOCI0xKfXBiRBbU82PoVOoKiusL3VrqiV3nV2oqozYrj9RMhWcMBigkrzej4Vbiv3XEp
	LtPJN24KDojBJ8ZZsB8Uoo3+QuGWLgWbKdkzVVbPtGhOM3G2Svr1B2yyf1AvQFw1n7Oi
	+VIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=N2knGyEu2hiEdTnLAAo8ewAKm8PNnh6gzXiKzHMha58=;
	b=de0nbNtNQ4hHvZMxIhrUrZPqLhkqFHpmKkP2Y9ez+T6S6mw5HgoVVF8SKLJ8czV+S7
	aQ+2aAhFxV4ATlC7v44hdROTM1X444rFLwyshl0CBoY+bOCFepM8sXABL2zk/qD7Za71
	i97ehISQjiOFH2EPPFJzxKQogwCN/oMU0NjyqfflfDcIIvpXz5Oo5bMWeMkDjV/3llai
	db2V9Ljs3bsfTNTm+KtFymuhgwYtxmLuLr/W5/dLohXWUpESEJNyxONAw8X3bMMMarX3
	TI/gFsDAvAONejsC50Jst/jl6QHnQ62aKp64eoDhzax17ioCm/yXXQutcRXtWO92OuJP
	4Mqg==
X-Gm-Message-State: AFeK/H33yQNnbRAkvkbORu/mm368FNkm0brXZa10HWcYRdCS+RAqD+S4/XbzPqf8WJiCHQ==
X-Received: by 10.223.162.198 with SMTP id t6mr21889380wra.155.1491315569952; 
	Tue, 04 Apr 2017 07:19:29 -0700 (PDT)
Received: from gizero-desktop.tw.it
	(host168-65-static.12-87-b.business.telecomitalia.it. [87.12.65.168])
	by smtp.gmail.com with ESMTPSA id
	t68sm22559009wrc.55.2017.04.04.07.19.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 04 Apr 2017 07:19:29 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Apr 2017 16:18:03 +0200
Message-Id: <1491315483-24345-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] rpi-config: fix invalid shell variable name
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
X-List-Received-Date: Tue, 04 Apr 2017 14:19:32 -0000

Commit da32aac introduced an invalid shell variable name in do_deploy():
according to bash manpage variable names cannot contain dots. Replace
dot with underscore to fix it.

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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


