Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3901E00866
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 08:53:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2014 08:52:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,613,1384329600"; d="scan'208";a="460815157"
Received: from unknown (HELO localhost) ([10.255.12.17])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2014 08:52:16 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  6 Jan 2014 11:55:29 -0600
Message-Id: <cover.1389030821.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 00/10] Make dd text in READMEs consistent
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
X-List-Received-Date: Mon, 06 Jan 2014 16:53:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates all the top-level meta-intel BSPs with consistent
text for the dd step.

The following changes since commit f707b6c67909ccd84cb2070bdc15777573833461:

  meta-fri2: Use the symlink to the actual image in README (2014-01-06 11:34:28 -0600)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/consistify-README-dd-text
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/consistify-README-dd-text

Tom Zanussi (10):
  meta-chiefriver: Use the symlink to the actual image in README
  meta-crownbay: Use the symlink to the actual image in README
  meta-crystalforest: Use the symlink to the actual image in README
  meta-emenlow: Use the symlink to the actual image in README
  meta-jasperforest: Use the symlink to the actual image in README
  meta-n450: Use the symlink to the actual image in README
  meta-nuc: Use the symlink to the actual image in README
  meta-romley: Use the symlink to the actual image in README
  meta-sugarbay: Use the symlink to the actual image in README
  meta-sys940x: Use the symlink to the actual image in README

 meta-chiefriver/README    |    2 +-
 meta-crownbay/README      |    2 +-
 meta-crystalforest/README |    4 ++--
 meta-emenlow/README       |    2 +-
 meta-jasperforest/README  |    2 +-
 meta-n450/README          |    2 +-
 meta-nuc/README           |    2 +-
 meta-romley/README        |    2 +-
 meta-sugarbay/README      |    2 +-
 meta-sys940x/README       |    2 +-
 10 files changed, 11 insertions(+), 11 deletions(-)

-- 
1.7.9.5


