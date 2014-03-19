Return-Path: <firemagelynn@gmail.com>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39EEDE009A7
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 20:11:51 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id bj1so8272153pad.30
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 20:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=sKHqxvIVguLxwJN/zPZwa4Q+kGpALaPidc6sOViNJ9k=;
	b=iDVIlM/SEur55SvbfsBGvb06XD5Zs8MklvbBTG2aqvY9BWPGLFHkFN1rlH1yXfsdTX
	aNMFvQenfrb04RoT0aPFAIz1UFJmsmC437MwsgW1ZAbEol8601LTpftWo/mWnKRRdN76
	/XG2ub18qetOchlDIXs8wanE+Bi1FtXI0tm1PrMyzo+j3JTKI2gRN0m+k2Ro7R3WgKmG
	gN+cX++tkyGNHTca1rxusX68Mcv2gPRzV+Fv+SCgZZ2w2zw//Y7/6XpDhZBpBqX3aa5Q
	bEAAe7jJvAZpL47qmCyZrViCeuVqd3DQh0KEMiZe7hVa9b2a+hJzZTXvr7KnlOCuiUaQ
	rj+g==
X-Received: by 10.67.2.106 with SMTP id bn10mr36846418pad.38.1395198711678;
	Tue, 18 Mar 2014 20:11:51 -0700 (PDT)
Received: from lynn-1015E.gateway.sonic.net (50-0-18-180.dsl.static.sonic.net.
	[50.0.18.180]) by mx.google.com with ESMTPSA id
	lh13sm96450235pab.4.2014.03.18.20.11.49 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Mar 2014 20:11:51 -0700 (PDT)
From: Lynn Cyrin <firemagelynn@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Mar 2014 20:10:31 -0700
Message-Id: <1395198633-6308-2-git-send-email-firemagelynn@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
References: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
Subject: [AUTOBUILDER 2/4] nightly-rpm.conf: created conf file
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
X-List-Received-Date: Wed, 19 Mar 2014 03:11:54 -0000

Created configuration file for a rpm package build image

Signed-off-by: Lynn Cyrin <firemagelynn@gmail.com>
---
 buildset-config.master/nightly-rpm.conf |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 buildset-config.master/nightly-rpm.conf

diff --git a/buildset-config.master/nightly-rpm.conf b/buildset-config.master/nightly-rpm.conf
new file mode 100644
index 0000000..f1f63ba
--- /dev/null
+++ b/buildset-config.master/nightly-rpm.conf
@@ -0,0 +1,19 @@
+[nightly-rpm]
+builders: 'builder1'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}},
+        {'meta-qt3':
+            {'repourl':'git://git.yoctoproject.org/meta-qt3',
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True, 'packages': 'rpm'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}}]
-- 
1.7.9.5


