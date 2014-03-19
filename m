Return-Path: <firemagelynn@gmail.com>
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C22A0E009FC
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 20:12:00 -0700 (PDT)
Received: by mail-pb0-f46.google.com with SMTP id rq2so8175697pbb.5
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 20:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=41MknlgUE3j+Aun09tnXS1HVMs01/swlCAqaYR55ia8=;
	b=k97dgpgSKjrn3KnmOcZS8kvoTw9zABQYaeYdw31f66IL+y1cSAiZ1yLxXPClAXRyF1
	f7LOGeA/qK8ONO0NIHmBBXvXgvLBXLvXuKP8PdU7jcc6K8zaTMxIlHcV261+zjv5Bml+
	pClcdnvnIiMJVsqer82sINmDSkqVXbFL67c7jO0AIFltbwCjdli6/Voe0JNM/di24tFX
	gJjYx0QNd9oarrJoDwoQJNWjtMs22wIyMXfGFfGjLYKsuFQB+rDaMawLFJNZEG8DlXiv
	+k1MyJSsK2/Bb6f7cTyAMVUnJDa0EaSPC0qqRn6EvluS4inIi942T92Q169cueQFFqNG
	6TRw==
X-Received: by 10.68.4.232 with SMTP id n8mr37053249pbn.114.1395198720100;
	Tue, 18 Mar 2014 20:12:00 -0700 (PDT)
Received: from lynn-1015E.gateway.sonic.net (50-0-18-180.dsl.static.sonic.net.
	[50.0.18.180]) by mx.google.com with ESMTPSA id
	lh13sm96450235pab.4.2014.03.18.20.11.52 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Mar 2014 20:11:53 -0700 (PDT)
From: Lynn Cyrin <firemagelynn@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Mar 2014 20:10:33 -0700
Message-Id: <1395198633-6308-4-git-send-email-firemagelynn@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
References: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
Subject: [AUTOBUILDER 4/4] nightly-ipk.conf: created conf file
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
X-List-Received-Date: Wed, 19 Mar 2014 03:12:00 -0000

Created configuration file for a ipk package build image

Signed-off-by: Lynn Cyrin <firemagelynn@gmail.com>
---
 buildset-config.master/nightly-ipk.conf |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 buildset-config.master/nightly-ipk.conf

diff --git a/buildset-config.master/nightly-ipk.conf b/buildset-config.master/nightly-ipk.conf
new file mode 100644
index 0000000..bf7c613
--- /dev/null
+++ b/buildset-config.master/nightly-ipk.conf
@@ -0,0 +1,19 @@
+[nightly-ipk]
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
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True, 'packages': 'ipk'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}}]
-- 
1.7.9.5


