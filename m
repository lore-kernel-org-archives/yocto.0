Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73D7BE00C19; Wed, 18 Apr 2018 03:57:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C060BE00816
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 03:57:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3IAv6wn012802
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2018 03:57:06 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 18 Apr 2018 03:57:05 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 18 Apr 2018 19:04:30 +0800
Message-ID: <0b584e2c9b36d513ea6154a30f937787fa305b55.1524049072.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1524049072.git.liezhi.yang@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/4] fixup! update: don't stop on unsatisfied layer dependencies
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
X-List-Received-Date: Wed, 18 Apr 2018 10:57:08 -0000
Content-Type: text/plain

The previous commit broke the layer order, e.g.:
A -> B -> C -> D

The algorithm is checking the dependencies one by one, and until we find D, add
D to layerquery_sorted, and add it "collections", the one in "collections"
means it's dependencies are OK, then C, B and A will check against collections,
so that update_layer.py will update them one by one. The previous commit added
A/B/C/D to collections directly, so that when check against it, all the
dependencies are met, thus broke the layer sorting, and then there would be
failures if we pass layer A to update_layer.py before B, C and D (suppose they
are newly to database). This commit fix the problem.

BTW., why I use collections to record the one whose dependencies are matched,
but not directly use layerquery_sorted, it is because collections contains both
the ones to be added/updated and the ones in database, but layerquery_sorted
only contains the ones to be updated/added.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index f60b943..07240ab 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -348,12 +348,11 @@ def main():
                     deps = re.search("^LAYERDEPENDS = \"(.*)\"", output, re.M).group(1) or ''
                     recs = re.search("^LAYERRECOMMENDS = \"(.*)\"", output, re.M).group(1) or ''
 
-                    collections.add((col, ver))
-
                     deps_dict = utils.explode_dep_versions2(bitbakepath, deps + ' ' + recs)
                     if len(deps_dict) == 0:
                         # No depends, add it firstly
                         layerquery_sorted.append(layer)
+                        collections.add((col, ver))
                         continue
                     deps_dict_all[layer] = {'requires': deps_dict, 'collection': col, 'version': ver}
 
@@ -374,6 +373,7 @@ def main():
                             # All the depends are in collections:
                             del(deps_dict_all[layer])
                             layerquery_sorted.append(layer)
+                            collections.add((value['collection'], value['version']))
 
                     if not len(deps_dict_all):
                         break
-- 
2.7.4


