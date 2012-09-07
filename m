Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E960DE01447
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 16:27:58 -0700 (PDT)
Received: from mail-qa0-f48.google.com ([209.85.216.48])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 07 Sep 2012 16:27:57 -0700
Received: by qady1 with SMTP id y1so32650qad.14
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 16:27:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=9JCyeWSRsjoESYPT255EBYdjTvYNhtXWNC9QW78J/PE=;
	b=eFdiFol6x/mmiuDWrZ1Y2FQ2yuESDfBseCtwz4e21BzYfF3u5poSghuHCsb2LbqdFr
	xARyiB+ptmz6dDXstMhQWtwImq8ptKNTIkbk1Gs3c9kh2ylY65KQ6ldZ4GnWYRrKc//D
	l8DiBzCFQ48sPU45/6GbhJ7AjAjGNyckbac+EP71NXr4H0yHaASqPVPDHrDAoBKngthO
	+lYYCaOkG1UmdJftCh1I9/5Zf1Ffky54WxLb8VNk6eG71RwWJ5JWefLnUutDZbmAlB0y
	6/aBaBKpdgIChe6eThjrsEf7e3symPMVUjCT/aoxxoM19N8/vh3p6LXeLPtJJWvMGftp
	UcVg==
MIME-Version: 1.0
Received: by 10.229.135.213 with SMTP id o21mr2209970qct.59.1347060476401;
	Fri, 07 Sep 2012 16:27:56 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Fri, 7 Sep 2012 16:27:56 -0700 (PDT)
Date: Fri, 7 Sep 2012 16:27:56 -0700
Message-ID: <CAPhnLPAZ=TsALQ=yqKe129Aw38gFByQpkP=+w1Uq2t_mh2jBBA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, Jessica Zhang <jessica.zhang@intel.com>
X-Gm-Message-State: ALoCoQlCtJeo/y12Dgv3xla+8S+kfM50TNH7KqEcMOKBkFu/TYAdr/lY8gBacvJ03W7/p2zZy8q0
Subject: [PATCH][eclipse-poky][Rev1] setup.py: Use Yocto mirror of eclipse juno repo
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Sep 2012 23:27:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

The main eclipse download site has been hard to connect to
for many users. This sets up the main setup script to use a
mirror of the eclipse sdk tarballs and a mirror of the update
site.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 scripts/setup.sh |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 5a928f4..9c57e50 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -66,7 +66,7 @@ if [ ! -f
eclipse/plugins/org.eclipse.swt_3.100.0.v4233d.jar ]; then
   fi
   # Eclipse SDK: Need the SDK so we can link into docs
   echo "Getting Eclipse SDK..."
-  wget "http://download.eclipse.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
+  wget "http://downloads.yoctoproject.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
   tar xfz eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz || err_exit $?
"extracting Eclipse SDK failed"
   rm eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz
   cd "${curdir2}"
@@ -178,7 +178,11 @@ update_feature_remote()
 }

 #Eclipse Update Site
-MAIN_UPDATE_SITE="http://download.eclipse.org/releases/juno"
+#MAIN_UPDATE_SITE="http://download.eclipse.org/releases/juno"
+# The main eclipse download site is unreliable at times. For now,
we're going to
+# maintain a mirror of just what we need.
+MAIN_UPDATE_SITE="http://downloads.yoctoproject.org/eclipse/juno/ftp.osuosl.org/pub/eclipse/releases/juno"
+
 UPDATE_SITE="${MAIN_UPDATE_SITE}"

 #CDT related
-- 
1.7.5.4

