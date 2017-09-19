Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A65B2E00CE6; Tue, 19 Sep 2017 09:22:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 439C6E00CD0
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 09:22:09 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id v5so64729pgn.4
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 09:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=PwuMLJEiTd4hK+FmTke82VmIUCoZ9DIR19eXwDAIQ2M=;
	b=CBq5pDgInxS7VgJIWL6vqWUyA4Tp9WBZiB8mNrLxN6PKpCy9XpxWZR6VYjNogZetmi
	hZJUUzQ6iScyXNVHUNCziuSx6JkhqIoyrP49CrwQgDVJDP7v5QlAMKhQGF/S9dszEAx7
	Lb2YaY6UfX1RQVi6taX+tUj8TS4khVPMIEj6D/4Mjay19EqZPiaRmX2I/MOa7HqIRAFd
	u3nudPL6C0h+om2zp/AtrjxwBNmuC8KxH6++icaF64z2EjdhGPk/v28Gww95sZsINerP
	wGQ1xPVE1LX6fPKDcK/2iXKvaOkTOJVYf9T3pXGKTHsB6wKg7Oo/bl8YHr6exh8P7pyn
	hAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=PwuMLJEiTd4hK+FmTke82VmIUCoZ9DIR19eXwDAIQ2M=;
	b=an2KoWPJ1YBaObmViQRMTe5mfNkmZvPzMXuIAVpJdbS0u4BlgFiamYGqT4y1f2tJZN
	sVsC8IFID3gYce77gjYGWd7l46PJ+B5n6QOy7WzWGsORtcXsWwVEnBY/F6fVzS3WgP3k
	lGIs2wzCTHkcnnf3jSKCRWTS++veYa5nzFlFi0wOdxQmmCojqxrkwSooiq9tglWuqfeB
	tXFKeEZkhBex5F1chFUj5WlKbl6Fy737DB4Qa+axSJ55XnRMmOleMjpFeP/duDMD90Sb
	moK58SVItZpBpAYYfsnFUCD1WaaxkdZEztziHu1UebUCax1pVFuXtoFBT1cRvMl2DI/b
	9xUw==
X-Gm-Message-State: AHPjjUgIUqy0+9qNNO3jg6FlHdknfj2TIqMfeFyWOLSNJL790iObWtyo
	6Kat+RivFX7+j/ccveBD8WpdcA==
X-Google-Smtp-Source: AOwi7QBngGHcXItOyYXic8QELzIY4ljPfylS+WfiVHtbzMnTcxbdM3s85o0ffAJKbKo6BJGnFPZv0Q==
X-Received: by 10.99.63.194 with SMTP id m185mr1855460pga.364.1505838128285;
	Tue, 19 Sep 2017 09:22:08 -0700 (PDT)
Received: from localhost.localdomain (c-73-158-54-208.hsd1.ca.comcast.net.
	[73.158.54.208]) by smtp.gmail.com with ESMTPSA id
	s81sm4906836pfg.162.2017.09.19.09.22.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Sep 2017 09:22:07 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Sep 2017 09:21:52 -0700
Message-Id: <20170919162152.37560-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20170919162152.37560-1-raj.khem@gmail.com>
References: <20170919162152.37560-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 4/4] xserver-xf86-config: Disable glamor for the modesetting driver on pi64
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
X-List-Received-Date: Tue, 19 Sep 2017 16:22:09 -0000

Fixes a xorg server crash with musl see details
https://github.com/voidlinux/void-packages/issues/6091

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../xserver-xf86-config/rpi/xorg.conf.d/10-noglamor.conf         | 6 ++++++
 recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend   | 9 +++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-noglamor.conf

diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-noglamor.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-noglamor.conf
new file mode 100644
index 0000000..1a562ea
--- /dev/null
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-noglamor.conf
@@ -0,0 +1,6 @@
+# 
+Section "Device"
+	Identifier "modeset"
+	Driver "modesetting"
+	Option "AccelMethod" "None"
+EndSection
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index b361eef..7902f20 100644
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -4,7 +4,9 @@ SRC_URI_append_rpi = " \
     file://xorg.conf.d/98-pitft.conf \
     file://xorg.conf.d/99-calibration.conf \
 "
-
+SRC_URI_append_libc-musl_raspberrypi3-64 = " \
+    file://xorg.conf.d/10-noglamor.conf \
+"
 do_install_append_rpi () {
     PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
     if [ "${PITFT}" = "1" ]; then
@@ -13,5 +15,8 @@ do_install_append_rpi () {
         install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
     fi
 }
-
+do_install_append_libc-musl_raspberrypi3-64 () {
+    install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
+    install -m 0644 ${WORKDIR}/xorg.conf.d/10-noglamor.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
+}
 FILES_${PN}_rpi += "${sysconfdir}/X11/xorg.conf ${sysconfdir}/X11/xorg.conf.d/*"
-- 
2.14.1


