Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C685E00D21; Thu,  4 Apr 2019 15:18:00 -0700 (PDT)
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
	*      [209.85.214.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9A8AE00D07
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 15:17:59 -0700 (PDT)
Received: by mail-pl1-f181.google.com with SMTP id ck15so1870447plb.3
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 15:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=ekSsPYJF5i8e5v+175utq6eaYUUXeAf9YbdYKTx4mhI=;
	b=WcnKX1CUA2L+2zEHUemVwcRzisqjacvw9X3+cvVAcK+oWouHZP8cuGfrecx02rw6kM
	MkED31B0Zxz3flKVxJMNS9DKngLizO9qGJpAp/3KKSx9qkbOosgV49MjW4mdCKC6wj1o
	W7cHbPJzOPBKQNelxao594EbIDrzERzl/v68kLtbxu6l9R+F7FQW+tu4093BMm3bX315
	vXF90xgSKdQypD5jtOhPCwL2jJklmYKK/4oR4y2mJPCt7uFHS9kkIwYgWSFYEHUlcw6o
	0Qd6ZyC1zARp5DXTLswrJOxVQfPINPfOJEoF5XNzKUJC+prC5ZStQR3gjeCfpzytBInv
	pTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ekSsPYJF5i8e5v+175utq6eaYUUXeAf9YbdYKTx4mhI=;
	b=A/qHT7YQ6QQxT4HEysHVYXBP5K2CbPFl0SX7e1WvGsoTOCrrLyAlbNuWjPsIbFwOLG
	NYAy3OMMe8EYXHM1FL9hD1HriuJYUM6lclCmdbNxpci+gcSLXGEsnQQ4jrL19OKQbXVu
	uA0hFoZi+CBIpOEbATuz8y5FyM65tXWak+Z7SWFSN1yYVdvnGfewj6qyUwQIUt786jef
	ZCSghOJOBqVbnymArCFDZjbcW0NGGUdoYMyTJ8LJMwU7w+ln7kMpfMfiF8f6y1EVtMTX
	l57KszczbL39OWcGKwh5HZ+BlQ34DcQGMBTsLUFMJMQEwcYzJLPb/u5AeP/xerfevsWg
	CKIg==
X-Gm-Message-State: APjAAAWpO1iq86H7WYe4lORyMSsdceEc/v+mkzrrjHqPDFgbfbrytUT5
	2QEvc4CAvt5d1cDGDLPM9JDkYGp9orA=
X-Google-Smtp-Source: APXvYqwyG8x+IRTmksboapwrKqmbHGy6OuSnVK+mlCJl3w2oBMsW8kAIvDi+H8tPJ59vhRYXW46LrA==
X-Received: by 2002:a17:902:b181:: with SMTP id s1mr560278plr.9.1554416279076; 
	Thu, 04 Apr 2019 15:17:59 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	v82sm46739718pfa.170.2019.04.04.15.17.57 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 04 Apr 2019 15:17:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Apr 2019 03:47:45 +0530
Message-Id: <1554416266-28620-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] libldb: work around samba libldb packaging issues
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
X-List-Received-Date: Thu, 04 Apr 2019 22:18:00 -0000

Samba and libldb overlap in a few places. This is the simplest fix for
now.

Use "sssd" DISTRO_FEATUE to test and enable changes

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-support/libldb/libldb_%.bbappend |  1 +
 recipes-support/libldb/libldb_sssd.inc   | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+)
 create mode 100644 recipes-support/libldb/libldb_%.bbappend
 create mode 100644 recipes-support/libldb/libldb_sssd.inc

diff --git a/recipes-support/libldb/libldb_%.bbappend b/recipes-support/libldb/libldb_%.bbappend
new file mode 100644
index 0000000..bb81700
--- /dev/null
+++ b/recipes-support/libldb/libldb_%.bbappend
@@ -0,0 +1 @@
+require ${@bb.utils.contains('DISTRO_FEATURES', 'sssd', '${BPN}_sssd.inc', '', d)}
diff --git a/recipes-support/libldb/libldb_sssd.inc b/recipes-support/libldb/libldb_sssd.inc
new file mode 100644
index 0000000..2633a1e
--- /dev/null
+++ b/recipes-support/libldb/libldb_sssd.inc
@@ -0,0 +1,22 @@
+# This fixes this issue:
+#ERROR: sssd-1.16.3-r0 do_prepare_recipe_sysroot: The file /usr/lib/python2.7/site-packages/_ldb_text.py is installed by both libldb and samba, aborting
+
+EXTRA_OECONF += "--disable-python"
+
+#Error: Transaction check error:
+#  file /usr/bin/ldbadd conflicts between attempted installs of samba-4.8.4-r0.cortexa15t2hf_neon_vfpv4 and libldb-1.4.1-r0.cortexa15t2hf_neon_vfpv4
+#  file /usr/bin/ldbdel conflicts between attempted installs of samba-4.8.4-r0.cortexa15t2hf_neon_vfpv4 and libldb-1.4.1-r0.cortexa15t2hf_neon_vfpv4
+#  file /usr/bin/ldbedit conflicts between attempted installs of samba-4.8.4-r0.cortexa15t2hf_neon_vfpv4 and libldb-1.4.1-r0.cortexa15t2hf_neon_vfpv4
+#  file /usr/bin/ldbmodify conflicts between attempted installs of samba-4.8.4-r0.cortexa15t2hf_neon_vfpv4 and libldb-1.4.1-r0.cortexa15t2hf_neon_vfpv4
+#  file /usr/bin/ldbrename conflicts between attempted installs of samba-4.8.4-r0.cortexa15t2hf_neon_vfpv4 and libldb-1.4.1-r0.cortexa15t2hf_neon_vfpv4
+#  file /usr/bin/ldbsearch conflicts between attempted installs of samba-4.8.4-r0.cortexa15t2hf_neon_vfpv4 and libldb-1.4.1-r0.cortexa15t2hf_neon_vfpv4
+
+do_install_append() {
+   rm -f ${D}${bindir}/ldbadd
+   rm -f ${D}${bindir}/ldbdel
+   rm -f ${D}${bindir}/ldbedit
+   rm -f ${D}${bindir}/ldbmodify
+   rm -f ${D}${bindir}/ldbrename
+   rm -f ${D}${bindir}/ldbsearch
+   rmdir ${D}${bindir}
+}
-- 
2.7.4


