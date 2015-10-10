Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 184D4E00B6A; Fri,  9 Oct 2015 23:32:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72EDBE00343
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 23:32:46 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t9A6WikM010672
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 9 Oct 2015 23:32:45 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 9 Oct 2015 23:32:44 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 10 Oct 2015 02:32:42 -0400
Message-ID: <1444458762-140180-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] refpolicy: fix exit code issue of bzip2
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
X-List-Received-Date: Sat, 10 Oct 2015 06:32:54 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

'bzip2 -qt $moudle_name.pp' has different exit codes on different
distributions, for example:

* On Redhat/CentOS/Fedora, OpenSUSE:

  $ bzip2 -qt /tmp/tor.pp
  bzip2: /tmp/tor.pp: bad magic number (file not created by bzip2)
  $ echo $?
  0

This causes install errors:

  unzip2: /path/to/*.pp is not a bzip2 file.
  libsepol.module_package_read_offsets: module package header truncated
  Failed to read policy package

* Ubuntu has fixed it:

  $ bzip2 -qt /tmp/tor.pp
  bzip2: /tmp/tor.pp: bad magic number (file not created by bzip2)
  $ echo $?
  2

The difference involved by '-q' options, remove it would get the bzip2
works consistently. bzip2-native has the same issue, anyway it should
be fixed separately.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/refpolicy/refpolicy_common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index de38dfc..5acbf3e 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -84,7 +84,7 @@ prepare_policy_store () {
 		MOD_DIR=${POL_ACTIVE_MODS}/${MOD_NAME}
 		mkdir -p ${MOD_DIR}
 		echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
-		if ! bzip2 -qt $i 2>/dev/null; then
+		if ! bzip2 -t $i >/dev/null 2>&1; then
 			${HLL_BIN} $i | bzip2 --stdout > ${MOD_DIR}/cil
 			bzip2 -f $i && mv -f $i.bz2 $i
 		else
-- 
1.9.1


