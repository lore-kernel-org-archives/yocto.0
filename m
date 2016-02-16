Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C512E00AB6; Tue, 16 Feb 2016 12:53:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9250E00A92
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 12:53:12 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id c10so113522510pfc.2
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 12:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=WKHBkpdCk5fseYXv2GHyIqSQDOwUnZAPLBoMfMhy1YM=;
	b=UMAE6UHED7tg6gCqoAYqvC0kzvndeugcgbi8rDmpqnvf1/enMX6hD4MZotA71Pr+OB
	27FukV8VK5ay82o3Noz5cMG/u0XGMzBW1M9v1sV3BvUSEdCTPdRvACmd+4Mjw+yTmC37
	bu2ikDkv9M3DP5b9FOhzk+FQruczFLIR7qJyvsImQGBbkmgJKwY8k4BWnbj840AVogah
	vnq1jOaoE3xahVa+oHxUQSkEhWHEl5JjHEC9xKjK/ykjEHtlQ+ZGcW87641n6Els44ct
	g43k0LCZ6DVmKAeVa7XbBq8g+GORR1uoIOKdh6/PuJIxC4GMBibKJGyHAzYhQH9rs0EP
	GyGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=WKHBkpdCk5fseYXv2GHyIqSQDOwUnZAPLBoMfMhy1YM=;
	b=j2sm5OVyPmTrMDrQyRcpVWfySQBtswWEDDoqpkJb9aRiwptq/i9/Bai4QIp73H9DNl
	FpLfb6FZjUK/Q9oBCx23Cjj9186C8kWN5eZ+LKCPbXAHoFePBI8tWQiEGhgGHAUOOz3P
	uo5hAmFpFeD3m17xHytgMH/nsjA3SszZ9uPOPghDEux/Au9tbb6FomUoF6oD/Lsn/oYr
	zvOWvpyAG2TbQuR3lIBsY7DN5xK54tzoswSDobvhP7T//4+cwI569CxZ0A4pOZj9BE2U
	gjH52Mc17e4vD4YmP+q32+sssEfAGEKwq5wxjPgasBTUCeeErI5WEq8jhxfK6ROhoOCL
	A+2g==
X-Gm-Message-State: AG10YOQa3S2JGjTnQaQ5LM8XGVuzzXfkXHmxXCivHhflxlNEe8vtaAOgGmzNlb24eV+O5w==
X-Received: by 10.98.15.135 with SMTP id 7mr33594204pfp.142.1455655992255;
	Tue, 16 Feb 2016 12:53:12 -0800 (PST)
Received: from Pahoa2.mvista.com ([64.2.3.194])
	by smtp.gmail.com with ESMTPSA id
	d8sm47882250pas.14.2016.02.16.12.53.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 16 Feb 2016 12:53:11 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 16 Feb 2016 12:53:09 -0800
Message-Id: <1455655989-18315-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] nmap: update to version 7.0.1
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
X-List-Received-Date: Tue, 16 Feb 2016 20:53:16 -0000

fixed WARNING: QA Issue: /usr/bin/ndiff_nmap contained in package nmap requires /usr/bin/python2.7, but no providers found in its RDEPENDS [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/{nmap_7.00.bb => nmap_7.01.bb} | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)
 rename recipes-security/nmap/{nmap_7.00.bb => nmap_7.01.bb} (89%)

diff --git a/recipes-security/nmap/nmap_7.00.bb b/recipes-security/nmap/nmap_7.01.bb
similarity index 89%
rename from recipes-security/nmap/nmap_7.00.bb
rename to recipes-security/nmap/nmap_7.01.bb
index 0a4e310..32996dd 100644
--- a/recipes-security/nmap/nmap_7.00.bb
+++ b/recipes-security/nmap/nmap_7.01.bb
@@ -7,8 +7,8 @@ LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=51f7052ac85aaf1a21
 
 SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
 
-SRC_URI[md5sum] = "6cdf5d03cc3294b99d69dfca83f2f2ee"
-SRC_URI[sha256sum] = "9f442301c615c608a385831c3505cdfed9b0795cd100f1a258b04509802802ae"
+SRC_URI[md5sum] = "7fa4edc592184c7addc14f5acb3fe6f7"
+SRC_URI[sha256sum] = "cf1fcd2643ba2ef52f47acb3c18e52fa12a4ae4b722804da0e54560704627705"
 
 inherit autotools-brokensep pkgconfig distro_features_check
 
@@ -31,10 +31,14 @@ PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core pytho
 EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion --with-liblua=included"
 
 do_configure() {
+    # strip hard coded python2#
+    sed -i -e 's=python2\.*=python=g'  ${S}/configure.ac
+    sed -i -e 's=python2\.*=python=g'  ${S}/configure
     autoconf
     oe_runconf
 }
 
+
 PACKAGES = "${PN} ${PN}-dbg ${PN}-doc"
 
 FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/* ${bindir}/uninstall_ndiff"
-- 
2.3.5


