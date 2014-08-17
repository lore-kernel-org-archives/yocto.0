Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9AD6E006DB; Sun, 17 Aug 2014 08:02:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37561E00655
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 08:02:49 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id u56so3980525wes.28
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 08:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:cc:to:mime-version;
	bh=gpje7N9iR82vDHLSpj6mSls7qsqc9nQS0i6gbKgFhL8=;
	b=HVDCDQZMe4R6lasH5EKhHTbf/nJmM+rN7o+TM8Ww6OwjDYrCWDIhcj0ele+1ulx7CE
	sTMZLrCwvt8K2zB4rjFE6syfDLPpthOdl4bbSi9i8zV0a7DaNO522rs0tZ6VJDNuEHIU
	wPj9cGx7TDxCqG/zYJ9HNEaF7UyMKKFwsLMbf6Qk4MohjJ61FZSYrk9/aqhF/kUP3KO0
	LZbVHbxgBPTSAt04RfcX8UihtKb2YzEkRSOpkUO1lFSCXUaG3PePAxNRLNack5P9lXOb
	M1JFlMY0cLXiiJrVy9qYss3IK4m8TsGvqqLO86hCR2R+rbw60ZUqT8reAVGxkSSMF/bj
	QetA==
X-Received: by 10.194.118.201 with SMTP id ko9mr34150843wjb.26.1408287769057; 
	Sun, 17 Aug 2014 08:02:49 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by mx.google.com with ESMTPSA id
	cy9sm28057921wib.15.2014.08.17.08.02.46 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 17 Aug 2014 08:02:47 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Date: Sun, 17 Aug 2014 17:02:39 +0200
Message-Id: <546B672E-C981-41EE-B2E3-655F24672A3F@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Cc: Gerd Hoffmann <kraxel@redhat.com>
Subject: Fix for meta-oe/recipes-graphics/fbida/fbida_git.bb
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
X-List-Received-Date: Sun, 17 Aug 2014 15:02:58 -0000
X-Groupsio-MsgNum: 21124
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_3A73EABC-83D1-4BB7-AA0D-183CEBFFF303"

--Apple-Mail=_3A73EABC-83D1-4BB7-AA0D-183CEBFFF303
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

we played a bit with some tools before using a modified psplash to show so=
me guidance on hdmi-fb and there was an error in fbida which wrongly mixes =
host-paths and target paths. Additionally - for Poky or OE it's unnecessary=
 to guess additional path to check - recipes will do correctly.


Best regards
--=20
Jens Rehsack
rehsack@gmail.com






--Apple-Mail=_3A73EABC-83D1-4BB7-AA0D-183CEBFFF303
Content-Disposition: attachment;
	filename=0001-avoid-fbida-tries-including-host-stuff.patch
Content-Type: application/octet-stream;
	name="0001-avoid-fbida-tries-including-host-stuff.patch"
Content-Transfer-Encoding: quoted-printable

From 08798334998f63bdf0f3b96752b28060ab0c8165 Mon Sep 17 00:00:00 2001
From: Jens Rehsack <Jens.Rehsack@rademacher.de>
Date: Fri, 4 Jul 2014 13:29:34 +0200
Subject: [PATCH] avoid fbida tries including host stuff

---
 .../recipes-graphics/fbida/fbida-git/no-usr-local.diff  | 17 +++++++++++++=
++++
 meta-oe/recipes-graphics/fbida/fbida_git.bb             |  3 +++
 2 files changed, 20 insertions(+)
 create mode 100644 meta-oe/recipes-graphics/fbida/fbida-git/no-usr-local.d=
iff

diff --git a/meta-oe/recipes-graphics/fbida/fbida-git/no-usr-local.diff b/m=
eta-oe/recipes-graphics/fbida/fbida-git/no-usr-local.diff
new file mode 100644
index 0000000..86e2434
--- /dev/null
+++ b/meta-oe/recipes-graphics/fbida/fbida-git/no-usr-local.diff
@@ -0,0 +1,17 @@
+diff --git a/mk/Variables.mk b/mk/Variables.mk
+index 99f787c..3ffd87a 100644
+--- a/mk/Variables.mk
++++ b/mk/Variables.mk
+@@ -42,12 +42,6 @@ CFLAGS		+=3D -Wall -Wmissing-prototypes -Wstrict-protot=
ypes \
+ 		   -Wpointer-arith -Wunused
+ CXXFLAGS	+=3D -Wall -Wpointer-arith -Wunused
+=20
+-# add /usr/local to the search path if something is in there ...
+-ifneq ($(wildcard /usr/local/include/*.h),)
+-  CFLAGS  +=3D -I/usr/local/include
+-  LDFLAGS +=3D -L/usr/local/$(LIB)
+-endif
+-
+ # fixup include path for $(srcdir) !=3D "."
+ ifneq ($(srcdir),.)
+   CFLAGS  +=3D -I. -I$(srcdir)
diff --git a/meta-oe/recipes-graphics/fbida/fbida_git.bb b/meta-oe/recipes-=
graphics/fbida/fbida_git.bb
index f4dd01d..fd1349c 100644
--- a/meta-oe/recipes-graphics/fbida/fbida_git.bb
+++ b/meta-oe/recipes-graphics/fbida/fbida_git.bb
@@ -10,7 +10,10 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D8ca43cbc842c2=
336e835926c2166c28b"
=20
 DEPENDS =3D "virtual/libiconv jpeg fontconfig freetype libexif curl"
=20
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
+
 SRC_URI =3D "git://git.kraxel.org/fbida"
+SRC_URI +=3D "file://no-usr-local.diff"
 SRCREV =3D "6aa5563cb3c8864ad15cf83eb6fca3b773da1099"
 PV =3D "2.09+git${SRCPV}"
 S =3D "${WORKDIR}/git"
--=20
1.9.1


--Apple-Mail=_3A73EABC-83D1-4BB7-AA0D-183CEBFFF303--
