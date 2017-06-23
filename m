Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E665BE00BE8; Fri, 23 Jun 2017 00:45:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBE29E00BDA
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 00:45:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v5N7jIq6017205
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Jun 2017 00:45:18 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 23 Jun 2017 00:45:18 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>
Date: Fri, 23 Jun 2017 00:45:04 -0700
Message-ID: <6692441cf1be1249356304acd67c4d21062d4cad.1498203770.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1498203770.git.liezhi.yang@windriver.com>
References: <cover.1498203770.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: [layerindex-web][PATCH V5 05/10] recipeparse.py: restore cwd when the parsing is done
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
X-List-Received-Date: Fri, 23 Jun 2017 07:45:20 -0000
Content-Type: text/plain

Othewise it may cause troubles to the function who calls it.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/recipeparse.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index dd85bc3..f2a5235 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -70,10 +70,13 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
     if not os.path.exists(settings.TEMP_BASE_DIR):
         os.makedirs(settings.TEMP_BASE_DIR)
     tempdir = tempfile.mkdtemp(dir=settings.TEMP_BASE_DIR)
+    saved_cwd = os.getcwd()
     os.chdir(tempdir)
 
     tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking)
 
+    os.chdir(saved_cwd)
+
     # Ensure TMPDIR exists (or insane.bbclass will blow up trying to write to the QA log)
     oe_tmpdir = tinfoil.config_data.getVar('TMPDIR', True)
     if not os.path.exists(oe_tmpdir):
-- 
2.10.2


