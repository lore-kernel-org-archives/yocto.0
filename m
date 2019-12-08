Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3488.1575845015045415790
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Dec 2019 14:43:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: paul.eggleton@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FB4CE011A9; Sun,  8 Dec 2019 14:43:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5772E010A5
	for <yocto@yoctoproject.org>; Sun,  8 Dec 2019 14:43:32 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Dec 2019 14:43:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,293,1571727600"; 
   d="scan'208";a="362753613"
Received: from ntruong2-mobl.ccr.corp.intel.com (HELO shodan.fritz.box) ([10.255.170.244])
  by orsmga004.jf.intel.com with ESMTP; 08 Dec 2019 14:43:30 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Subject: [layerindex-web][PATCH 0/5] Misc bug fixes [cover letter only]
Date: Mon,  9 Dec 2019 11:43:17 +1300
Message-Id: <cover.1575844900.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Updates some bundled components (jQuery, Chart.js, Bootstrap) and fixes
a couple of bugs in the layer update script and background task display
for admins.


The following changes since commit f84223f4730cd171d25c980b43f07d89950f46=
bd:

  README.devel: mention python SMTP server (2019-11-26 10:44:37 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes15
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=3Dpaule/fixe=
s15

Paul Eggleton (5):
  Upgrade Bootstrap to 3.4.1
  Upgrade jquery to 3.4.1
  Upgrade Chart.js to 2.9.3
  update: ensure removed recipe dependencies are removed from db
  tasks: squash out CRs in task logs to avoid huge transfers

 layerindex/recipeparse.py                     |    12 +-
 layerindex/static/css/bootstrap-theme.css     |   200 +-
 layerindex/static/css/bootstrap-theme.css.map |     2 +-
 layerindex/static/css/bootstrap-theme.min.css |     6 +-
 .../static/css/bootstrap-theme.min.css.map    |     2 +-
 layerindex/static/css/bootstrap.css           |   985 +-
 layerindex/static/css/bootstrap.css.map       |     2 +-
 layerindex/static/css/bootstrap.min.css       |     6 +-
 layerindex/static/css/bootstrap.min.css.map   |     2 +-
 layerindex/static/js/Chart.js                 | 25319 +++++++++-------
 layerindex/static/js/Chart.min.js             |    13 +-
 layerindex/static/js/bootstrap.js             |   397 +-
 layerindex/static/js/bootstrap.min.js         |     7 +-
 .../js/{jquery-3.3.1.js =3D> jquery-3.4.1.js}   |   596 +-
 layerindex/update_layer.py                    |     2 +-
 layerindex/views.py                           |     7 +-
 templates/base.html                           |     2 +-
 17 files changed, 14925 insertions(+), 12635 deletions(-)
 rename layerindex/static/js/{jquery-3.3.1.js =3D> jquery-3.4.1.js} (94%)

--=20
2.20.1

