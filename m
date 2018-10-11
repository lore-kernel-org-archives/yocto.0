Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 662E9E00AB9; Wed, 10 Oct 2018 19:03:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1AA5E00718
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 19:03:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w9B23NvR015792
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 19:03:23 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.408.0; Wed, 10 Oct 2018 19:03:23 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <mark.hatle@windriver.com>
Date: Thu, 11 Oct 2018 10:14:45 +0800
Message-ID: <1539224085-123686-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [prelink-cross][PATCH] src/arch-mips.c: check info->resolvetls before use its member
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
X-List-Received-Date: Thu, 11 Oct 2018 02:03:25 -0000
Content-Type: text/plain

The info->resolvetls might be NULL according to src/prelink.c:
[snip]
 /* Dynamic linker does not depend on any other library,
    all symbols resolve to themselves with the exception
    of SHN_UNDEF symbols which resolve to 0.  */
if (info->symtab[r_sym].st_shndx == SHN_UNDEF)
  {
    info->resolveent = NULL;
    info->resolvetls = NULL;
[snip]

So we must check it before use its members, otherwise, there might be
Segmentation fault error.

Fixed:
MACHINE = "qemumips"
IMAGE_INSTALL_append = " qemu"
$ bitbake core-image-minimal
[snip]
| /path/to/qemumips-poky-linux/core-image-minimal/1.0-r0/temp/run.prelink_image.1000: line 111:  1010 Segmentation fault      (core dumped) /path/to/qemumips-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/sbin/prelink --root /path/to/qemumips-poky-linux/core-image-minimal/1.0-r0/rootfs -amR -N -c /etc/prelink.conf --dynamic-linker $dynamic_loader
[snip]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 src/arch-mips.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/src/arch-mips.c b/src/arch-mips.c
index ccb1834..02c608f 100644
--- a/src/arch-mips.c
+++ b/src/arch-mips.c
@@ -567,7 +567,8 @@ mips_prelink_reloc (struct prelink_info *info, GElf_Addr r_offset,
       if (dso->ehdr.e_type == ET_EXEC)
 	{
 	  value = info->resolve (info, r_sym, r_type);
-	  value += info->resolvetls->offset - TLS_TP_OFFSET;
+	  if (info->resolvetls != NULL)
+	    value += info->resolvetls->offset - TLS_TP_OFFSET;
 	  if (r_type == R_MIPS_TLS_TPREL32)
 	    mips_prelink_32bit_reloc (dso, rela, value);
 	  else
-- 
2.7.4


