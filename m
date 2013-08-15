Return-Path: <mulhern@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97019E01440;
	Thu, 15 Aug 2013 13:36:28 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id cz11so920549veb.22
	for <multiple recipients>; Thu, 15 Aug 2013 13:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=MxN1k7oTH1tFJ1ag9gmIqD+DDqoqByQ340LBXcFyfUg=;
	b=JvJ3G3lBJR1pxqkX0Mwc4RhEqnRVNKhibjzjw3FHGFp7PCa34nFJuT2uW0BZ5mXyOO
	o3H5ClbE9PvtC5K7E0sK4IQwi9z1XMjtbDTIqf2bp7g53ftP2wwl7Y0MXSYKXka6pH/e
	uCHRiPKP5BzFJPWC0hlUR5xFqvyiTWCUoH++jIcKNK33+Vg6a5I7F+egNsAhbnWMJ45D
	0X86lox7wn+xbMr2jvStjzB4lSHugR3hi1iWYrn1zTPWECkxWARfbdbjtU5Twe0BFHnO
	Eb4GKETR2YVPaQYBdDV07mPYhn+MHtHRyDOPyzYuT5gda9LW/1UNiooMnFQ1YRJkRq/D
	IpoA==
X-Received: by 10.221.51.206 with SMTP id vj14mr16168849vcb.17.1376598988351; 
	Thu, 15 Aug 2013 13:36:28 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id eu9sm1057078vdb.1.2013.08.15.13.36.26
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 15 Aug 2013 13:36:27 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 15 Aug 2013 16:36:25 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu, 15 Aug 2013 16:36:17 -0400
Message-Id: <e135a4c21162ddac7452bbb22986a3c0ef5cdeee.1376598685.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1376598685.git.mulhern@yoctoproject.org>
References: <cover.1376598685.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1376598685.git.mulhern@yoctoproject.org>
References: <cover.1376598685.git.mulhern@yoctoproject.org>
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
X-List-Received-Date: Thu, 15 Aug 2013 20:36:29 -0000

[YOCTO #4196] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=4196

The description field in the recipe was changed to match the package.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/perl/curses-perl_1.28.bb |    5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-security/perl/curses-perl_1.28.bb b/recipes-security/perl/curses-perl_1.28.bb
index 5984ca7..ac10f60 100644
--- a/recipes-security/perl/curses-perl_1.28.bb
+++ b/recipes-security/perl/curses-perl_1.28.bb
@@ -1,6 +1,5 @@
-DESCRIPTION = "This package contains the URI.pm module with friends. \
-The module implements the URI class. URI objects can be used to access \
-and manipulate the various components that make up these strings."
+DESCRIPTION = "lib-curses provides an interface between Perl programs and \
+your system's curses library."
 
 SECTION = "libs"
 LICENSE = "Artistic-1.0 | GPL-1.0+"
-- 
1.7.10.4


