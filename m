Return-Path: <freesilicon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52756E009AD; Thu, 26 Jan 2017 00:39:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (freesilicon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9B84E00867
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 00:39:09 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id r144so48758625wme.0
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 00:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=DBuXyl6oNpGCDWYmxv2u/yoH20nYSgFLH29SS0jqdsc=;
	b=qNGVQlBe3iUafoUOBMX6OuUvJXIrCXDp4qFlLZIe/G6hb60SUlNT4dVX7QB3sb6h3w
	R+McDBkQzMarQZfcW2AMpzpiwh83pMO6ux1IhyEDeKUzhrArf8PJELijwKFJtRQ/x1ip
	4gkrOcpHD3Hk4neeu5NdfmuJdHDxbA8C5cX0jPVHEs7Wn+anhQbWz6fXaD2mnf+Fq1nc
	pqY6sjW27xR8NZmTJrGx1tFq5eVpIRrSYiFFlDxKFqo26/heZeI5sLk0yVbM1YF4sdJZ
	rzVaM/mp0+G65na0neQAZ6k/4PQF+hoMPZk80DkCEWLKzpL+Nr/0+XkpDr83toh5fGzb
	lkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=DBuXyl6oNpGCDWYmxv2u/yoH20nYSgFLH29SS0jqdsc=;
	b=Idn2rnGsdYIxvx1doyUMrmCj6zBz/hMfLxKOmzfE9PW4Pv/XxxbE78vm+hUrmY4qoj
	LXI9n/1cXcmhi3wZ1YxBue7BIE99rV/dI6pMPpdUNm42LujcU1W9eecIXC5k6ZJXJmuE
	bR/gD+RapJ4HOqDC2olRfShbDCUpLjR0nHHOi4WKyXI1MFp8MgPjWvs/fyIUYXntdOGs
	FN56/VBxhFiZb/utiTTtJjsDaU1mV4/yGpppGJhA511uPozso7KZb2Ep0gxKeaLzkhec
	FoUGBIFywQ9w5LRmR+sysKyv0+PM0+3skRo9KQzSeJPJkdmG5CoEftnIPvm00R5TKSVw
	0h5g==
X-Gm-Message-State: AIkVDXIgoaqsFjhIIxHeY7sKMyURAFSdDOxfzO4em5aojadjM8IwXQ8qmxrWVoCgtzMH/w==
X-Received: by 10.223.167.71 with SMTP id e7mr1482326wrd.154.1485419948468;
	Thu, 26 Jan 2017 00:39:08 -0800 (PST)
Received: from localhost.localdomain ([185.47.80.46])
	by smtp.gmail.com with ESMTPSA id p7sm1387074wrc.2.2017.01.26.00.39.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 26 Jan 2017 00:39:07 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
To: bruce.ashfield@gmail.com,
	yocto@yoctoproject.org
Date: Thu, 26 Jan 2017 09:38:08 +0100
Message-Id: <20170126083808.27949-1-freesilicon@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
References: <CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
Subject: [PATCH] kernel-yocto: Update source tree with kgit-meta
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
X-List-Received-Date: Thu, 26 Jan 2017 08:39:13 -0000

kgit-meta processes a file called meta-series to update the source tree
(create, merge branches, ...). This fixes the merging of feature
branches using the new merge command of yocto-kernel-tools.

Signed-off-by: David Vincent <freesilicon@gmail.com>
---
 meta/classes/kernel-yocto.bbclass | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 5cfd8aff50..b37ac01a84 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -162,6 +162,19 @@ do_kernel_metadata() {
 			bbfatal_log "Could not generate configuration queue for ${KMACHINE}."
 		fi
 	fi
+
+	# Update git repository by running kgit-meta
+	cd ${S}
+
+	check_git_config
+	meta_dir=$(kgit --meta)
+	if [ -f "${meta_dir}/meta-series" ]; then
+		kgit-meta ${meta_dir}/meta-series
+		if [ $? -ne 0 ]; then
+			bberror "Could not apply metadata for ${KMACHINE}."
+			bbfatal_log "Failures can be resolved in the linux source directory ${S})"
+		fi
+	fi
 }
 
 do_patch() {
-- 
2.11.0


