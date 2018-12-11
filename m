Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41005E00C96; Tue, 11 Dec 2018 08:40:43 -0800 (PST)
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
	*      [209.85.214.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E808AE00C94
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 08:40:42 -0800 (PST)
Received: by mail-pl1-f195.google.com with SMTP id w4so7181105plz.1
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 08:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=K8RGOte8QzF99ojuCV5wQ9lmgryT16UGWsiIW8kiloQ=;
	b=bMGBxssLpcBkBjgT+kGNjkKHXYq7cql51wTptX7hL95NRaY6cDRYT2Qux7G37MGKEq
	+0qHkFVWmIEwgTiwpmcPQng99OXDtMxe0LO+WfIxmBOM8P5/NOpL9aw6oVkwymxxPIUv
	Waer0vKto96XjWMK0OCfejrYFDc6O91AaqhMzULIGeWN3UQP6njK1dPFqWifoyo4xx4T
	hnJFSFkx3xmfdjFGQgxxjFnsw3vi23u+DP9p2uAnDnWeCwKCFIQaN/MBZN7hmdMqSpnY
	VNe16GE/fkabx71FfDFqcHqRpSG0GosEc6C9jTAUBusR6g1NNsmmgWu/M1vo39p2fb9t
	ZgPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=K8RGOte8QzF99ojuCV5wQ9lmgryT16UGWsiIW8kiloQ=;
	b=igNyWGd+i+gKQ0erR8m/I3EF5KqIu+Lbc2dBUGpfiN39sEj6+gz3XcovxhTmtsKeqK
	cgvz64fjVLbQFEzs0yPqbjV+51iXoHmg9JukJ4nTbKSs6ghY/Tu9Ij3UOfKG11w+GDF/
	kD12y2lb8+SDDFv7GsC4LcUxJlLNE+9wFDcYLV6FJUQBbaaU/Jdtp4RCnOxvZXebOngf
	2iebi7tkCDMcVD3pv3MPy37eTmR/GmVrDm0dkcblQPxy6p2hbiXiK2B2f/wcnWg/Eu1J
	8W8864lsRpIfygzffUX6HE7iSxPNDbFqAP9L/atUC8LGkEoTLdIJ+gPUqQDjUDuNb47A
	b0FQ==
X-Gm-Message-State: AA+aEWbUiVzcxuR7LR7FMX9tPrSYxsz1udacp/lsna21utzPWwOqeVhS
	9Mjk3o5Rls28xFzjbsZz3nkFALXM
X-Google-Smtp-Source: AFSGD/Voy1Ts8TiJjfxef1+NLJL2p8znxAU1XRXaKS8oMneY9yHwgvdNkTBSdLpQaSRt6lO6EaZKSA==
X-Received: by 2002:a17:902:29ab:: with SMTP id
	h40mr16539274plb.238.1544546441322; 
	Tue, 11 Dec 2018 08:40:41 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:b596:402e:3806:c8f1])
	by smtp.gmail.com with ESMTPSA id
	l185sm22435636pfl.54.2018.12.11.08.40.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 11 Dec 2018 08:40:40 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Tue, 11 Dec 2018 08:40:39 -0800
Message-Id: <1544546439-21371-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [yocto-autobuilder-helper][PATCH] config.json: add arm64 multilib build
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
X-List-Received-Date: Tue, 11 Dec 2018 16:40:43 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 config.json | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/config.json b/config.json
index 89b9827..8ca1227 100644
--- a/config.json
+++ b/config.json
@@ -342,6 +342,17 @@
                     "DEFAULTTUNE_virtclass-multilib-lib64 = 'mips64'",
                     "DEFAULTTUNE_virtclass-multilib-lib32 = 'mips32r2'"
                 ]
+            },
+            "step7" : {
+                "MACHINE" : "qemuarch64",
+                "BBTARGETS" : "core-image-minimal core-image-minimal:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-minimal:do_testsdk",
+                "extravars" : [
+                    "require conf/multilib.conf",
+                    "MULTILIBS = 'multilib:lib32'",
+                    "DEFAULTTUNE_virtclass-multilib-lib32 = 'armv7athf-neon'"
+                    "IMAGE_INSTALL_append = ' lib32-glibc lib32-libgcc lib32-libstdc++'"
+                ]
             }
         },
         "nightly-rpm-non-rpm" : {
-- 
2.7.4


