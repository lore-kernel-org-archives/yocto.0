Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A5A1E00BED; Tue, 15 Jan 2019 07:04:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.219.181 listed in list.dnswl.org]
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
	[209.85.219.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37439E006F1
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 07:04:01 -0800 (PST)
Received: by mail-yb1-f181.google.com with SMTP id j10so1148595ybj.8
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 07:04:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=PL6r9wS564PuLO+dIKlNJpCKGL0CGliG4ylvinV/ZZc=;
	b=Ptaf29s2dAVs6Dr4CZQcDaSmdVoN0lOz2f6/B5bqPI4jZYAG/kFjeIToYah32xoqKm
	bXHuMXdYYoXnXsKGobQnzwYIwBxSMwYsF1ijqMRj4cD/1eSN1N1SeqiN822iE2fQ4iuS
	+h7ti32eYBcvpzAMeHIxJPtmkzjrPVkznMXmYNefKuX+xWoj+y1FPQHYLaGQwvoPiFAo
	YpGGICxyEl6yZ4HE+adPJ5pHbHZH8n2aa5C1PK2jMMsvEn99Sq4ZqVHWbyF5Mdo4Iy12
	wDHu2KtrlTHWyMerzqpQOAZiSn9tsJrbhj/gsJBnsX4akrzvYJPR251AvlB/xnVwwSUj
	VkPg==
X-Gm-Message-State: AJcUukf7V+pUCR9IqrTsbGvrNv0Nfx8d4nk2GfC/KQ/xSVdvIYN6Ib60
	0jK38hIuORleNFzNCd4pveLJdPWV
X-Google-Smtp-Source: ALg8bN5WbDL1S7OzA7RA1WJrR1UBCjB+Qd8Tqd6FwEIhBXfV28Kz/JDTM2ZxdDhmqUjjPheBklfgcQ==
X-Received: by 2002:a25:b51:: with SMTP id 78mr3268505ybl.93.1547564640266;
	Tue, 15 Jan 2019 07:04:00 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id e3sm1354912ywe.63.2019.01.15.07.03.58
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Jan 2019 07:03:59 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Tue, 15 Jan 2019 15:03:57 +0000
Message-Id: <20190115150357.931-1-git@andred.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-poky][PATCH] meta-poky: remove True option to getVar calls
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
X-List-Received-Date: Tue, 15 Jan 2019 15:04:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

A couple have still been missed in the past despite multiple
attempts at doing so (or simply have re-appeared?).

Search made using the following command:
    git grep -E 'getVar ?\(([^,)]*), True\)'

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 meta-poky/classes/poky-sanity.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/classes/poky-sanity.bbclass b/meta-poky/classes/poky-sanity.bbclass
index 81cd2eb6a6..a068c7368c 100644
--- a/meta-poky/classes/poky-sanity.bbclass
+++ b/meta-poky/classes/poky-sanity.bbclass
@@ -1,8 +1,8 @@
 # Provide some extensions to sanity.bbclass to handle poky-specific conf file upgrades
 
 python poky_update_bblayersconf() {
-    current_version = int(d.getVar('POKY_BBLAYERS_CONF_VERSION', True) or -1)
-    latest_version = int(d.getVar('REQUIRED_POKY_BBLAYERS_CONF_VERSION', True) or -1)
+    current_version = int(d.getVar('POKY_BBLAYERS_CONF_VERSION') or -1)
+    latest_version = int(d.getVar('REQUIRED_POKY_BBLAYERS_CONF_VERSION') or -1)
     if current_version == -1 or latest_version == -1:
         # one or the other missing => malformed configuration
         raise NotImplementedError("You need to update bblayers.conf manually for this version transition")
@@ -11,7 +11,7 @@ python poky_update_bblayersconf() {
 
     # check for out of date templateconf.cfg file
     lines = []
-    fn = os.path.join(d.getVar('TOPDIR', True), 'conf/templateconf.cfg')
+    fn = os.path.join(d.getVar('TOPDIR'), 'conf/templateconf.cfg')
 
     lines = sanity_conf_read(fn)
     index, meta_yocto_line = sanity_conf_find_line(r'^meta-yocto/', lines)
-- 
2.20.1


