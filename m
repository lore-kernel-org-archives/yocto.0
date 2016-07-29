Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92B63E00FD1; Thu, 28 Jul 2016 17:59:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA2D8E00D6F
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 17:59:11 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id h186so4480721pfg.2
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 17:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=A/MGjloeDyoTFhOs6i1GhLSbMTOi2l1ZwK3BM4B2H14=;
	b=XzwL6YMElXLojcG1IbVIDDe2pQAOJNOmxIMQA2Tzh8m+Awr7TrQn7qnoimSx3knfCs
	2HIA17hD+2+OiLxMgmU4gspz8tYPSwRt7SecUYI+6Q/tFN4kYu5XQfHPuMRN2CXZJpXr
	SBEItp3V76WwbV8KLvudwdJ6nXrDX4wtZNaEVEY3ndGxm45r6oznabh8FqDCCMxHBWNC
	Ai3CZSmfRh8HiXoHNGDllWYBN0xqFC6sXCbj+eJObHgz3nW7sKVZGN8IPYPQeSbQV1eR
	yvDvFOKzrlib83rkxJgIVUlCmX86dVY3/YVF9x/SCiCcrvYZYkdU+x4GW1dZ5V6IGyr1
	aEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=A/MGjloeDyoTFhOs6i1GhLSbMTOi2l1ZwK3BM4B2H14=;
	b=gD2G+GL4nabYPLAJFBAzNyW0LkLAXkCLsnlHnB/NFrwEFJmiFpGOgCQ3eQfRSf6CdV
	+/q2ZRU7UYJXERvbgfSm326UNv0vnnKcmhHn9AnSP5FsYbthpCYMY0FH58VJ+U81dipS
	Rk0WIZIuj5TPxJzP6YoAIk+Poz+GNv74PtVHE4rA6mvtBMYYKLwSPV2tV57u6OeaFhUY
	ENV5kPaVyTlFsEcOKyb/7zrTfq1WDppa6KDIbGm0/MSmybRz2gfL7Fj41gsavnU2EaEy
	tkCiUeYgJF3bsRjnsnGVRiagH72nf3GNdTQo0+oCkKHcq+YllN7MMqV8/FtKwj6t78VO
	4j6A==
X-Gm-Message-State: AEkoouvQEPMiI+EENQb04M+koSruaJ8YJvDlNis75bQmzWlKt77SmQqubLsKloH124KEMg==
X-Received: by 10.98.108.3 with SMTP id h3mr59163089pfc.162.1469753950812;
	Thu, 28 Jul 2016 17:59:10 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:5170:19b0:da08:b7e9?
	([2601:646:8882:b8c:5170:19b0:da08:b7e9])
	by smtp.gmail.com with ESMTPSA id
	cp3sm19955072pad.12.2016.07.28.17.59.09
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Jul 2016 17:59:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1469038218-52221-2-git-send-email-herve.jourdain@neuf.fr>
Date: Thu, 28 Jul 2016 17:59:04 -0700
Message-Id: <98B7EE4B-C8E5-4A26-AB09-B174AC96B240@gmail.com>
References: <1469038218-52221-1-git-send-email-herve.jourdain@neuf.fr>
	<1469038218-52221-2-git-send-email-herve.jourdain@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] Patch for implementing GstGlMemoryEGL for gstreamer 1.8.2
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
X-List-Received-Date: Fri, 29 Jul 2016 00:59:14 -0000
X-Groupsio-MsgNum: 31281
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6AC25561-234A-4814-B57A-A6A136B90AA5";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_6AC25561-234A-4814-B57A-A6A136B90AA5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Please post this patch against OE-Core

> On Jul 20, 2016, at 11:10 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
> .../0001-gl-implement-GstGlMemoryEGL.patch         | 494 =
+++++++++++++++++++++
> .../gstreamer1.0-plugins-bad_1.8.2.bbappend        |   6 +
> 2 files changed, 500 insertions(+)
> create mode 100644 =
recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad-1.8.2/0001-gl-implem=
ent-GstGlMemoryEGL.patch
> create mode 100644 =
recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.8.2.bbappend
>=20
> diff --git =
a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad-1.8.2/0001-gl-impl=
ement-GstGlMemoryEGL.patch =
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad-1.8.2/0001-gl-impl=
ement-GstGlMemoryEGL.patch
> new file mode 100644
> index 0000000..bd7258c
> --- /dev/null
> +++ =
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad-1.8.2/0001-gl-impl=
ement-GstGlMemoryEGL.patch
> @@ -0,0 +1,494 @@
> +=46rom 806bbe75b0b6947f589bce3960c28fee51b5c6c2 Mon Sep 17 00:00:00 =
2001
> +From: Gwang Yoon Hwang <yoon@igalia.com>
> +Date: Thu, 21 Jan 2016 22:18:17 +0900
> +Subject: [PATCH] gl: implement GstGLMemoryEGL
> +
> +Because current GstEGLImageMemory does not inherit GstGLMemory, =
GLUpload
> +allocates additional GLMemory and upload the decoded contents from =
the decoder
> +which uses EGLImage (e.g. gst-omx in RPi).
> +
> +This work adds GstGLMemoryEGL to avoid this overhead. Decoders =
allocate
> +GstGLMemoryEGL and decode its contents to the EGLImage of =
GstGLMemoryEGL.  And
> +GLUpload uses this memory without allocation of additional textures =
and blit
> +operations.
> +
> +https://bugzilla.gnome.org/show_bug.cgi?id=3D760916
> +---
> + gst-libs/gst/gl/egl/Makefile.am        |   2 +
> + gst-libs/gst/gl/egl/gstgldisplay_egl.c |   2 +
> + gst-libs/gst/gl/egl/gstglmemoryegl.c   | 241 =
+++++++++++++++++++++++++++++++++
> + gst-libs/gst/gl/egl/gstglmemoryegl.h   | 108 +++++++++++++++
> + gst-libs/gst/gl/gstgl_fwd.h            |   4 +
> + gst-libs/gst/gl/gstgldisplay.c         |   2 +
> + gst-libs/gst/gl/gstglupload.c          |   8 ++
> + 7 files changed, 367 insertions(+)
> + create mode 100644 gst-libs/gst/gl/egl/gstglmemoryegl.c
> + create mode 100644 gst-libs/gst/gl/egl/gstglmemoryegl.h
> +
> +diff --git a/gst-libs/gst/gl/egl/Makefile.am =
b/gst-libs/gst/gl/egl/Makefile.am
> +index b808178..878f16c 100644
> +--- a/gst-libs/gst/gl/egl/Makefile.am
> ++++ b/gst-libs/gst/gl/egl/Makefile.am
> +@@ -5,6 +5,7 @@ noinst_LTLIBRARIES =3D libgstgl-egl.la
> + libgstgl_egl_la_SOURCES =3D \
> + 	gstgldisplay_egl.c \
> + 	gstglcontext_egl.c \
> ++	gstglmemoryegl.c \
> + 	gsteglimagememory.c
> +
> + noinst_HEADERS =3D
> +@@ -13,6 +14,7 @@ libgstgl_eglincludedir =3D =
$(includedir)/gstreamer-@GST_API_VERSION@/gst/gl/egl
> + libgstgl_eglinclude_HEADERS =3D \
> + 	gstgldisplay_egl.h \
> + 	gstglcontext_egl.h \
> ++	gstglmemoryegl.h \
> + 	gsteglimagememory.h \
> + 	gstegl.h
> +
> +diff --git a/gst-libs/gst/gl/egl/gstgldisplay_egl.c =
b/gst-libs/gst/gl/egl/gstgldisplay_egl.c
> +index 9acf4f0..20816c2 100644
> +--- a/gst-libs/gst/gl/egl/gstgldisplay_egl.c
> ++++ b/gst-libs/gst/gl/egl/gstgldisplay_egl.c
> +@@ -24,6 +24,7 @@
> +
> + #include <gst/gl/egl/gstgldisplay_egl.h>
> + #include <gst/gl/egl/gsteglimagememory.h>
> ++#include <gst/gl/egl/gstglmemoryegl.h>
> +
> + GST_DEBUG_CATEGORY_STATIC (gst_gl_display_debug);
> + #define GST_CAT_DEFAULT gst_gl_display_debug
> +@@ -51,6 +52,7 @@ gst_gl_display_egl_init (GstGLDisplayEGL * =
display_egl)
> +   display_egl->foreign_display =3D FALSE;
> +
> +   gst_egl_image_memory_init ();
> ++  gst_gl_memory_egl_init_once ();
> + }
> +
> + static void
> +diff --git a/gst-libs/gst/gl/egl/gstglmemoryegl.c =
b/gst-libs/gst/gl/egl/gstglmemoryegl.c
> +new file mode 100644
> +index 0000000..03cf432
> +--- /dev/null
> ++++ b/gst-libs/gst/gl/egl/gstglmemoryegl.c
> +@@ -0,0 +1,241 @@
> ++/*
> ++ * GStreamer
> ++ * Copyright (C) 2012 Collabora Ltd.
> ++ *   @author: Sebastian Dr=C3=B6ge =
<sebastian.droege@collabora.co.uk>
> ++ * Copyright (C) 2014 Julien Isorce <julien.isorce@gmail.com>
> ++ * Copyright (C) 2015 Igalia
> ++ *    Author: Gwang Yoon Hwang <yoon@igalia.com>
> ++ *
> ++ * This library is free software; you can redistribute it and/or
> ++ * modify it under the terms of the GNU Library General Public
> ++ * License as published by the Free Software Foundation; either
> ++ * version 2 of the License, or (at your option) any later version.
> ++ *
> ++ * This library is distributed in the hope that it will be useful,
> ++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
> ++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> ++ * Library General Public License for more details.
> ++ *
> ++ * You should have received a copy of the GNU Library General Public
> ++ * License along with this library; if not, write to the
> ++ * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
> ++ * Boston, MA 02110-1301, USA.
> ++ */
> ++
> ++#ifdef HAVE_CONFIG_H
> ++#include "config.h"
> ++#endif
> ++
> ++#include <string.h>
> ++
> ++#include <gst/gl/egl/gstglmemoryegl.h>
> ++
> ++static GstAllocator *_gl_memory_egl_allocator;
> ++
> ++GST_DEBUG_CATEGORY_STATIC (GST_CAT_GL_MEMORY);
> ++#define GST_CAT_DEFAULT GST_CAT_GL_MEMORY
> ++
> ++#define parent_class gst_gl_memory_egl_allocator_parent_class
> ++G_DEFINE_TYPE (GstGLMemoryEGLAllocator, gst_gl_memory_egl_allocator,
> ++    GST_TYPE_GL_MEMORY_ALLOCATOR);
> ++
> ++gboolean
> ++gst_is_gl_memory_egl (GstMemory * mem)
> ++{
> ++  return mem !=3D NULL && mem->allocator !=3D NULL
> ++      && g_type_is_a (G_OBJECT_TYPE (mem->allocator),
> ++      GST_TYPE_GL_MEMORY_EGL_ALLOCATOR);
> ++}
> ++
> ++static GstGLMemoryEGL *
> ++_gl_mem_get_parent (GstGLMemoryEGL * gl_mem)
> ++{
> ++  GstGLMemoryEGL *parent =3D (GstGLMemoryEGL =
*)gl_mem->mem.mem.mem.parent;
> ++  return parent ? parent : gl_mem;
> ++}
> ++
> ++EGLImageKHR
> ++gst_gl_memory_egl_get_image (GstGLMemoryEGL * mem)
> ++{
> ++  g_return_val_if_fail (gst_is_gl_memory_egl (GST_MEMORY_CAST =
(mem)),
> ++                        EGL_NO_IMAGE_KHR);
> ++  return _gl_mem_get_parent(mem)->image;
> ++}
> ++
> ++EGLDisplay
> ++gst_gl_memory_egl_get_display (GstGLMemoryEGL * mem)
> ++{
> ++  g_return_val_if_fail (gst_is_gl_memory_egl (GST_MEMORY_CAST =
(mem)), NULL);
> ++  return GST_GL_CONTEXT_EGL(_gl_mem_get_parent(mem))->egl_display;
> ++}
> ++
> ++GstVideoGLTextureOrientation
> ++gst_gl_memory_egl_get_orientation (GstGLMemoryEGL * mem)
> ++{
> ++  g_return_val_if_fail (gst_is_gl_memory_egl (GST_MEMORY_CAST =
(mem)),
> ++      GST_VIDEO_GL_TEXTURE_ORIENTATION_X_NORMAL_Y_NORMAL);
> ++
> ++  return _gl_mem_get_parent(mem)->orientation;
> ++}
> ++
> ++void
> ++gst_gl_memory_egl_set_orientation (GstGLMemoryEGL * mem,
> ++    GstVideoGLTextureOrientation orientation)
> ++{
> ++  g_return_if_fail (gst_is_gl_memory_egl (GST_MEMORY_CAST (mem)));
> ++
> ++  _gl_mem_get_parent(mem)->orientation =3D orientation;
> ++}
> ++
> ++static GstMemory *
> ++_gl_mem_alloc (GstAllocator * allocator, gsize size,
> ++               GstAllocationParams * params)
> ++{
> ++  g_warning ("Use gst_gl_base_memory_allocator_alloc() to allocate =
from this "
> ++      "GstGLMemoryEGL allocator");
> ++
> ++  return NULL;
> ++}
> ++
> ++static void
> ++_gl_mem_destroy (GstGLMemoryEGL * mem)
> ++{
> ++  /* Shared memory should not destroy all the data */
> ++  if (!mem->mem.mem.mem.parent) {
> ++    GstGLContextEGL *context =3D =
GST_GL_CONTEXT_EGL(mem->mem.mem.context);
> ++    context->eglDestroyImage (context->egl_display, mem->image);
> ++  }
> ++
> ++  GST_GL_BASE_MEMORY_ALLOCATOR_CLASS (parent_class)->destroy =
((GstGLBaseMemory
> ++          *) mem);
> ++}
> ++
> ++static void
> ++_gl_mem_init (GstGLMemoryEGL * mem, GstAllocator * allocator,
> ++    GstMemory * parent, GstGLContext * context, GstGLTextureTarget =
target,
> ++    GstAllocationParams * params, GstVideoInfo * info,
> ++    guint plane, GstVideoAlignment * valign, gpointer user_data,
> ++    GDestroyNotify notify)
> ++{
> ++  gst_gl_memory_init ((GstGLMemory *) mem, allocator, parent,
> ++      context, target, params, info, plane, valign, user_data, =
notify);
> ++}
> ++
> ++static GstGLMemoryEGL *
> ++_gl_mem_egl_alloc (GstGLBaseMemoryAllocator * allocator,
> ++    GstGLVideoAllocationParams * params)
> ++{
> ++  guint alloc_flags =3D params->parent.alloc_flags;
> ++  GstGLMemoryEGL *mem;
> ++
> ++  g_return_val_if_fail (alloc_flags & =
GST_GL_ALLOCATION_PARAMS_ALLOC_FLAG_VIDEO,
> ++      NULL);
> ++  g_return_val_if_fail ((alloc_flags &
> ++      GST_GL_ALLOCATION_PARAMS_ALLOC_FLAG_WRAP_GPU_HANDLE) =3D=3D 0, =
NULL);
> ++  g_return_val_if_fail ((alloc_flags &
> ++      GST_GL_ALLOCATION_PARAMS_ALLOC_FLAG_WRAP_SYSMEM) =3D=3D 0, =
NULL);
> ++
> ++  mem =3D g_new0 (GstGLMemoryEGL, 1);
> ++  mem->image =3D EGL_NO_IMAGE_KHR;
> ++
> ++  _gl_mem_init (mem, GST_ALLOCATOR_CAST (allocator), NULL,
> ++      params->parent.context, params->target, =
params->parent.alloc_params,
> ++      params->v_info, params->plane, params->valign, =
params->parent.user_data,
> ++      params->parent.notify);
> ++
> ++  return mem;
> ++}
> ++
> ++static gboolean
> ++_gl_mem_create (GstGLMemoryEGL * gl_mem, GError ** error)
> ++{
> ++  GstGLContextEGL *context =3D GST_GL_CONTEXT_EGL =
(gl_mem->mem.mem.context);
> ++  GstGLBaseMemoryAllocatorClass *alloc_class;
> ++
> ++  if (!gst_gl_context_check_feature (GST_GL_CONTEXT (context),
> ++                                     "EGL_KHR_image_base")) {
> ++    g_set_error (error, GST_GL_CONTEXT_ERROR, =
GST_GL_CONTEXT_ERROR_WRONG_API,
> ++                 "EGL_KHR_image_base is not supported");
> ++    return FALSE;
> ++  }
> ++
> ++  alloc_class =3D GST_GL_BASE_MEMORY_ALLOCATOR_CLASS (parent_class);
> ++  if (!alloc_class->create ((GstGLBaseMemory *) gl_mem, error))
> ++    return FALSE;
> ++
> ++  gl_mem->image =3D context->eglCreateImage (context->egl_display,
> ++      context->egl_context, EGL_GL_TEXTURE_2D_KHR,
> ++      (EGLClientBuffer) GSIZE_TO_POINTER (gl_mem->mem.tex_id), =
NULL);
> ++
> ++  GST_TRACE ("Generating EGLImage handle:%p from a texture:%u",
> ++              gl_mem->image, gl_mem->mem.tex_id);
> ++
> ++  if (eglGetError () !=3D EGL_SUCCESS) {
> ++    g_set_error (error, GST_GL_CONTEXT_ERROR, =
GST_GL_CONTEXT_ERROR_FAILED,
> ++                 "Failed to create EGLImage");
> ++    return FALSE;
> ++  }
> ++
> ++  return TRUE;
> ++}
> ++
> ++static GstMemory *
> ++_gl_mem_copy (GstGLMemoryEGL * src, gssize offset, gssize size)
> ++{
> ++  GST_CAT_ERROR (GST_CAT_GL_MEMORY, "GstGLMemoryEGL does not support =
copy");
> ++  return NULL;
> ++}
> ++
> ++static void
> ++gst_gl_memory_egl_allocator_class_init (GstGLMemoryEGLAllocatorClass =
* klass)
> ++{
> ++  GstGLBaseMemoryAllocatorClass *gl_base;
> ++  GstGLMemoryAllocatorClass *gl_tex;
> ++  GstAllocatorClass *allocator_class;
> ++
> ++  gl_tex =3D (GstGLMemoryAllocatorClass *) klass;
> ++  gl_base =3D (GstGLBaseMemoryAllocatorClass *) klass;
> ++  allocator_class =3D (GstAllocatorClass *) klass;
> ++
> ++  gl_base->alloc =3D (GstGLBaseMemoryAllocatorAllocFunction) =
_gl_mem_egl_alloc;
> ++  gl_base->create =3D (GstGLBaseMemoryAllocatorCreateFunction) =
_gl_mem_create;
> ++  gl_base->destroy =3D (GstGLBaseMemoryAllocatorDestroyFunction) =
_gl_mem_destroy;
> ++  gl_tex->copy =3D (GstGLBaseMemoryAllocatorCopyFunction) =
_gl_mem_copy;
> ++
> ++  allocator_class->alloc =3D _gl_mem_alloc;
> ++}
> ++
> ++static void
> ++gst_gl_memory_egl_allocator_init (GstGLMemoryEGLAllocator * =
allocator)
> ++{
> ++  GstAllocator *alloc =3D GST_ALLOCATOR_CAST (allocator);
> ++
> ++  alloc->mem_type =3D GST_GL_MEMORY_EGL_ALLOCATOR_NAME;
> ++
> ++  GST_OBJECT_FLAG_SET (allocator, GST_ALLOCATOR_FLAG_CUSTOM_ALLOC);
> ++}
> ++
> ++/**
> ++ * gst_gl_memory_egl_init_once:
> ++ *
> ++ * Initializes the GL Memory allocator. It is safe to call this =
function
> ++ * multiple times.  This must be called before any other =
GstGLMemoryEGL operation.
> ++ */
> ++void
> ++gst_gl_memory_egl_init_once (void)
> ++{
> ++  static volatile gsize _init =3D 0;
> ++
> ++  if (g_once_init_enter (&_init)) {
> ++    gst_gl_memory_init_once ();
> ++
> ++    GST_DEBUG_CATEGORY_INIT (GST_CAT_GL_MEMORY, "glmemory", 0,
> ++        "OpenGL Texture with EGLImage memory");
> ++
> ++    _gl_memory_egl_allocator =3D g_object_new =
(GST_TYPE_GL_MEMORY_EGL_ALLOCATOR, NULL);
> ++
> ++    gst_allocator_register (GST_GL_MEMORY_EGL_ALLOCATOR_NAME,
> ++        gst_object_ref (_gl_memory_egl_allocator));
> ++    g_once_init_leave (&_init, 1);
> ++  }
> ++}
> +diff --git a/gst-libs/gst/gl/egl/gstglmemoryegl.h =
b/gst-libs/gst/gl/egl/gstglmemoryegl.h
> +new file mode 100644
> +index 0000000..7256d33
> +--- /dev/null
> ++++ b/gst-libs/gst/gl/egl/gstglmemoryegl.h
> +@@ -0,0 +1,108 @@
> ++/*
> ++ * GStreamer
> ++ * Copyright (C) 2012 Collabora Ltd.
> ++ *   @author: Sebastian Dr=C3=B6ge =
<sebastian.droege@collabora.co.uk>
> ++ * Copyright (C) 2014 Julien Isorce <julien.isorce@gmail.com>
> ++ *
> ++ * This library is free software; you can redistribute it and/or
> ++ * modify it under the terms of the GNU Library General Public
> ++ * License as published by the Free Software Foundation; either
> ++ * version 2 of the License, or (at your option) any later version.
> ++ *
> ++ * This library is distributed in the hope that it will be useful,
> ++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
> ++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> ++ * Library General Public License for more details.
> ++ *
> ++ * You should have received a copy of the GNU Library General Public
> ++ * License along with this library; if not, write to the
> ++ * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
> ++ * Boston, MA 02110-1301, USA.
> ++ */
> ++
> ++#ifndef _GST_GL_MEMORY_EGL_H_
> ++#define _GST_GL_MEMORY_EGL_H_
> ++
> ++#include <gst/gst.h>
> ++#include <gst/gstallocator.h>
> ++#include <gst/gstmemory.h>
> ++#include <gst/video/video.h>
> ++
> ++#include <gst/gl/gl.h>
> ++#include "gstglcontext_egl.h"
> ++
> ++#include <gst/gl/gstglmemory.h>
> ++
> ++G_BEGIN_DECLS
> ++
> ++#define GST_TYPE_GL_MEMORY_EGL_ALLOCATOR =
(gst_gl_memory_egl_allocator_get_type())
> ++GType gst_gl_memory_egl_allocator_get_type(void);
> ++
> ++#define GST_IS_GL_MEMORY_EGL_ALLOCATOR(obj)              =
(G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_GL_MEMORY_EGL_ALLOCATOR))
> ++#define GST_IS_GL_MEMORY_EGL_ALLOCATOR_CLASS(klass)      =
(G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_GL_MEMORY_EGL_ALLOCATOR))
> ++#define GST_GL_MEMORY_EGL_ALLOCATOR_GET_CLASS(obj)       =
(G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_GL_MEMORY_EGL_ALLOCATOR, =
GstGLMemoryEGLAllocatorClass))
> ++#define GST_GL_MEMORY_EGL_ALLOCATOR(obj)                 =
(G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_GL_MEMORY_EGL_ALLOCATOR, =
GstGLMemoryEGLAllocator))
> ++#define GST_GL_MEMORY_EGL_ALLOCATOR_CLASS(klass)         =
(G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_GL_MEMORY_EGL_ALLOCATOR, =
GstGLAllocatorClass))
> ++#define GST_GL_MEMORY_EGL_ALLOCATOR_CAST(obj)            =
((GstGLMemoryEGLAllocator *)(obj))
> ++
> ++typedef void (*GstEGLImageDestroyNotify) (GstGLContextEGL * context,
> ++    gpointer data);
> ++
> ++typedef struct _GstEGLImageMemory GstEGLImageMemory;
> ++
> ++
> ++/**
> ++ * GstGLMemoryEGL:
> ++ *
> ++ * Private instance
> ++ */
> ++struct _GstGLMemoryEGL
> ++{
> ++  GstGLMemory mem;
> ++
> ++  EGLImageKHR image;
> ++  GstVideoGLTextureOrientation orientation;
> ++};
> ++
> ++/**
> ++ * GST_GL_MEMORY_EGL_ALLOCATOR:
> ++ *
> ++ * The name of the GL Memory EGL allocator
> ++ */
> ++#define GST_GL_MEMORY_EGL_ALLOCATOR_NAME "GLMemoryEGL"
> ++
> ++void          gst_gl_memory_egl_init_once               (void);
> ++gboolean      gst_is_gl_memory_egl                      (GstMemory * =
mem);
> ++
> ++EGLImageKHR   gst_gl_memory_egl_get_image               =
(GstGLMemoryEGL * mem);
> ++EGLDisplay    gst_gl_memory_egl_get_display             =
(GstGLMemoryEGL * mem);
> ++
> ++GstVideoGLTextureOrientation gst_gl_memory_egl_get_orientation
> ++                                                        =
(GstGLMemoryEGL * mem);
> ++
> ++void          gst_gl_memory_egl_set_orientation         =
(GstGLMemoryEGL * mem,
> ++                                      GstVideoGLTextureOrientation =
orientation);
> ++
> ++/**
> ++ * GstGLAllocator
> ++ *
> ++ * Opaque #GstGLAllocator struct
> ++ */
> ++struct _GstGLMemoryEGLAllocator
> ++{
> ++  GstGLMemoryAllocator parent;
> ++};
> ++
> ++/**
> ++ * GstGLAllocatorClass:
> ++ *
> ++ * The #GstGLAllocatorClass only contains private data
> ++ */
> ++struct _GstGLMemoryEGLAllocatorClass
> ++{
> ++  GstGLMemoryAllocatorClass parent_class;
> ++};
> ++
> ++G_END_DECLS
> ++
> ++#endif /* _GST_GL_MEMORY_EGL_H_ */
> +diff --git a/gst-libs/gst/gl/gstgl_fwd.h =
b/gst-libs/gst/gl/gstgl_fwd.h
> +index fb64ff6..73e17bd 100644
> +--- a/gst-libs/gst/gl/gstgl_fwd.h
> ++++ b/gst-libs/gst/gl/gstgl_fwd.h
> +@@ -55,6 +55,10 @@ typedef struct _GstGLMemoryPBO GstGLMemoryPBO;
> + typedef struct _GstGLMemoryPBOAllocator GstGLMemoryPBOAllocator;
> + typedef struct _GstGLMemoryPBOAllocatorClass =
GstGLMemoryPBOAllocatorClass;
> +
> ++typedef struct _GstGLMemoryEGL GstGLMemoryEGL;
> ++typedef struct _GstGLMemoryEGLAllocator GstGLMemoryEGLAllocator;
> ++typedef struct _GstGLMemoryEGLAllocatorClass =
GstGLMemoryEGLAllocatorClass;
> ++
> + typedef struct _GstGLSLStage        GstGLSLStage;
> + typedef struct _GstGLSLStagePrivate GstGLSLStagePrivate;
> + typedef struct _GstGLSLStageClass   GstGLSLStageClass;
> +diff --git a/gst-libs/gst/gl/gstgldisplay.c =
b/gst-libs/gst/gl/gstgldisplay.c
> +index 60dec6a..34770d0 100644
> +--- a/gst-libs/gst/gl/gstgldisplay.c
> ++++ b/gst-libs/gst/gl/gstgldisplay.c
> +@@ -68,6 +68,7 @@
> + #if GST_GL_HAVE_PLATFORM_EGL
> + #include <gst/gl/egl/gstgldisplay_egl.h>
> + #include <gst/gl/egl/gsteglimagememory.h>
> ++#include <gst/gl/egl/gstglmemoryegl.h>
> + #endif
> +
> + GST_DEBUG_CATEGORY_STATIC (gst_context);
> +@@ -144,6 +145,7 @@ gst_gl_display_init (GstGLDisplay * display)
> +
> + #if GST_GL_HAVE_PLATFORM_EGL
> +   gst_egl_image_memory_init ();
> ++  gst_gl_memory_egl_init_once ();
> + #endif
> + }
> +
> +diff --git a/gst-libs/gst/gl/gstglupload.c =
b/gst-libs/gst/gl/gstglupload.c
> +index 16ed5ea..73a9029 100644
> +--- a/gst-libs/gst/gl/gstglupload.c
> ++++ b/gst-libs/gst/gl/gstglupload.c
> +@@ -29,6 +29,7 @@
> +
> + #if GST_GL_HAVE_PLATFORM_EGL
> + #include "egl/gsteglimagememory.h"
> ++#include "egl/gstglmemoryegl.h"
> + #endif
> +
> + #if GST_GL_HAVE_DMABUF
> +@@ -301,6 +302,13 @@ _gl_memory_upload_propose_allocation (gpointer =
impl, GstQuery * decide_query,
> +             context));
> +     gst_query_add_allocation_param (query, allocator, &params);
> +     gst_object_unref (allocator);
> ++
> ++#if GST_GL_HAVE_PLATFORM_EGL
> ++    allocator =3D
> ++        GST_ALLOCATOR (gst_allocator_find =
(GST_GL_MEMORY_EGL_ALLOCATOR_NAME));
> ++    gst_query_add_allocation_param (query, allocator, &params);
> ++    gst_object_unref (allocator);
> ++#endif
> +   }
> +
> +   n_pools =3D gst_query_get_n_allocation_pools (query);
> +--
> +2.5.0
> +
> +
> +
> diff --git =
a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.8.2.bbappend =
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.8.2.bbappend
> new file mode 100644
> index 0000000..794af15
> --- /dev/null
> +++ =
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.8.2.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
> +
> +SRC_URI +=3D " \
> +             file://0001-gl-implement-GstGlMemoryEGL.patch \
> +           "
> +
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_6AC25561-234A-4814-B57A-A6A136B90AA5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleaqlwACgkQuwUzVZGdMxSzcwCggFWIhBHJ40HIfjfoayg6Vizi
QcMAnjt1+jWOlRTjT3JvwFlz/Xjd1VWn
=CCro
-----END PGP SIGNATURE-----

--Apple-Mail=_6AC25561-234A-4814-B57A-A6A136B90AA5--
