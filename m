Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B474E00C7B; Sat,  7 Oct 2017 16:29:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B13E00B1B
	for <yocto@yoctoproject.org>; Sat,  7 Oct 2017 16:29:00 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id g65so20253060pfe.1
	for <yocto@yoctoproject.org>; Sat, 07 Oct 2017 16:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=BwYPgPLBAce59NzipYvc99YZdunALOQ7ji3pmv4bmOc=;
	b=ll/3HZRs2asy3bYJNjNoT6r/mi0qGScMcrSihqaXkpbvcIo+o4MrBsbpFqrbI1xsvu
	thmcSCPXALj2jOa11/eFmxtjWoihhXWfl4CfKU7LTrImowmGklK17nfw2ctLpS0Jf6He
	i0kQTv4jFWNJJ/w6nQFzWq+pEFoGB6fWPKfrJOiP2XTTBy0wcHOajVdJRoXSMbHq5Cbd
	1HCcVUaJSlnv+W3GDA3seB9IRlDzEmJeBF5fgH2ubfTitiW8bJRScPxZkidNY00dJqkX
	2ZJQG0pUb+xZegFL/fuH7nVT1yChxCjjJkTmlWQR9Rtm74nN7N7Z8SCRD+imOXZ/dKAl
	/q5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=BwYPgPLBAce59NzipYvc99YZdunALOQ7ji3pmv4bmOc=;
	b=l4VPoxsJ2KR3qHCae7ncIuRsZ5QLqKKfQ4Kw2Mg+ArbqvnZQSiHTxs6lwY9NQ3QqcM
	0Zq+s+uEr1BiEklCMka1AgiJm9ENl6UAxtWWAEOiPE+ukiQ9zYZmYfP7JYFUDZu6JJeu
	/e8+XASlgp1g7F15IxAtPGo1gyzDA2mvKQoWogTWafZNTAAWDH/VLE9XrFu2jb8UauZV
	ywJ4Xz9ucFFTH7CS0B9NNh5nCEZgYQyJ/9zDD3i6PV/lHMO3/HVKtmA/va5+8725+ZMT
	Uzni2EuNjs93KDfqyiMRRsZ7qo2BSK4nm7vGf4bk9sgKzITDRKV+9yTx+VtORa3kOK4L
	GJOA==
X-Gm-Message-State: AMCzsaWJC2O8XgdhrNNoAQq9gBEWxSiWLMwtoEh52s/R6y7reOJTMJOx
	VzrwWR+3Y6Bew5D6RJ/ySMAzSw==
X-Google-Smtp-Source: AOwi7QB68YxPvorhE94YSMBJqyNLdJWWghheggJzkwr4lW9JBq1CCDk8dFHfHRETRMLBbXQ2oS9iYA==
X-Received: by 10.99.191.71 with SMTP id i7mr4331394pgo.136.1507418939898;
	Sat, 07 Oct 2017 16:28:59 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:b4af:95f:9afa:62fc])
	by smtp.gmail.com with ESMTPSA id
	l85sm9408969pfg.155.2017.10.07.16.28.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 07 Oct 2017 16:28:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sat,  7 Oct 2017 16:28:57 -0700
Message-Id: <1507418938-30831-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] swtpm: fix cuse depends
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
X-List-Received-Date: Sat, 07 Oct 2017 23:29:01 -0000

if cuse is enabled, depend on fuse which is in meta-filesystems
throw error is layer is missing.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
index 14f668b..952de1a 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -3,7 +3,7 @@ LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
 SECTION = "apps"
 
-DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
+DEPENDS = "libtasn1 expect socat glib-2.0 libtpm libtpm-native"
 
 # configure checks for the tools already during compilation and
 # then swtpm_setup needs them at runtime
@@ -32,7 +32,7 @@ PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux',
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
-PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse"
+PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
 
 EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
@@ -55,3 +55,9 @@ USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
 RDEPENDS_${PN} = "libtpm expect socat bash"
 
 BBCLASSEXTEND = "native nativesdk"
+
+python() {
+    if 'cuse' in d.getVar('PACKAGECONFIG') and \
+        'filesystems-layer' not in d.getVar('BBFILE_COLLECTIONS').split():
+        raise bb.parse.SkipRecipe('Cuse enabled which requires meta-filesystems to be present.')
+}
-- 
2.7.4


