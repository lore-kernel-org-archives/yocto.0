Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7675E00E18; Mon,  8 Jan 2018 20:21:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6219BE00CE8
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 20:21:18 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 20:21:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,334,1511856000"; 
   d="scan'208";a="9740741"
Received: from cooi24-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.11])
	by orsmga006.jf.intel.com with ESMTP; 08 Jan 2018 20:21:15 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Jan 2018 17:20:26 +1300
Message-Id: <d728f563111d8ff4403abc596bd468e94be7e417.1515471545.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <cover.1515471545.git.paul.eggleton@linux.intel.com>
References: <cover.1515471545.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/6] Fix error on publish if no non-root superuser/staff accounts exist
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
X-List-Received-Date: Tue, 09 Jan 2018 04:21:18 -0000

We need to set a default for this variable or you get an
UnboundLocalError if no non-root superuser/staff accounts are set up in
the database.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/layerindex/views.py b/layerindex/views.py
index ccb85b8..5b111a3 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -270,6 +270,7 @@ def publish(request, name):
     bodytext = get_template('layerindex/publishemail.txt')
     maintainer_names = [m.name for m in maintainers]
     # find appropriate help contact
+    help_contact = None
     for user in User.objects.all():
         if user.username != 'root' and (user.is_staff or user.is_superuser) and user.is_active:
             help_contact = user
-- 
2.9.5


