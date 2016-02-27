Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFD04E00E09; Sat, 27 Feb 2016 07:27:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AB35E00DC7
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:10 -0800 (PST)
Received: by mail-qg0-f41.google.com with SMTP id y9so87795490qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=rQspzWWhWIWYvS3ySOYKJfqgYWEhoL6IqzodE8WIVF0=;
	b=WvAMvQYKBOw0obzC8knQXb3XGD20j1QJE90vQE9k+YHUI92I3Hs2UxY7R2c4PgJdA5
	Cbn8NCuvswCD47tYjYePqGsQsZ2Gagjg2DW6Nw9U5aCDP32pPuXZx1wALIYuErjgb0TL
	JldmLF69m7pqG6TUakH29LvCxCZSnCK8GHDBk5epdESrOK6GbiKu/iYaAJXbyxPiTC//
	OK4SYNvHsKQyQgbJJPVEpfSWIqkAC6gglP9aFRoQnY4wTdGF5uxJP+Zzrnr5ePfJJRDo
	sUL4ijpnFCya2hcCjyOVu9MRTRRz5LBsk+JABTVZrd0ETTLoEY/dm+Hqj5k+5poN7D5A
	uemg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=rQspzWWhWIWYvS3ySOYKJfqgYWEhoL6IqzodE8WIVF0=;
	b=PxXpMpt5x3kB5gYMDm9RxZfHqCc1Q8e6SrYfHGtauz34kGeMiml0MmoyBzDOPotP8D
	5BIw94YmQJ3EYEFCVSC6y5lPZr6fatUO6zo3SEdouFgH+G2fGwHIHrN64ZxvA/+cXDb7
	EnFeJ+c754ciBbfwwP2jtknvvFbH6FxUX3f8c2CN96R0JhCFYlHI1GS2qnQiuJFWbeok
	qvxsFQOXBG0JuiV4C69tdRf1DYTMAljrNAepyLsMuu+R72vwq6oFhPA00AMLm4gpOoY7
	1jDjH44eS9KAeYmNGHWE2BzGcZVXrox9fHcuzIAXFTzgjLI10vc0rRBpgMj+gZmQZ9/G
	14fA==
X-Gm-Message-State: AD7BkJIcDz75HmJo+oZk90u0Bjn6vQbpYsGE1C69hGBoVrJkWS9RKHHC3zMfZFxNgiWsqg==
X-Received: by 10.140.140.196 with SMTP id 187mr9130405qhm.29.1456586830086;
	Sat, 27 Feb 2016 07:27:10 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:09 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:41 +0000
Message-Id: <04e7883e37c12daba1098f54a6e6ed241678ad04.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 02/23] userland: Fix build with clang compiler
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:21 -0000

ends up with some warning cleanups and extern inline semantics changes

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0005-user-vcsm-Fix-build-with-clang.patch      |  44 ++++++
 .../0006-Fix-enum-type-conversion-warnings.patch   | 166 +++++++++++++++++++++
 ...rm_types-Dont-use-extern-inline-with-clan.patch |  84 +++++++++++
 recipes-graphics/userland/userland_git.bb          |   6 +-
 4 files changed, 298 insertions(+), 2 deletions(-)
 create mode 100644 recipes-graphics/userland/userland/0005-user-vcsm-Fix-build-with-clang.patch
 create mode 100644 recipes-graphics/userland/userland/0006-Fix-enum-type-conversion-warnings.patch
 create mode 100644 recipes-graphics/userland/userland/0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch

diff --git a/recipes-graphics/userland/userland/0005-user-vcsm-Fix-build-with-clang.patch b/recipes-graphics/userland/userland/0005-user-vcsm-Fix-build-with-clang.patch
new file mode 100644
index 0000000..dd07798
--- /dev/null
+++ b/recipes-graphics/userland/userland/0005-user-vcsm-Fix-build-with-clang.patch
@@ -0,0 +1,44 @@
+From 5cfb274f036726a85bb45fd82652d55f50208954 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sun, 23 Aug 2015 13:17:33 -0700
+Subject: [PATCH 05/16] user-vcsm: Fix build with clang
+
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/host_applications/linux/libs/sm/user-vcsm.c:316:36: error: implicit conversion from enumeration
+      type 'enum vmcs_sm_cache_e' to different enumeration type 'VCSM_CACHE_TYPE_T' [-Werror,-Wenum-conversion]
+   return vcsm_malloc_cache( size, VMCS_SM_CACHE_NONE, name );
+          ~~~~~~~~~~~~~~~~~        ^~~~~~~~~~~~~~~~~~
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/host_applications/linux/libs/sm/user-vcsm.c:339:22: error: equality comparison with extraneous
+      parentheses [-Werror,-Wparentheses-equality]
+   if ( (vcsm_handle == VCSM_INVALID_HANDLE) )
+         ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ host_applications/linux/libs/sm/user-vcsm.c | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/host_applications/linux/libs/sm/user-vcsm.c b/host_applications/linux/libs/sm/user-vcsm.c
+index 4e78dc4..5298f25 100644
+--- a/host_applications/linux/libs/sm/user-vcsm.c
++++ b/host_applications/linux/libs/sm/user-vcsm.c
+@@ -313,7 +313,7 @@ unsigned int vcsm_malloc_cache( unsigned int size, VCSM_CACHE_TYPE_T cache, char
+ */
+ unsigned int vcsm_malloc( unsigned int size, char *name )
+ {
+-   return vcsm_malloc_cache( size, VMCS_SM_CACHE_NONE, name );
++   return vcsm_malloc_cache( size, (VCSM_CACHE_TYPE_T)VMCS_SM_CACHE_NONE, name );
+ }
+ 
+ /* Shares an allocated block of memory.
+@@ -336,7 +336,7 @@ unsigned int vcsm_malloc_share( unsigned int handle )
+    void *usr_ptr = NULL;
+    int rc;
+ 
+-   if ( (vcsm_handle == VCSM_INVALID_HANDLE) )
++   if ( vcsm_handle == VCSM_INVALID_HANDLE )
+    {
+       vcos_log_error( "[%s]: [%d]: NULL size or invalid device!",
+                       __func__,
+-- 
+2.7.0
+
diff --git a/recipes-graphics/userland/userland/0006-Fix-enum-type-conversion-warnings.patch b/recipes-graphics/userland/userland/0006-Fix-enum-type-conversion-warnings.patch
new file mode 100644
index 0000000..cabaf97
--- /dev/null
+++ b/recipes-graphics/userland/userland/0006-Fix-enum-type-conversion-warnings.patch
@@ -0,0 +1,166 @@
+From ecfa07e3b8019983f3c0f3317d27785666b35f04 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sun, 23 Aug 2015 10:43:37 -0700
+Subject: [PATCH 06/16] Fix enum type conversion warnings
+
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_video.c:59:30: error: implicit conversion from enumeration type 'OMX_DISPLAYTRANSFORMTYPE' (aka 'enum OMX_DISPLAYTRANSFORMTYPE') to different enumeration type 'MMAL_DISPLAYTRANSFORM_T' (aka 'enum MMAL_DISPLAYTRANSFORM_T') [-Werror,-Wenum-conversion]
+      mmal->transform = omx->transform;
+                      ~ ~~~~~^~~~~~~~~
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_video.c:63:25: error: implicit conversion from enumeration type 'OMX_DISPLAYMODETYPE' (aka 'enum OMX_DISPLAYMODETYPE') to different enumeration type 'MMAL_DISPLAYMODE_T' (aka 'enum MMAL_DISPLAYMODE_T') [-Werror,-Wenum-conversion]
+      mmal->mode = omx->mode;
+                 ~ ~~~~~^~~~
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_video.c:75:31: error: implicit conversion from enumeration type 'MMAL_DISPLAYTRANSFORM_T' (aka 'enum MMAL_DISPLAYTRANSFORM_T') to different enumeration type 'OMX_DISPLAYTRANSFORMTYPE' (aka 'enum OMX_DISPLAYTRANSFORMTYPE') [-Werror,-Wenum-conversion]
+      omx->transform  = mmal->transform;
+                      ~ ~~~~~~^~~~~~~~~
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_video.c:79:31: error: implicit conversion from enumeration type 'MMAL_DISPLAYMODE_T' (aka 'enum MMAL_DISPLAYMODE_T') to different enumeration type 'OMX_DISPLAYMODETYPE' (aka 'enum OMX_DISPLAYMODETYPE') [-Werror,-Wenum-conversion]
+      omx->mode       = mmal->mode;
+                      ~ ~~~~~~^~~~
+
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/vc/mmal_vc_client.c:102:13: error: implicit conversion from enumeration type
+      'VCOS_STATUS_T' to different enumeration type 'MMAL_STATUS_T' [-Werror,-Wenum-conversion]
+   status = vcos_semaphore_create(&waitpool->sem, VCOS_FUNCTION,
+          ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/vc/mmal_vc_client.c:110:16: error: implicit conversion from enumeration type
+      'VCOS_STATUS_T' to different enumeration type 'MMAL_STATUS_T' [-Werror,-Wenum-conversion]
+      status = vcos_semaphore_create(&waitpool->waiters[i].sem,
+             ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_core.c:284:17: error: implicit conversion from enumeration
+      type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
+         return mmalomx_get_port_settings(port, param);
+         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_core.c:478:17: error: implicit conversion from enumeration
+      type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
+         return mmalomx_set_port_settings(port, param);
+         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_parameters.c:173:14: error: implicit conversion from
+      enumeration type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
+      return xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
+      ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_parameters.c:557:17: error: implicit conversion from
+      enumeration type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
+         return mmal_port_format_commit(port->mmal);
+         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_parameters.c:564:17: error: implicit conversion from
+      enumeration type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
+         return mmal_port_format_commit(port->mmal);
+         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/mmal/openmaxil/mmalomx_core.c              | 4 ++--
+ interface/mmal/openmaxil/mmalomx_parameters.c        | 6 +++---
+ interface/mmal/openmaxil/mmalomx_util_params_video.c | 8 ++++----
+ interface/mmal/vc/mmal_vc_client.c                   | 4 ++--
+ 4 files changed, 11 insertions(+), 11 deletions(-)
+
+diff --git a/interface/mmal/openmaxil/mmalomx_core.c b/interface/mmal/openmaxil/mmalomx_core.c
+index da66b0b..3a72a2e 100644
+--- a/interface/mmal/openmaxil/mmalomx_core.c
++++ b/interface/mmal/openmaxil/mmalomx_core.c
+@@ -281,7 +281,7 @@ static OMX_ERRORTYPE mmalomx_ComponentGetParameter(
+       {
+          OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
+          PARAM_GET_PORT(port, component, param->nPortIndex);
+-         return mmalomx_get_port_settings(port, param);
++         return (OMX_ERRORTYPE)mmalomx_get_port_settings(port, param);
+       }
+       return OMX_ErrorNone;
+       break;
+@@ -475,7 +475,7 @@ static OMX_ERRORTYPE mmalomx_ComponentSetParameter(
+       {
+          OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
+          PARAM_GET_PORT(port, component, param->nPortIndex);
+-         return mmalomx_set_port_settings(port, param);
++         return (OMX_ERRORTYPE)mmalomx_set_port_settings(port, param);
+       }
+       return OMX_ErrorNone;
+       break;
+diff --git a/interface/mmal/openmaxil/mmalomx_parameters.c b/interface/mmal/openmaxil/mmalomx_parameters.c
+index a91b68c..f0bd17f 100644
+--- a/interface/mmal/openmaxil/mmalomx_parameters.c
++++ b/interface/mmal/openmaxil/mmalomx_parameters.c
+@@ -170,7 +170,7 @@ static OMX_ERRORTYPE mmalomx_parameter_get_xlat(MMALOMX_COMPONENT_T *component,
+ 
+    if (xlat->fn.custom)
+    {
+-      return xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
++      return (OMX_ERRORTYPE)xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
+          pParam, mmal_port);
+    }
+ 
+@@ -554,14 +554,14 @@ OMX_ERRORTYPE mmalomx_parameter_set(MMALOMX_COMPONENT_T *component,
+          port->mmal->format->es->video.par.num = param->nX;
+          port->mmal->format->es->video.par.den = param->nY;
+          mmal_rational_simplify(&port->mmal->format->es->video.par);
+-         return mmal_port_format_commit(port->mmal);
++         return (OMX_ERRORTYPE)mmal_port_format_commit(port->mmal);
+       }
+    case OMX_IndexParamColorSpace:
+       {
+          OMX_PARAM_COLORSPACETYPE *param = (OMX_PARAM_COLORSPACETYPE *)pParam;
+          PARAM_GET_PORT(port, component, param->nPortIndex);
+          port->mmal->format->es->video.color_space = mmalil_omx_color_space_to_mmal(param->eColorSpace);
+-         return mmal_port_format_commit(port->mmal);
++         return (OMX_ERRORTYPE)mmal_port_format_commit(port->mmal);
+       }
+    case OMX_IndexParamBrcmVideoCroppingDisable:
+       {
+diff --git a/interface/mmal/openmaxil/mmalomx_util_params_video.c b/interface/mmal/openmaxil/mmalomx_util_params_video.c
+index f088296..83e3724 100644
+--- a/interface/mmal/openmaxil/mmalomx_util_params_video.c
++++ b/interface/mmal/openmaxil/mmalomx_util_params_video.c
+@@ -56,11 +56,11 @@ static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_D
+       mmal->set = omx->set;
+       mmal->display_num = omx->num;
+       mmal->fullscreen = omx->fullscreen;
+-      mmal->transform = omx->transform;
++      mmal->transform = (MMAL_DISPLAYTRANSFORM_T)omx->transform;
+       rect_to_mmal(&mmal->dest_rect, &omx->dest_rect);
+       rect_to_mmal(&mmal->src_rect, &omx->src_rect);
+       mmal->noaspect = omx->noaspect;
+-      mmal->mode = omx->mode;
++      mmal->mode = (MMAL_DISPLAYMODE_T)omx->mode;
+       mmal->pixel_x = omx->pixel_x;
+       mmal->pixel_y = omx->pixel_y;
+       mmal->layer = omx->layer;
+@@ -72,11 +72,11 @@ static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_D
+       omx->set        = mmal->set;
+       omx->num        = mmal->display_num;
+       omx->fullscreen = mmal->fullscreen;
+-      omx->transform  = mmal->transform;
++      omx->transform  = (OMX_DISPLAYTRANSFORMTYPE)mmal->transform;
+       rect_to_omx(&omx->dest_rect, &mmal->dest_rect);
+       rect_to_omx(&omx->src_rect, &mmal->src_rect);
+       omx->noaspect   = mmal->noaspect;
+-      omx->mode       = mmal->mode;
++      omx->mode       = (OMX_DISPLAYMODETYPE)mmal->mode;
+       omx->pixel_x    = mmal->pixel_x;
+       omx->pixel_y    = mmal->pixel_y;
+       omx->layer      = mmal->layer;
+diff --git a/interface/mmal/vc/mmal_vc_client.c b/interface/mmal/vc/mmal_vc_client.c
+index b60544b..bd27fc5 100644
+--- a/interface/mmal/vc/mmal_vc_client.c
++++ b/interface/mmal/vc/mmal_vc_client.c
+@@ -99,7 +99,7 @@ static MMAL_STATUS_T create_waitpool(MMAL_WAITPOOL_T *waitpool)
+    MMAL_STATUS_T status;
+    int i;
+ 
+-   status = vcos_semaphore_create(&waitpool->sem, VCOS_FUNCTION,
++   status = (MMAL_STATUS_T)vcos_semaphore_create(&waitpool->sem, VCOS_FUNCTION,
+                                   MAX_WAITERS);
+    if (status != MMAL_SUCCESS)
+       return status;
+@@ -107,7 +107,7 @@ static MMAL_STATUS_T create_waitpool(MMAL_WAITPOOL_T *waitpool)
+    for (i=0; i<MAX_WAITERS; i++)
+    {
+       waitpool->waiters[i].inuse = 0;
+-      status = vcos_semaphore_create(&waitpool->waiters[i].sem,
++      status = (MMAL_STATUS_T)vcos_semaphore_create(&waitpool->waiters[i].sem,
+                                      "mmal waiter", 0);
+       if (status != MMAL_SUCCESS)
+          break;
+-- 
+2.7.0
+
diff --git a/recipes-graphics/userland/userland/0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch b/recipes-graphics/userland/userland/0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
new file mode 100644
index 0000000..53a2a26
--- /dev/null
+++ b/recipes-graphics/userland/userland/0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
@@ -0,0 +1,84 @@
+From e60f708bef880542fbe45df7dba982c886852dd4 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sun, 23 Aug 2015 13:41:33 -0700
+Subject: [PATCH 07/16] vcos_platform_types: Dont use extern inline with clang
+
+Its very gcc specific implementation here in this code, we cant use
+it with clang as such, so we will use static inline instead which is
+common across gcc and clang starting c99 std onwards
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/vcos/pthreads/vcos_platform_types.h | 4 ----
+ interface/vcos/vcos_timer.h                   | 5 -----
+ interface/vcos/vcos_types.h                   | 2 +-
+ 3 files changed, 1 insertion(+), 10 deletions(-)
+
+diff --git a/interface/vcos/pthreads/vcos_platform_types.h b/interface/vcos/pthreads/vcos_platform_types.h
+index 64fb381..6ebcaad 100644
+--- a/interface/vcos/pthreads/vcos_platform_types.h
++++ b/interface/vcos/pthreads/vcos_platform_types.h
+@@ -60,10 +60,6 @@ vcos_pthreads_logging_assert(const char *file, const char *func, unsigned int li
+ 
+ #define VCOS_ASSERT_MSG(...) ((VCOS_ASSERT_LOGGING && !VCOS_ASSERT_LOGGING_DISABLE) ? vcos_pthreads_logging_assert(__FILE__, __func__, __LINE__, __VA_ARGS__) : (void)0)
+ 
+-#define VCOS_INLINE_BODIES
+-#define VCOS_INLINE_DECL extern
+-#define VCOS_INLINE_IMPL static __inline__
+-
+ #ifdef __cplusplus
+ }
+ #endif
+diff --git a/interface/vcos/vcos_timer.h b/interface/vcos/vcos_timer.h
+index bdfa657..1de2d46 100644
+--- a/interface/vcos/vcos_timer.h
++++ b/interface/vcos/vcos_timer.h
+@@ -76,7 +76,6 @@ VCOSPRE_ VCOS_STATUS_T VCOSPOST_ vcos_timer_init(void);
+   * @param context   context passed to expiration routine
+   *
+   */
+-VCOS_INLINE_DECL
+ VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
+                                 const char *name,
+                                 void (*expiration_routine)(void *context),
+@@ -91,24 +90,20 @@ VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
+   * @param timer     timer handle
+   * @param delay     Delay to wait for, in ms
+   */
+-VCOS_INLINE_DECL
+ void vcos_timer_set(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
+ 
+ /** Stop an already running timer.
+   *
+   * @param timer     timer handle
+   */
+-VCOS_INLINE_DECL
+ void vcos_timer_cancel(VCOS_TIMER_T *timer);
+ 
+ /** Stop a timer and restart it.
+   * @param timer     timer handle
+   * @param delay     delay in ms
+   */
+-VCOS_INLINE_DECL
+ void vcos_timer_reset(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
+ 
+-VCOS_INLINE_DECL
+ void vcos_timer_delete(VCOS_TIMER_T *timer);
+ 
+ #ifdef __cplusplus
+diff --git a/interface/vcos/vcos_types.h b/interface/vcos/vcos_types.h
+index e64fd99..7d86742 100644
+--- a/interface/vcos/vcos_types.h
++++ b/interface/vcos/vcos_types.h
+@@ -120,7 +120,7 @@ typedef enum
+ 
+ #if defined(NDEBUG)
+ 
+-#ifdef __GNUC__
++#if defined(__GNUC__) && !defined(__clang__)
+ # define VCOS_INLINE_DECL extern
+ # define VCOS_INLINE_IMPL static __inline__
+ #else
+-- 
+2.7.0
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 4323228..bbba080 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -22,8 +22,10 @@ SRC_URI = "\
     file://0002-musl-inspired-fixed.patch \
     file://0003-set-VMCS_INSTALL_PREFIX-to-usr.patch \
     file://0004-cmake-generate-and-install-pkgconfig-files.patch \
-    "
-
+    file://0005-user-vcsm-Fix-build-with-clang.patch \
+    file://0006-Fix-enum-type-conversion-warnings.patch \
+    file://0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch \
+"
 S = "${WORKDIR}/git"
 
 inherit cmake pkgconfig
-- 
1.9.1


