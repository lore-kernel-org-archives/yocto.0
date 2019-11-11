Return-Path: <aj.bagwell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EC1EE00D6A; Mon, 11 Nov 2019 02:32:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aj.bagwell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA60E007AE
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2019 02:32:31 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id w9so7206635wrr.0
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2019 02:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=4U7NOtDD1GnNGHIF/MO26JQmm1tEf9DRNTjnynOejVc=;
	b=YsYJY8q2PrHnlSbc8avV+EfxPQG+EQy17G2MHLA56Eift1lhLA87JIjx49eQ1V+yhv
	/bInIjl+fWH2qg/wUmrhWq3+F2rqUTxZSdeND/ezRN7W0vYmPrU8hsqth86SII6NuwLB
	f8vlKZjhz3mLm+HijC1xr+YEAh7tp6ysP48fTWRpx2rG4BWTyre+v8coU09wpqxBw3RS
	0kjVCDtWJInsu8g+lEw4DzDbO0taPZPfGmvlF+YMRDEDmfvNih6B6Pebhu6keeamY6DX
	2kTyFLwgk0CrfhcbWP0KajTgAqhUZyGIiPMgaipAZ0vmTlyOsrVReHa+STxeKta1v/JX
	HQgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=4U7NOtDD1GnNGHIF/MO26JQmm1tEf9DRNTjnynOejVc=;
	b=n4NhW6XaV7ZGBylcs41Vi9waWnfmu/9Ft2cADoBcRKyD8ZiLptSwgeA73axAGQCpVN
	kwWVn4gRHAeV4taCsULsX82TTjR5CYikaQZSpfkE4mLPXfwEEs8SUpnhaUL5/PvbOnoF
	YlTDREZDdymQqiKEsZdIpO6fGNZVM6s4tq/qXQseZj2Ai6NTnRaewRXQsefWjeQI+6ED
	us1kRP9aTqf3pXP7zZyI0kNFMZqHS0XNDFrF0vZt4MDhmoocSw33/BNXEnQ+LchsOu9U
	guMphohg8TKkfTebT2dX+jVmPfByL++6A9qN+KnRPlQKIso6jVgxmgJrOL3/iesBC753
	Td7A==
X-Gm-Message-State: APjAAAXr3svVXaFMQY00cYofzT8i/YuvbA2ldhUzSsr72gPpRZmyiLDB
	GYB3/INWeXFrzqn1OlI0u87eT5qd
X-Google-Smtp-Source: APXvYqzyc09xjMMpxotiSSwzeHP9Kqaio8IZUTBv1E1324nai2bnjcnf2BWdOWOZlaK12g2YVGKMIg==
X-Received: by 2002:adf:9786:: with SMTP id s6mr13896913wrb.188.1573468350427; 
	Mon, 11 Nov 2019 02:32:30 -0800 (PST)
Received: from localhost.localdomain ([195.89.163.130])
	by smtp.gmail.com with ESMTPSA id
	f188sm13751141wmf.3.2019.11.11.02.32.29
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 11 Nov 2019 02:32:29 -0800 (PST)
From: aj.bagwell@gmail.com
To: yocto@yoctoproject.org
Date: Mon, 11 Nov 2019 10:32:22 +0000
Message-Id: <20191111103222.86510-1-aj.bagwell@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-gplv2][PATCH v2] dosfstools: fix out of bound writes
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
X-List-Received-Date: Mon, 11 Nov 2019 10:32:32 -0000

From: AJ Bagwell <anthony.bagwell@hivehome.com>

Fix write issues where sprintf writes across both name and ext fields
and drops the final null ternimator outside the struct

Signed-off-by: AJ Bagwell <anthony.bagwell@hivehome.com>
---
 .../fixing-out-of-bound-writes.patch          | 54 +++++++++++++++++++
 .../dosfstools/dosfstools_2.11.bb             |  1 +
 2 files changed, 55 insertions(+)
 create mode 100644 recipes-devtools/dosfstools/dosfstools/fixing-out-of-bound-writes.patch

diff --git a/recipes-devtools/dosfstools/dosfstools/fixing-out-of-bound-writes.patch b/recipes-devtools/dosfstools/dosfstools/fixing-out-of-bound-writes.patch
new file mode 100644
index 0000000..f80f5ab
--- /dev/null
+++ b/recipes-devtools/dosfstools/dosfstools/fixing-out-of-bound-writes.patch
@@ -0,0 +1,54 @@
+Fix out of bound write issues where sprintf writes across both
+name and ext fields and drops the final null ternimator outside the struct
+
+Upstream-Status: Inappropriate [licensing]
+We're tracking an old release of dosfstools due to licensing issues.
+
+diff --git a/dosfsck/check.c b/dosfsck/check.c
+index e8c13bb..91177d3 100644
+--- a/dosfsck/check.c
++++ b/dosfsck/check.c
+@@ -58,6 +58,13 @@ static DOS_FILE *root;
+     }									\
+   } while(0)
+ 
++static void de_printf(DIR_ENT *de, const char *pattern, int curr_num)
++{
++    char buffer[12];
++    sprintf(buffer, pattern, curr_num);
++    memcpy(de->name, buffer, 8);
++    memcpy(de->ext, buffer + 8, 3);
++}
+ 
+ loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT *de, const char *pattern)
+ {
+@@ -110,7 +117,8 @@ loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT *de, const char *pattern)
+ 	}
+ 	memset(de,0,sizeof(DIR_ENT));
+ 	while (1) {
+-	    sprintf(de->name,pattern,curr_num);
++	    de_printf(de, pattern, curr_num);
++
+ 	    clu_num = fs->root_cluster;
+ 	    i = 0;
+ 	    offset2 = cluster_start(fs,clu_num);
+@@ -150,7 +158,7 @@ loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT *de, const char *pattern)
+ 	offset = fs->root_start+next_free*sizeof(DIR_ENT);
+ 	memset(de,0,sizeof(DIR_ENT));
+ 	while (1) {
+-	    sprintf(de->name,pattern,curr_num);
++	    de_printf(de, pattern, curr_num);
+ 	    for (scan = 0; scan < fs->root_entries; scan++)
+ 		if (scan != next_free &&
+ 		    !strncmp(root[scan].name,de->name,MSDOS_NAME))
+@@ -311,8 +319,8 @@ static void auto_rename(DOS_FILE *file)
+     first = file->parent ? file->parent->first : root;
+     number = 0;
+     while (1) {
+-	sprintf(file->dir_ent.name,"FSCK%04d",number);
+-	strncpy(file->dir_ent.ext,"REN",3);
++	de_printf(&file->dir_ent, "FSCK%04dREN", number);
++
+ 	for (walk = first; walk; walk = walk->next)
+ 	    if (walk != file && !strncmp(walk->dir_ent.name,file->dir_ent.
+ 	      name,MSDOS_NAME)) break;
diff --git a/recipes-devtools/dosfstools/dosfstools_2.11.bb b/recipes-devtools/dosfstools/dosfstools_2.11.bb
index dd543b1..37c2181 100644
--- a/recipes-devtools/dosfstools/dosfstools_2.11.bb
+++ b/recipes-devtools/dosfstools/dosfstools_2.11.bb
@@ -19,6 +19,7 @@ SRC_URI = "http://pkgs.fedoraproject.org/repo/pkgs/${BPN}/${BP}.src.tar.gz/407d4
            file://nofat32_autoselect.patch \
            file://fix_populated_dosfs_creation.patch \
            file://0001-Include-fcntl.h-for-getting-loff_t-definition.patch \
+	   file://fixing-out-of-bound-writes.patch \
 "
 
 SRC_URI[md5sum] = "407d405ade410f7597d364ab5dc8c9f6"
-- 
2.17.1


