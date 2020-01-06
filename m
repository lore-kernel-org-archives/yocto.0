Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5058.1578271462180054251
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 16:44:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: paul.eggleton@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD0FBE013BB; Sun,  5 Jan 2020 16:44:21 -0800 (PST)
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
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 983FBE013BA
	for <yocto@yoctoproject.org>; Sun,  5 Jan 2020 16:44:20 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Jan 2020 16:44:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,400,1571727600"; 
   d="scan'208";a="271058331"
Received: from zaihazle-mobl.gar.corp.intel.com (HELO shodan.fritz.box) ([10.255.167.138])
  by FMSMGA003.fm.intel.com with ESMTP; 05 Jan 2020 16:44:17 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Subject: [layerindex-web][PATCH] Fix parsing after AVAILABLE_LICENSES change
Date: Mon,  6 Jan 2020 13:44:10 +1300
Message-Id: <20200106004410.13687-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

In OE-Core commit 8c9ef587fe499c612a878a1ab42092eb79b334ef an
AVAILABLE_LICENSES variable was added in license.bbclass where its value
is assigned with immediate expansion ( :=3D ) with the result that it
looks in LICENSE_PATH for licenses; in turn LICENSE_PATH refers to
COREBASE. You might assume that COREBASE is always set, and normally it
is (since it's set OE-Core's layer.conf) - but in the layer index
context we do not parse layer.conf until a bit later, so it immediately
fails. The quick way to fix this is just to set our own (correct) value
for COREBASE and then AVAILABLE_LICENSES can be expanded successfully.

You might ask why we don't instead just set BBLAYERS such that we *do*
parse OE-Core's layer.conf - the answer is that that can have other
effects such as BBFILE_COLLECTIONS being set, and at least at the moment
the rest of the code isn't expecting that.

Fixes [YOCTO #13723].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/recipeparse.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 162cf62c..35867adb 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -74,6 +74,9 @@ def init_parser(settings, branch, bitbakepath, enable_t=
racking=3DFalse, nocheckout
     # (see findTopdir() in bitbake/lib/bb/cookerdata.py)
     os.mkdir(os.path.join(tempdir, 'conf'))
     with open(os.path.join(tempdir, 'conf', 'bblayers.conf'), 'w') as f:
+        if not classic:
+            # We need this to avoid problems with AVAILABLE_LICENSES
+            f.write('COREBASE =3D "%s"\n' % core_repodir)
         pass
=20
     if logger:
--=20
2.20.1

