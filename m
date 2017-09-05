Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2F3DE00C09; Tue,  5 Sep 2017 15:34:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A191E00B77
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 15:34:40 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id d8so2606565pgt.3
	for <yocto@yoctoproject.org>; Tue, 05 Sep 2017 15:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=pFRn7xsZUXqJ37wXHy3lZ0N+cY4Q3LsYthHnWu/YcK8=;
	b=dxb6ow3s7gCrgK9a8nG4OGea5DeN5GkU4rzfGjirz0NkK4zSTlCBRYGTfrGJvUKWCU
	69bCKsL1v5DGR5rB5WFYnc6WWu9miwnjQLG+uXEV65JcoK4AgNNCwKeOfn4pFDRbxp/J
	zWqwHv7Bzq8hu2Yl6DtEmV6qIU2Epc/67/RaNjSqTDhOiXOCDStGwlS6yD2jwjDNfllN
	Tq43yBJpDnbKnpYQPlpFe16ZyCxuH8PN1fMfrRpXbjt4UqbNg9VjX1FNM1oQb6U+ADAu
	Ng2/B0wNroOTl0EjHvvNO6pZt8jhwFb6eDoX2qL8JauZ5xGkdgA+RvsfYswq2+7jXk1Q
	5Eow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=pFRn7xsZUXqJ37wXHy3lZ0N+cY4Q3LsYthHnWu/YcK8=;
	b=I4KdL3ZaQ91riGu9J/A8hBcp7oDnJmkqF8xEwZPjhc9sejsKLRSD/RsDhp7ZC1Uv9g
	aYA13LSUFvXpfLxzk/vWZe8yoxB6c42roLnr9uqYkILzbpEcnfSUcrDl/AgS3GlIhKPu
	IgRPnKK3pMQhvXfB/iZR+610aD/k+rWuqiDT4QUhhIPWBWuJGeK5kxVRwJ+UWfljETvh
	ui+Uomc9Z9t3f19zrkJE5ckcDWsG0oxZ1oggqNN4xG8JCLpqTjgen1LqXCxKybJMhvws
	ZU/eFkq4rax/KQRpOwlVr5ZNBV5/AmXunQaM4QZIrscwk4o2jnMagcxDfdx9Dc8jDlzy
	luaA==
X-Gm-Message-State: AHPjjUj9Da5q4KYWautwK8ZMEt2VfixfOfHCPJb6oHjINOedy7rdsZKH
	cmNlrdiJWv0EZTOFWjM=
X-Google-Smtp-Source: ADKCNb4pMNOXNOSwreSBfbMxMpcz7FY9kcmAHF1jVx1OmxvAcCJgfhgI9s7ulbg7IUuC/erRBD0uyQ==
X-Received: by 10.99.112.24 with SMTP id l24mr5427479pgc.302.1504650879616;
	Tue, 05 Sep 2017 15:34:39 -0700 (PDT)
Received: from localhost.localdomain
	([2400:2411:21c1:9d00:b8cb:4f3b:9c01:c505])
	by smtp.gmail.com with ESMTPSA id a78sm21451pfl.39.2017.09.05.15.34.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 05 Sep 2017 15:34:39 -0700 (PDT)
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Sep 2017 07:34:18 +0900
Message-Id: <1504650859-5194-1-git-send-email-mickey.happygolucky@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
Subject: [meta-raspberrypi][PATCH v2 1/2] bluez5: add functions/variables to enabling bluetooth on another raspberrypi
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
X-List-Received-Date: Tue, 05 Sep 2017 22:34:41 -0000

functions/variables in this bbappend implemented for only raspberrypi3.
But these must be able to used to enabling bluetooth on another raspberrypi that has bluetooth feature such as raspberrypi0-wifi.

The simple solution is a duplicating these but it is not good ideas for maintainance.

Add functions/variables follows to simplify to enabling bluetooth on another raspberrypi that has bluetooth.
- BCM_BT_SOURCES
- enable_bcm_bluetooth()
- BCM_BT_FIRMWARE
- BCM_BT_SERVICE

Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
---
 recipes-connectivity/bluez5/bluez5_%.bbappend | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-connectivity/bluez5/bluez5_%.bbappend
index 956d776..b2fbf22 100644
--- a/recipes-connectivity/bluez5/bluez5_%.bbappend
+++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
@@ -1,6 +1,6 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-SRC_URI_append_raspberrypi3 = " \
+BCM_BT_SOURCES =  " \
     file://BCM43430A1.hcd \
     file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
     file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch \
@@ -9,7 +9,7 @@ SRC_URI_append_raspberrypi3 = " \
     file://brcm43438.service \
     "
 
-do_install_append_raspberrypi3() {
+enable_bcm_bluetooth() {
     install -d ${D}/lib/firmware/brcm/
     install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/BCM43430A1.hcd
 
@@ -19,8 +19,18 @@ do_install_append_raspberrypi3() {
     fi
 }
 
-FILES_${PN}_append_raspberrypi3 = " \
+BCM_BT_FIRMWARE =  " \
     /lib/firmware/brcm/BCM43430A1.hcd \
     "
 
-SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " brcm43438.service"
+BCM_BT_SERVICE =  " brcm43438.service"
+
+SRC_URI_append_raspberrypi3 = " ${BCM_BT_SOURCES}"
+
+do_install_append_raspberrypi3() {
+    enable_bcm_bluetooth
+}
+
+FILES_${PN}_append_raspberrypi3 = " ${BCM_BT_FIRMWARE}"
+
+SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " ${BCM_BT_SERVICE}"
-- 
2.7.4


