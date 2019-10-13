Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95C84E00DD3; Sat, 12 Oct 2019 18:56:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B6EBE00DB5
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 18:56:36 -0700 (PDT)
Received: from lons-builder.int.hatle.net ([192.40.192.88])
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9D1uYi5017025
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 20:56:35 -0500
From: Mark Hatle <mark.hatle@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Sat, 12 Oct 2019 20:56:30 -0500
Message-Id: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web] [PATCH 0/3] Some misc changes/fixes..
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
X-List-Received-Date: Sun, 13 Oct 2019 01:56:37 -0000

A few misc changes/fixes.  The first two are well tested.  However, I suspect
the 3/3 may be incorrect and I've labeled it an RFC due to this.

1/3 - '.' wasn't allowed in branch names w/o an error.  This turned out
to be a fairly simple fix.

2/3 - For people who want to use 'poky' repository and not bitbake +
openembedded-core.  I've tested this locally in both configurations.

3/3 - When I was testing, my local git mirror is broken up with
directories that are called 'git.openembedded.org' and 'git.yoctoproject.org'
due to this, the system was matching and locking out the edit layer 
vcs_web_url submissions...  so I tried to make it better.. but I'm not
sure it's right.

Mark Hatle (3):
  layerindex/urls.py: Allow branches with a '.' in the name
  update.py: Allow bitbake to live in a subdirectory of a repository
  editlayer: Be more specific on the searches

 docker/settings.py                     |  3 +++
 layerindex/bulkchange.py               |  8 +++++++-
 layerindex/layerconfparse.py           |  8 +++++++-
 layerindex/tools/import_layer.py       |  8 ++++----
 layerindex/tools/import_wiki_layers.py | 13 ++++++++++---
 layerindex/update.py                   | 14 +++++++++++---
 layerindex/update_layer.py             |  6 +++++-
 layerindex/urls.py                     | 12 ++++++------
 settings.py                            |  3 +++
 templates/layerindex/editlayer.html    |  8 ++++----
 10 files changed, 60 insertions(+), 23 deletions(-)

-- 
2.17.1


