Return-Path: <Mark.Asselstine@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7366E00D79; Tue, 11 Oct 2016 07:30:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AF49E00D70
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 07:30:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u9BEUlCl012702
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 11 Oct 2016 07:30:47 -0700
Received: from yow-dellw-ma.wrs.com (128.224.56.18) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 11 Oct 2016 07:30:46 -0700
From: Mark Asselstine <mark.asselstine@windriver.com>
To: <yocto@yoctoproject.org>, <sgw@linux.intel.com>
Date: Tue, 11 Oct 2016 10:30:45 -0400
Message-ID: <1476196245-14084-1-git-send-email-mark.asselstine@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-security][PATCH] clamav: fixup improper quoting
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
X-List-Received-Date: Tue, 11 Oct 2016 14:30:59 -0000
Content-Type: text/plain

Commit 217e06badb146539122732ab0eb27fd17cce09e5 [clamav: fix gcc 6.x
build failure.] fixed a typo in "PACKAGECONFIG" (was missing the 'G')
but unfortunately the PACKAGECONFIG string was incorrectly formed due
to mismatched quotes. This caused a parsing error:

  ERROR: Unable to parse .../meta-security/recipes-security/clamav/clamav_0.99.2.bb
  ...

Removed the unneeded quotes to fix the parsing issue.

Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
---
 recipes-security/clamav/clamav_0.99.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
index a2bab6d..3e5f36c 100644
--- a/recipes-security/clamav/clamav_0.99.2.bb
+++ b/recipes-security/clamav/clamav_0.99.2.bb
@@ -54,7 +54,7 @@ PACKAGECONFIG[openssl] = "--with-openssl=${STAGING_DIR_HOST}/usr, --without-open
 PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr, --without-zlib, zlib, "
 PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${STAGING_LIBDIR}/.., --without-libbz2-prefix, "
 PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${STAGING_LIBDIR}/.., --without-libncurses-prefix, ncurses, "
-PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/', '--without-systemdsystemunitdir', "
+PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
 
 EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
             --without-libcheck-prefix --disable-unrar \
-- 
2.7.4


