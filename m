Return-Path: <mburtin@connected-labs.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD9B3E00C23
	for <yocto@yoctoproject.org>; Fri, 18 Apr 2014 06:04:22 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id k14so495000wgh.22
	for <yocto@yoctoproject.org>; Fri, 18 Apr 2014 06:04:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-type:content-transfer-encoding;
	bh=O/stqDHCS844kzxJ0dhHcUcbAViych+sss8PQcRpuJc=;
	b=WpXaYuKU0o+ObwjitMJ63Ek9xO7GidIR/4u45RXgkGqE1h+zSiDW2SCSA15iTB7EkX
	BqQkw6fpO8nUWvB/LvfixtX7UKPIKIFz8G4Cd2F4HXzhWYWUgYtLzVwkWF/SNN1cafGu
	mbwe1vbOwIeOcaTg7x8CS2gDbYoqrvjh3XAXgejbSV/n/f1nncZB6BOh2w8ME/I38VXo
	EeQvdJZ4q+pEOBpG9coveIT7sJAWPDixq9LldCZAaTTj3Va8ipGiuQvKNsZM3JIHOrk/
	F/KfXF138UCukNudxDIVfJ6XmoGu753kPQjjAHA2+QIb1q7u+nRS/HKdXn9T/x/6sXfV
	bNvQ==
X-Gm-Message-State: ALoCoQkFeYLuq7ws/nK4XcAxp5vW3MnEahzLO6PCeKB1TvkHnimdcXj4Sf9EAXNsnhjFUFQUQr6i
X-Received: by 10.180.74.242 with SMTP id x18mr2406864wiv.20.1397826260816;
	Fri, 18 Apr 2014 06:04:20 -0700 (PDT)
Received: from mburtin-desktop.mpl.mstarsemi.fr
	(connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu. [94.103.137.126])
	by mx.google.com with ESMTPSA id i9sm3167135wiy.17.2014.04.18.06.04.19
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 18 Apr 2014 06:04:19 -0700 (PDT)
From: =?UTF-8?q?Micha=C3=ABl=20Burtin?= <mburtin@connected-labs.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Apr 2014 15:04:08 +0200
Message-Id: <1397826248-6071-1-git-send-email-mburtin@connected-labs.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] xserver-xf86-config: remove changes of THISDIR and FILESPATH
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
X-List-Received-Date: Fri, 18 Apr 2014 13:04:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

THISDIR and FILESPATH are not supposed to be changed from within
recipes. This was causing troubles with other bbappend.

Change-Id: I7c3c788ddb61b0b790a9fe06f86e4bd93a822c8c
Signed-off-by: Michaël Burtin <mburtin@connected-labs.com>
---
 recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 3e86645..0b4dc31 100644
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -3,9 +3,6 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 # Don't forget to bump PRINC if you update the extra files.
 PRINC := "${@int(PRINC) + 5}"
 
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
 SRC_URI_append_raspberrypi = " file://xorg.conf.d/10-evdev.conf "
 
 do_install_append_raspberrypi () {
-- 
1.9.1


