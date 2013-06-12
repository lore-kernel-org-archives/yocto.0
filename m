Return-Path: <diego.ml@zoho.com>
Received: from sender1.zohomail.com (sender1.zohomail.com [72.5.230.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BCE3E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 09:41:36 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to:references:mime-version:content-type;
	b=UmQyIsPHV2Ts5Wl4DKAeGoWM7x9UuWHYUEX//XnqTSYT9J0I5d0vW0bUvhXiwWNBOM2fpC6AbVQ8
	Bllm3Cs6prEUq0IXadwWwa70wL8tsaCM2ZFLYuYN+QRdMlhO8Wre  
Received: from localhost.localdomain (static-217-133-170-65.clienti.tiscali.it
	[217.133.170.65]) by mx.zohomail.com
	with SMTPS id 1371055273791551.3699500649827;
	Wed, 12 Jun 2013 09:41:13 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Wed, 12 Jun 2013 18:41:06 +0200
Message-ID: <2975064.NgcQZYsAKT@localhost.localdomain>
User-Agent: KMail/4.10.3 (Linux/3.8.13-100.fc17.x86_64; KDE/4.10.3; x86_64; ; )
In-Reply-To: <CAPhnLPDjcbvejh+YnfrGXvwX2+qsHSfDowL8JuVSZc+M52YA7Q@mail.gmail.com>
References: <1810497.uZE9ivf2T0@localhost.localdomain>
	<CAPhnLPDjcbvejh+YnfrGXvwX2+qsHSfDowL8JuVSZc+M52YA7Q@mail.gmail.com>
MIME-Version: 1.0
X-Zoho-Virus-Status: 1
X-ZohoMailClient: External
Cc: yocto@yoctoproject.org
Subject: Re: How to deal with non-standard license.
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
X-List-Received-Date: Wed, 12 Jun 2013 16:41:38 -0000
X-Groupsio-MsgNum: 14307
Content-Type: multipart/mixed; boundary="nextPart5949126.aiJy6L9ecp"
Content-Transfer-Encoding: 7Bit

--nextPart5949126.aiJy6L9ecp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="ISO-8859-1"

In data marted=EC 11 giugno 2013 15:10:42, Flanagan, Elizabeth ha scrit=
to:
> On Tue, Jun 11, 2013 at 5:28 AM, Diego <diego.ml@zoho.com> wrote:
> > Hi everybody,
> >=20
> > I have written a recipe which I'd like to contribute for glmark2:
> > https://launchpad.net/glmark2
> >=20
> > The last thing that puzzles me before submitting it is that it's pa=
rtly
> > GPL3+, and partly under this license:
> > https://github.com/rafalmiel/glmark2-wl/blob/master/COPYING.SGI
> > which is not in this list:
> > https://wiki.yoctoproject.org/wiki/License_Infrastructure_Interest_=
Group#L
> > icenses Is there any way to deal with that license? What should I p=
ut in
> > the LICENSE field in my recipe?
>=20
> So, you will need to add a custom license or submit a patch OE-Core t=
o
> add that license. Where are you contributing this to?
>=20
> If it's to a layer, you'll want to add the license to a custom licens=
e
> path. You'll want that file to be unique and descriptive. Please make=

> sure the license filename has a version in the file name. eg SGI-1.
> Within the layer you'll make a directory (in this example I use
> custom-licenses), add the license text to a file named SGI-1, then ad=
d
> this to your layer.conf:
>=20
> LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"
> SPDXLICENSEMAP[SGIv1] =3D "SGI-1"
>=20
> That should get you what you want.

Hi Elizabeth,

I'm trying to integrate glmark2 into openembedded (meta-oe layer). I kn=
ow this=20
is not the right mailing list for that task, but I'm still on the licen=
se=20
problem.

I've tried to do as you suggested, but I'm getting:
WARNING: glmark2: No generic license file exists for: SGI-1 in any prov=
ider
Paul suggested:
LICENSE =3D "GPLv3+ & SGI-1"
I've tried also:
LICENSE =3D "GPLv3+ & SGIv1"
but I'm still getting the same error message (obviously with "SGIv1" in=
stead).

I'm attaching the full patch for you to review if I'm doing something w=
rong.

Thank you for any hint you might give me,
Diego

--nextPart5949126.aiJy6L9ecp
Content-Disposition: attachment; filename="0001-glmark2-Add-recipe-for-glmark2.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="utf-8"; name="0001-glmark2-Add-recipe-for-glmark2.patch"

From e050d390b053f4287634778e8ec3c7b582cd8b14 Mon Sep 17 00:00:00 2001
From: Diego Rondini <diego.ml@zoho.com>
Date: Wed, 12 Jun 2013 17:57:39 +0200
Subject: [meta-oe][PATCH] glmark2: Add recipe for glmark2

Add a recipe for glmark2, which is an OpenGL 2.0 / OpenGL ES 2.0 benchmark.

Signed-off-by: Diego Rondini <diego.ml@zoho.com>
---
 .../recipes-benchmark/glmark2/glmark2_2012.12.bb   |   35 +++++++++++++++++
 toolchain-layer/conf/layer.conf                    |    3 ++
 toolchain-layer/custom-licenses/SGI-1              |   40 ++++++++++++++++++++
 3 files changed, 78 insertions(+)
 create mode 100644 meta-oe/recipes-benchmark/glmark2/glmark2_2012.12.bb
 create mode 100644 toolchain-layer/custom-licenses/SGI-1

diff --git a/meta-oe/recipes-benchmark/glmark2/glmark2_2012.12.bb b/meta-oe/recipes-benchmark/glmark2/glmark2_2012.12.bb
new file mode 100644
index 0000000..eea6d37
--- /dev/null
+++ b/meta-oe/recipes-benchmark/glmark2/glmark2_2012.12.bb
@@ -0,0 +1,35 @@
+SUMMARY = "OpenGL (ES) 2.0 benchmark"
+DESCRIPTION = "glmark2 is a benchmark for OpenGL (ES) 2.0. \
+It uses only the subset of the OpenGL 2.0 API that is compatible with OpenGL ES 2.0."
+HOMEPAGE = "https://launchpad.net/glmark2"
+BUGTRACKER = "https://bugs.launchpad.net/glmark2"
+
+LICENSE = "GPLv3+ & SGI-1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://COPYING.SGI;md5=7125c8894bd29eddfd44ede5ce3ab1e4"
+
+DEPENDS = "libpng12"
+
+SRC_URI = "https://launchpad.net/${BPN}/trunk/${PV}/+download/${BP}.tar.gz"
+
+SRC_URI[md5sum] = "4f306664aa3886fa0cf93853603603f8"
+SRC_URI[sha256sum] = "bea6f9de2cdce376195bd91e4a2fdfdf80bf3e480abff8e05b90a6458c1deb47"
+
+inherit pkgconfig
+
+PACKAGECONFIG ?= "gl gles2"
+
+PACKAGECONFIG[gl] = "--enable-gl,,virtual/libgl"
+PACKAGECONFIG[gles2] = "--enable-glesv2,,virtual/libgles2"
+
+do_configure() {
+	./waf configure --prefix=${prefix} ${EXTRA_OECONF}	
+}
+
+do_compile() {
+	./waf build ${PARALLEL_MAKE}
+}
+
+do_install() {
+	./waf install --destdir=${D}
+}
diff --git a/toolchain-layer/conf/layer.conf b/toolchain-layer/conf/layer.conf
index ca81eb1..9165754 100644
--- a/toolchain-layer/conf/layer.conf
+++ b/toolchain-layer/conf/layer.conf
@@ -23,3 +23,6 @@ BBFILE_PATTERN_toolchain-layer := "^${LAYERDIR}/"
 
 BBFILE_PRIORITY_toolchain-layer = "6"
 
+# Import custom license
+LICENSE_PATH += "${LAYERDIR}/custom-licenses"
+SPDXLICENSEMAP[SGIv1] = "SGI-1"
diff --git a/toolchain-layer/custom-licenses/SGI-1 b/toolchain-layer/custom-licenses/SGI-1
new file mode 100644
index 0000000..94ab8db
--- /dev/null
+++ b/toolchain-layer/custom-licenses/SGI-1
@@ -0,0 +1,40 @@
+The data and some of the control logic for the "ideas" scene was adapted from
+the "Ideas in Motion" GLUT demo.  Per the rights granted by the source for that
+demo, the following notice is reproduced here:
+
+/*
+ * (c) Copyright 1993, Silicon Graphics, Inc.
+ * ALL RIGHTS RESERVED 
+ * Permission to use, copy, modify, and distribute this software for 
+ * any purpose and without fee is hereby granted, provided that the above
+ * copyright notice appear in all copies and that both the copyright notice
+ * and this permission notice appear in supporting documentation, and that 
+ * the name of Silicon Graphics, Inc. not be used in advertising
+ * or publicity pertaining to distribution of the software without specific,
+ * written prior permission. 
+ *
+ * THE MATERIAL EMBODIED ON THIS SOFTWARE IS PROVIDED TO YOU "AS-IS"
+ * AND WITHOUT WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR OTHERWISE,
+ * INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY OR
+ * FITNESS FOR A PARTICULAR PURPOSE.  IN NO EVENT SHALL SILICON
+ * GRAPHICS, INC.  BE LIABLE TO YOU OR ANYONE ELSE FOR ANY DIRECT,
+ * SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY
+ * KIND, OR ANY DAMAGES WHATSOEVER, INCLUDING WITHOUT LIMITATION,
+ * LOSS OF PROFIT, LOSS OF USE, SAVINGS OR REVENUE, OR THE CLAIMS OF
+ * THIRD PARTIES, WHETHER OR NOT SILICON GRAPHICS, INC.  HAS BEEN
+ * ADVISED OF THE POSSIBILITY OF SUCH LOSS, HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE
+ * POSSESSION, USE OR PERFORMANCE OF THIS SOFTWARE.
+ * 
+ * US Government Users Restricted Rights 
+ * Use, duplication, or disclosure by the Government is subject to
+ * restrictions set forth in FAR 52.227.19(c)(2) or subparagraph
+ * (c)(1)(ii) of the Rights in Technical Data and Computer Software
+ * clause at DFARS 252.227-7013 and/or in similar or successor
+ * clauses in the FAR or the DOD or NASA FAR Supplement.
+ * Unpublished-- rights reserved under the copyright laws of the
+ * United States.  Contractor/manufacturer is Silicon Graphics,
+ * Inc., 2011 N.  Shoreline Blvd., Mountain View, CA 94039-7311.
+ *
+ * OpenGL(TM) is a trademark of Silicon Graphics, Inc.
+ */
-- 
1.7.9.5


--nextPart5949126.aiJy6L9ecp--
