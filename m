Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B19B9E0147D
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 09:01:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 May 2013 09:01:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,635,1363158000"; d="scan'208";a="310214195"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 08 May 2013 09:01:40 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 62A046A4083;
	Wed,  8 May 2013 09:01:30 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Wed,  8 May 2013 19:01:45 +0300
Message-Id: <cover.1368028857.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH 0/4] Some builds (ipk, multilib) and one fix
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
X-List-Received-Date: Wed, 08 May 2013 16:01:40 -0000

The following changes since commit fd74be794035a2c73b206c3ca4dd4c45005037a5:

  CreateAutoConf.py (2013-05-07 09:00:49 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib stefans/yab2
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab2

Stefan Stanacar (4):
  buildsets: add some more builds
  nightly-multilib: remove Publish steps
  PublishLayerTarballs.py: fix command overwrite
  PublishLayerTarballs.py: Cleanup spacing

 buildset-config/nightly-multilib.conf                | 13 +++++++++----
 buildset-config/nightly-qa-extras.conf               |  3 ++-
 buildset-config/nightly-x32.conf                     |  4 ++--
 .../autobuilder/buildsteps/PublishLayerTarballs.py   | 20 ++++++++++----------
 4 files changed, 23 insertions(+), 17 deletions(-)

-- 
1.8.1.4


