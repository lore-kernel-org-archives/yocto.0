Return-Path: <mulhern@gmail.com>
Received: from mail-qe0-f47.google.com (mail-qe0-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A947E01422;
	Fri, 16 Aug 2013 06:12:07 -0700 (PDT)
Received: by mail-qe0-f47.google.com with SMTP id b10so1162476qen.6
	for <multiple recipients>; Fri, 16 Aug 2013 06:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=TzD6dwLdA47p4uSlPNBNY9RE/Zje6h1YJ2xBnNbq6Oc=;
	b=aq16Rzs+JZR6dQrmPzmKM5ABdk2IlBd6aN5/s3EOshgN89zcdI36obGwIooRGYOVTQ
	UPRBZUYaI5pj13P4nN0cwK4/gB/oBdNVVshBjsN9iJuzo/8ESeS3/OgLUjZw017x3t4E
	vNyzSCTAkOKgbm62tZGHARRSnIDBwUuw/B4avA3MrRQweIIi6p+SrfU7+6C+Pt2SrUL/
	372NSjNatz2AeyEi12K3pMioEXxED0kXvSgLYNI1Pz9Bk10bqZ8y4lPivFL64aJWXfD/
	s16/PZ0GR7jWGcLeQm529z6oCiTY6DdiW806sZlKBllVLV+vPvyGdJD4rdu8Nqr3F4Wi
	UJzg==
X-Received: by 10.224.122.195 with SMTP id m3mr3354463qar.9.1376658726804;
	Fri, 16 Aug 2013 06:12:06 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id a2sm1217657qek.7.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 16 Aug 2013 06:12:06 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Fri, 16 Aug 2013 09:12:04 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Fri, 16 Aug 2013 09:11:55 -0400
Message-Id: <ceed3608abe5c9e4f7649d730e0b2ad19feeb8ba.1376658426.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1376658426.git.mulhern@yoctoproject.org>
References: <y>
 <cover.1376658426.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1376658426.git.mulhern@yoctoproject.org>
References: <cover.1376658426.git.mulhern@yoctoproject.org>
Subject: [PATCH 1/2] curses-perl: Change description to match package.
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
X-List-Received-Date: Fri, 16 Aug 2013 13:12:08 -0000

[YOCTO #4196] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=4196

The description field in the recipe was changed to match the package.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/perl/curses-perl_1.28.bb |    5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-security/perl/curses-perl_1.28.bb b/recipes-security/perl/curses-perl_1.28.bb
index 5984ca7..d05a0f2 100644
--- a/recipes-security/perl/curses-perl_1.28.bb
+++ b/recipes-security/perl/curses-perl_1.28.bb
@@ -1,6 +1,5 @@
-DESCRIPTION = "This package contains the URI.pm module with friends. \
-The module implements the URI class. URI objects can be used to access \
-and manipulate the various components that make up these strings."
+DESCRIPTION = "lib-curses provides an interface between Perl programs and \
+the curses library."
 
 SECTION = "libs"
 LICENSE = "Artistic-1.0 | GPL-1.0+"
-- 
1.7.10.4


