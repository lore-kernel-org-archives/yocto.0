Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E532E00D14; Wed, 10 Apr 2019 12:38:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E0F5E00B5C
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 12:38:31 -0700 (PDT)
Received: from
	sinanubuntu1604.mkjiurmyylmellclgttazegk5f.bx.internal.cloudapp.net
	(unknown [23.96.42.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A705A2070D;
	Wed, 10 Apr 2019 19:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554925110;
	bh=ljdvEBajz1JednxNFnlVzDeExBazNBTGLDewx28d8/k=;
	h=From:To:Cc:Subject:Date:From;
	b=fcirWhPGLE49cHzx/GRTkO2ldSj2gD3p46BmFacfYDysvDf+9LXvhI2KKV1FVUOi+
	YTf21I4w4j7ub4z/lwPNxTBUdUQGHknDgd4FW+7jm5qM64swINeFkVJtSBBjm3NpTb
	YZrJuJXleckhuOp2HkO5X3IGa24oJpxgJJLzN9qw=
From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org
Date: Wed, 10 Apr 2019 19:38:28 +0000
Message-Id: <20190410193828.29631-1-okaya@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [sumo] [PATCH v2] systemd: fix musl compilation
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
X-List-Received-Date: Wed, 10 Apr 2019 19:38:32 -0000
Content-Transfer-Encoding: 8bit

musl compilation has been broken since systemd: fix CVE-2018-6954. Fixing this
by placing #ifdef for glob definition.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../systemd/0002-Make-tmpfiles-safe.patch     | 88 +++++++++++--------
 1 file changed, 51 insertions(+), 37 deletions(-)

diff --git a/meta/recipes-core/systemd/systemd/0002-Make-tmpfiles-safe.patch b/meta/recipes-core/systemd/systemd/0002-Make-tmpfiles-safe.patch
index 80d27c141b7..bc0a5b123d7 100644
--- a/meta/recipes-core/systemd/systemd/0002-Make-tmpfiles-safe.patch
+++ b/meta/recipes-core/systemd/systemd/0002-Make-tmpfiles-safe.patch
@@ -1,4 +1,4 @@
-From fb95c890cf5116e698347c6a7bb3daeeb2d28cf9 Mon Sep 17 00:00:00 2001
+From 218b6fa682084860f649e79fe32d055bd624523a Mon Sep 17 00:00:00 2001
 From: George McCollister <george.mccollister@gmail.com>
 Date: Thu, 21 Feb 2019 18:04:37 -0600
 Subject: [PATCH] Make tmpfiles safe
@@ -21,6 +21,10 @@ CVE: CVE-2018-6954
 Upstream-Status: Backport
 
 Signed-off-by: George McCollister <george.mccollister@gmail.com>
+[okaya:Fix musl compilation]
+Signed-off-by: Sinan Kaya <okaya@kernel.org>
+
+%% original patch: 0002-Make-tmpfiles-safe.patch
 ---
  src/basic/btrfs-util.c   |  26 +-
  src/basic/btrfs-util.h   |   1 +
@@ -33,18 +37,18 @@ Signed-off-by: George McCollister <george.mccollister@gmail.com>
  src/basic/mkdir.h        |   1 +
  src/basic/path-util.c    |   5 +-
  src/basic/path-util.h    |   4 +
- src/basic/selinux-util.c |  84 +++--
+ src/basic/selinux-util.c |  84 +++-
  src/basic/selinux-util.h |   1 +
- src/basic/smack-util.c   | 119 +++++--
+ src/basic/smack-util.c   | 119 ++++--
  src/basic/smack-util.h   |   1 +
  src/basic/stat-util.c    |  11 +
  src/basic/stat-util.h    |   1 +
  src/test/test-fs-util.c  |  25 ++
- src/tmpfiles/tmpfiles.c  | 902 ++++++++++++++++++++++++++++++++---------------
- 19 files changed, 882 insertions(+), 357 deletions(-)
+ src/tmpfiles/tmpfiles.c  | 904 ++++++++++++++++++++++++++-------------
+ 19 files changed, 884 insertions(+), 357 deletions(-)
 
 diff --git a/src/basic/btrfs-util.c b/src/basic/btrfs-util.c
-index 19d385ab7c..26b088f52b 100644
+index 19d385ab7..26b088f52 100644
 --- a/src/basic/btrfs-util.c
 +++ b/src/basic/btrfs-util.c
 @@ -150,8 +150,25 @@ int btrfs_is_subvol(const char *path) {
@@ -89,7 +93,7 @@ index 19d385ab7c..26b088f52b 100644
  
  int btrfs_subvol_set_read_only_fd(int fd, bool b) {
 diff --git a/src/basic/btrfs-util.h b/src/basic/btrfs-util.h
-index 952b3c26da..e92687bc57 100644
+index 952b3c26d..e92687bc5 100644
 --- a/src/basic/btrfs-util.h
 +++ b/src/basic/btrfs-util.h
 @@ -84,6 +84,7 @@ int btrfs_resize_loopback_fd(int fd, uint64_t size, bool grow_only);
@@ -101,7 +105,7 @@ index 952b3c26da..e92687bc57 100644
  int btrfs_subvol_snapshot_fd(int old_fd, const char *new_path, BtrfsSnapshotFlags flags);
  int btrfs_subvol_snapshot(const char *old_path, const char *new_path, BtrfsSnapshotFlags flags);
 diff --git a/src/basic/fileio.c b/src/basic/fileio.c
-index 26d6174664..1c7e23332f 100644
+index 26d617466..1c7e23332 100644
 --- a/src/basic/fileio.c
 +++ b/src/basic/fileio.c
 @@ -1304,7 +1304,10 @@ int tempfn_random_child(const char *p, const char *extra, char **ret) {
@@ -117,7 +121,7 @@ index 26d6174664..1c7e23332f 100644
          u = random_u64();
          for (i = 0; i < 16; i++) {
 diff --git a/src/basic/fs-util.c b/src/basic/fs-util.c
-index a8e50d4c78..c96a8813ea 100644
+index a8e50d4c7..c96a8813e 100644
 --- a/src/basic/fs-util.c
 +++ b/src/basic/fs-util.c
 @@ -465,6 +465,31 @@ int mkfifo_atomic(const char *path, mode_t mode) {
@@ -162,7 +166,7 @@ index a8e50d4c78..c96a8813ea 100644
  
                          _cleanup_free_ char *destination = NULL;
 diff --git a/src/basic/fs-util.h b/src/basic/fs-util.h
-index 9c4b02eccd..121345e74d 100644
+index 9c4b02ecc..121345e74 100644
 --- a/src/basic/fs-util.h
 +++ b/src/basic/fs-util.h
 @@ -80,6 +80,7 @@ int symlink_idempotent(const char *from, const char *to);
@@ -182,7 +186,7 @@ index 9c4b02eccd..121345e74d 100644
  
  int chase_symlinks(const char *path_with_prefix, const char *root, unsigned flags, char **ret);
 diff --git a/src/basic/label.h b/src/basic/label.h
-index d73dacec4f..3ecfed72c6 100644
+index d73dacec4..3ecfed72c 100644
 --- a/src/basic/label.h
 +++ b/src/basic/label.h
 @@ -26,6 +26,7 @@
@@ -194,7 +198,7 @@ index d73dacec4f..3ecfed72c6 100644
  
  int btrfs_subvol_make_label(const char *path);
 diff --git a/src/basic/mkdir-label.c b/src/basic/mkdir-label.c
-index 6f3a46f467..3c1a227bfa 100644
+index 6f3a46f46..3c1a227bf 100644
 --- a/src/basic/mkdir-label.c
 +++ b/src/basic/mkdir-label.c
 @@ -47,6 +47,23 @@ int mkdir_label(const char *path, mode_t mode) {
@@ -222,7 +226,7 @@ index 6f3a46f467..3c1a227bfa 100644
          return mkdir_safe_internal(path, mode, uid, gid, follow_symlink, mkdir_label);
  }
 diff --git a/src/basic/mkdir.c b/src/basic/mkdir.c
-index d51518a5a7..418945ad4a 100644
+index d51518a5a..418945ad4 100644
 --- a/src/basic/mkdir.c
 +++ b/src/basic/mkdir.c
 @@ -77,6 +77,12 @@ int mkdir_errno_wrapper(const char *pathname, mode_t mode) {
@@ -239,7 +243,7 @@ index d51518a5a7..418945ad4a 100644
          return mkdir_safe_internal(path, mode, uid, gid, follow_symlink, mkdir_errno_wrapper);
  }
 diff --git a/src/basic/mkdir.h b/src/basic/mkdir.h
-index d6c2d579a3..3ec6f3ed2d 100644
+index d6c2d579a..3ec6f3ed2 100644
 --- a/src/basic/mkdir.h
 +++ b/src/basic/mkdir.h
 @@ -24,6 +24,7 @@
@@ -251,7 +255,7 @@ index d6c2d579a3..3ec6f3ed2d 100644
  int mkdir_parents(const char *path, mode_t mode);
  int mkdir_p(const char *path, mode_t mode);
 diff --git a/src/basic/path-util.c b/src/basic/path-util.c
-index df94629385..84404f7ee1 100644
+index df9462938..84404f7ee 100644
 --- a/src/basic/path-util.c
 +++ b/src/basic/path-util.c
 @@ -127,10 +127,7 @@ int path_make_absolute_cwd(const char *p, char **ret) {
@@ -267,7 +271,7 @@ index df94629385..84404f7ee1 100644
          if (!c)
                  return -ENOMEM;
 diff --git a/src/basic/path-util.h b/src/basic/path-util.h
-index 89c285e076..1094baca12 100644
+index 89c285e07..1094baca1 100644
 --- a/src/basic/path-util.h
 +++ b/src/basic/path-util.h
 @@ -156,3 +156,7 @@ static inline const char *skip_dev_prefix(const char *p) {
@@ -279,7 +283,7 @@ index 89c285e076..1094baca12 100644
 +}
 +
 diff --git a/src/basic/selinux-util.c b/src/basic/selinux-util.c
-index 0c6e99b1d7..bdef7d148b 100644
+index 0c6e99b1d..bdef7d148 100644
 --- a/src/basic/selinux-util.c
 +++ b/src/basic/selinux-util.c
 @@ -34,6 +34,7 @@
@@ -402,7 +406,7 @@ index 0c6e99b1d7..bdef7d148b 100644
  void mac_selinux_create_file_clear(void) {
  
 diff --git a/src/basic/selinux-util.h b/src/basic/selinux-util.h
-index 9780dca81e..84a8bf9729 100644
+index 9780dca81..84a8bf972 100644
 --- a/src/basic/selinux-util.h
 +++ b/src/basic/selinux-util.h
 @@ -41,6 +41,7 @@ int mac_selinux_get_child_mls_label(int socket_fd, const char *exe, const char *
@@ -414,7 +418,7 @@ index 9780dca81e..84a8bf9729 100644
  
  int mac_selinux_create_socket_prepare(const char *label);
 diff --git a/src/basic/smack-util.c b/src/basic/smack-util.c
-index f0018f013f..ea0af3e45f 100644
+index f0018f013..ea0af3e45 100644
 --- a/src/basic/smack-util.c
 +++ b/src/basic/smack-util.c
 @@ -21,18 +21,21 @@
@@ -593,7 +597,7 @@ index f0018f013f..ea0af3e45f 100644
          return 0;
  }
 diff --git a/src/basic/smack-util.h b/src/basic/smack-util.h
-index e4d46d7736..0c214bbbc0 100644
+index e4d46d773..0c214bbbc 100644
 --- a/src/basic/smack-util.h
 +++ b/src/basic/smack-util.h
 @@ -44,6 +44,7 @@ typedef enum SmackAttr {
@@ -605,7 +609,7 @@ index e4d46d7736..0c214bbbc0 100644
  const char* smack_attr_to_string(SmackAttr i) _const_;
  SmackAttr smack_attr_from_string(const char *s) _pure_;
 diff --git a/src/basic/stat-util.c b/src/basic/stat-util.c
-index 3a54103f1b..801889ae5b 100644
+index 3a54103f1..801889ae5 100644
 --- a/src/basic/stat-util.c
 +++ b/src/basic/stat-util.c
 @@ -63,6 +63,17 @@ int is_dir(const char* path, bool follow) {
@@ -627,7 +631,7 @@ index 3a54103f1b..801889ae5b 100644
          struct stat info;
  
 diff --git a/src/basic/stat-util.h b/src/basic/stat-util.h
-index d8d3c20496..7ea68abfa3 100644
+index d8d3c2049..7ea68abfa 100644
 --- a/src/basic/stat-util.h
 +++ b/src/basic/stat-util.h
 @@ -31,6 +31,7 @@
@@ -639,7 +643,7 @@ index d8d3c20496..7ea68abfa3 100644
  
  int dir_is_empty(const char *path);
 diff --git a/src/test/test-fs-util.c b/src/test/test-fs-util.c
-index 9f3a500080..a76d6d0f8b 100644
+index 9f3a50008..a76d6d0f8 100644
 --- a/src/test/test-fs-util.c
 +++ b/src/test/test-fs-util.c
 @@ -40,6 +40,7 @@ static void test_chase_symlinks(void) {
@@ -682,7 +686,7 @@ index 9f3a500080..a76d6d0f8b 100644
  }
  
 diff --git a/src/tmpfiles/tmpfiles.c b/src/tmpfiles/tmpfiles.c
-index 613d418eb3..d59ccbaa39 100644
+index 613d418eb..8d1ab0767 100644
 --- a/src/tmpfiles/tmpfiles.c
 +++ b/src/tmpfiles/tmpfiles.c
 @@ -794,6 +794,7 @@ static bool hardlink_vulnerable(struct stat *st) {
@@ -1064,16 +1068,16 @@ index 613d418eb3..d59ccbaa39 100644
 +                                log_error("Cannot create file %s on a read-only file system.", path);
 +                                return -EROFS;
 +                        }
- 
--        fd = safe_close(fd);
++
 +                        return log_error_errno(errno, "Failed to re-open file %s: %m", path);
 +                }
  
--done:
--        if (stat(path, &st) < 0)
+-        fd = safe_close(fd);
 +                erofs = true;
 +        }
-+
+ 
+-done:
+-        if (stat(path, &st) < 0)
 +        if (fstat(fd, &stbuf) < 0)
                  return log_error_errno(errno, "stat(%s) failed: %m", path);
  
@@ -1489,7 +1493,17 @@ index 613d418eb3..d59ccbaa39 100644
                          else
                                  q = -errno;
  
-@@ -1406,7 +1910,6 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
+@@ -1395,7 +1899,9 @@ static int glob_item(Item *i, action_t action) {
+ 
+ static int glob_item_recursively(Item *i, fdaction_t action) {
+         _cleanup_globfree_ glob_t g = {
++#ifdef GLOB_ALTDIRFUNC
+                 .gl_opendir = (void *(*)(const char *)) opendir_nomod,
++#endif
+         };
+         int r = 0, k;
+         char **fn;
+@@ -1406,7 +1912,6 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
  
          STRV_FOREACH(fn, g.gl_pathv) {
                  _cleanup_close_ int fd = -1;
@@ -1497,7 +1511,7 @@ index 613d418eb3..d59ccbaa39 100644
  
                  /* Make sure we won't trigger/follow file object (such as
                   * device nodes, automounts, ...) pointed out by 'fn' with
-@@ -1419,12 +1922,7 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
+@@ -1419,12 +1924,7 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
                          continue;
                  }
  
@@ -1511,7 +1525,7 @@ index 613d418eb3..d59ccbaa39 100644
                  if (k < 0 && r == 0)
                          r = k;
  
-@@ -1435,27 +1933,9 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
+@@ -1435,27 +1935,9 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
          return r;
  }
  
@@ -1540,7 +1554,7 @@ index 613d418eb3..d59ccbaa39 100644
  
          assert(i);
  
-@@ -1470,51 +1950,31 @@ static int create_item(Item *i) {
+@@ -1470,51 +1952,31 @@ static int create_item(Item *i) {
                  return 0;
  
          case CREATE_FILE:
@@ -1602,7 +1616,7 @@ index 613d418eb3..d59ccbaa39 100644
                  break;
  
          case WRITE_FILE:
-@@ -1526,132 +1986,39 @@ static int create_item(Item *i) {
+@@ -1526,132 +1988,39 @@ static int create_item(Item *i) {
  
          case CREATE_DIRECTORY:
          case TRUNCATE_DIRECTORY:
@@ -1750,7 +1764,7 @@ index 613d418eb3..d59ccbaa39 100644
                  break;
          }
  
-@@ -1704,9 +2071,7 @@ static int create_item(Item *i) {
+@@ -1704,9 +2073,7 @@ static int create_item(Item *i) {
          }
  
          case CREATE_BLOCK_DEVICE:
@@ -1761,7 +1775,7 @@ index 613d418eb3..d59ccbaa39 100644
                  if (have_effective_cap(CAP_MKNOD) == 0) {
                          /* In a container we lack CAP_MKNOD. We
                          shouldn't attempt to create the device node in
-@@ -1720,60 +2085,11 @@ static int create_item(Item *i) {
+@@ -1720,60 +2087,11 @@ static int create_item(Item *i) {
                  RUN_WITH_UMASK(0000)
                          (void) mkdir_parents_label(i->path, 0755);
  
@@ -1824,5 +1838,5 @@ index 613d418eb3..d59ccbaa39 100644
          case ADJUST_MODE:
          case RELABEL_PATH:
 -- 
-2.11.0
+2.21.0
 
-- 
2.21.0


