Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF79BE00D28; Thu, 28 Mar 2019 22:28:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE72E00D1B
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:24 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id y5so460757plk.8
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Dy+CmwZhDWYJ0GCQ/s/exBY+bQOQWX2g8op/2wswcbc=;
	b=mVpngB9gz6W8ABtXs3liL+5GEc/xs5H9pSi1JkP7hWl1wrb11Xd6TncehrxP9Y1ZKg
	2LnJGMtVex+oilCz9NIH9wuyGSTaFCXrE9X6CtqbWwyKRmneVyxhcXsrVN9BYFyM75oe
	DJY0FWbjKLkmSsOZL3J9Ru7qGG4HHqUtJnGgSiRiF2rfQIjHbOnIGtoPPI93uqtZkq9W
	nYOkwZbuNi9ZSctdDW4Oz3PahxuTkIzLXtNrSTRgbkHQVgpRXR/x2wEMw4nNhysr7k2q
	T8ELZypz4hwNdyBDPBFLCdT9yyk+yPQ61tLeIKiVD6vQ/ScIFu8uNiTnukjnqD4Mk82W
	3gdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Dy+CmwZhDWYJ0GCQ/s/exBY+bQOQWX2g8op/2wswcbc=;
	b=XBtoThuujmfg1friIPEIWnWoDzSlYKu9baLihFLdKFiIrFVsg0uBY/fLuBk6m6sxki
	reCIX7Wr1+w40Joh1l5U5MofSqOmN3/FxWon9CtI3p83SARWz5PZ0w77neO+bnqlQ1J1
	lHvAZabMgmwW+tigJlKR1iLIhzf6/W29KtzpaHiLEyIznWV80Qkong2w82jaKUdD/A+N
	C+UBC/TqeyuFMt3UqZlX3KlTqqOtyBohJmXAsnzLIO+p4m5suM6q228Xl5296Is5efX3
	NX9w6tR/wNdpUDsOZhrgOngiUmrW78eVzxA5WMQxnvozrA1qB075Nn63ERami/8bMjTT
	XSwg==
X-Gm-Message-State: APjAAAU+EYA5YZZq8D/jk6cjGn62myRIA+YKJ3bchnZTAl7l07BlfQS/
	9nAVvhvdSXAD6xr2KOSV/OpTqr2X
X-Google-Smtp-Source: APXvYqxPqXLKs4r3sWL3xTTqe468830UEiTiQ42FKqXzEo3U4LrBTmkVT/VmtBT4RDM3HOcwTmcSGw==
X-Received: by 2002:a17:902:b10c:: with SMTP id
	q12mr29693320plr.254.1553837303532; 
	Thu, 28 Mar 2019 22:28:23 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id f9sm1133978pfd.10.2019.03.28.22.28.22
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Mar 2019 22:28:22 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Mar 2019 22:28:17 -0700
Message-Id: <20190329052821.13718-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/5] Revert "sssd: fix libcrypto version used"
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
X-List-Received-Date: Fri, 29 Mar 2019 05:28:25 -0000

This reverts commit 2488c965d6b1b440734f43326fb33ac642ac7b82.

This corrects an incorrect fix as pointed out by Adrian Bunk.
---
 recipes-security/sssd/sssd_1.16.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
index d39fa23..8f7f805 100644
--- a/recipes-security/sssd/sssd_1.16.3.bb
+++ b/recipes-security/sssd/sssd_1.16.3.bb
@@ -33,7 +33,7 @@ PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings"
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
-PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto10"
+PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
 PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
 PACKAGECONFIG[systemd] = "--with-systemdunitdir=${systemd_unitdir}/system/, --with-systemdunitdir="
-- 
2.17.1


