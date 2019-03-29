Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED3FEE00D2A; Thu, 28 Mar 2019 22:28:25 -0700 (PDT)
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
	*      [209.85.210.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7E12E00D24
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:24 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id 9so472792pfj.13
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=dvyCmd4t+c3jCfZbjsK444cgTYAWOsdZxfoh2jlGNDg=;
	b=C9akzhMM9wHKibGorI4PxNdNpVgU+pHVWKklVeRxq/5IGZeCt6BICg0bFeILkG8w6t
	Td5hBcFfKlRW9vO5o7b8pEQeoEzv1M66nBGPbhfM5xCsdiBQSWh0/njbTF7kJIRtv7ZM
	Ynv/wWxCIihAPR3mcpV0Wqa80I3QsVYPaJRhepqop3Zi+GvIyQJeO6Sfjux2kAV1DesS
	nOuLyvaYG8WEK3PvbqkY99rcSCPogws8xGzU6Bu9iKme50X0M5fVcsoSRtTnIBX4UllJ
	JkY0USZv316Bzt0DAHWwcGN5RxEpBX7RAq828uCMS9dPEGPGJ2NIT0xF/WDBf4sjw/X7
	1osg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=dvyCmd4t+c3jCfZbjsK444cgTYAWOsdZxfoh2jlGNDg=;
	b=EHD4H0Ui7AcbgRDGhzV1zbzM9ZO+Ae4fHQaaFX+dqnO06FjN8wB+scxZYUHPH8p3ed
	2KVSMEXglUGt/+h6NMbZ7MkpfK1hO800XgsJ7Rmhg23AgDSEmqLgim6oe+AOheBlBzTM
	Bj0LRBpKBqut8OfhpEPvDeVFRHERiiH6IgUMQkd8DXmLQMAH5Knqeroq1zcpS+9WHwvO
	yc7lFlbb5QhtXIHTjsTHhCwm2wGuRLdaYVpBikteBfKleK9Gtz5VF3Z7OhFWIX3nxkNU
	lcfwN0JBSPjie96hcX9BoShPMACU1g1vhbJ5pdj75HBEDGHBdP1qjOd4TRGyRPC9ay2T
	EvGA==
X-Gm-Message-State: APjAAAWcfIRUohx1Ls0DOhsD+V3zS0/+8iKyJzYLI/PW1wYVbo2MLTgI
	LmEnFPpN+80j4NZIM7AIyEMHxlwF
X-Google-Smtp-Source: APXvYqzrxNG1BMqGJ+cJwDBmp2jWP2H0P3wnPc0ML0sc3XRJK7hIJJulDu6oy8ANSaav5eomkjmJdA==
X-Received: by 2002:a62:4602:: with SMTP id t2mr31301795pfa.26.1553837304255; 
	Thu, 28 Mar 2019 22:28:24 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id f9sm1133978pfd.10.2019.03.28.22.28.23
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Mar 2019 22:28:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Mar 2019 22:28:18 -0700
Message-Id: <20190329052821.13718-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190329052821.13718-1-akuster808@gmail.com>
References: <20190329052821.13718-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/5] libldb: work around samba libldb packaging issues
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
X-List-Received-Date: Fri, 29 Mar 2019 05:28:26 -0000

Samba and libldb overlap in a few places. This is the simplest fix for
now.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-support/libldb/libldb_%.bbappend | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 recipes-support/libldb/libldb_%.bbappend

diff --git a/recipes-support/libldb/libldb_%.bbappend b/recipes-support/libldb/libldb_%.bbappend
new file mode 100644
index 0000000..2633a1e
--- /dev/null
+++ b/recipes-support/libldb/libldb_%.bbappend
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
2.17.1


