Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71127E00C1D; Mon, 31 Oct 2016 17:45:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5991FE00BC3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 17:45:02 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id y68so4163292pfb.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 17:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=7ZqNsi951yJqnWx8ncgtnOKHViefihmY1KJurqwu01o=;
	b=K7d3y76I8P71SXpS/gFK+5VDM2z2y0lQ4xI3GTjdC0S/vXfZ1bFKT6ERdGGUVJC4+Z
	iW3TMsQyJ92NaJvKxIVQORZmQc0R/F/2M2yyu1F414HJLjkXaEgo8CSb+gNX0+oBBC/y
	c13lH/Ye2tSU2cRVfgVON/ieIoHqKBqOxw+Few8inO/QJ0u7dLBsL6Yc6BDn+dIITDph
	2AmF7kPp0i3VRy3uDv6t+VXwf8gI+KwGrTayDOhtPy4/7kEfMCqxJTr9zMMuDfItqO+8
	IGyzsBctpmWth2rAtMj7cxhPEBii5lw88Ex0igfVI58tyRHyfgJdAYgbFIPFjVjwz/wW
	pRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=7ZqNsi951yJqnWx8ncgtnOKHViefihmY1KJurqwu01o=;
	b=CXTNn8HT53Ns846M/K/cVI80wT4f3g1/3Fnz9YGCqOR1Kz1mkUQVtgYNjzwdmR5B/g
	Ab9fzBd489Wunqce2FszmOwSvbVvocXw8mnlk1kjgraWtuvemKdPbDFixIRw5hzlP+gF
	cZrbiCCv1ph3C1OTfq+t2BpRy+MFR4uwYTeAIPU/9yw0V8RuNXNdGK9ieecd7vRUfkXQ
	UaC3Pxb86bdX6H7qp1/FYzp5Z4YiEj9jMtGirZvAHQYBSIfzr+0OMlnsgGz5xAKSydih
	2jDMsUU1BEGKSUSCoYEMmVSLs+l+Qz+b5BqleOq/bntnkI/Etxmrvw9n8vsodUibM9Go
	LPLA==
X-Gm-Message-State: ABUngvcFPgXrK23nuOkCMm9wYdhpX4dPJ1TEFWJaJi8Bp/ni5GUfidDx/yYjb+DMiTZhdA==
X-Received: by 10.98.67.133 with SMTP id l5mr53832489pfi.170.1477961101762;
	Mon, 31 Oct 2016 17:45:01 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:a515:1856:7377:d74f])
	by smtp.gmail.com with ESMTPSA id
	e90sm38056248pfd.5.2016.10.31.17.45.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 17:45:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 17:45:00 -0700
Message-Id: <1477961100-6446-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] samhain: update to 4.2.0
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
X-List-Received-Date: Tue, 01 Nov 2016 00:45:05 -0000

* Changes:

  - New option 'SetAuditdFlags = r|w|x|a' to (re-)define the flags supplied
    to auditd.

  - New option 'PortCheckDevice = device' for the port check module, to monitor
    a device regardless of the address assigned to it.

  - Fix for the case sensitivity of the arguments to the Severity/Class options.

  - Compiler warnings with gcc 6.2 and a few minor bugs have been fixed.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/{samhain-client_4.1.5.bb => samhain-client_4.2.0.bb}      | 0
 .../samhain/{samhain-server_4.1.5.bb => samhain-server_4.2.0.bb}      | 0
 recipes-security/samhain/samhain.inc                                  | 4 ++--
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.1.5.bb => samhain-client_4.2.0.bb} (100%)
 rename recipes-security/samhain/{samhain-server_4.1.5.bb => samhain-server_4.2.0.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.1.5.bb b/recipes-security/samhain/samhain-client_4.2.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.1.5.bb
rename to recipes-security/samhain/samhain-client_4.2.0.bb
diff --git a/recipes-security/samhain/samhain-server_4.1.5.bb b/recipes-security/samhain/samhain-server_4.2.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.1.5.bb
rename to recipes-security/samhain/samhain-server_4.2.0.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 7987886..789150b 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.default \
 	  "
 
-SRC_URI[md5sum] = "bdb6d2653d706f3180e37ef3d95c824d"
-SRC_URI[sha256sum] = "4ff4c38765c942abbaac2577df4c8c4940482a1bffc4a719f181c4fca6f173a7"
+SRC_URI[md5sum] = "d98a55646b14f9419fcedde909d1bf02"
+SRC_URI[sha256sum] = "6b2db91fc92b3a9fc2edcc6ee16438156753c05f69c114856289e9f25ba0e50a"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
2.7.4


