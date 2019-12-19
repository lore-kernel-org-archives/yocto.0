Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1398.1576791012343312279
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 13:30:12 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: paul.eggleton@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1CCEE01235; Thu, 19 Dec 2019 13:30:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29B3DE011B6
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 13:30:10 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Dec 2019 13:30:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; 
   d="scan'208";a="298831771"
Received: from bteh-mobl.gar.corp.intel.com (HELO shodan.fritz.box) ([10.255.133.153])
  by orsmga001.jf.intel.com with ESMTP; 19 Dec 2019 13:30:07 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Subject: [layerindex-web][PATCH] requirements.txt: bump Django version to fix CVE-2019-19844
Date: Fri, 20 Dec 2019 10:29:57 +1300
Message-Id: <20191219212957.10830-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Fixes a vulnerability in the password reset process due to
insufficiently stringent validation of unicode email addresses.

https://www.djangoproject.com/weblog/2019/dec/18/security-releases/
https://nvd.nist.gov/vuln/detail/CVE-2019-19844

(The existing version specification would have selected the fixed
version of Django already for new installs, but bumping the minimum
ensures that it will be installed for upgrades with
./dockersetup.py -u as well.)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 07d8495e..4ba53971 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4=3D=3D4.8.1
 billiard=3D=3D3.6.1.0
 celery=3D=3D4.3.0
 confusable-homoglyphs=3D=3D3.2.0
-Django>=3D1.11.24,<1.12
+Django>=3D1.11.27,<1.12
 django-appconf=3D=3D1.0.3
 django-axes=3D=3D4.5.4
 django-bootstrap-pagination=3D=3D1.7.1
--=20
2.20.1

