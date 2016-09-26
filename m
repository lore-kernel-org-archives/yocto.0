Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 208C5E0074C; Mon, 26 Sep 2016 11:25:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE752E0070F
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 11:25:41 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u8QIPdFo004524
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Sep 2016 11:25:40 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.234) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Mon, 26 Sep 2016 11:25:39 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Sep 2016 14:25:28 -0400
Message-ID: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH 00/10] Add Distribution, dependency and recommends detection, and import_project
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
X-List-Received-Date: Mon, 26 Sep 2016 18:25:44 -0000
Content-Type: text/plain

This set of patches adds a number of features to the layerindex code:
 -  Adds the ability to set the actual-branch to import_layer.
 -  Adds distribution to the database and web interface.
 -  Adds collection & version information to layerbranch.
 -  Uses layer name and collection name to determine dependencies and
    recommends.
 -  Adds import_project to simplify pulling all layers and openembedded-core to
    a layer index.

Liam R. Howlett (10):
  import_layer: Add --actual-branch option
  layerindex/tools/import_layer.py: Sanitize layer name.
  layerindex/tools/import_layer.py: Avoid failing if there is any layer
    to     add.
  layerindex/utils: Update runcmd to decode binary strings to strings.
  layerindex: Add distribution to web interface and model.
  layerindex/tools/import_project: Add import_project
  layerindex: Detect dependencies from layer.conf files
  layerindex: Add collection and version to layerbranch
  layerindexer: Add layer recommends support
  recipeparse: remove unnecessary else statement.

 layerindex/admin.py                     |  11 ++
 layerindex/layerconfparse.py            |  39 +++++++
 layerindex/models.py                    |  24 +++++
 layerindex/recipeparse.py               |  45 +++-----
 layerindex/restviews.py                 |  10 +-
 layerindex/tools/import_classic.py      |   2 +
 layerindex/tools/import_layer.py        |  49 ++++++++-
 layerindex/tools/import_project.py      | 176 ++++++++++++++++++++++++++++++++
 layerindex/update.py                    |  22 +++-
 layerindex/update_layer.py              |  71 +++++++++++--
 layerindex/urls.py                      |   3 +
 layerindex/urls_branch.py               |   6 +-
 layerindex/utils.py                     | 136 +++++++++++++++++++++++-
 layerindex/views.py                     |  29 +++++-
 templates/layerindex/detail.html        |  55 ++++++++--
 templates/layerindex/distributions.html |  76 ++++++++++++++
 templates/layerindex/layers.html        |   1 +
 templates/layerindex/machines.html      |   1 +
 templates/layerindex/recipes.html       |   1 +
 19 files changed, 696 insertions(+), 61 deletions(-)
 create mode 100644 layerindex/layerconfparse.py
 create mode 100755 layerindex/tools/import_project.py
 create mode 100644 templates/layerindex/distributions.html

-- 
1.9.1


