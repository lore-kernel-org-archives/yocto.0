Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19048E00C18; Sun, 28 Oct 2018 11:50:36 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97444E00C15
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:35 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id m9-v6so84476pgl.13
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Svoz0PPIpbqD/NBEc3Bh9Yedj/NKHVE1aOgI8W9eA7o=;
	b=ulwhql6HcRPU9UfG0R2BlL4tlev6KjKQgPuBFJZJFyIiI+nBhB5rIOkpqPFHaK7mqj
	fE1eXBRxEllSNMfchPbbIKp9C9DtHckPjYMb5yjPIlKzZgUABAoUAqGXansGc8uHFDHq
	VDm1DTTmIRAFy9grCDZ0Ljnmjpe6D2rAuZ2/MYgdjLCMgqSRXneOPimktjjcBgoLbasy
	YfHVslFuNcdp8hMehkEZNsYHzp9OF5bqSibQWdqAyj28LsLJJT4S5oX0WoQmDeKitRU6
	yWh/EwIylRI/IPpJ7qELQ/ADUQucIPRt1EDXAId68mC+6JRMozmMA48NWlUpcSIGfSB4
	1bkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Svoz0PPIpbqD/NBEc3Bh9Yedj/NKHVE1aOgI8W9eA7o=;
	b=fwxz0k4QKO4p3JOSC5/dKZ2bisRomowOUxiq8I2zD4WRFcBgWKg7gC9dVmBP78RZ89
	ApZXkZU2Tam1USB+qgWgj47F9jQzemBwxW8jIAjvvVNpq5G+Lmgv3VDejRUlWcateScT
	DuwcJIJRwLtjoyDRXqhmaMUV7H0yNsxX1tgwbu2gY6A4sWAtu99TrWjVPET627wkZhsX
	LR+p0U/cQycx0fTR7Uys8ybVg7BA36o2eYS0h47C5fM3uyo0vMBII0P0ddODYFDpWd8k
	UbUClzaqGi1Pm6qR1TYKuhHITath9TlEZxH6vWwpWPiGc2Em5cPLQ0W3rZxzr3iJLHZs
	n8ow==
X-Gm-Message-State: AGRZ1gJ+aFXjDy2tzWDm1mZwVx+ulXD1NxW/4SGRkbZTsY77D9tMn/u2
	/wmfBRD+2Pudk9kDSO0+ZUa45KXS
X-Google-Smtp-Source: AJdET5fmy02b5tTyI6VEAOvX44gywHyOJvh4GgAHh+j9dmxtKwsMNzTWIBOvs1hdVdNCMjrRLydOeQ==
X-Received: by 2002:a63:9f0a:: with SMTP id
	g10-v6mr10480044pge.232.1540752634855; 
	Sun, 28 Oct 2018 11:50:34 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.33
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:21 +0000
Message-Id: <1540752628-10832-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 06/13] suricata: add ptest
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:36 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/files/run-ptest   | 3 +++
 recipes-security/suricata/suricata_4.0.5.bb | 6 +++++-
 2 files changed, 8 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/suricata/files/run-ptest

diff --git a/recipes-security/suricata/files/run-ptest b/recipes-security/suricata/files/run-ptest
new file mode 100644
index 0000000..666ba9c
--- /dev/null
+++ b/recipes-security/suricata/files/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+suricata -u
diff --git a/recipes-security/suricata/suricata_4.0.5.bb b/recipes-security/suricata/suricata_4.0.5.bb
index 90b4638..6c0a109 100644
--- a/recipes-security/suricata/suricata_4.0.5.bb
+++ b/recipes-security/suricata/suricata_4.0.5.bb
@@ -10,12 +10,13 @@ SRC_URI += " \
            file://volatiles.03_suricata \
            file://suricata.yaml \
            file://suricata.service \
+           file://run-ptest \
            "
 
 SRC_URI[rules.md5sum] = "205c5e5b54e489207ed892c03ad75b33"
 SRC_URI[rules.sha256sum] = "4aa81011b246875a57181c6a0569ca887845e366904bcaf0043220f33bd69798"
 
-inherit autotools-brokensep pkgconfig python-dir systemd 
+inherit autotools-brokensep pkgconfig python-dir systemd ptest
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
@@ -28,6 +29,8 @@ EXTRA_OECONF += " --disable-debug \
     "
 
 PACKAGECONFIG ??= "htp jansson file pcre yaml pcap cap-ng net nfnetlink nss nspr"
+PACKAGECONFIG_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'ptest', 'unittests', '', d)}"
+
 PACKAGECONFIG[htp] = "--with-libhtp-includes=${STAGING_INCDIR} --with-libhtp-libraries=${STAGING_LIBDIR}, ,libhtp,"
 PACKAGECONFIG[pcre] = "--with-libpcre-includes=${STAGING_INCDIR} --with-libpcre-libraries=${STAGING_LIBDIR}, ,libpcre ," 
 PACKAGECONFIG[yaml] = "--with-libyaml-includes=${STAGING_INCDIR} --with-libyaml-libraries=${STAGING_LIBDIR}, ,libyaml ,"
@@ -42,6 +45,7 @@ PACKAGECONFIG[file] = ",,file, file"
 PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR} --with-libnss-libraries=${STAGING_LIBDIR}, nss, nss," 
 PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR} --with-libnspr-libraries=${STAGING_LIBDIR}, nspr, nspr," 
 PACKAGECONFIG[python] = "--enable-python, --disable-python, python, python" 
+PACKAGECONFIG[unittests] = "--enable-unittests, --disable-unittests," 
 
 export logdir = "${localstatedir}/log"
 
-- 
2.7.4


