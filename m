Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A434AE00ACD; Tue,  2 May 2017 18:23:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B68F3E00A30
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 18:23:46 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id h41so33738687ioi.1
	for <yocto@yoctoproject.org>; Tue, 02 May 2017 18:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:subject:date:message-id;
	bh=JtxtTIITmjRVvf9+cynHft7q2kt2CoMOYaByjeAJcD8=;
	b=e2P5zDWdbI8LmKXh5IYdexsbJ7mgLHdS2oD3F5TRHX4yZau+osjcqKVX/oKlFGYN7w
	dokXl2AwvK1aAAK+xX2CH9uXHxF2M1t6IAuq3K5HUhkpQLMY1SFRu+uRf1HH/YGX7+wk
	98og1DNziFjDsAZQzLIW1nhhjqcK1O068Ucx1QIU4HdAgVQ8mCqdoQiloIouCRL+AxMg
	Ar8szj1937fNc0whQrLu7anBO+NBwtj8cwaj41WCgntGTuz5Z0MjXa/cMPi3cPVeuR+l
	5m3nFCMavOSrtpK7ICJl7htnVQTC4d9sRWDAYgHYqBvXZ6GE6OJV/hPNvcu5WJ5B6i56
	wGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=JtxtTIITmjRVvf9+cynHft7q2kt2CoMOYaByjeAJcD8=;
	b=ILPt5afUBrxF1EGv2zEHukCH3rQXXL1b7KPZVF6ZNe4oBgbypihWzuGmxL6oqLPpNZ
	ST7YmY9JR9rE+eK5lxTMJ5AKWTSg4q+8+Fp16I3Fa3NGkPfSS2HfNln3qnKRnBlMoxVq
	bdQq0zXjc6i/HqugVFvSp9l7MlucMslp50xhO3qO393M88A6rLXraCFL/keXEBZ7FEN3
	Ouzv+NURz5+ntTOKPubvVSS7ipcc3llfnj2fA0wNUjX3MXDmqRSZ0kq8Oj9V03+Kw52+
	J7pXjvZuN7nHLFeiJzSXFO3st+mnlnJ8oqSBvLraytY/z8+tk8C/TAk+llhuu6wbGsLG
	A+ow==
X-Gm-Message-State: AN3rC/58l6478lK8QJHY55Gr8FY8RTbcTkThimPy8rcfA+XFqUNgUaN1
	TRdpKAUcdfQs7lPe
X-Received: by 10.107.189.198 with SMTP id n189mr31157523iof.179.1493774625436;
	Tue, 02 May 2017 18:23:45 -0700 (PDT)
Received: from mir.deserted.net (23-233-24-42.cpe.pppoe.ca. [23.233.24.42])
	by smtp.gmail.com with ESMTPSA id e97sm759665itd.23.2017.05.02.18.23.44
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 02 May 2017 18:23:44 -0700 (PDT)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue,  2 May 2017 21:24:07 -0400
Message-Id: <1493774647-1769-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] selinux-image: enable image labelling
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
X-List-Received-Date: Wed, 03 May 2017 01:23:47 -0000

selinux images attempt to label the filesystem image at creation time.
This depends on a native setfiles, though, which isn't guaranteed to be
present without the DEPEND addition.

If the 'setfiles' call fails, that shouldn't be fatal, though, it can
always be run at first boot time, as is commonly done with desktop and
server distros.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 classes/selinux-image.bbclass | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclass
index 9303610..90ead2f 100644
--- a/classes/selinux-image.bbclass
+++ b/classes/selinux-image.bbclass
@@ -1,8 +1,15 @@
 selinux_set_labels () {
     POL_TYPE=$(sed -n -e "s&^SELINUXTYPE[[:space:]]*=[[:space:]]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
-    setfiles -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS} || exit 1;
+    if ! setfiles -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS}
+    then
+        echo WARNING: Unable to set filesystem context, setfiles / restorecon must be run on the live image.
+        touch ${IMAGE_ROOTFS}/.autorelabel
+        exit 0
+    fi
 }
 
+DEPENDS += "policycoreutils-native"
+
 IMAGE_PREPROCESS_COMMAND += "selinux_set_labels ;"
 
 inherit core-image
-- 
1.9.1


