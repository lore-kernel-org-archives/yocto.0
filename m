Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C4A8E0086B; Fri, 10 Aug 2018 15:23:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E14A1E006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 15:23:45 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id y10-v6so5127069pfn.8
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 15:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=nkvyJ+B7hjWG7JZ1zoRLR0pwhG5sKHslS2D6po6ye1Q=;
	b=hrEaelS4G7Y1JQ08saroD64UBBUThoYFThGDQwLmX3vfir0Tf4hggXXXtxPUDJ9bun
	vXjonK9LOQXkYkJGA8NA2f/kO5iOoWI0QXxp+xLks/6ujrm+ONg6bQAE8Gv79W6bHI01
	JVVku/nXQ9MBYfFlonxH28vtOMw+Z2GVhmeqMI11hFNh8x05Ssvb9PjegO7zNbXW2q3z
	usNX8YJlDBcZNKY9w71+E9EBRnUhALh2AeB811McmgAoZ+dlY59R8doU9L+yoW/qW4f8
	nk6fhrZSmtXOY2ygoSoEUSfUILOgkUCNNX+QZhDr0cwXTEbJ8MTSkX5VhNf5EV0x3D/3
	q+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=nkvyJ+B7hjWG7JZ1zoRLR0pwhG5sKHslS2D6po6ye1Q=;
	b=sfNfNMb+DG4Qv73LAC0kdnUW9SDmQi+MwEVRH+ZF0Hw7m0s3eR/MI7MRUSY1+GeE7l
	sEqZ5v/Jt72GEugy8rcr5qm8VWGrHActEwjZosQuufnPtFiDru2hYol4Hti2zdVyoLz5
	IFve419obLmCbhAfEMUzLMQwOPXHJNYX2QgZVeyO7fyOKpWlpzURrWu2HclTe6inGZQb
	23zbHIfd/Ou/7xzPx0RUJINnXJcdxfCmBdicegJpe8GqYAv2AovB31g+l4zmi1qD7qqo
	rdmp/qBmF9wfm629AOR2p870r452zd3qAsX0h7+XPKB0jo6TYVr0CHP7u3VJtyJ4BMmI
	3pTg==
X-Gm-Message-State: AOUpUlH37R3wFlsR8TDwn3VXg9VKbZGS4AYYpqw8wfQkoCUHyHLBLSDh
	xx4ibIP4PZOtfIf+Z2vbSwgPEHEY
X-Google-Smtp-Source: AA+uWPy4dW9j1BIBQOMXjxmPhB1zs2Jv9367ZqSOtRHp3I45rDQP3LTMUqRZlrU+k/mkwgmA18gx8g==
X-Received: by 2002:a62:b40c:: with SMTP id
	h12-v6mr8940804pfn.18.1533939825209; 
	Fri, 10 Aug 2018 15:23:45 -0700 (PDT)
Received: from localhost.localdomain (47-40-108-60.dhcp.knwc.wa.charter.com.
	[47.40.108.60]) by smtp.googlemail.com with ESMTPSA id
	f75-v6sm37098066pfk.85.2018.08.10.15.23.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 10 Aug 2018 15:23:44 -0700 (PDT)
From: Scott Rifenbark <srifenbark@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Aug 2018 15:23:34 -0700
Message-Id: <1533939814-15773-1-git-send-email-srifenbark@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: timothy.t.orling@intel.com
Subject: [poky-container][PATCH] README.md: Updated a link into the YP doc set.
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
X-List-Received-Date: Fri, 10 Aug 2018 22:23:47 -0000

The existing link was a dead end.  It took the reader to the
retired YP Quick Start.  The new link is to the section in the
YP Development Tasks Manual where the ready can learn how to
clone poky and proceed.

Signed-off-by: Scott Rifenbark <srifenbark@gmail.com>
---
 README.md | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/README.md b/README.md
index c5276fd..6bc172a 100644
--- a/README.md
+++ b/README.md
@@ -19,7 +19,7 @@ point.
 
     The workdir you create will be used for the output created while using the container.
     For example a user could create a directory using the command
-  
+
     ```
     mkdir -p /home/myuser/mystuff
     ```
@@ -31,7 +31,7 @@ point.
 
     For the rest of the Linux instructions we'll assume the workdir chosen was
     `/home/myuser/mystuff`.
-    
+
   * **Windows/Mac**
 
     On Windows or Mac a workdir isn't needed. Instead the volume called *myvolume* will be used. This volume should have been created when following the instructions at https://github.com/crops/docker-win-mac-docs/wiki.
@@ -46,9 +46,9 @@ point.
     ```
     docker run --rm -it -v /home/myuser/mystuff:/workdir crops/poky --workdir=/workdir
     ```
-    
+
   * **Windows/Mac**
-  
+
     ```
     docker run --rm -it -v myvolume:/workdir crops/poky --workdir=/workdir
     ```
@@ -62,5 +62,4 @@ point.
   ```
   pokyuser@3bbac563cacd:/workdir$
   ```
-  At this point you should be able to follow the same instructions as described
-  in https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html#releases.
+  At this point you should be able to follow the instructions in the [Yocto Project Development Tasks Manual](https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#cloning-and-checking-out-branchs) to get started with with Yocto project.
-- 
2.7.4


