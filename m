Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D654DE0095F; Wed,  5 Apr 2017 12:29:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 713F1E00826
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 12:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491420591; x=1522956591;
	h=from:to:cc:subject:date:message-id:in-reply-to: references;
	bh=r7preJzy2+F/tgqaf8hKd6rb1FpQeuovcszn1GBdEnQ=;
	b=O4w7SWgE4X6ak07ZSiXE3NGLtPqrap4ILRkh0lUD36eXO2pKUZutKeka
	8m+2iCh1M7UJePSubnLyCSoyq6ztCg==;
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2017 12:29:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,280,1488873600"; d="scan'208";a="952294273"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.121])
	by orsmga003.jf.intel.com with ESMTP; 05 Apr 2017 12:29:50 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Apr 2017 14:29:24 -0500
Message-Id: <1491420564-12167-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1491342309-16373-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1491342309-16373-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v2] create-pull-request: add "-t in-reply-to" option
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
X-List-Received-Date: Wed, 05 Apr 2017 19:29:53 -0000

The create-pull-request script creates patches as replies to a cover
letter, in the form of an email thread. If further revisions are sent to
the mailing list without referencing to the first revision, these new
revisions are not identified at the mailing list as part of the original
thread, but as a new thread instead.

This change adds the "[-t in_reply_to]" option, where "in_reply_to" is
the original cover letter's Message-Id, so this reference is added
to the new cover letter to ensure the thread continuity.

[YOCTO #11294]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 scripts/create-pull-request | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/scripts/create-pull-request b/scripts/create-pull-request
index e82858b..8f0be99 100755
--- a/scripts/create-pull-request
+++ b/scripts/create-pull-request
@@ -34,7 +34,7 @@ RFC=0
 usage() {
 CMD=$(basename $0)
 cat <<EOM
-Usage: $CMD [-h] [-o output_dir] [-m msg_body_file] [-s subject] [-r relative_to] [-i commit_id] [-d relative_dir] -u remote [-b branch]
+Usage: $CMD [-h] [-o output_dir] [-m msg_body_file] [-s subject] [-r relative_to] [-i commit_id] [-d relative_dir] -u remote [-b branch] [-t in_reply_to]
   -b branch           Branch name in the specified remote (default: current branch)
   -l local branch     Local branch name (default: HEAD)
   -c                  Create an RFC (Request for Comment) patch series
@@ -49,6 +49,7 @@ Usage: $CMD [-h] [-o output_dir] [-m msg_body_file] [-s subject] [-r relative_to
   -s subject          The subject to be inserted into the summary email
   -u remote           The git remote where the branch is located, or set CPR_CONTRIB_REMOTE in env
   -d relative_dir     Generate patches relative to directory
+  -t in_reply_to      Make mails appear as replies to the given Message-Id, to continue patch/series threads
 
  Examples:
    $CMD -u contrib -b nitin/basic
@@ -57,12 +58,13 @@ Usage: $CMD [-h] [-o output_dir] [-m msg_body_file] [-s subject] [-r relative_to
    $CMD -u contrib -r master -i misc -b nitin/misc -o pull-misc
    $CMD -u contrib -p "RFC PATCH" -b nitin/experimental
    $CMD -u contrib -i misc -b nitin/misc -d ./bitbake
+   $CMD -u contrib -p "OE-core][PATCH v2" -t "<cover.11146.git.john.doe@example.com>"
 EOM
 }
 
 REMOTE="$CPR_CONTRIB_REMOTE"
 # Parse and validate arguments
-while getopts "b:acd:hi:m:o:p:r:s:u:l:" OPT; do
+while getopts "b:acd:hi:m:o:p:r:s:u:l:t:" OPT; do
 	case $OPT in
 	b)
 		BRANCH="$OPTARG"
@@ -108,7 +110,10 @@ while getopts "b:acd:hi:m:o:p:r:s:u:l:" OPT; do
 	a)
 		CPR_CONTRIB_AUTO_PUSH="1"
 		;;
-	esac
+        t)
+                IN_REPLY_TO="$OPTARG"
+                ;;
+        esac
 done
 
 if [ -z "$REMOTE" ]; then
@@ -205,7 +210,11 @@ if [ -n "$RELDIR" ]; then
 fi
 
 # Generate the patches and cover letter
-git format-patch $extraopts -M40 --subject-prefix="$PREFIX" -n -o $ODIR --thread=shallow --cover-letter $RELATIVE_TO..$COMMIT_ID > /dev/null
+if [ -n "$IN_REPLY_TO" ]; then
+    git format-patch $extraopts -M40 --subject-prefix="$PREFIX" -n -o $ODIR --thread=shallow --in-reply-to="$IN_REPLY_TO" --cover-letter $RELATIVE_TO..$COMMIT_ID > /dev/null
+else
+    git format-patch $extraopts -M40 --subject-prefix="$PREFIX" -n -o $ODIR --thread=shallow --cover-letter $RELATIVE_TO..$COMMIT_ID > /dev/null
+fi
 
 if [ -z "$(ls -A $ODIR 2> /dev/null)" ]; then
     echo "ERROR: $ODIR is empty, no cover letter and patches was generated!"
-- 
2.7.4


