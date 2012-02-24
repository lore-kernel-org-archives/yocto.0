Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C53CE0059A
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 01:39:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2012 01:39:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="114413570"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.5])
	by orsmga002.jf.intel.com with ESMTP; 24 Feb 2012 01:38:29 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Feb 2012 09:38:25 +0000
Message-Id: <cover.1330076070.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/2] meta-intel: improve interactions with common layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Feb 2012 09:39:52 -0000

At the moment it is possible to enable one of the sub-layers of
meta-intel (e.g. meta-n450) without also enabling the meta-intel common
layer, which can lead to some nasty parsing errors. Here are two patches
to handle this situation in a nicer way.

(Note that BitBake currently does not actually terminate when
LAYERDEPENDS are not satisfied - I've got a patch queued to fix this.)

The following changes since commit 1ca68394faf33416f2aabee27323da7510ad6609:

  netbase: put sys940x specific interfaces file in MACHINE directory (2012-02-10 17:27:27 -0800)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib paule/layerdepends
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=paule/layerdepends

Paul Eggleton (2):
  meta-intel: replace "include" with "require"
  meta-intel: add LAYERDEPENDS for layers needing the meta-intel common
    layer

 meta-cedartrail/conf/layer.conf                 |    2 ++
 meta-cedartrail/conf/machine/cedartrail.conf    |    2 +-
 meta-crownbay/conf/layer.conf                   |    2 ++
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    4 ++--
 meta-crownbay/conf/machine/crownbay.conf        |    4 ++--
 meta-emenlow/conf/layer.conf                    |    2 ++
 meta-emenlow/conf/machine/emenlow.conf          |    4 ++--
 meta-fishriver/conf/layer.conf                  |    2 ++
 meta-fishriver/conf/machine/fishriver.conf      |    2 +-
 meta-fri2/conf/layer.conf                       |    2 ++
 meta-fri2/conf/machine/fri2-noemgd.conf         |    4 ++--
 meta-fri2/conf/machine/fri2.conf                |    4 ++--
 meta-jasperforest/conf/layer.conf               |    2 ++
 meta-n450/conf/layer.conf                       |    2 ++
 meta-n450/conf/machine/n450.conf                |    4 ++--
 meta-romley/conf/layer.conf                     |    2 ++
 meta-romley/conf/machine/romley.conf            |    2 +-
 meta-sugarbay/conf/layer.conf                   |    2 ++
 meta-sys940x/conf/layer.conf                    |    2 ++
 meta-sys940x/conf/machine/sys940x-noemgd.conf   |    4 ++--
 meta-sys940x/conf/machine/sys940x.conf          |    4 ++--
 21 files changed, 39 insertions(+), 19 deletions(-)

-- 
1.7.5.4


