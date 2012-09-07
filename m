Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BD02E01447
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 16:46:56 -0700 (PDT)
Received: from mail-qc0-f176.google.com ([209.85.216.176])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 07 Sep 2012 16:46:56 -0700
Received: by qcsc21 with SMTP id c21so116420qcs.35
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 16:46:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=C479hlVmmfNb7qtSycob/wQkSFcD2113LAA5IFskMbw=;
	b=JBnsw4IiwWJPPPYVrWfuvPF9G/thX+WE3uIN7ByP0dPDMVtKLmu95nCcXBqo9BYk2i
	Y4LIe8ALfddB0iq9/iKEnoou+jAphIbo2FdvI7MH6GuIVlY70WFUgC5pDGxwzU5fv64X
	oGlH32NA4zTcwrCHR0upcgRg0m/7O2uaD7O83jrhUc5BD0Bo5ceJc3y2yhYT0+JHn7B4
	ZonXDrTp4YmaIp+gAvneR6clZOe3pLCZZEy9nVcf6f24x/S4xa37toFO2ROLploIMMnN
	BkfV+AVG/F1AnwGAvdACzN5NuYu49klmPrN5LBKPQAzShj8aAffwzMqX4OoEWeBleYY2
	70UQ==
MIME-Version: 1.0
Received: by 10.229.137.6 with SMTP id u6mr2361083qct.24.1347061615241; Fri,
	07 Sep 2012 16:46:55 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Fri, 7 Sep 2012 16:46:55 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46AEC1D9@ORSMSX101.amr.corp.intel.com>
References: <CAPhnLPAZ=TsALQ=yqKe129Aw38gFByQpkP=+w1Uq2t_mh2jBBA@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46AEC1D9@ORSMSX101.amr.corp.intel.com>
Date: Fri, 7 Sep 2012 16:46:55 -0700
Message-ID: <CAPhnLPBKFeLFRsQJ7jctjsQi4d-H2HMdzGfFo5zqXznRQJWq6g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
X-Gm-Message-State: ALoCoQk6YF95C/tzP39E7c9fFYq5m+f4cwJlgi4I3FhIEV57wmY4N/GB5dq9lK8PTb1vRKuNM5Kp
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][eclipse-poky][Rev1] setup.py: Use Yocto mirror of eclipse juno repo
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
X-List-Received-Date: Fri, 07 Sep 2012 23:46:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

The main eclipse download site has been hard to connect to
for many users. This sets up the main setup script to use a
mirror of the eclipse sdk tarballs and a mirror of the update
site.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 scripts/setup.sh |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 5a928f4..17b1af4 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -66,7 +66,9 @@ if [ ! -f
eclipse/plugins/org.eclipse.swt_3.100.0.v4233d.jar ]; then
   fi
   # Eclipse SDK: Need the SDK so we can link into docs
   echo "Getting Eclipse SDK..."
-  wget "http://download.eclipse.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
+  # wget "http://download.eclipse.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
+  # The eclipse site has moments where it is overloaded. Maintaining
our own mirror solves this.
+  wget "http://downloads.yoctoproject.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
   tar xfz eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz || err_exit $?
"extracting Eclipse SDK failed"
   rm eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz
   cd "${curdir2}"
@@ -178,7 +180,11 @@ update_feature_remote()
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

