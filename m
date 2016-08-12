Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0200E01048; Thu, 11 Aug 2016 18:06:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87463E0124E
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:31 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id h186so581583pfg.2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=G8VcuuuOHyWrqrFJOptUCALMpnID6oJQwnst3epIXZs=;
	b=pFhfcSmorUFAaaykdJf3oXuQ9yf9j445UFgk5xo20ho9hkzz+xYty46VZ+u/DgGFmM
	SfuzXcaxHi/2LVZFBcL2vVFK7pLWBM7dxkcMS+iRD+7h07QQAgPZgKzDTOCrzgc4ckXX
	+gT5dvRoI0NqQOX9alWten/5ys2G+QNplD8OtT7QuJ/4/+AUMSpM5au7/7+Ekwtn88d3
	Le3lLzY8rCLm9Z/4GZm3h783kt5Pruu9dLkJG4Malvun0EE30h7y0kp6kW6p8uwIxJR4
	Pj1TeiJxkJEcNiMS2RLK33CVAbCjl6v0uEd1nehqT/hZW0nBPIThe/+bfYUyi7Ld7jfV
	wYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=G8VcuuuOHyWrqrFJOptUCALMpnID6oJQwnst3epIXZs=;
	b=Bd7NwNmi+6hRvAa3uZlQFzLQ0Apvt9vnE+jJvEi4UWsG9k84D5vxGng7qQL2rLEt2P
	3tc9EEAURbz3ngdFCDMorFmnVev+2HnB+Elmq1xezw3sfbVXILJzaabrfxZByHxYaLzj
	/hUgzd/9eA5kqaAjlnv/FB+5LFoeP6+ldXIdfPNpc90OVQzmdRSnlBB+IBE2rGJC9n5l
	1z+Uf72h0dMv5efuC1mPVz7K9E4nSFKG9x6Ens0GorEV9C3Cl+9Ed1OJHcU+AnCgMCtM
	JnctnnEjY4heXU5cwktjq89ZZKmXEtgAob6LuaRH0eByuQPURCNiZlMaExOHMpAag25W
	20OA==
X-Gm-Message-State: AEkoousk10Jqf8njZ3Bsdt4nKENzbLBMtF6fQuaxgxpFqM+Pa4JRD2KBYvWogA7lH5yKcg==
X-Received: by 10.98.207.6 with SMTP id b6mr22301547pfg.25.1470963991355;
	Thu, 11 Aug 2016 18:06:31 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:30 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:00 -0700
Message-Id: <20160812010608.31182-15-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 15/23] linux-rpi.inc: add the configuration options required to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:39 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-rpi.inc | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index 4b65fc2..3eeefee 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -111,6 +111,16 @@ do_configure_prepend() {
     # Activate CONFIG_LEGACY_PTYS
     kernel_configure_variable LEGACY_PTYS y
 
+    # Activate the configuration options for VC4
+    VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
+    if [ ${VC4GRAPHICS} = "1" ]; then
+        kernel_configure_variable I2C_BCM2835 y
+        kernel_configure_variable DRM y
+        kernel_configure_variable DRM_FBDEV_EMULATION n
+        kernel_configure_variable DRM_VC4 y
+        kernel_configure_variable FB_BCM2708 n
+    fi
+
     # Keep this the last line
     # Remove all modified configs and add the rest to .config
     sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
-- 
2.9.2


