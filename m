Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15D6EE01482;
	Fri, 16 Aug 2013 06:12:13 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id u12so1063946qcx.35
	for <multiple recipients>; Fri, 16 Aug 2013 06:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=FjJQ4X6u+DwFRwKcN4F6YGQP57ONhhIQ8/JG4lXmY78=;
	b=PPUJ7+BuIrODHZV3EkWi6QPV13umNU98pr5R6ktLP4D4nWfz7gpKSRkjjseV3I47Rb
	Su76S6wyDAtZ9/6jloAnvxDd/t/Su3a7UQHwJgte7QOz8Ge0H9swYc+sfGJFwXu/pKZW
	dOj7zzwEj/SlRVoID7ah41kAF6aam3tEgMb7VirKkcgmONSU4l7/XUcNCkaaFL614SLV
	sUPNyJ0aWb+FVBUxTLUWsPhRzAhJpaoldK2DDB98LO5EF9yk9CTjPpRG1D9qzcF4T3lu
	wzNcR8bs/LGdgC07wKmWCY127epEAkTn8Z7FRUIVvSSmEz9F40A2PZfoTaGWto7ta4/r
	x56Q==
X-Received: by 10.224.172.195 with SMTP id m3mr3221937qaz.72.1376658732549;
	Fri, 16 Aug 2013 06:12:12 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id gp3sm1224412qeb.2.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 16 Aug 2013 06:12:12 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Fri, 16 Aug 2013 09:12:10 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Fri, 16 Aug 2013 09:11:56 -0400
Message-Id: <6bd4538ae21bbf7f2c8d45e453b2f8560496cbc4.1376658426.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1376658426.git.mulhern@yoctoproject.org>
References: <y>
 <cover.1376658426.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1376658426.git.mulhern@yoctoproject.org>
References: <cover.1376658426.git.mulhern@yoctoproject.org>
Subject: [PATCH 2/2] lib-perl: Change description to match package.
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
X-List-Received-Date: Fri, 16 Aug 2013 13:12:14 -0000

[YOCTO #4196] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=4196

The description field in the recipe was changed to match the package.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/perl/lib-perl_0.63.bb |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/recipes-security/perl/lib-perl_0.63.bb b/recipes-security/perl/lib-perl_0.63.bb
index 606ecfb..0696382 100644
--- a/recipes-security/perl/lib-perl_0.63.bb
+++ b/recipes-security/perl/lib-perl_0.63.bb
@@ -1,6 +1,7 @@
-DESCRIPTION = "This package contains the URI.pm module with friends. \
-The module implements the URI class. URI objects can be used to access \
-and manipulate the various components that make up these strings."
+DESCRIPTION = "This is a simple module which simplifies the \
+manipulation of @INC at compile time. It is typically used to add extra \
+directories to Perl's search path so that later 'use' or 'require' statements \
+will find modules which are not located in the default search path."
 
 SECTION = "libs"
 LICENSE = "Artistic-1.0 | GPL-1.0+"
-- 
1.7.10.4


