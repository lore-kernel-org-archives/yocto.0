Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0BDEE015DF;
	Thu, 15 Aug 2013 13:36:34 -0700 (PDT)
Received: by mail-qc0-f174.google.com with SMTP id c1so668924qcz.5
	for <multiple recipients>; Thu, 15 Aug 2013 13:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=nC6nLHW5OwgWasDF+ZoROUcqoaeZX8nrUzqsbTCp0W8=;
	b=qKB9PWR+vIlNNzUOEBywxp8QzKZ/pVNYhiI4jgb8c/2NhfRzpFbpGUocXCagZ9thrP
	g01ejr3N0u8M0Fw/t4mFi5X5tW0Kw459f1lkjkzeFBDn0/LLGlMdParO6QVE+yx2wscu
	drM6tlCNylQWuSApF4HThogQn58OkEEvt608iem5y098JLZkAuolQWHv8VPlUAA2JbK9
	FvC5BxNgbiHsT4Jpm2pacodiZeIAWr5NNwxShmPJJkn3PNG3CxVwBxDVXL3HVE0wpO0H
	DuCpoZntBFIUxv+0ySL4wkFe2kygh9GpG3N2hkcL59HMwutVIwSRnvwOJ897ocG1nHxP
	sDZA==
X-Received: by 10.49.41.74 with SMTP id d10mr14434759qel.81.1376598993509;
	Thu, 15 Aug 2013 13:36:33 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id y1sm1091502qaj.2.2013.08.15.13.36.31
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 15 Aug 2013 13:36:33 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 15 Aug 2013 16:36:30 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu, 15 Aug 2013 16:36:18 -0400
Message-Id: <84a22d4b99a0ed1c57e2b087ce59505611119a58.1376598685.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1376598685.git.mulhern@yoctoproject.org>
References: <cover.1376598685.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1376598685.git.mulhern@yoctoproject.org>
References: <cover.1376598685.git.mulhern@yoctoproject.org>
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
X-List-Received-Date: Thu, 15 Aug 2013 20:36:35 -0000

[YOCTO #4196] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=4196

The description field in the recipe was changed to match the package.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/perl/lib-perl_0.63.bb |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/recipes-security/perl/lib-perl_0.63.bb b/recipes-security/perl/lib-perl_0.63.bb
index 606ecfb..2e36887 100644
--- a/recipes-security/perl/lib-perl_0.63.bb
+++ b/recipes-security/perl/lib-perl_0.63.bb
@@ -1,6 +1,7 @@
-DESCRIPTION = "This package contains the URI.pm module with friends. \
-The module implements the URI class. URI objects can be used to access \
-and manipulate the various components that make up these strings."
+DESCRIPTION = "This is a small simple module which simplifies the \
+manipulation of @INC at compile time. It is typically used to add extra \
+directories to Perl's search path so that later "use" or "require" statements \
+will find modules which are not located on perl's default search path."
 
 SECTION = "libs"
 LICENSE = "Artistic-1.0 | GPL-1.0+"
-- 
1.7.10.4


