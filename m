Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91D69E00C38; Sat, 26 Mar 2016 09:59:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D25AE00C2E
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:49 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id y89so80404333qge.2
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ryzfFhMUoq1HkzJdW73Ly1CMRj8qqRvAbPn8DmTyrmQ=;
	b=fzNRuH6tRzsBQdItcpwD4SRk1xsjms+nm+qMeVPCdi/5wfgo9TqIUKDB09FhEcxT4q
	n8v48q5NC6xzOyYQxNjCN5vOTWuaBpKQHw01hOHcETpgX07FqQ+b59KgRWvX/f9va8tO
	ToMhocaeVZrF43j0nyvPRtXGbSV2zUsIItvWoApTzvn6Y1KacJOyeQohYeWcxckYgE6Z
	l3mmjsv37NxtfkV3e+ipq95ZX0LQRW6wr7Lvj9UmCxa+YFDPwPOZCr9hu0cr+s947+n7
	jFSBB5nfVmWq66G86Bwcntgt9RP4PndFSL0SHh2kRMlFgHK7QVoqVTL+YTlT62+hjycn
	Mquw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ryzfFhMUoq1HkzJdW73Ly1CMRj8qqRvAbPn8DmTyrmQ=;
	b=mKU5oYmBgpzBZUX+xKT424vmBu0D/wh/gFeGVwz7zGfyhqZP0mVpwhrjBQ76o/3MQC
	6PnoOwyvvE1VRg5kO+S9W58Wzng8flaJw4uioXzJhmqPvzg1D9QDIxuhx4nKB+7WVy7/
	BQo1svj6M/GFPVwfIGgYH0BCXiryl7WQOdTG3l+4TX5CES5oCekbl+MvwT+ptCdlRbPu
	Dk9edn04q9JajQj6dgCcdtWjioSPWab0JUZ8eX03R2b1fEsgHdNPPgdwtk3Z0RhEApa2
	SOpvtg5M9VL9AKxZ2irGMpVBJECQIGnY9B+WK0UZl7AC2y9b9GFj0u9ViY9lYOYV6o4U
	XBsA==
X-Gm-Message-State: AD7BkJJiP2UmYOieaWA47nnj3oBbW+kJ0CrVRFhVH2toQZZXNtVkybbkwemHvRLasGoCsg==
X-Received: by 10.140.131.6 with SMTP id 6mr24990198qhd.67.1459011588634;
	Sat, 26 Mar 2016 09:59:48 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	o128sm7955368qhb.34.2016.03.26.09.59.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 26 Mar 2016 09:59:48 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 26 Mar 2016 16:59:37 +0000
Message-Id: <1459011577-14870-5-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
References: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 5/5] userland: Implement dispmanx_wrap_buffer
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
X-List-Received-Date: Sat, 26 Mar 2016 16:59:52 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0015-wl-dispmanx-buffer-wrapping.patch         | 80 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 2 files changed, 81 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0015-wl-dispmanx-buffer-wrapping.patch

diff --git a/recipes-graphics/userland/userland/0015-wl-dispmanx-buffer-wrapping.patch b/recipes-graphics/userland/userland/0015-wl-dispmanx-buffer-wrapping.patch
new file mode 100644
index 0000000..1a0faba
--- /dev/null
+++ b/recipes-graphics/userland/userland/0015-wl-dispmanx-buffer-wrapping.patch
@@ -0,0 +1,80 @@
+implement buffer wrapping interface for dispmanx
+
+Courtesy: Zan Dobersek
+
+diff --git a/interface/khronos/ext/egl_wayland.c b/interface/khronos/ext/egl_wayland.c
+index 5730743..9ef89cd 100644
+--- a/interface/khronos/ext/egl_wayland.c
++++ b/interface/khronos/ext/egl_wayland.c
+@@ -133,8 +133,50 @@ dispmanx_create_buffer(struct wl_client *client, struct wl_resource *resource,
+                                      buffer->handle);
+ }
+ 
++static void
++dispmanx_wrap_buffer(struct wl_client *client, struct wl_resource *resource,
++                     uint32_t id, uint32_t handle, int32_t width, int32_t height,
++                     uint32_t stride, uint32_t buffer_height, uint32_t format)
++{
++   struct wl_dispmanx_server_buffer *buffer;
++   VC_IMAGE_TYPE_T vc_format = get_vc_format(format);
++   uint32_t dummy;
++
++   if(vc_format == VC_IMAGE_MIN) {
++      wl_resource_post_error(resource,
++                             WL_DISPMANX_ERROR_INVALID_FORMAT,
++                             "invalid format");
++      return;
++   }
++
++   buffer = calloc(1, sizeof *buffer);
++   if (buffer == NULL) {
++      wl_resource_post_no_memory(resource);
++      return;
++   }
++
++   buffer->handle = handle;
++   buffer->width = width;
++   buffer->height = height;
++   buffer->format = format;
++
++   buffer->resource = wl_resource_create(resource->client, &wl_buffer_interface,
++                                         1, id);
++   if (!buffer->resource) {
++      wl_resource_post_no_memory(resource);
++      vc_dispmanx_resource_delete(buffer->handle);
++      free(buffer);
++      return;
++   }
++
++   wl_resource_set_implementation(buffer->resource,
++				       (void (**)(void)) &dispmanx_buffer_interface,
++				       buffer, destroy_buffer);
++}
++
+ static const struct wl_dispmanx_interface dispmanx_interface = {
+    dispmanx_create_buffer,
++   dispmanx_wrap_buffer,
+ };
+ 
+ static void
+diff --git a/interface/wayland/dispmanx.xml b/interface/wayland/dispmanx.xml
+index c18626d..11ed1ef 100644
+--- a/interface/wayland/dispmanx.xml
++++ b/interface/wayland/dispmanx.xml
+@@ -118,6 +118,16 @@
+       <arg name="buffer" type="object" interface="wl_buffer"/>
+       <arg name="handle" type="uint"/>
+     </event>
++
++    <request name="wrap_buffer">
++      <arg name="id" type="new_id" interface="wl_buffer"/>
++      <arg name="handle" type="uint"/>
++      <arg name="width" type="int"/>
++      <arg name="height" type="int"/>
++      <arg name="stride" type="uint"/>
++      <arg name="buffer_height" type="uint"/>
++      <arg name="format" type="uint"/>
++    </request>
+   </interface>
+ 
+ </protocol>
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 0189a16..ca9123e 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -34,6 +34,7 @@ SRC_URI = "\
     file://0012-Fix-enum-conversion-warnings.patch \
     file://0013-Fix-for-framerate-with-nested-composition.patch \
     file://0014-Fix-errors-due-to-ignored-return-code.patch \
+    file://0015-wl-dispmanx-buffer-wrapping.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
1.9.1


