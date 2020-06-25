Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web12.2120.1593125876668284328
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 15:57:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: amber.n.elliot@intel.com)
IronPort-SDR: mYDOELRXCJRN4wPrBUDnF/eCySB+ajQeGX9zm8t1cIYZmxYMtgEzZtPOZD75RRuEJz6fupL1l5
 RjOmpKiwA5Ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144197888"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="144197888"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:57 -0700
IronPort-SDR: RVw6e3NKd/FSwZSdfdpmt4sznehAm7LaVh6VnLGN77ep9fvLEe4DoRSPrtLKqljvw907dcpU5t
 LK1DB7a4MCCg==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="299296014"
Received: from rbommagx-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.209.186.34])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:56 -0700
From: "Amber Elliot" <amber.n.elliot@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <ticotimo@gmail.com>
Subject: [layerindexweb][PATCH 6/7] Dockerfile: debian 10 "buster" and drop python2
Date: Thu, 25 Jun 2020 15:57:38 -0700
Message-Id: <20200625225739.32402-7-amber.n.elliot@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625225739.32402-1-amber.n.elliot@intel.com>
References: <20200625225739.32402-1-amber.n.elliot@intel.com>

From: Tim Orling <ticotimo@gmail.com>

Debian 10 "buster" actually has Django 2.2 available
python2 is now EOL, so drop all usage

Signed-off-by: Tim Orling <ticotimo@gmail.com>
---
 Dockerfile | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/Dockerfile b/Dockerfile
index 0de9bdb..8c4c847 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -1,6 +1,6 @@
 # See README for how to use this.
 
-FROM debian:stretch
+FROM debian:buster
 LABEL maintainer="Michael Halstead <mhalstead@linuxfoundation.org>"
 
 ENV PYTHONUNBUFFERED=1 \
@@ -21,10 +21,9 @@ RUN apt-get update \
 	g++ \
 	gcc \
 	make \
-	python-pip \
-	python-mysqldb \
-	python-dev \
-	python-imaging \
+	python3-pip \
+	python3-mysqldb \
+	python3-dev \
 	python3-pip \
 	python3-mysqldb \
 	python3-dev \
@@ -44,11 +43,9 @@ RUN apt-get update \
 	&& locale-gen en_US.UTF-8 \
 	&& update-locale \
     && pip3 install gunicorn \
-    && pip install setuptools \
     && pip3 install setuptools \
-    && pip install -r /requirements.txt \
     && pip3 install -r /requirements.txt \
-    && apt-get purge -y autoconf g++ make python-dev python3-dev libjpeg-dev libmariadbclient-dev \
+    && apt-get purge -y autoconf g++ make python3-dev libjpeg-dev libmariadbclient-dev \
 	&& apt-get autoremove -y \
 	&& rm -rf /var/lib/apt/lists/* \
 	&& apt-get clean
-- 
2.17.1

