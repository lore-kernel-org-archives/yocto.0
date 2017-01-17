Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 691D7E00546; Tue, 17 Jan 2017 07:59:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6808E004A0
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 07:59:13 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id d140so23075057wmd.2
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 07:59:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=CKlPj878gqjpyDmGtjUKc9wyFQW4+IMarLGMzbSIK5M=;
	b=sXs71B4fSRpfnzzVixOskeZsO0/xIKWUJZRAjhWmCZS9MM1sEQK6tSc2k7P+PS9fUm
	Z6KEoQ1MR3xUSB02R8LQ5X7JbrU3LUIYz4Fpj/qJfEIcSf+PoOYTzS1YzS+qet2077vu
	XwC80LAUFEzSRrCo5D4MgZWT2k3kasvkC54DTm/XYbAk1c7aIRzVhLG/vN/GzovVqCb3
	HsvzfOzTMSpURY1iQfQKOJIDzlXKVttCszgU+hrWB03vLmVmuw+Yw+kkRh9Knpjp/iuT
	DSlrqv/OnAf2zwFxh6fJLQNsHNszECF7uJpWtiwS+mzn0Hi+BCR1TO1jHXWQMLuPv/xR
	z2YQ==
X-Gm-Message-State: AIkVDXIAjdvrYD8oL4Aq1KMONwxDIoYIaaWvV3VOouzsR0RuHUM9HCwPiY1zNNO5y7lmHA==
X-Received: by 10.28.12.13 with SMTP id 13mr3544229wmm.10.1484668752213;
	Tue, 17 Jan 2017 07:59:12 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	r129sm38065544wmd.8.2017.01.17.07.59.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Jan 2017 07:59:11 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Tue, 17 Jan 2017 15:59:10 +0000
Message-Id: <20170117155910.23792-1-git@andred.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-swupd][PATCH] swupd-image.bbclass: do_swupd_update() depends on time-native
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
X-List-Received-Date: Tue, 17 Jan 2017 15:59:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

The shell script uses time, which is either a bash built-in, or
a GNU utility. Not all build machines will have either bash or
GNU time available out of the box. Make sure it is available.

Note that this needs the patch to OE-core to enable the
time-native BBCLASSEXTEND to be applied before this here can
go in.

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 classes/swupd-image.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/swupd-image.bbclass b/classes/swupd-image.bbclass
index 5ba9cfb..60f7edb 100644
--- a/classes/swupd-image.bbclass
+++ b/classes/swupd-image.bbclass
@@ -563,6 +563,7 @@ SWUPDDEPENDS = "\
     virtual/fakeroot-native:do_populate_sysroot \
     rsync-native:do_populate_sysroot \
     bsdiff-native:do_populate_sysroot \
+    time-native:do_populate_sysroot \
 "
 
 # We don't know exactly which formats will be in use during
-- 
2.11.0


