Return-Path: <franksinankaya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E7B9E00D2A; Wed, 10 Apr 2019 22:34:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5688E00B58
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 22:34:27 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id o74so4149872ota.3
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 22:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:subject:to:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=quMCPkZWg4nxJiGcnP7ZOKIFPaZ1ZxjpqB8+1EsZb0s=;
	b=vC4RU6bjCgCNAEa6QeG0jGKs6aMlUc7ELuCNer4x/Btk11mcPTWki9/qlH7oGr/BST
	Pn+3tNUuJhAhV6ImYzM9HAt50RM9f/x45JL7vXyZgZHp9pC+LGZW4fzo/L7NQ4N54inP
	8pDh0O0SvQn7LQXRw0b+cVUcvNzJAtifYoIinwNGb+g0uSYvdCH5eAP7ElBfHx/cznPh
	oMPLfUVYkO0ARlsJhwyA4cvm5IpFlolE/Q0eNLTZd+Ci8lEf5resqCvxSLhncAIzQrRR
	/fqKwCwfbuKvQjdVqrXLEvmjCy8Gf47S5uIgnnE1WQeXBmyHXoXSGfOqSnOhBEHOIN4O
	wj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:subject:to:references:message-id
	:date:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=quMCPkZWg4nxJiGcnP7ZOKIFPaZ1ZxjpqB8+1EsZb0s=;
	b=YSq5wfybiHAN6WBPMtu0ce9rUkLvhvNbhg6EzO8og+nvl99DdEFHL/ID6E3CRk32IW
	TwW2W8WQBk5YcSxdZls+3sP1h16U2L6ngqYHBj3eaHP/6BmSBAyIIrrJgv4mPpDLSqCz
	/a7vkNGzjpoQ5zvm11nyqXIaBOxc3OzzawbK/XAMEY0zb3NRQES9uVZIVs5agcl1T0TG
	sqvaty8SaI+txxv6Bx04jXSuOWt/Sr+jYvt9zYCpLckwzc7KpGSRW5sW2oZXUuYHBvOX
	dU/LBanaWPK/n+TvrCHDDWCI1xZQNTXNLftb9WPoaAlzznKyE0e5iv3toJWaLEgTkDPv
	qBEQ==
X-Gm-Message-State: APjAAAWTlZZK0k4LZe8WJtPokgtsYpL+asFsAJajRMmS3e1YUkg37p7m
	cR0EGf5QVZVLD0o2q/wJx4G1sUKC
X-Google-Smtp-Source: APXvYqzXZWkqdjG13vhQ71k9FeuFqsAum9/rDn2N92sySPKfdXA6KBa6gS6q5CDC4QBZheomLnNEBw==
X-Received: by 2002:a9d:4d89:: with SMTP id u9mr32169438otk.71.1554960867054; 
	Wed, 10 Apr 2019 22:34:27 -0700 (PDT)
Received: from [192.168.1.74] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net.
	[75.58.59.55])
	by smtp.gmail.com with ESMTPSA id r4sm12504043oia.2.2019.04.10.22.34.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 Apr 2019 22:34:26 -0700 (PDT)
Sender: Sinan Kaya <franksinankaya@gmail.com>
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org, akuster808@gmail.com
References: <20190410193828.29631-1-okaya@kernel.org>
Message-ID: <39a618f3-7be6-8137-c75d-08e3ca01b92e@kernel.org>
Date: Thu, 11 Apr 2019 01:34:25 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190410193828.29631-1-okaya@kernel.org>
Subject: Re: [sumo] [PATCH v2] systemd: fix musl compilation
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
X-List-Received-Date: Thu, 11 Apr 2019 05:34:29 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

+akuster

On 4/10/2019 3:38 PM, Sinan Kaya wrote:
> musl compilation has been broken since systemd: fix CVE-2018-6954. Fixing this
> by placing #ifdef for glob definition.
> 
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>   .../systemd/0002-Make-tmpfiles-safe.patch     | 88 +++++++++++--------
>   1 file changed, 51 insertions(+), 37 deletions(-)
> 
> diff --git a/meta/recipes-core/systemd/systemd/0002-Make-tmpfiles-safe.patch b/meta/recipes-core/systemd/systemd/0002-Make-tmpfiles-safe.patch
> index 80d27c141b7..bc0a5b123d7 100644
> --- a/meta/recipes-core/systemd/systemd/0002-Make-tmpfiles-safe.patch
> +++ b/meta/recipes-core/systemd/systemd/0002-Make-tmpfiles-safe.patch
> @@ -1,4 +1,4 @@
> -From fb95c890cf5116e698347c6a7bb3daeeb2d28cf9 Mon Sep 17 00:00:00 2001
> +From 218b6fa682084860f649e79fe32d055bd624523a Mon Sep 17 00:00:00 2001
>   From: George McCollister <george.mccollister@gmail.com>
>   Date: Thu, 21 Feb 2019 18:04:37 -0600
>   Subject: [PATCH] Make tmpfiles safe
> @@ -21,6 +21,10 @@ CVE: CVE-2018-6954
>   Upstream-Status: Backport
>   
>   Signed-off-by: George McCollister <george.mccollister@gmail.com>
> +[okaya:Fix musl compilation]
> +Signed-off-by: Sinan Kaya <okaya@kernel.org>
> +
> +%% original patch: 0002-Make-tmpfiles-safe.patch
>   ---
>    src/basic/btrfs-util.c   |  26 +-
>    src/basic/btrfs-util.h   |   1 +
> @@ -33,18 +37,18 @@ Signed-off-by: George McCollister <george.mccollister@gmail.com>
>    src/basic/mkdir.h        |   1 +
>    src/basic/path-util.c    |   5 +-
>    src/basic/path-util.h    |   4 +
> - src/basic/selinux-util.c |  84 +++--
> + src/basic/selinux-util.c |  84 +++-
>    src/basic/selinux-util.h |   1 +
> - src/basic/smack-util.c   | 119 +++++--
> + src/basic/smack-util.c   | 119 ++++--
>    src/basic/smack-util.h   |   1 +
>    src/basic/stat-util.c    |  11 +
>    src/basic/stat-util.h    |   1 +
>    src/test/test-fs-util.c  |  25 ++
> - src/tmpfiles/tmpfiles.c  | 902 ++++++++++++++++++++++++++++++++---------------
> - 19 files changed, 882 insertions(+), 357 deletions(-)
> + src/tmpfiles/tmpfiles.c  | 904 ++++++++++++++++++++++++++-------------
> + 19 files changed, 884 insertions(+), 357 deletions(-)
>   
>   diff --git a/src/basic/btrfs-util.c b/src/basic/btrfs-util.c
> -index 19d385ab7c..26b088f52b 100644
> +index 19d385ab7..26b088f52 100644
>   --- a/src/basic/btrfs-util.c
>   +++ b/src/basic/btrfs-util.c
>   @@ -150,8 +150,25 @@ int btrfs_is_subvol(const char *path) {
> @@ -89,7 +93,7 @@ index 19d385ab7c..26b088f52b 100644
>    
>    int btrfs_subvol_set_read_only_fd(int fd, bool b) {
>   diff --git a/src/basic/btrfs-util.h b/src/basic/btrfs-util.h
> -index 952b3c26da..e92687bc57 100644
> +index 952b3c26d..e92687bc5 100644
>   --- a/src/basic/btrfs-util.h
>   +++ b/src/basic/btrfs-util.h
>   @@ -84,6 +84,7 @@ int btrfs_resize_loopback_fd(int fd, uint64_t size, bool grow_only);
> @@ -101,7 +105,7 @@ index 952b3c26da..e92687bc57 100644
>    int btrfs_subvol_snapshot_fd(int old_fd, const char *new_path, BtrfsSnapshotFlags flags);
>    int btrfs_subvol_snapshot(const char *old_path, const char *new_path, BtrfsSnapshotFlags flags);
>   diff --git a/src/basic/fileio.c b/src/basic/fileio.c
> -index 26d6174664..1c7e23332f 100644
> +index 26d617466..1c7e23332 100644
>   --- a/src/basic/fileio.c
>   +++ b/src/basic/fileio.c
>   @@ -1304,7 +1304,10 @@ int tempfn_random_child(const char *p, const char *extra, char **ret) {
> @@ -117,7 +121,7 @@ index 26d6174664..1c7e23332f 100644
>            u = random_u64();
>            for (i = 0; i < 16; i++) {
>   diff --git a/src/basic/fs-util.c b/src/basic/fs-util.c
> -index a8e50d4c78..c96a8813ea 100644
> +index a8e50d4c7..c96a8813e 100644
>   --- a/src/basic/fs-util.c
>   +++ b/src/basic/fs-util.c
>   @@ -465,6 +465,31 @@ int mkfifo_atomic(const char *path, mode_t mode) {
> @@ -162,7 +166,7 @@ index a8e50d4c78..c96a8813ea 100644
>    
>                            _cleanup_free_ char *destination = NULL;
>   diff --git a/src/basic/fs-util.h b/src/basic/fs-util.h
> -index 9c4b02eccd..121345e74d 100644
> +index 9c4b02ecc..121345e74 100644
>   --- a/src/basic/fs-util.h
>   +++ b/src/basic/fs-util.h
>   @@ -80,6 +80,7 @@ int symlink_idempotent(const char *from, const char *to);
> @@ -182,7 +186,7 @@ index 9c4b02eccd..121345e74d 100644
>    
>    int chase_symlinks(const char *path_with_prefix, const char *root, unsigned flags, char **ret);
>   diff --git a/src/basic/label.h b/src/basic/label.h
> -index d73dacec4f..3ecfed72c6 100644
> +index d73dacec4..3ecfed72c 100644
>   --- a/src/basic/label.h
>   +++ b/src/basic/label.h
>   @@ -26,6 +26,7 @@
> @@ -194,7 +198,7 @@ index d73dacec4f..3ecfed72c6 100644
>    
>    int btrfs_subvol_make_label(const char *path);
>   diff --git a/src/basic/mkdir-label.c b/src/basic/mkdir-label.c
> -index 6f3a46f467..3c1a227bfa 100644
> +index 6f3a46f46..3c1a227bf 100644
>   --- a/src/basic/mkdir-label.c
>   +++ b/src/basic/mkdir-label.c
>   @@ -47,6 +47,23 @@ int mkdir_label(const char *path, mode_t mode) {
> @@ -222,7 +226,7 @@ index 6f3a46f467..3c1a227bfa 100644
>            return mkdir_safe_internal(path, mode, uid, gid, follow_symlink, mkdir_label);
>    }
>   diff --git a/src/basic/mkdir.c b/src/basic/mkdir.c
> -index d51518a5a7..418945ad4a 100644
> +index d51518a5a..418945ad4 100644
>   --- a/src/basic/mkdir.c
>   +++ b/src/basic/mkdir.c
>   @@ -77,6 +77,12 @@ int mkdir_errno_wrapper(const char *pathname, mode_t mode) {
> @@ -239,7 +243,7 @@ index d51518a5a7..418945ad4a 100644
>            return mkdir_safe_internal(path, mode, uid, gid, follow_symlink, mkdir_errno_wrapper);
>    }
>   diff --git a/src/basic/mkdir.h b/src/basic/mkdir.h
> -index d6c2d579a3..3ec6f3ed2d 100644
> +index d6c2d579a..3ec6f3ed2 100644
>   --- a/src/basic/mkdir.h
>   +++ b/src/basic/mkdir.h
>   @@ -24,6 +24,7 @@
> @@ -251,7 +255,7 @@ index d6c2d579a3..3ec6f3ed2d 100644
>    int mkdir_parents(const char *path, mode_t mode);
>    int mkdir_p(const char *path, mode_t mode);
>   diff --git a/src/basic/path-util.c b/src/basic/path-util.c
> -index df94629385..84404f7ee1 100644
> +index df9462938..84404f7ee 100644
>   --- a/src/basic/path-util.c
>   +++ b/src/basic/path-util.c
>   @@ -127,10 +127,7 @@ int path_make_absolute_cwd(const char *p, char **ret) {
> @@ -267,7 +271,7 @@ index df94629385..84404f7ee1 100644
>            if (!c)
>                    return -ENOMEM;
>   diff --git a/src/basic/path-util.h b/src/basic/path-util.h
> -index 89c285e076..1094baca12 100644
> +index 89c285e07..1094baca1 100644
>   --- a/src/basic/path-util.h
>   +++ b/src/basic/path-util.h
>   @@ -156,3 +156,7 @@ static inline const char *skip_dev_prefix(const char *p) {
> @@ -279,7 +283,7 @@ index 89c285e076..1094baca12 100644
>   +}
>   +
>   diff --git a/src/basic/selinux-util.c b/src/basic/selinux-util.c
> -index 0c6e99b1d7..bdef7d148b 100644
> +index 0c6e99b1d..bdef7d148 100644
>   --- a/src/basic/selinux-util.c
>   +++ b/src/basic/selinux-util.c
>   @@ -34,6 +34,7 @@
> @@ -402,7 +406,7 @@ index 0c6e99b1d7..bdef7d148b 100644
>    void mac_selinux_create_file_clear(void) {
>    
>   diff --git a/src/basic/selinux-util.h b/src/basic/selinux-util.h
> -index 9780dca81e..84a8bf9729 100644
> +index 9780dca81..84a8bf972 100644
>   --- a/src/basic/selinux-util.h
>   +++ b/src/basic/selinux-util.h
>   @@ -41,6 +41,7 @@ int mac_selinux_get_child_mls_label(int socket_fd, const char *exe, const char *
> @@ -414,7 +418,7 @@ index 9780dca81e..84a8bf9729 100644
>    
>    int mac_selinux_create_socket_prepare(const char *label);
>   diff --git a/src/basic/smack-util.c b/src/basic/smack-util.c
> -index f0018f013f..ea0af3e45f 100644
> +index f0018f013..ea0af3e45 100644
>   --- a/src/basic/smack-util.c
>   +++ b/src/basic/smack-util.c
>   @@ -21,18 +21,21 @@
> @@ -593,7 +597,7 @@ index f0018f013f..ea0af3e45f 100644
>            return 0;
>    }
>   diff --git a/src/basic/smack-util.h b/src/basic/smack-util.h
> -index e4d46d7736..0c214bbbc0 100644
> +index e4d46d773..0c214bbbc 100644
>   --- a/src/basic/smack-util.h
>   +++ b/src/basic/smack-util.h
>   @@ -44,6 +44,7 @@ typedef enum SmackAttr {
> @@ -605,7 +609,7 @@ index e4d46d7736..0c214bbbc0 100644
>    const char* smack_attr_to_string(SmackAttr i) _const_;
>    SmackAttr smack_attr_from_string(const char *s) _pure_;
>   diff --git a/src/basic/stat-util.c b/src/basic/stat-util.c
> -index 3a54103f1b..801889ae5b 100644
> +index 3a54103f1..801889ae5 100644
>   --- a/src/basic/stat-util.c
>   +++ b/src/basic/stat-util.c
>   @@ -63,6 +63,17 @@ int is_dir(const char* path, bool follow) {
> @@ -627,7 +631,7 @@ index 3a54103f1b..801889ae5b 100644
>            struct stat info;
>    
>   diff --git a/src/basic/stat-util.h b/src/basic/stat-util.h
> -index d8d3c20496..7ea68abfa3 100644
> +index d8d3c2049..7ea68abfa 100644
>   --- a/src/basic/stat-util.h
>   +++ b/src/basic/stat-util.h
>   @@ -31,6 +31,7 @@
> @@ -639,7 +643,7 @@ index d8d3c20496..7ea68abfa3 100644
>    
>    int dir_is_empty(const char *path);
>   diff --git a/src/test/test-fs-util.c b/src/test/test-fs-util.c
> -index 9f3a500080..a76d6d0f8b 100644
> +index 9f3a50008..a76d6d0f8 100644
>   --- a/src/test/test-fs-util.c
>   +++ b/src/test/test-fs-util.c
>   @@ -40,6 +40,7 @@ static void test_chase_symlinks(void) {
> @@ -682,7 +686,7 @@ index 9f3a500080..a76d6d0f8b 100644
>    }
>    
>   diff --git a/src/tmpfiles/tmpfiles.c b/src/tmpfiles/tmpfiles.c
> -index 613d418eb3..d59ccbaa39 100644
> +index 613d418eb..8d1ab0767 100644
>   --- a/src/tmpfiles/tmpfiles.c
>   +++ b/src/tmpfiles/tmpfiles.c
>   @@ -794,6 +794,7 @@ static bool hardlink_vulnerable(struct stat *st) {
> @@ -1064,16 +1068,16 @@ index 613d418eb3..d59ccbaa39 100644
>   +                                log_error("Cannot create file %s on a read-only file system.", path);
>   +                                return -EROFS;
>   +                        }
> -
> --        fd = safe_close(fd);
> ++
>   +                        return log_error_errno(errno, "Failed to re-open file %s: %m", path);
>   +                }
>    
> --done:
> --        if (stat(path, &st) < 0)
> +-        fd = safe_close(fd);
>   +                erofs = true;
>   +        }
> -+
> +
> +-done:
> +-        if (stat(path, &st) < 0)
>   +        if (fstat(fd, &stbuf) < 0)
>                    return log_error_errno(errno, "stat(%s) failed: %m", path);
>    
> @@ -1489,7 +1493,17 @@ index 613d418eb3..d59ccbaa39 100644
>                            else
>                                    q = -errno;
>    
> -@@ -1406,7 +1910,6 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
> +@@ -1395,7 +1899,9 @@ static int glob_item(Item *i, action_t action) {
> +
> + static int glob_item_recursively(Item *i, fdaction_t action) {
> +         _cleanup_globfree_ glob_t g = {
> ++#ifdef GLOB_ALTDIRFUNC
> +                 .gl_opendir = (void *(*)(const char *)) opendir_nomod,
> ++#endif
> +         };
> +         int r = 0, k;
> +         char **fn;
> +@@ -1406,7 +1912,6 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
>    
>            STRV_FOREACH(fn, g.gl_pathv) {
>                    _cleanup_close_ int fd = -1;
> @@ -1497,7 +1511,7 @@ index 613d418eb3..d59ccbaa39 100644
>    
>                    /* Make sure we won't trigger/follow file object (such as
>                     * device nodes, automounts, ...) pointed out by 'fn' with
> -@@ -1419,12 +1922,7 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
> +@@ -1419,12 +1924,7 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
>                            continue;
>                    }
>    
> @@ -1511,7 +1525,7 @@ index 613d418eb3..d59ccbaa39 100644
>                    if (k < 0 && r == 0)
>                            r = k;
>    
> -@@ -1435,27 +1933,9 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
> +@@ -1435,27 +1935,9 @@ static int glob_item_recursively(Item *i, fdaction_t action) {
>            return r;
>    }
>    
> @@ -1540,7 +1554,7 @@ index 613d418eb3..d59ccbaa39 100644
>    
>            assert(i);
>    
> -@@ -1470,51 +1950,31 @@ static int create_item(Item *i) {
> +@@ -1470,51 +1952,31 @@ static int create_item(Item *i) {
>                    return 0;
>    
>            case CREATE_FILE:
> @@ -1602,7 +1616,7 @@ index 613d418eb3..d59ccbaa39 100644
>                    break;
>    
>            case WRITE_FILE:
> -@@ -1526,132 +1986,39 @@ static int create_item(Item *i) {
> +@@ -1526,132 +1988,39 @@ static int create_item(Item *i) {
>    
>            case CREATE_DIRECTORY:
>            case TRUNCATE_DIRECTORY:
> @@ -1750,7 +1764,7 @@ index 613d418eb3..d59ccbaa39 100644
>                    break;
>            }
>    
> -@@ -1704,9 +2071,7 @@ static int create_item(Item *i) {
> +@@ -1704,9 +2073,7 @@ static int create_item(Item *i) {
>            }
>    
>            case CREATE_BLOCK_DEVICE:
> @@ -1761,7 +1775,7 @@ index 613d418eb3..d59ccbaa39 100644
>                    if (have_effective_cap(CAP_MKNOD) == 0) {
>                            /* In a container we lack CAP_MKNOD. We
>                            shouldn't attempt to create the device node in
> -@@ -1720,60 +2085,11 @@ static int create_item(Item *i) {
> +@@ -1720,60 +2087,11 @@ static int create_item(Item *i) {
>                    RUN_WITH_UMASK(0000)
>                            (void) mkdir_parents_label(i->path, 0755);
>    
> @@ -1824,5 +1838,5 @@ index 613d418eb3..d59ccbaa39 100644
>            case ADJUST_MODE:
>            case RELABEL_PATH:
>   --
> -2.11.0
> +2.21.0
>   
> 


