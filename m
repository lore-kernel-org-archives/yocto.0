Return-Path: <jpuhlman@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FF9BE0109A; Thu, 12 Jul 2018 11:33:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AEF7E0108B
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 11:33:23 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id s198-v6so57610992oih.11
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 11:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=JaGcbeXAUFaIDILjLYz54ji50DVfW1hhYuBqF5KdOkY=;
	b=u1S4dGfyDAeIO8s8+wcYNf3YnzDwskY9AbQUblIwUKYxD2PFJiFlLlGGAnnz5sXuSF
	rOVDOIDg92Nenxz6wBb+ST4T4Cz1x97t/p4IAS268CcZeLfwIKI1VYka0xgs8nvkl2FB
	6XiQD3uew210Ywh5SIp99ZqQcnogyORsCg7JTT6ec/g9Pgp+r1zYgW/L9UR4LEmXgqOC
	kN03wSVxKVCuuG4ohIxdYT/iLNl5NzbQ/Il67ak5KaOSllVgTkGK3tSrWmp5oEF5LhCL
	rU1mCJKEFhsqn5cw2ye7WLP4xrtXy0OaTpJY6CCv7vGp7Ut+q+wiKaOFi4a47vaaGiLO
	4BRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JaGcbeXAUFaIDILjLYz54ji50DVfW1hhYuBqF5KdOkY=;
	b=QFIxae+EoJfJIgzCu/bg2FRJjyt9cl3e1xylKFiKzYy5oZpKdD+NbBSI0gYtWhOOBM
	r8fpKEr9vQxMNTCobrqauqemEtCDhMzXFFMjEPtk+rCuh+lrgzn4vGaL1eRzJsePd0//
	UbDwCEOk+bpFzWx7eXXnCDhdNtddr3wk7rdidYdbyGo80wH6KrSZ7lvko98Cf2v0oHc8
	bOOvOufS4A4NDB2Heytl6mJ79h0GlREuBajvwXs+1fh+llpYxhLZFhc7a33Z+xVmLclq
	nnj7g9x+M0C++FGo9UPp1BFPGyTj9VaQz9BL59YdogbwtgB66GTrH7IlMLBlWMlDNTrW
	Iveg==
X-Gm-Message-State: AOUpUlFOxSgNLtVzlT2s70qvxS66VwQhPEK2uDp1yyv2cLx7t7hWplks
	mRa3t1D4nplMpCih3xzfNrNFg2EVAbY=
X-Google-Smtp-Source: AAOMgpe8e/PypuZmAeE86yyg89nUcYRIDcHSrNaKuYOqKukbSgBRFimAIGVde6o94DlCeDvIIEJO5w==
X-Received: by 2002:aca:41d7:: with SMTP id
	o206-v6mr3403943oia.172.1531420402757; 
	Thu, 12 Jul 2018 11:33:22 -0700 (PDT)
Received: from jptest02.mvista.com (64.2.3.196.ptr.us.xo.net. [64.2.3.196])
	by smtp.gmail.com with ESMTPSA id
	t131-v6sm6803521oie.34.2018.07.12.11.33.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Jul 2018 11:33:21 -0700 (PDT)
From: Jeremy Puhlman <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Jul 2018 11:31:05 -0700
Message-Id: <20180712183105.21589-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.14.1.459.g238e487
Subject: [meta-selinux][PATCH] e2fsprogs: Update patch for current master
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
X-List-Received-Date: Thu, 12 Jul 2018 18:33:30 -0000

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 .../files/misc_create_inode.c-label_rootfs.patch     | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch b/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch
index 1de0dde..046e521 100644
--- a/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch
+++ b/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch
@@ -8,15 +8,17 @@ When copying a file system using the -d option the xattrs from the root
 directory need to be copied before the populate_fs recusion starts.
 
 Signed-off-by: Philip Tricca <flihp@twobit.us>
+Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
+
 ---
- misc/create_inode.c | 7 +++++++
- 1 file changed, 7 insertions(+)
+ misc/create_inode.c | 8 ++++++++
+ 1 file changed, 8 insertions(+)
 
 diff --git a/misc/create_inode.c b/misc/create_inode.c
-index 0de5719..ee21186 100644
+index a7b6d348..cfd15922 100644
 --- a/misc/create_inode.c
 +++ b/misc/create_inode.c
-@@ -890,8 +890,15 @@ errcode_t populate_fs(ext2_filsys fs, ext2_ino_t parent_ino,
+@@ -979,6 +979,13 @@ errcode_t populate_fs2(ext2_filsys fs, ext2_ino_t parent_ino,
  		return retval;
  	}
  
@@ -26,12 +28,18 @@ index 0de5719..ee21186 100644
 +			_("while setting xattrs for \"%s\""), source_dir);
 +		goto out;
 +	}
- 	retval = __populate_fs(fs, parent_ino, source_dir, root, &hdlinks);
++
+ 	file_info.path_len = 0;
+ 	file_info.path_max_len = 255;
+ 	file_info.path = calloc(file_info.path_max_len, 1);
+@@ -987,6 +994,7 @@ errcode_t populate_fs2(ext2_filsys fs, ext2_ino_t parent_ino,
+ 			       &file_info, fs_callbacks);
  
+ 	free(file_info.path);
 +out:
  	free(hdlinks.hdl);
  	return retval;
  }
 -- 
-2.1.4
+2.11.1
 
-- 
2.14.1.459.g238e487


