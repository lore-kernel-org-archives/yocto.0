Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FEA1E00D0E; Tue, 24 Oct 2017 22:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06853E00D0D
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 22:43:42 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id f187so12726926itb.1
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 22:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=kPGh+rShrvyEzO1xoXCtkgHOXmlys2grOhOinq2xfOU=;
	b=bkbnfNpsnKAOAFnM/gwktDIfrWXvVoPI12mmPOexWW0TFYh2cvHMWjhJ2428B6QnLp
	H1T47CybRyu4CiB0zTgkSweWXYYQN0beUMTGrUQAeH2HGpSFlZJHnzXWh6yx1z9XoL1D
	2V8iptm032WSSi8iWql4F2t+jGH8mB4MgJsdjl2xIRto0N3oUWe6Q1TThd0hFXbcX28V
	6Mv9lkf6GjeBEUQ8mHsgR5MrfbvSTpnDGi74ZcU7YWCn4LDfiYylsDfavsFMjAonHQJL
	h7qecmMLt1uiuvW2LuNEyD4/B7ywHI8dVYqh+wLXjAQfVyZeYC1oNepORDDQmVW8qLbL
	r5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=kPGh+rShrvyEzO1xoXCtkgHOXmlys2grOhOinq2xfOU=;
	b=hEjkaydfxl6+opTHIO/mNTFu127wCjV7SmcDloaU+iA8kmDCQhiY5QfXvCVDUdP8I3
	c3N1vDmN2rBc07jSm90KtnVgzE/jTgeBo8CmLP9z0yaZPFOa3aaY2RIahusZh61cD6Be
	S4gAmMzk/SEYTPAeUJllwF0MmTEEjBF23He0KukntATncY2v20nL0D4zlMHnIWneCRGd
	H2Qn+9BskJxHubNmwa/MuSmQjiCwrSaoRcYKHruM2hus8mDwChCAyfSWFmGsVvLpWc/X
	AgX3WgJai8yVKJGOw4KEGvQTaAOueBlr8jdeL5bWq5EM+/wtuuEc2+PvVyqtSVXNED0/
	5IOQ==
X-Gm-Message-State: AMCzsaXlGgahjoW9uapUlaXczvwe3MSZW2TrsNVkpJ5avkGdRmSr0HoR
	sjfC1ERKqGxZIcr73wDLwEztTZxR
X-Google-Smtp-Source: ABhQp+T0CWdcPORSukmQFD3/KcC2kX/5aNPSccRghpouzSZNCa7W9qBltbjbcIbw8nxC7LRTSYIWHw==
X-Received: by 10.36.82.1 with SMTP id d1mr605243itb.115.1508910221861;
	Tue, 24 Oct 2017 22:43:41 -0700 (PDT)
Received: from localhost.localdomain
	([2604:2d80:8039:8064:ec83:a329:df73:818a])
	by smtp.gmail.com with ESMTPSA id
	a187sm929278itd.31.2017.10.24.22.43.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Oct 2017 22:43:41 -0700 (PDT)
From: Michael Gloff <mgloff@emacinc.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Oct 2017 00:43:28 -0500
Message-Id: <20171025054330.23222-1-mgloff@emacinc.com>
X-Mailer: git-send-email 2.14.3
Cc: Michael Gloff <mgloff@hotmail.com>
Subject: [meta-raspberrypi][PATCH 1/3] linux-firmware: Replace /lib with ${nonarch_base_libdir}
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
 recipes-kernel/linux-firmware/linux-firmware_%.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-kernel/linux-firmware/linux-firmware_%.bbappend b/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
index 565b735..daf1dbc 100644
--- a/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
+++ b/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
@@ -10,17 +10,17 @@ do_install_append() {
 	# (v7.45.41.46)
 	local _firmware="brcmfmac43430-sdio.bin"
 	local _oldmd5=9258986488eca9fe5343b0d6fe040f8e
-	if [ "$(md5sum ${D}/lib/firmware/brcm/$_firmware | awk '{print $1}')" != "$_oldmd5" ]; then
+	if [ "$(md5sum ${D}${nonarch_base_libdir}/firmware/brcm/$_firmware | awk '{print $1}')" != "$_oldmd5" ]; then
 		_firmware=""
 		bbwarn "linux-firmware stopped providing brcmfmac43430 v7.45.41.26."
 	else
 		_firmware="${WORKDIR}/$_firmware"
 	fi
 
-	mkdir -p ${D}/lib/firmware/brcm
-	install -m 0644 $_firmware ${WORKDIR}/brcmfmac43430-sdio.txt ${D}/lib/firmware/brcm
+	mkdir -p ${D}/${nonarch_base_libdir}/firmware/brcm
+	install -m 0644 $_firmware ${WORKDIR}/brcmfmac43430-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm
 }
 
 FILES_${PN}-bcm43430 += " \
-	/lib/firmware/brcm/brcmfmac43430-sdio.txt \
+	${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.txt \
 "
-- 
2.14.3


