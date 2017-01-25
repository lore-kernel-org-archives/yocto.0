Return-Path: <freesilicon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E091FE00C22; Wed, 25 Jan 2017 02:39:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (freesilicon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7055AE00BDA
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 02:39:08 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id c85so41521684wmi.1
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 02:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=KqOW7mT/rXUlaJuIsoMNzDyfvDL/e+jp7N54IiXcB/M=;
	b=h7ib3arOzVUaFctj6zDakGFaxavTSDuoVo+saEgHvlrAN2H7sMYUNUBOesPKmeT/Mi
	Jh0IbB3bLxtMqdtVoHBK+WNQkEQG2SroJQ0jxOemqAcoDAKZxJQgdvoWPymzmimBnfz1
	J1wu30G9YBkseJ+RjUHhlWy19coTaKBSGd8Qs07wI3Vb0Oei33HbaqLN4CD29dP0prRL
	XQUfgJo/WifBvTg4Nq82PFWcV3gI4e7g+BlKRymxwc+81gVZuViMvv+9GzKahovUGSIC
	ofOPXVvkF3ZgkTLdszVpqC+SZJ7wtrfyo8TWcZUxmW79VomRL9CNiAESr+1VKhLG1lY6
	XF2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=KqOW7mT/rXUlaJuIsoMNzDyfvDL/e+jp7N54IiXcB/M=;
	b=CSgNQDTJ9wApFW6F6AheYLuevuZVIlkXJnaPnecyOiKTEHe4SC1V2m4CqTlGkiOdCj
	ZxQQrvti1j8GjAEuHpIwPPMDxR6ZenfBye7OETICkVK5gWLoJuDUcslkczRuAb/+8CwB
	ghm22WYMU44LxxzxNucK0LbK1OLjXusfkcsSETOrxoIUs0ISnOa2H5TEm5U/sf7n4IV8
	1PBDKKyoJlr5Ys1xEOECLMGPNlrI3bUD6PeDoRz2nHDnCYJ5dB0O70bLRqSwDX4WdjMz
	noeOB0VNRmaN/HaUoxDHTdiDPPRUD7MOb98c3AyA48JCdaVKOyT1MOXygV6dVdOfVvAQ
	qkAg==
X-Gm-Message-State: AIkVDXJIR50mGmzGzcv7eP9Cg8t6ka6uf1aQcfVK7q5D6ZJwnlKvXv4fGMGafXVs7W7wjw==
X-Received: by 10.28.43.129 with SMTP id r123mr20580116wmr.120.1485340748071; 
	Wed, 25 Jan 2017 02:39:08 -0800 (PST)
Received: from localhost.localdomain ([185.47.80.46])
	by smtp.gmail.com with ESMTPSA id
	h75sm24340116wrh.37.2017.01.25.02.39.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 25 Jan 2017 02:39:07 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Jan 2017 11:37:59 +0100
Message-Id: <20170125103759.15880-2-freesilicon@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170125103759.15880-1-freesilicon@gmail.com>
References: <20170125103759.15880-1-freesilicon@gmail.com>
Subject: [yocto-kernel-tools][PATCH 1/1] scc: Move merge command
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
X-List-Received-Date: Wed, 25 Jan 2017 10:39:10 -0000

Create a new command to merge a feature branch inside the current branch
when processing meta-series.

Signed-off-by: David Vincent <freesilicon@gmail.com>
---
 tools/kgit-meta          | 14 ++++++++++++++
 tools/scc                | 13 -------------
 tools/scc-cmds/merge.cmd | 10 ++++++++++
 3 files changed, 24 insertions(+), 13 deletions(-)
 create mode 100644 tools/scc-cmds/merge.cmd

diff --git a/tools/kgit-meta b/tools/kgit-meta
index 1c19ef5..aa5e210 100755
--- a/tools/kgit-meta
+++ b/tools/kgit-meta
@@ -254,6 +254,20 @@ for fline in `cat ${meta_series}`; do
                 fi
             fi
             ;;
+        merge:*)
+            b=$(echo ${fline} | cut -d: -f2 | sed 's%^\ %%')
+            check_branch ${b}
+            if [ $? -ne 0 ]; then
+                echo "ERROR. branch ${b} does not exist, can't merge"
+                exit 1
+            else
+                echo "[INFO]: branch merge: ${b}"
+                eval git merge -q --no-ff -m \"Merge branch ${b}\" ${b}
+                if [ $? -ne 0 ]; then
+                exit 1
+                fi
+            fi
+            ;;
         *)
             ;;
     esac
diff --git a/tools/scc b/tools/scc
index 3d17496..cee9e0d 100755
--- a/tools/scc
+++ b/tools/scc
@@ -286,19 +286,6 @@ set_kernel_version()
     KERNEL_VERSION=$1
 }
 
-# Used in feature scripts
-#  - convenience wrapper for "git merge" 
-#  - arguments are git merge <args> and are passed directly to git
-merge()
-{
-    args="$@"
-
-    # call the git wrapper function. Currently with no modification or
-    # checking on the args, but the option of checking in the future is
-    # trivial once users have converted.
-    git merge $args
-}
-
 # used in feature scripts
 #  - encodes a generic git command
 git()
diff --git a/tools/scc-cmds/merge.cmd b/tools/scc-cmds/merge.cmd
new file mode 100644
index 0000000..02be6ca
--- /dev/null
+++ b/tools/scc-cmds/merge.cmd
@@ -0,0 +1,10 @@
+# used in feature scripts
+#    arg1: the branch name
+merge()
+{
+    local text
+    local mbranch_name=$1
+
+    text="merge: ${mbranch_name}"
+    eval echo "\$text" $outfile_append
+}
-- 
2.11.0


