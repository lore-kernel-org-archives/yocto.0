Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1D2DE0034A; Fri, 13 Jan 2017 12:27:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A41B5E0034A
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 12:27:45 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id m98so6712169iod.2
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 12:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=97gCdulMIcow1++ZGj3iQlnU2CfQRBl6NbK+b7W08+A=;
	b=adrPMO8u4Ng59T1jliX9LiPnk5QDvQczILtzaQgfS2+JiRYQW7qZqd4p6Q36/+gd42
	mUNdOzOtl9fb3Kn6ak4Sq8zgS3+VpLNGP2zV18KenVrCHDuXCVM/6TDSHjPfB7DlZKE2
	/wC27B/gZtzFMbzJjmC10zSpYb6FlzbZvkL/7yt5YnD0eVxlGNbe9v1B+7SLXIaFGrM5
	6tSkVAmNYsomfbxUcQsekPxOzk7m8epx8ONTWESCANDAqjmbMApvdAMq1U8b41UG+mqS
	MXX48CwQArbCUzhYJouO51hps9qM5g2MNjdJNt6xvl0BbOPjasEfvfpVsyuQeQhIpzJl
	8sGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=97gCdulMIcow1++ZGj3iQlnU2CfQRBl6NbK+b7W08+A=;
	b=W4XWOWarbBZNdXRKJ2gPsBpf/euXoslgawN/ctch+WiuSIdkEQjD9/kEa8vyyXE6Hi
	wfzxpwa/6lIYYqQu+hk7PIJ/M+hmrHDP2jt+BQofVMOFl5wLzAHUogDj62UnaOtWIBUQ
	v9YVGeJj4GxcVtRTQsgSYlE2NgVeI/vHkDo6srZrfEvcD9d+rQhhephz+dRLow+BRq9y
	O944hZL1W/fS1kLUezTcQQnuplFhw9t5gApykoMtCDdoitu7I2orH3DXByCsNRVsQavn
	SKzNOe+Hfeh9I0CbsvKCvgDX4VguAfae8PXG5OnHtQWh41+SEa/oNzsmUE/NF1k1Fjgb
	SAxQ==
X-Gm-Message-State: AIkVDXKP65p3aAIqtuCXRMuceFBvOv4wHTzKPSrw64rZc1Dy2ODbdWLohHtgcCrsIXt6GA==
X-Received: by 10.107.150.10 with SMTP id y10mr19294349iod.221.1484339265201; 
	Fri, 13 Jan 2017 12:27:45 -0800 (PST)
Received: from localhost.localdomain (216-21-169-52.slc.googlefiber.net.
	[216.21.169.52])
	by smtp.gmail.com with ESMTPSA id z42sm1423718ita.6.2017.01.13.12.27.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Jan 2017 12:27:44 -0800 (PST)
From: George McCollister <george.mccollister@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Jan 2017 14:27:20 -0600
Message-Id: <20170113202720.16883-1-george.mccollister@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [kernel-tools][PATCH] scc: Fix process_file error check
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
X-List-Received-Date: Fri, 13 Jan 2017 20:27:49 -0000

Commit 626ceac135fa66277c2fa53197be33cc9d4d7614 broke the error check in
process_file by adding in three lines that stomp on $? which print the
output file when verbose is set.

Move output file on verbose print to an elif after the error check.

Signed-off-by: George McCollister <george.mccollister@gmail.com>
---
 tools/scc | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/tools/scc b/tools/scc
index 4cd68a4..3d17496 100755
--- a/tools/scc
+++ b/tools/scc
@@ -246,10 +246,6 @@ process_file()
         )
     )
 
-    if [ -n "${verbose}" ]; then
-        cat ${scc_output_file}
-    fi
-
     if [ $? -ne 0 ]; then
         echo "[ERROR]: processing of file $in failed"
         cat ${scc_output_file}
@@ -275,6 +271,8 @@ process_file()
         fi
 	rm -f ${scc_output_file}
         exit 1
+    elif [ -n "${verbose}" ]; then
+        cat ${scc_output_file}
     fi
 
     rm -f ${scc_output_file}
-- 
2.11.0


