Return-Path: <firemagelynn@gmail.com>
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A235E009DA
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 20:11:52 -0700 (PDT)
Received: by mail-pd0-f178.google.com with SMTP id x10so8000611pdj.23
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 20:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=xE+Bt4vBzUl1MMcffk80JHNGL6OGTjT18kyqqWV8v2I=;
	b=JHGNcvs3I4MG/Ab3noU83h5lhycPQcwSSlYLUr9YbW4dN23ABF3nnEim7IRXvGuj5p
	B1SiN1WnxMvroPQeiHHbGLuihs3Loc7bz5nST7j6H4MPekBES4HKzw3jpKwCq6dcHuRe
	bpuiabzqVCP54HHibkfw8g5qegzWFRuLBzEhbKUwkPcnDBg3xi99niJKGO2KywV7hU6f
	rVB+tqriJpRTD/EBm12+CpiBx3SOgqoSnsuGELU8B8tGq8vy4boMOkT361qj4Ah/C8H7
	I0i3+u5SxkOsoSnNoAsIePijmBA4Vbz51Jl/hfGlDlHSdygI+G/2XZvoZ8TaePoD6hAw
	e/Xg==
X-Received: by 10.68.139.2 with SMTP id qu2mr1018423pbb.164.1395198712794;
	Tue, 18 Mar 2014 20:11:52 -0700 (PDT)
Received: from lynn-1015E.gateway.sonic.net (50-0-18-180.dsl.static.sonic.net.
	[50.0.18.180]) by mx.google.com with ESMTPSA id
	lh13sm96450235pab.4.2014.03.18.20.11.51 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Mar 2014 20:11:52 -0700 (PDT)
From: Lynn Cyrin <firemagelynn@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Mar 2014 20:10:32 -0700
Message-Id: <1395198633-6308-3-git-send-email-firemagelynn@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
References: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
Subject: [AUTOBUILDER 3/4] nightly-deb.conf: created conf file
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
X-List-Received-Date: Wed, 19 Mar 2014 03:11:55 -0000

Created configuration file for a deb package build image

Signed-off-by: Lynn Cyrin <firemagelynn@gmail.com>
---
 buildset-config.master/nightly-deb.conf |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 buildset-config.master/nightly-deb.conf

diff --git a/buildset-config.master/nightly-deb.conf b/buildset-config.master/nightly-deb.conf
new file mode 100644
index 0000000..648401b
--- /dev/null
+++ b/buildset-config.master/nightly-deb.conf
@@ -0,0 +1,19 @@
+[nightly-deb]
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
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True, 'packages': 'deb'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}}]
-- 
1.7.9.5


