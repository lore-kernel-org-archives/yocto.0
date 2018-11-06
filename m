Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE92AE00B77; Tue,  6 Nov 2018 04:00:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C38FE00AC5
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 04:00:30 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id y15-v6so13166472wru.9
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 04:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=VE0wgw3aDs9oB0sHtETg6AGH37wY3AvplBSU3AQUBio=;
	b=oVQ5fkdiRESrvi9/TDXLv40pAxQ8eiBEu0tbQU2Dt31AF5zrHvgRMSuoWs2uW8tjwl
	S2uRCqXgOIn5f/iyvfzjUXzVh37lbofykoNCyrPJ95tnzwL7vkhwu7C8oBbscC1l9tZg
	ak8u7pTlh6qnFBU5OYHm/c+kISE9X05NzzP9oFioQ+mWXg09gon0jyNlBPTyLIAVj5YM
	q+SH/ajnAZ+iQ/BjWhKtII0w60wBFdh+is8c0xK+qyHFh52ozPqWHY2r9dkGdYPlJU30
	n3KGUf9cb2X+akhAZfpF9yD87gHf9+kVaYgTQwPN+4uDVTgEqalrkf77MYS/Sgd07YbD
	PKpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=VE0wgw3aDs9oB0sHtETg6AGH37wY3AvplBSU3AQUBio=;
	b=TQnsGIeTEX3ruT+zwPDOhyOYNnrzMJJdzlz4ZtzHZy4raCmLcYWqo0eijy5PFUpWC1
	Hd8vxrPl1/9+UYGVyYiw1G/MotEzrWDkc4vVgahIKXM5YGxdYv08P/bbKO2Az3D5vSIc
	150Vl7GZ8oPWNPR3tCqyht3cEcvQVNr7iW5Zb1CYiH1kZfHcTfWnxNU9/vXdZXrtC02H
	vTno2IE0wlArm/356WEvfFugkH8/so8TMJL34hVGkshDoVbr937nrA6TeBILwfjUOpTW
	SgRNysR9ejFt8ui0L1UU+gDTgH5LxlDsvcaEEiQj+t3kioPX7O6j4jYI3YFN3cayxDOR
	f8yg==
X-Gm-Message-State: AGRZ1gKY84SV+CnTVNxCfJxsE0zPmh78JPxy7x2SbnLBMl72HOnFDOzV
	oJECDgV1mccEDyiJc9CYGnM4FYBb+yk=
X-Google-Smtp-Source: AJdET5fvqJI+S/NBGqFoi4N2wy1649GEu32UfawngwhMtEuQXr7zN7E3DItU63anOTZcfFC4c8n+4w==
X-Received: by 2002:adf:d246:: with SMTP id
	o6-v6mr21593581wri.66.1541505629319; 
	Tue, 06 Nov 2018 04:00:29 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	g5-v6sm5622182wrw.97.2018.11.06.04.00.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Nov 2018 04:00:28 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Nov 2018 12:00:22 +0000
Message-Id: <20181106120023.5845-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH pseudo 1/2] pseudo_db: add missing stdint include
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
X-List-Received-Date: Tue, 06 Nov 2018 12:00:32 -0000

---
 pseudo_db.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/pseudo_db.c b/pseudo_db.c
index 0994048..31f4dc4 100644
--- a/pseudo_db.c
+++ b/pseudo_db.c
@@ -18,6 +18,7 @@
  *
  */
 #include <stdio.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <string.h>
 #include <sys/stat.h>
-- 
2.11.0


