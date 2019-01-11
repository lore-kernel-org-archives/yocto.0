Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B74EE00CC4; Fri, 11 Jan 2019 11:03:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2DA2E006F1
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 11:03:07 -0800 (PST)
Received: by mail-pf1-f195.google.com with SMTP id c123so7380455pfb.0
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 11:03:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=GUWaajesAtY6XexQRNGE8cjMml38O+KmlVusM4Bbhmk=;
	b=GdvkevCHi/BOYyYU1f4Jof/hSwsz7fOQ2TW2UfEDb6pHZsUu+T68pB9xowpLq0Xeb2
	OOklL/XGMxu8TT6DjZV2yWqHJxpOjDrBc6IF2c5ORirRsnSsc+KmmYFXwAVpo0ZaPWUO
	AkF5WRDZrUTpnXG8aqguk+inLsYN12myv/bso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=GUWaajesAtY6XexQRNGE8cjMml38O+KmlVusM4Bbhmk=;
	b=kFsfk2osVUYpyKzKRNmZaIfNgf8ax9cTD7VHROSmHMYR9P1EHhvvmJfdkdYAkbGlQS
	TYHaMOfWmg5xCvyQDt5JYD0pUCFZS/AJ3Frk4Pe6zICDpyTU8khRpVefZzQnfcVNKGeT
	nshNSAzpdPOgGj8RtZ5TQeUL/z0WrnUFNi+qoX7K454o7xL/xQEEg7sLnVbCm1lovhQU
	x0c50MMTU/Nl9ebyrPhz2rEUrRnApyFSThjhI3CLDYjYWynQbmK+fGzIhRE6cykbHEzr
	Ulr7BIIfgWKIKebkwj6WeT9Nr9o4EOXwaY0wYC1YPAEmTjBseEHkKw/ye7BJ3D322Y96
	cShg==
X-Gm-Message-State: AJcUukfiQfMngt6ZAv4ClQPllNTTJw1g084hSI6b8gPIzx2bt87caWlF
	8Bz6tv9dcgULY5NR6o8PO9dth9tT+tY=
X-Google-Smtp-Source: ALg8bN6afLutJsPSu/1wFHNyA66Bkj4jv+y21A5rEwRLHFvPJwmlS/GFwGuXAco8IyMjmfouH/iLUw==
X-Received: by 2002:a63:42c1:: with SMTP id
	p184mr14378664pga.202.1547233386826; 
	Fri, 11 Jan 2019 11:03:06 -0800 (PST)
Received: from yct-lpt.pdx.yoctoproject.org ([2601:1c0:ce01:2bef::35fd])
	by smtp.gmail.com with ESMTPSA id
	n21sm113662116pfg.84.2019.01.11.11.03.05
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 11 Jan 2019 11:03:06 -0800 (PST)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Fri, 11 Jan 2019 11:02:56 -0800
Message-Id: <20190111190256.9354-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.17.2
Subject: [patchtest][PATCH] scripts: Reset working repository to match origin during clean up
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
X-List-Received-Date: Fri, 11 Jan 2019 19:03:08 -0000

If the local HEAD is a patchtest generated merge commit patchtest may be unable
to apply new patches. This should prevent patchtest from becoming stuck
in that state.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 scripts/create-share-folder | 2 +-
 scripts/host                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/create-share-folder b/scripts/create-share-folder
index 861da4b..9432cb1 100755
--- a/scripts/create-share-folder
+++ b/scripts/create-share-folder
@@ -122,7 +122,7 @@ function update_repository() {
 	(
 	    cd $REPODIR
 	    git am --abort --quiet
-	    git reset --hard --quiet
+	    git reset --hard --quiet FETCH_HEAD
 	    git clean -f -e ".git-pw*" --quiet
 	)
 	
diff --git a/scripts/host b/scripts/host
index 85f0e4a..893ce63 100755
--- a/scripts/host
+++ b/scripts/host
@@ -83,7 +83,7 @@ function clean() {
     (
 	cd $path
 	git am --abort
-	git reset --hard
+	git reset --hard FETCH_HEAD
 	git clean -f -e ".git-pw*"
     )
 }
-- 
2.17.2


