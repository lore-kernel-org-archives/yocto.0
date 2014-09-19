Return-Path: <roxana.ciobanu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3758CE006EF; Fri, 19 Sep 2014 02:41:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB5D4E006EF
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 02:41:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 19 Sep 2014 02:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,554,1406617200"; d="scan'208";a="593747333"
Received: from roxana-optiplex-9010.rb.intel.com ([10.237.105.61])
	by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2014 02:41:01 -0700
From: Roxana Ciobanu <roxana.ciobanu@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Sep 2014 12:41:04 +0300
Message-Id: <cover.1411118634.git.roxana.ciobanu@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH 0/3] [error-report-web]
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
X-List-Received-Date: Fri, 19 Sep 2014 09:41:35 -0000

The patches aren't sent because the fontAwesome files have lines longer than 998 characters.
The problem is described in the git-send-email doc: Warn of patches that contain lines
longer than 998 characters; this is due to SMTP limits as described
by http://www.ietf.org/rfc/rfc2821.txt. 

The following changes since commit 661cc25d79ce5a443b3ef842ea97b3e913cd2818:

  error-report-web: Sorting error tables (2014-09-08 17:02:24 +0300)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib roxana/YB6542
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=roxana/YB6542

Roxana Ciobanu (3):
  error-report-web: Enhancements to the error pager
  error-report-web: add FontAwesome andd css customization
  error-report-web: add filtering capabilities

 Post/getInfo.py                            |  40 +++-
 Post/static/css/custom.css                 |  31 ++++
 Post/static/css/font-awesome.min.css       |  33 ++++
 Post/static/fonts/FontAwesome.otf          | Bin 0 -> 48748 bytes
 Post/static/fonts/fontawesome-webfont.eot  | Bin 0 -> 25395 bytes
 Post/static/fonts/fontawesome-webfont.svg  | 284 +++++++++++++++++++++++++++++
 Post/static/fonts/fontawesome-webfont.ttf  | Bin 0 -> 55096 bytes
 Post/static/fonts/fontawesome-webfont.woff | Bin 0 -> 29380 bytes
 Post/templatetags/projecttags.py           |  29 +++
 Post/views.py                              |  32 +++-
 templates/base.html                        |   1 +
 templates/error-details.html               |  22 ++-
 templates/error-page.html                  |   2 +-
 templates/latest-errors.html               | 182 +++++++++++++-----
 templates/search-details.html              | 203 +++++++++++++++------
 15 files changed, 750 insertions(+), 109 deletions(-)
 create mode 100644 Post/static/css/font-awesome.min.css
 create mode 100644 Post/static/fonts/FontAwesome.otf
 create mode 100644 Post/static/fonts/fontawesome-webfont.eot
 create mode 100644 Post/static/fonts/fontawesome-webfont.svg
 create mode 100644 Post/static/fonts/fontawesome-webfont.ttf
 create mode 100644 Post/static/fonts/fontawesome-webfont.woff

-- 
1.9.1


