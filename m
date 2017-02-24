Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0948E009B2; Fri, 24 Feb 2017 06:57:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70146E00995
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 06:57:36 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id r141so16501769wmg.1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 06:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=TZXVffekL+gruZ9i0ttqhPRWo9f59z2uTrkJb8ftPRk=;
	b=p/0KETgwOY4hewXlOm50w7RemZuqAKGVO+ytFDYkl2IL+FjVnJwIC6p2k+p+j1nNUi
	WIFemnMU8anANu0/2ljJAmigehAPknGMdf5Nj0NJfDrYXuNx1NXf0lXgdaK2DMTjY0H1
	h7Prulto5YATP93Dv2JfnsJUES2kZO4N3Ck1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TZXVffekL+gruZ9i0ttqhPRWo9f59z2uTrkJb8ftPRk=;
	b=da3VIVVB9IrYBzOF26lHnRk1F/Q7wb8dkf8h9Km6eCucMJEGDdvmObfXzCvcmLpy2g
	epbI82Wv+vJ+Jk8ekcE0wlSzOUzwjTwMdicf6/6KPXlA510jMDDeqKiLh8SktHYo5hNJ
	utgDUpaQi07FH5e33VUUc/iqQYqUr6MfII4uo40bdcIKLIDfg9MiI2M+dZOolR5JA/zQ
	b0nTeT0mmcyroMuzgX4SfSo2MlcxWfpHhVByk669xtemsRXf1qww5uNEpnQYM5gs/Abw
	duDIEKBZrxtHlmLIsU5/VPRy1Ei53ATEPEGubgkQVMbGRBUWI1RyUjEqf4YD8hBkwd8k
	hSBw==
X-Gm-Message-State: AMke39l3kXtN0B10kI5X8KlRWUsyS0jdRgsk5yujpTEt16aOa9fuI/TEkQpmUVhiS5/phg==
X-Received: by 10.28.16.70 with SMTP id 67mr3280858wmq.142.1487948256076;
	Fri, 24 Feb 2017 06:57:36 -0800 (PST)
Received: from anton-ats.internal.advancedtelematic.com
	(p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id
	10sm10660496wrw.13.2017.02.24.06.57.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Feb 2017 06:57:35 -0800 (PST)
From: anton@advancedtelematic.com
To: yocto@yoctoproject.org
Date: Fri, 24 Feb 2017 15:50:55 +0100
Message-Id: <20170224145055.7313-1-anton@advancedtelematic.com>
X-Mailer: git-send-email 2.11.1
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
X-List-Received-Date: Fri, 24 Feb 2017 14:57:39 -0000

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


