Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD50DE00C27; Fri,  7 Oct 2016 08:57:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C219E00498
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u97FvNlw016459
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Oct 2016 08:57:23 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:21 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:09 -0400
Message-ID: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 00/12] Add Distro, dependency and recommends detection, and import_project
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:28 -0000
Content-Type: text/plain

This set of patches adds a number of features to the layerindex code:
 -  Adds the ability to set the actual-branch to import_layer.
 -  Adds distro to the database and web interface.
 -  Adds collection & version information to layerbranch.
 -  Uses layer name and collection name to determine dependencies and
    recommends.
 -  Adds import_project to simplify pulling all layers and openembedded-core
    into a layer index.

Liam R. Howlett (11):
  import_layer: Add --actual-branch option
  layerindex/tools/import_layer.py: Sanitize layer name.
  layerindex/tools/import_layer.py: Avoid failing if there is any layer
    to     add.
  layerindex/utils: Update runcmd to decode binary strings to strings.
  layerindex: Add distro to web interface and model.
  layerindex/tools/import_project: Add import_project
  layerindex/recipeparse.py: refactor setup_tinfoil,    
    checkout_layer_branch, parse_layer_conf to utils.py
  layerindex: Detect dependencies from layer.conf files
  layerindex: Add collection and version to layerbranch
  layerindexer: Add layer recommends support
  recipeparse: remove unnecessary else statement.

Mark Hatle (1):
  layerindex/update_layer.py: Preserve the recipedependency files

 layerindex/admin.py                |  11 +++
 layerindex/bulkchange.py           |   4 +-
 layerindex/layerconfparse.py       |  50 +++++++++++
 layerindex/models.py               |  23 +++++
 layerindex/recipeparse.py          |  53 +++--------
 layerindex/restviews.py            |  10 ++-
 layerindex/tools/import_classic.py |   2 +
 layerindex/tools/import_layer.py   |  47 +++++++++-
 layerindex/tools/import_project.py | 180 +++++++++++++++++++++++++++++++++++++
 layerindex/update.py               |  42 ++++++++-
 layerindex/update_layer.py         |  87 ++++++++++++++++--
 layerindex/urls.py                 |   3 +
 layerindex/urls_branch.py          |   6 +-
 layerindex/utils.py                | 159 +++++++++++++++++++++++++++++++-
 layerindex/views.py                |  29 +++++-
 templates/layerindex/detail.html   |  55 +++++++++---
 templates/layerindex/distros.html  |  76 ++++++++++++++++
 templates/layerindex/layers.html   |   1 +
 templates/layerindex/machines.html |   1 +
 templates/layerindex/recipes.html  |   1 +
 20 files changed, 767 insertions(+), 73 deletions(-)
 create mode 100644 layerindex/layerconfparse.py
 create mode 100755 layerindex/tools/import_project.py
 create mode 100644 templates/layerindex/distros.html

-- 
1.9.1


