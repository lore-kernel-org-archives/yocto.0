Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62956E006D8; Mon, 13 Jun 2016 16:31:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C19CBE00566
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 16:31:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 16:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,468,1459839600"; d="scan'208";a="1001247055"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2016 16:31:21 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2016 18:32:08 -0500
Message-Id: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: belen.barros.pena@linux.intel.com
Subject: [[PATCH][error-report-web] 0/8] Allow other type of errors and django 1.8
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
X-List-Received-Date: Mon, 13 Jun 2016 23:31:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The next patches enables support of django 1.8 LTS (two patches) and the other
are for enable to display other type of errors not only task related ones based
on design [1].

Also the changes could be reviewed at,

http://git.yoctoproject.org/cgit/cgit.cgi/error-report-web/log/?h=alimon/devel

[1] https://bugzilla.yoctoproject.org/attachment.cgi?id=3214

Aníbal Limón (8):
  requirements.txt: Update requeriments for use 1.8 LTS Django version.
  urls.py: RedirectView, fix warnings about change of default value in
    django 1.9
  Post/models.py: Increase the TASK field length
  Post/migrations/0003_auto_20150603_0913.py: Replace tabs for spaces
  Post/models.py: Build model add support for Error type.
  Post/{models,parser}.py: Add support for receive/store error_type.
  views/templates: Add support for display different type of errors
  Post/{models,views}.py: Add FAILURE field on BuildFailure model

 Post/migrations/0003_auto_20150603_0913.py   |  6 +++---
 Post/migrations/0004_auto_20160530_1126.py   | 20 ++++++++++++++++++++
 Post/migrations/0005_build_error_type.py     | 19 +++++++++++++++++++
 Post/migrations/0006_buildfailure_failure.py | 28 ++++++++++++++++++++++++++++
 Post/models.py                               | 20 +++++++++++++++++++-
 Post/parser.py                               | 17 ++++++++++++++---
 Post/views.py                                | 17 ++++++-----------
 project/urls.py                              |  4 ++--
 requirements.txt                             |  2 +-
 templates/error-details.html                 | 13 ++++++++++++-
 templates/latest-errors.html                 | 16 ++++++++--------
 11 files changed, 132 insertions(+), 30 deletions(-)
 create mode 100644 Post/migrations/0004_auto_20160530_1126.py
 create mode 100644 Post/migrations/0005_build_error_type.py
 create mode 100644 Post/migrations/0006_buildfailure_failure.py

-- 
2.1.4


