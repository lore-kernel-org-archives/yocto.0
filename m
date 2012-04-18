Return-Path: <autifk@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 391E1E01416
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 10:21:09 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so5795079qcs.35
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 10:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=Ch3L77Ya5+L0pZm6SMYYgLEqrTJxRN/kfp1xRPMOmWI=;
	b=BbRKr6Zih7okdt7MUwrGfcx1ji1F0Fcyo30TQ2P/gJxLcA5gzLE3qLWdEie2lV9ACv
	Yjyx6jki9QO+b6eyNNABLboJXctjqQfLdxzX5z1gUVgHb/XBFT6kntrIpwVaQtn3Q5FI
	A8dR/98lO/y4622e40Pysk4mKWUxs6ZODpVfWe5WjwzOxY9YJWUfFotCTViFWmvRvDA3
	hG7z5EHVdI45rFWshpISOd24CPNLAMXjUTEwAZsgff+5jt+z7eBrDCV4VO/IEaSoKZdI
	bWDmnecP7RGggMnCVGcc7lRizLKGIYVazqqlboYLAtdw10ni7amvVHsA7hCvapa3naB4
	dccA==
Received: by 10.229.47.206 with SMTP id o14mr1278115qcf.16.1334769668592;
	Wed, 18 Apr 2012 10:21:08 -0700 (PDT)
Received: from localhost.localdomain
	(static-72-93-90-226.bstnma.fios.verizon.net. [72.93.90.226])
	by mx.google.com with ESMTPS id gw8sm47133587qab.7.2012.04.18.10.21.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 Apr 2012 10:21:06 -0700 (PDT)
From: Autif Khan <autifk@gmail.com>
To: eric@eukrea.com,
	denis@eukrea.com,
	yocto@yoctoproject.org
Date: Wed, 18 Apr 2012 13:20:53 -0400
Message-Id: <1334769653-28662-1-git-send-email-autifk@gmail.com>
X-Mailer: git-send-email 1.7.5.4
X-Mailman-Approved-At: Wed, 18 Apr 2012 11:17:13 -0700
Cc: Autif Khan <autifk@gmail.com>
Subject: [PATCH 1/1] Fixed the URL for git repo for meta-openembedded
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
X-List-Received-Date: Wed, 18 Apr 2012 17:21:09 -0000


Signed-off-by: Autif Khan <autifk@gmail.com>
---
 README |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/README b/README
index 5fafd9d..9f441f5 100644
--- a/README
+++ b/README
@@ -10,7 +10,7 @@ URI: git://git.openembedded.org/openembedded-core
 branch: master
 revision: HEAD
 
-URI: git://git.openembedded.net/meta-openembedded
+URI: git://git.openembedded.org/meta-openembedded
 branch: master
 revision: HEAD
 
-- 
1.7.5.4


