Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B570E00B47; Fri, 24 Feb 2017 06:55:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A037FE00B43
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 06:55:09 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id v77so16318023wmv.1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 06:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=TZXVffekL+gruZ9i0ttqhPRWo9f59z2uTrkJb8ftPRk=;
	b=ZZc5jd6v+P0VU8VJW7zmdSiqzdQpKwPHrEsbXn5nKqFOky/aH/phsa/YbuLWrsoAbe
	QDT2INsEqSLeBxxXaNQYLWWfTsc6PWOf6c6Mi+mz+fNPOyQYHRIorUKTENlZcngrx0xV
	u/nokQHsp7ThaN8JPdR3vxFIKjfgWrrIFIOP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TZXVffekL+gruZ9i0ttqhPRWo9f59z2uTrkJb8ftPRk=;
	b=axQmJRno9+sm2j05SNGCUYz2AkwoRJrl7JdYjccwEDXNzrVryxZFgsW0ZquA/JPAEJ
	4x6VMvgdb/iAMuvSzQJQDYRXD3HLwqpJOUhJASzKvltGUD6hymegLZr5Io1jVyf13lOP
	CKn7JRudIflDsmt+L2+7KxF6jtOxGDQ0Oe7zCh8IY4JmVSPfb5LNmQzekc4NcLzfDVp1
	vzTqQJiaT7t3mCORFOndOsDMHjw+HYK2n1F+eXsFoYf5WCaKerE3G9yLcRPEnfOKqo7/
	COo/MFqe+ftS3IzNsG/o7IdINtQtYVmc3ZkNARDrezJZX+K/4x4+jEFy1MhD4NwMuJcn
	5HrA==
X-Gm-Message-State: AMke39lY6gxuF4dWAcIuk1zsMvwdBkwNLCQoMsGnGkHKjAd5hGnOLJYPhdFD/o5udr8IEQ==
X-Received: by 10.28.129.5 with SMTP id c5mr3029972wmd.19.1487948108309;
	Fri, 24 Feb 2017 06:55:08 -0800 (PST)
Received: from anton-ats.internal.advancedtelematic.com
	(p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id 63sm2638492wmg.22.2017.02.24.06.55.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Feb 2017 06:55:07 -0800 (PST)
From: anton@advancedtelematic.com
To: yocto@yoctoproject.org
Date: Fri, 24 Feb 2017 15:48:15 +0100
Message-Id: <20170224144815.7243-1-anton@advancedtelematic.com>
X-Mailer: git-send-email 2.11.1
X-Mailman-Approved-At: Fri, 24 Feb 2017 09:11:46 -0800
Cc: seebs@seebs.net
Subject: [pseudo][PATCH 1/1] Filter out erroneous POSIX ACLs
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
X-List-Received-Date: Fri, 24 Feb 2017 14:55:11 -0000

From: Anton Gerasimov <anton@advancedtelematic.com>

The difference between what we see in pseudo and what happens without
pseudo can be seen by typing:

    mkdir setfattr-test
    setfattr -n system.posix_acl_default -v 0x02000000 setfattr-test
    getfattr -n system.posix_acl_default setfattr-test

Under some kernel configurations this difference leads to annoying
errors, e.g. directories copied with 'cp -a' get broken in a fancy way.

Signed-off-by: Anton Gerasimov <anton@advancedtelematic.com>
---
 ports/linux/xattr/pseudo_wrappers.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/ports/linux/xattr/pseudo_wrappers.c b/ports/linux/xattr/pseudo_wrappers.c
index 46bc053..31a6baf 100644
--- a/ports/linux/xattr/pseudo_wrappers.c
+++ b/ports/linux/xattr/pseudo_wrappers.c
@@ -64,7 +64,7 @@ posix_permissions(const acl_header *header, int entries, int *extra, int *mode)
 	if (le32(header->version) != 2) {
 		pseudo_diag("Fatal: ACL support no available for header version %d.\n",
 			le32(header->version));
-		return 1;
+		return -1;
 	}
 	*mode = 0;
 	*extra = 0;
@@ -140,12 +140,27 @@ static int shared_setxattr(const char *path, int fd, const char *name, const voi
 	pseudo_debug(PDBGF_XATTR, "setxattr(%s [fd %d], %s => '%.*s')\n",
 		path ? path : "<no path>", fd, name, (int) size, (char *) value);
 
+	/* Filter out erroneous sizes for POSIX ACL
+	 *  see posix_acl_xattr_count in include/linux/posix_acl_xattr.h of Linux source code */
+	if (!strcmp(name, "system.posix_acl_access") || !strcmp(name, "system.posix_acl_default")) {
+		// ACL is corrupt, issue an error
+		if(size < sizeof(acl_header) || (size - sizeof(acl_header)) % sizeof(acl_entry) != 0) {
+			errno = EINVAL;
+			return -1;
+		}
+
+		// ACL is empty, do nothing
+		if((size - sizeof(acl_header)) / sizeof(acl_entry) == 0) {
+			return 0;
+		}
+	}
 	/* this may be a plain chmod */
 	if (!strcmp(name, "system.posix_acl_access")) {
 		int extra;
 		int mode;
 		int entries = (size - sizeof(acl_header)) / sizeof(acl_entry);
-		if (!posix_permissions(value, entries, &extra, &mode)) {
+		int res = posix_permissions(value, entries, &extra, &mode);
+		if (res == 0) {
 			pseudo_debug(PDBGF_XATTR, "posix_acl_access translated to mode %04o. Remaining attribute(s): %d.\n",
 				mode, extra);
 			buf.st_mode = mode;
@@ -164,8 +179,12 @@ static int shared_setxattr(const char *path, int fd, const char *name, const voi
 			if (!extra) {
 				return 0;
 			}
+		} else if (res == -1) {
+			errno = EOPNOTSUPP;
+			return -1;
 		}
 	}
+
 	if (!strcmp(name, "user.pseudo_data")) {
 		pseudo_debug(PDBGF_XATTR | PDBGF_XATTRDB, "user.pseudo_data xattribute does not get to go in database.\n");
 		return -1;
-- 
2.11.1


