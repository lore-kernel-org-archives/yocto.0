Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A75C9E00B74; Tue, 10 Jan 2017 08:02:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D3D8E00AB6
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 08:02:34 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id c206so78882891wme.0
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 08:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=vHEryh2R/H0bG0Jf6/AnJJFsiiXCen7kUmZDDp58hUQ=;
	b=MShtTxT60XYr36gzRy1EJSqzlCCWuEmAKyTHD8UtqrGNJS0oX3Sl2Qi0pBSLPz8c+y
	uQq6yQnaCSdU5LMaZGJ5Wg3Xj6Qo7cY1/XM39umSNzhpNJNIIZtkwjjDhc7j1B6p9ZQQ
	SSco7tukqG++OG8tNETGROxR5oMgFrKd0J8A99s6ISxQ6KgLYBjNIuv+cciTXIfpUD8i
	gICM/gRmZv5Q4z4Kc92/STal9M+oWS1t2Vri1jygE7pYsZ/Wjqea8v3kKWZUOyRApkIG
	yOy/5KFUidBR0lySitUmr+4bS+pk8W7e6/j1xV55CTvP/5GPrYSg/HOix2A13z/QKCBU
	oN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=vHEryh2R/H0bG0Jf6/AnJJFsiiXCen7kUmZDDp58hUQ=;
	b=aZAg4vnF727s1EejVoIt1zn0OUN1YbSeoavR6+0TN8tEaZz/IeVKTZw5pFe9uhY/A5
	pKSgcHh61mHk8fTMJt2o7qaKPZm5n1fDKwPgAKTz/ctO/42zTMK8xnLnRUlO30qNE6Cg
	i7FrNGrnUg5vmWhqELAVGCsPlv3PwDKKoFE2M4AVmdH+l0RU+8FPx66TQk98EsEuqvEz
	5YqJy3zif8mbyDtcRrtOUARFIlBazgkaAmZ4E/vazW+1HLjXDrYhU/h6ZbeuTCnjD16E
	I5TR5jT9CsQ7XWFXJxzraXz1vrpRKJd3TGx7Ept6rTTB8tRzjET13WtMFnISfSEtYCvb
	ccng==
X-Gm-Message-State: AIkVDXKkqBx3gYORfVzvAM+S7dDxvhoqxKoR18BxpnemVK3PoY+7uq7WVUBknrxrJABD8Cwh
X-Received: by 10.28.99.69 with SMTP id x66mr359202wmb.91.1484064153844;
	Tue, 10 Jan 2017 08:02:33 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	g73sm4442638wme.16.2017.01.10.08.02.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 10 Jan 2017 08:02:33 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jan 2017 16:02:28 +0000
Message-Id: <1484064149-21513-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [PATCH][opkg 1/2] opkg_cmd: only look at conffile status if we're going to output it
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
X-List-Received-Date: Tue, 10 Jan 2017 16:02:38 -0000

The loop to compare the recorded conffile hash with their hash on disk is
outputted at level INFO but the loop was executed at level NOTICE and higher.

This means that if a conffile had been deleted the status operation would
produce error messages for output it isn't displaying.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 libopkg/opkg_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/libopkg/opkg_cmd.c b/libopkg/opkg_cmd.c
index ba57c6a..37416fd 100644
--- a/libopkg/opkg_cmd.c
+++ b/libopkg/opkg_cmd.c
@@ -638,7 +638,7 @@ static int opkg_info_status_cmd(int argc, char **argv, int installed_only)
 
         pkg_formatted_info(stdout, pkg);
 
-        if (opkg_config->verbosity >= NOTICE) {
+        if (opkg_config->verbosity >= INFO) {
             conffile_list_elt_t *iter;
             for (iter = nv_pair_list_first(&pkg->conffiles); iter;
                  iter = nv_pair_list_next(&pkg->conffiles, iter)) {
-- 
2.8.1


