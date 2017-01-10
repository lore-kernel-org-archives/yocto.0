Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 664D9E00ABE; Tue, 10 Jan 2017 08:02:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CCB7E00ABE
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 08:02:36 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id a197so132548512wmd.0
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 08:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=vWoSgmVnHqBMcziZpYsmHKcxNr08oOrtVikwjLRDSNY=;
	b=KxvjHvW2GP0R1/nENKe5KUMKCCVDVE6DHJzRo3cQiW6wLTq+6pMygMwsmkCnq7GGz1
	AdwOWl1gCJlX9vZbSDhF8BdJN5UkslR169tPlmbnJ/fnRJlN6wTpGhyjgP2yun52f0Wx
	DajyJLHYea2zC7s15ikNuUW8JwKOnKSRSbghv3kf7tniY82QKICcwY+WYQy2M12TWtT9
	n14+K89yPBIr5BepCGkPWfy2kSAox6qynaJXiYf4NcDYWv0hWRBsXTac6ICXmfpt05nu
	fRy1lLU2n35t/azKN0h3a6+r6tuFQfK+O+tGeMErFTS6ukhrau0PMFzD2l1p+jsdN+LT
	Bx3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=vWoSgmVnHqBMcziZpYsmHKcxNr08oOrtVikwjLRDSNY=;
	b=T18qZh55NO2hzpdOwqD5FoFUgdkR9ugz0kKQGeS3aOzwpxFlbCNm1fX45xPpmOMejC
	gnkfP4oKfHvxz60XzHRIUq+6Tx5MhP22Su2vKq+VNf45k9QN+2iM8WLYz9nLUbaV2aiD
	vGx2xXA9/cbdnqMQaNJ9/cFiqH9kvgNj+8av7FA1fkubsnYtYt7vBbAPOHxKPItCe2/8
	dY7IMJVVpSZl+HI8eQgTMMtJIUC+yZ6W6Tn5hft+EkuKu5zJKyPs5chRSZ3QJsyDRYeh
	+/9yZqztjLgu2R7F5F3UukP7wZ7bT1GqMantvQi63OIIHdBTxGQoj7tegHY9EopjSLpI
	56lA==
X-Gm-Message-State: AIkVDXJoi1x8exnbmy3pm00JwBeNrzTu15iTox9aFx1TG+iQgcn5yfeYSSqh2XNw1f8Ouav9
X-Received: by 10.28.1.216 with SMTP id 207mr2473378wmb.7.1484064155077;
	Tue, 10 Jan 2017 08:02:35 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	g73sm4442638wme.16.2017.01.10.08.02.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 10 Jan 2017 08:02:34 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jan 2017 16:02:29 +0000
Message-Id: <1484064149-21513-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1484064149-21513-1-git-send-email-ross.burton@intel.com>
References: <1484064149-21513-1-git-send-email-ross.burton@intel.com>
Subject: [PATCH][opkg 2/2] conffile: gracefully handle deleted conffiles in conffile_has_been_modified
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
X-List-Received-Date: Tue, 10 Jan 2017 16:02:39 -0000

Handle conffiles that don't exist gracefully so that instead of showing an error
message from file_md5sum_alloc() a notice that the file has been deleted is
shown instead.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 libopkg/conffile.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/libopkg/conffile.c b/libopkg/conffile.c
index b2f2469..7b4b87b 100644
--- a/libopkg/conffile.c
+++ b/libopkg/conffile.c
@@ -51,6 +51,11 @@ int conffile_has_been_modified(conffile_t * conffile)
     }
 
     root_filename = root_filename_alloc(filename);
+    if (!file_exists(root_filename)) {
+        opkg_msg(INFO, "Conffile %s deleted\n", conffile->name);
+        free(root_filename);
+        return 1;
+    }
 
     md5sum = file_md5sum_alloc(root_filename);
 
-- 
2.8.1


