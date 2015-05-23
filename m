Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38FB5E009DC; Sat, 23 May 2015 08:12:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f44.google.com (mail-yh0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBC1CE00978
	for <yocto@yoctoproject.org>; Sat, 23 May 2015 08:12:45 -0700 (PDT)
Received: by yhcb70 with SMTP id b70so11821411yhc.0
	for <yocto@yoctoproject.org>; Sat, 23 May 2015 08:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=+ZRDAbRtD9e/uKZxPhTB6poOttmDUISbevSKZk0dAMI=;
	b=YIOwM/lIvmIx8Iscy51wQIWt044P2xow4/7KhVjFmWihYu+sp5Su880O5rMIrhRwLA
	x6v+0do/7cNHtHALEM2VWB7KH446KG07yjR8IQDJCwoH5C7+XB40hHSR+zZb7w5LdKxL
	6TA7HOxxmZ+Qr9uScd50oFEXZuMHr+wih/FNpyYKhNtFW82tyfVYTxmepPsqSPgukH63
	U5KUb6Zxh52OUyYIxuH/VEiwo6NIGyd58faDrInmoSNWIAuozrMbQxt0yCR8+fzbGeth
	XdHoLu0RWJA1JjxuBbUUct3E1rmG9OgCfmgG7Fbobz3pVSmKNA/zTcVmQaGpgc+WOxbG
	BGng==
X-Received: by 10.170.44.205 with SMTP id 196mr7457853ykm.22.1432393964602;
	Sat, 23 May 2015 08:12:44 -0700 (PDT)
Received: from localhost.localdomain ([97.84.99.160])
	by mx.google.com with ESMTPSA id f50sm978724yhc.40.2015.05.23.08.12.42
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 23 May 2015 08:12:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 23 May 2015 08:12:37 -0700
Message-Id: <1432393958-11105-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1432393958-11105-1-git-send-email-akuster808@gmail.com>
References: <1432393958-11105-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] suricata: package update to 2.0.8
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
X-List-Received-Date: Sat, 23 May 2015 15:12:50 -0000

includes security fix CVE-2015-0971

include nss and nspr to build

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/{suricata_2.0.7.bb => suricata_2.0.8.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/suricata/{suricata_2.0.7.bb => suricata_2.0.8.bb} (95%)

diff --git a/recipes-security/suricata/suricata_2.0.7.bb b/recipes-security/suricata/suricata_2.0.8.bb
similarity index 95%
rename from recipes-security/suricata/suricata_2.0.7.bb
rename to recipes-security/suricata/suricata_2.0.8.bb
index 2b5d088..21b22d1 100644
--- a/recipes-security/suricata/suricata_2.0.7.bb
+++ b/recipes-security/suricata/suricata_2.0.8.bb
@@ -21,7 +21,7 @@ EXTRA_OECONF += " --disable-debug \
     --disable-gccmarch-native \
     "
 
-PACKAGECONFIG ??= "htp jansson file pcre yaml pcap cap-ng net nfnetlink"
+PACKAGECONFIG ??= "htp jansson file pcre yaml pcap cap-ng net nfnetlink nss nspr"
 PACKAGECONFIG[htp] = "--with-libhtp-includes=${STAGING_INCDIR} --with-libhtp-libraries=${STAGING_LIBDIR}, ,libhtp,"
 PACKAGECONFIG[pcre] = "--with-libpcre-includes=${STAGING_INCDIR} --with-libpcre-libraries=${STAGING_LIBDIR}, ,libpcre ," 
 PACKAGECONFIG[yaml] = "--with-libyaml-includes=${STAGING_INCDIR} --with-libyaml-libraries=${STAGING_LIBDIR}, ,libyaml ,"
@@ -32,8 +32,8 @@ PACKAGECONFIG[nfnetlink] = "--with-libnfnetlink-includes=${STAGING_INCDIR} --wit
 
 PACKAGECONFIG[jansson] = "--with-libjansson-includes=${STAGING_INCDIR} --with-libjansson-libraries=${STAGING_LIBDIR},,jansson, jansson"
 PACKAGECONFIG[file] = ",,file, file"
-PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR} --with-libnss-libraries=${STAGING_LIBDIR}, , libnss," 
-PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR} --with-libnspr-libraries=${STAGING_LIBDIR}, , libnspr," 
+PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR} --with-libnss-libraries=${STAGING_LIBDIR}, nss, nss," 
+PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR} --with-libnspr-libraries=${STAGING_LIBDIR}, nspr, nspr," 
 
 export logdir = "${localstatedir}/log"
 
-- 
2.3.5


