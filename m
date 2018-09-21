Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86887E00AE0; Fri, 21 Sep 2018 15:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65FB2E00AC8
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 15:12:37 -0700 (PDT)
Received: from
	sinanubuntu1604.mkjiurmyylmellclgttazegk5f.bx.internal.cloudapp.net
	(unknown [137.117.33.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0C85D21476;
	Fri, 21 Sep 2018 22:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1537567957;
	bh=ZB4Ogc/z9e+bSXSLbZWIYHDJqhBSephK7nXZRp1dIGY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NL8+ypD+AxnCHEPF/ZGbcnwmhNNNSJ3kbyKkxzg+F01avJWB9mY8iSJyo5xmpP0O2
	ZKK0EnbCctfXJgPK0y99c2MqI/2fZ/1UrfUjkp0ZmqvQ3T6TMucQ9oJvT1QKI8Kxok
	ph0ENBVPCtaTlNBHipKf3gZqOc7N/AT1SnGt0UgQ=
From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2018 22:12:34 +0000
Message-Id: <20180921221234.23154-3-okaya@kernel.org>
X-Mailer: git-send-email 2.19.0
In-Reply-To: <20180921221234.23154-1-okaya@kernel.org>
References: <20180921221234.23154-1-okaya@kernel.org>
MIME-Version: 1.0
Subject: [PATCH v1 3/3] sqlite3: CVE-2018-8740
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
X-List-Received-Date: Fri, 21 Sep 2018 22:12:38 -0000
Content-Transfer-Encoding: 8bit

* CVE-2018-8740
In SQLite through 3.22.0, databases whose schema is corrupted
using a CREATE TABLE AS statement could cause a NULL pointer dereference,
related to build.c and prepare.c.

Affects sqlite3 <= 3.22.0

Upstream-Status: Backport [ https://www.sqlite.org/cgi/src/vdiff?from=1774f1c3baf0bc3d&to=d75e67654aa9620b&diff=1&w]
CVE: CVE-2018-8740
Ref: https://access.redhat.com/security/cve/cve-2018-8740
Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../sqlite/files/CVE-2018-8740.patch          | 52 +++++++++++++++++++
 meta/recipes-support/sqlite/sqlite3_3.22.0.bb |  1 +
 2 files changed, 53 insertions(+)
 create mode 100644 meta/recipes-support/sqlite/files/CVE-2018-8740.patch

diff --git a/meta/recipes-support/sqlite/files/CVE-2018-8740.patch b/meta/recipes-support/sqlite/files/CVE-2018-8740.patch
new file mode 100644
index 0000000000..7cec1f489c
--- /dev/null
+++ b/meta/recipes-support/sqlite/files/CVE-2018-8740.patch
@@ -0,0 +1,52 @@
+From 19aed4d2be46c4516caf2bee31f79044bbd1d57d Mon Sep 17 00:00:00 2001
+From: Sinan Kaya <okaya@kernel.org>
+Date: Fri, 21 Sep 2018 16:22:01 +0000
+Subject: [PATCH] sqlite3: CVE-2018-8740
+
+port from:
+https://www.sqlite.org/cgi/src/vdiff?from=1774f1c3baf0bc3d&to=d75e67654aa9620b&diff=1&w
+
+CVE detail:
+https://nvd.nist.gov/vuln/detail/CVE-2018-8740
+
+Signed-off-by: Sinan Kaya <okaya@kernel.org>
+---
+ sqlite3.c | 8 +++++---
+ 1 file changed, 5 insertions(+), 3 deletions(-)
+
+diff --git a/sqlite3.c b/sqlite3.c
+index 73c69ef..6863bc6 100644
+--- a/sqlite3.c
++++ b/sqlite3.c
+@@ -103474,8 +103474,6 @@ SQLITE_PRIVATE void sqlite3EndTable(
+   p = pParse->pNewTable;
+   if( p==0 ) return;
+ 
+-  assert( !db->init.busy || !pSelect );
+-
+   /* If the db->init.busy is 1 it means we are reading the SQL off the
+   ** "sqlite_master" or "sqlite_temp_master" table on the disk.
+   ** So do not write to the disk again.  Extract the root page number
+@@ -103486,6 +103484,10 @@ SQLITE_PRIVATE void sqlite3EndTable(
+   ** table itself.  So mark it read-only.
+   */
+   if( db->init.busy ){
++    if( pSelect ){
++     sqlite3ErrorMsg(pParse, "");
++     return;
++    }
+     p->tnum = db->init.newTnum;
+     if( p->tnum==1 ) p->tabFlags |= TF_Readonly;
+   }
+@@ -117813,7 +117815,7 @@ static void corruptSchema(
+     char *z;
+     if( zObj==0 ) zObj = "?";
+     z = sqlite3MPrintf(db, "malformed database schema (%s)", zObj);
+-    if( zExtra ) z = sqlite3MPrintf(db, "%z - %s", z, zExtra);
++    if( zExtra && zExtra[0] ) z = sqlite3MPrintf(db, "%z - %s", z, zExtra);
+     sqlite3DbFree(db, *pData->pzErrMsg);
+     *pData->pzErrMsg = z;
+   }
+-- 
+2.19.0
+
diff --git a/meta/recipes-support/sqlite/sqlite3_3.22.0.bb b/meta/recipes-support/sqlite/sqlite3_3.22.0.bb
index ef88659e97..b90f89886a 100644
--- a/meta/recipes-support/sqlite/sqlite3_3.22.0.bb
+++ b/meta/recipes-support/sqlite/sqlite3_3.22.0.bb
@@ -5,6 +5,7 @@ LIC_FILES_CHKSUM = "file://sqlite3.h;endline=11;md5=786d3dc581eff03f4fd9e4a77ed0
 
 SRC_URI = "\
   http://www.sqlite.org/2018/sqlite-autoconf-${SQLITE_PV}.tar.gz \
+  file://CVE-2018-8740.patch \
   "
 SRC_URI[md5sum] = "96b5648d542e8afa6ab7ffb8db8ddc3d"
 SRC_URI[sha256sum] = "2824ab1238b706bc66127320afbdffb096361130e23291f26928a027b885c612"
-- 
2.19.0


