Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E069BE00C5D; Fri,  4 May 2018 04:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C69CE00C61
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 04:56:07 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 May 2018 04:56:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,362,1520924400"; d="scan'208";a="221609882"
Received: from sruthimx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.245])
	by orsmga005.jf.intel.com with ESMTP; 04 May 2018 04:56:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  4 May 2018 23:55:26 +1200
Message-Id: <97bb82225ad62029edf0e327029ccf36e6907d68.1525434801.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1525434801.git.paul.eggleton@linux.intel.com>
References: <cover.1525434801.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/3] requirements.txt: fix some conflicting requirements
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
X-List-Received-Date: Fri, 04 May 2018 11:56:11 -0000

pip (strangely only in the python 2 version when I test it here) reports
that some of the versions in requirements.txt were incompatible:

django-nvd3 0.9.7 has requirement python-nvd3==0.14.2, but you'll have
python-nvd3 0.15.0 which is incompatible.
django-registration 2.4.1 has requirement confusable-homoglyphs~=3.0,
but you'll have confusable-homoglyphs 2.0.2 which is incompatible.
python-nvd3 0.14.2 has requirement python-slugify==1.1.4, but you'll
have python-slugify 1.2.5 which is incompatible.

I'm not particularly keen on downgrading these but it seems like we
don't have much choice. Luckily looking over the changelogs it doesn't
seem like that will cause us any problems though.

Thanks to Yi Zhao <yi.zhao@windriver.com> for pointing this out.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 requirements.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 604c653e..5ca7cf6e 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -2,7 +2,7 @@ amqp==2.2.2
 anyjson==0.3.3
 billiard==3.5.0.3
 celery==4.1.0
-confusable-homoglyphs==2.0.2
+confusable-homoglyphs==3.0.0
 Django>1.11.0,<1.12
 django-cors-headers==1.1.0
 django-nvd3==0.9.7
@@ -19,8 +19,8 @@ kombu==4.1.0
 MarkupSafe==1.0
 mysqlclient==1.3.12
 Pillow==5.1.0
-python-nvd3==0.15.0
-python-slugify==1.2.5
+python-nvd3==0.14.2
+python-slugify==1.1.4
 pytz==2018.4
 six==1.11.0
 smmap==0.9.0
-- 
2.14.3


