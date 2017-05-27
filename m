Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FA7FE00B51; Sat, 27 May 2017 03:16:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C6B7E00AF0
	for <yocto@yoctoproject.org>; Sat, 27 May 2017 03:16:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v4RAG0wl018729
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 27 May 2017 03:16:00 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sat, 27 May 2017 03:16:00 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 27 May 2017 03:15:51 -0700
Message-ID: <20170527101553.15014-7-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20170527101553.15014-1-liezhi.yang@windriver.com>
References: <20170527101553.15014-1-liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [layerindex-web][6/8] recipeparse.py: restore cwd when the parsing is done
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
X-List-Received-Date: Sat, 27 May 2017 10:16:02 -0000
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


