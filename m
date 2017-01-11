Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74732E0049A; Wed, 11 Jan 2017 09:01:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A2A2E003C1
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 09:01:43 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 11 Jan 2017 09:01:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="921404688"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.5.139])
	by orsmga003.jf.intel.com with ESMTP; 11 Jan 2017 09:01:42 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jan 2017 11:01:19 -0600
Message-Id: <1484154079-8351-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20d716f4-ab8f-d0af-2372-55d16ef8f28c@linux.intel.com>
References: <1483743785-13872-1-git-send-email-jose.a.lamego@linux.intel.com><1483958944.2137.22.camel@intel.com>
Cc: Jose Lamego <jose.a.lamego@intel.com>
Subject: [patchwork][PATCH] patchwork/bin/parsemail: Improve new patch filtering
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
X-List-Received-Date: Wed, 11 Jan 2017 17:01:45 -0000

From: Jose Lamego <jose.a.lamego@intel.com>

Patchwork may incorrectly identify emails containing patch-like content or
that are replies/forwards from a previous message as patches, thus wrongly
creating a new series revision.
This change makes "[PATCH" prefix in subject mandatory for emails to be
considered as possible new patches, and makes any email with a subject
starting with any character other than a square bracket ("[") to be handled
as a possible comment to an existing patch.

[YOCTO #10764]
[YOCTO #10877]

Signed-off-by: Jose Lamego <jose.a.lamego@intel.com>
---

Notes:
    v2 renamed to reflect that the subject filtering now includes ruling-out emails with a Subject header not starting with the expected square bracket

 patchwork/bin/parsemail.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index 1c2c774..94c7669 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -399,7 +399,8 @@ def find_content(project, mail):
     refs = build_references_list(mail)
     is_root = refs == []
     is_cover_letter = is_root and x == 0
-    is_patch = patchbuf is not None
+    patch_prefix = re.match('(\s*\[[^]]*\]\s*)*\[\s*PATCH', mail.get('Subject'))
+    is_patch = patchbuf is not None and patch_prefix
 
     drop_patch = not is_attachment and \
         project.git_send_email_only and not is_git_send_email(mail)
-- 
1.9.1


