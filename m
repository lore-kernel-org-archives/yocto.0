Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF8B0E00D0E; Tue, 24 Oct 2017 22:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1765AE00D12
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 22:43:44 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id 189so26337401iow.10
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 22:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=mazoa5ktm1eeYBcw7ZMSfhwlKqXmHp/uVDlXEjKNiW4=;
	b=qGhCF+HzYSfKhlaHwg2SF0cMuCxe6ioY5qDbggxrmnDD0hj9jsyK76hNL8actU60Es
	7N/kZFkfhBAt4GBFVKmIzLkor6q2k92cobvi9/7MoxFAMiIUqfA+RChHDxqKclHJjO04
	wuhWqIYNtPAsfTUH5KaWvl45O6H+2CTyHuDcAs0Vd6Xzf0lFPoupDDjOeP5AWYw0X51J
	t5oOQKyIByv6jK/WGZvQsImOaORhkAwiFgHD7vEF9s161yy0gXX8gkMwzaUcS3mXbTfq
	nTWGBPCyFoUTX0uS6r4QarjwVOrDN1K+jwunreGfoIpraQm2k7RsYDjl9rTcQNhHQ12r
	MpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=mazoa5ktm1eeYBcw7ZMSfhwlKqXmHp/uVDlXEjKNiW4=;
	b=bcQAxeWqSEdKIQhyV43Yld08S0L9wkTEKvlcy1TywmBsiBopyvyAv2A0gWLa+8BnRG
	o7vG33XszxU+hIfYtitoOqD1vy6SL5Ti3gweRpcMDc8UMFEEaKvfIg75lUv28dhVVLTN
	5SNsRbBjLtxlW051w/6JoQPwx4dxwgWQI+XQe77m0f80ym6J6xg0Nac+9lR0jSFJ3DaN
	eO3iGcaJTMJWlQoDTY5kvxVWloqQZ6IWp5SKv67RXHQcMOeg791R4DT1rFQiHgRs5Ify
	wQlHcEZQZeBH5m7KUDkUpb3ub325+51QHG8jpwCQBgmLh54NtbmJBMZl84RkQ0wilAwz
	Vosw==
X-Gm-Message-State: AMCzsaWZp/AFphyIW3ffsnCFaUk7koJRG6sOqf+D3ujYGyoUjcyOZ4aS
	dwYlbuelf3Tvb64XikkvaiCwOBmX
X-Google-Smtp-Source: ABhQp+QTAWkPkU5fAhIvTG2/lSb1lMHzzOUpDaj9KZeEeftdk4+uMopZJ2rtSFOfvw2owHMIEGjcbg==
X-Received: by 10.107.70.22 with SMTP id t22mr24953824ioa.69.1508910223932;
	Tue, 24 Oct 2017 22:43:43 -0700 (PDT)
Received: from localhost.localdomain
	([2604:2d80:8039:8064:ec83:a329:df73:818a])
	by smtp.gmail.com with ESMTPSA id
	a187sm929278itd.31.2017.10.24.22.43.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Oct 2017 22:43:43 -0700 (PDT)
From: Michael Gloff <mgloff@emacinc.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Oct 2017 00:43:30 -0500
Message-Id: <20171025054330.23222-3-mgloff@emacinc.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20171025054330.23222-1-mgloff@emacinc.com>
References: <20171025054330.23222-1-mgloff@emacinc.com>
Cc: Michael Gloff <mgloff@hotmail.com>
Subject: [meta-raspberrypi][PATCH 3/3] bluez5: Replace /lib with ${nonarch_base_libdir}
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
X-List-Received-Date: Wed, 25 Oct 2017 05:43:45 -0000

From: Michael Gloff <mgloff@hotmail.com>

    Use standard variable name and avoid
    QA errors when usermerge DISTRO_FEATURE is enabled.

Signed-off-by: Michael Gloff <mgloff@emacinc.com>
---
 recipes-connectivity/bluez5/bluez5_%.bbappend | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-connectivity/bluez5/bluez5_%.bbappend
index 03efd5c..eac8d40 100644
--- a/recipes-connectivity/bluez5/bluez5_%.bbappend
+++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
@@ -10,8 +10,8 @@ BCM_BT_SOURCES =  " \
     "
 
 enable_bcm_bluetooth() {
-    install -d ${D}/lib/firmware/brcm/
-    install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/BCM43430A1.hcd
+    install -d ${D}${nonarch_base_libdir}/firmware/brcm/
+    install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}${nonarch_base_libdir}/firmware/brcm/BCM43430A1.hcd
 
     if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
         install -d ${D}${systemd_unitdir}/system
@@ -20,7 +20,7 @@ enable_bcm_bluetooth() {
 }
 
 BCM_BT_FIRMWARE =  " \
-    /lib/firmware/brcm/BCM43430A1.hcd \
+    ${nonarch_base_libdir}/firmware/brcm/BCM43430A1.hcd \
     "
 
 BCM_BT_SERVICE =  " brcm43438.service"
-- 
2.14.3


