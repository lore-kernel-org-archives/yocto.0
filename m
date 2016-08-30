Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB255E00DBF; Tue, 30 Aug 2016 14:05:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D8C0E00547
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 14:05:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Aug 2016 14:03:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,258,1470726000"; d="scan'208";a="1049368793"
Received: from ashuvini-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.135])
	by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2016 14:03:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 Aug 2016 09:03:29 +1200
Message-Id: <79d09a3f1b5b1d2fe1779a2b6b104eb30e5dbe80.1472590929.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1472590929.git.paul.eggleton@linux.intel.com>
References: <cover.1472590929.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1472590929.git.paul.eggleton@linux.intel.com>
References: <cover.1472590929.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 1/3] Use python3 commands in README
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
X-List-Received-Date: Tue, 30 Aug 2016 21:05:17 -0000

If you're in a virtualenv it doesn't make a difference, but outside of
one it will.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/README b/README
index fa5c3b2..8437089 100644
--- a/README
+++ b/README
@@ -47,15 +47,15 @@ Setup instructions:
 2. Run the following commands within the layerindex-web directory to
    initialise the database:
 
-   python manage.py syncdb
-   python manage.py migrate
+   python3 manage.py syncdb
+   python3 manage.py migrate
 
    You should answer "yes" when asked to create an admin account.
 
 3. You can test the web application locally by setting DEBUG = True in
    settings.py and running the following:
 
-   python manage.py runserver
+   python3 manage.py runserver
 
    Then visit http://127.0.0.1:8000/layerindex/ with your browser. As
    with all Django applications there is an admin interface available
-- 
2.5.5


