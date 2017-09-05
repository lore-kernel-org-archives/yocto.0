Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79E28E00C45; Tue,  5 Sep 2017 15:34:50 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3625E00C3A
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 15:34:45 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id y68so2241743pfd.1
	for <yocto@yoctoproject.org>; Tue, 05 Sep 2017 15:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Kv9XFY551+gp/5S5xCKYTVnZQ0/q9232glrf7esA/g0=;
	b=uqpqprRMhHuOcxoQWLvf96dRfON5mBzHc7S4qfCPSO6cjBN9uw12OWyx5Dmk0rUVO8
	OykXEIM9TCyKfn89xehDi3HhNwspVtK7MGYP2i1b6heOrDLSy1pLWlluxU9VwuHY1ZBo
	Nt9SKvfbY8ICmzqRTOGtQMBORHEOrzqhGw8o24sNZUJTYY+/WjkVmi7WdLDkek2IGeLm
	o0vucU1p4ULC0YjT7Ey8s8QyTB55G9ngXvKmCIwLdQoFcoMJSU3fN822/CfCQWdQXDEM
	2F+uHCQxtu/bwmNQzPlHitfmiqXHjb8ub7drEZl8a9icbhcHraas88XLLQha0AAC9a41
	4wBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Kv9XFY551+gp/5S5xCKYTVnZQ0/q9232glrf7esA/g0=;
	b=q6kcnIbOl54dX1+K5BwwPOCJaB268hSUMwvU6A45wbApuAcIz4FXw6v2W7K/NkU9DN
	l9HPF3mUPML8bbXJnP6hXi70K3MXlW5B0RU5+XPE6GiiZ4Zwk2qyaCU3k17ioQyZPucM
	xBM4T0XTBXTLMCbiIqiDKsxckStYpNqrBTya8syym9o7Lw09O+eGSHgnLKHMyDiFgmR1
	aEW25cmfSid4Eu+69yzArnuzKJmMg7Y+gM75S1qgWY3AWfhAzgqMYYVBpkmRak+GAC5H
	+vAn0dUKEccJ2/YzHNlLWW2OgZWHbbEXdA5T1cxKGkPVFWinzBf17/4LlNuLt30Xlmx+
	FAgg==
X-Gm-Message-State: AHPjjUjt0yOYpbqDzJG4GpFcUyq5X5b+pOP9NObHSYC/2u/DwTMBX1lw
	+w1PETPTX5+m2I8qSxE=
X-Google-Smtp-Source: ADKCNb42/6B/4VAGI1haZ3vnXjGSGBaaMrWIMC6ZEt9yn/VZtLCJnf7Qf9k0cuz0hWg1DWIXf6fIxg==
X-Received: by 10.84.232.14 with SMTP id h14mr6018756plk.274.1504650884677;
	Tue, 05 Sep 2017 15:34:44 -0700 (PDT)
Received: from localhost.localdomain
	([2400:2411:21c1:9d00:b8cb:4f3b:9c01:c505])
	by smtp.gmail.com with ESMTPSA id a78sm21451pfl.39.2017.09.05.15.34.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 05 Sep 2017 15:34:44 -0700 (PDT)
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Sep 2017 07:34:19 +0900
Message-Id: <1504650859-5194-2-git-send-email-mickey.happygolucky@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1504650859-5194-1-git-send-email-mickey.happygolucky@gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
	<1504650859-5194-1-git-send-email-mickey.happygolucky@gmail.com>
Subject: [meta-raspberrypi][PATCH v2 2/2] bluez5: enable bluetooth on raspberrypi0-wifi
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
X-List-Received-Date: Tue, 05 Sep 2017 22:34:50 -0000

Add functions/variable to enabling bluetooth on raspberrypi0-wifi.

Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
---
 recipes-connectivity/bluez5/bluez5_%.bbappend | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-connectivity/bluez5/bluez5_%.bbappend
index b2fbf22..03efd5c 100644
--- a/recipes-connectivity/bluez5/bluez5_%.bbappend
+++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
@@ -25,6 +25,7 @@ BCM_BT_FIRMWARE =  " \
 
 BCM_BT_SERVICE =  " brcm43438.service"
 
+# for raspberrypi3
 SRC_URI_append_raspberrypi3 = " ${BCM_BT_SOURCES}"
 
 do_install_append_raspberrypi3() {
@@ -34,3 +35,14 @@ do_install_append_raspberrypi3() {
 FILES_${PN}_append_raspberrypi3 = " ${BCM_BT_FIRMWARE}"
 
 SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " ${BCM_BT_SERVICE}"
+
+# for raspberrypi0-wifi
+SRC_URI_append_raspberrypi0-wifi = " ${BCM_BT_SOURCES}"
+
+do_install_append_raspberrypi0-wifi() {
+    enable_bcm_bluetooth
+}
+
+FILES_${PN}_append_raspberrypi0-wifi = " ${BCM_BT_FIRMWARE}"
+
+SYSTEMD_SERVICE_${PN}_append_raspberrypi0-wifi = " ${BCM_BT_SERVICE}"
-- 
2.7.4


