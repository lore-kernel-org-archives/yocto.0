Return-Path: <mulhern@gmail.com>
Received: from mail-ye0-f175.google.com (mail-ye0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEBCAE01591;
	Thu, 15 Aug 2013 18:27:58 -0700 (PDT)
Received: by mail-ye0-f175.google.com with SMTP id m9so158234yen.6
	for <multiple recipients>; Thu, 15 Aug 2013 18:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=bjyHWhLSqbrrA8Z6AGRJZfXCkEIgr/OGgpkq/Z6IHrs=;
	b=zA8+016eEOlkkinYnPQDVp6dgE0MZZ/22bZLdTev7/GnpkKGpBush8qzORndEnZ9bT
	8+mYQvl1RA6hiNxskTHSx48X/6JbQvhGZwuomK8ajmgbfnKmwmvjnmo04IayvVMs1rkb
	P/ds959/KkA5lrGCUjCHLxcwCugI+6T4kPYx/KbbfeaB/zoxnwBq9bAliN2x+Kpy+8Yh
	WE4AMmQDk19KwPQ0sH/M+8ddWr4p4K/PyASMli3+ccbMzYiA5bqTvTGnSgheEuCcUcDR
	ba+29AUi/tqzr8gUwnoLL0GsnEIKb+jY5CDjLI6HbU29RnFPrljWvmnE6t5WOWind9V7
	8x8A==
X-Received: by 10.236.37.105 with SMTP id x69mr675878yha.15.1376616477450;
	Thu, 15 Aug 2013 18:27:57 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id r1sm1271377yhf.17.2013.08.15.18.27.55
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 15 Aug 2013 18:27:57 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 15 Aug 2013 21:27:54 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu, 15 Aug 2013 21:27:45 -0400
Message-Id: <4827bf2592ec7b54ba078df8ab45b19a44138d1f.1376616378.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1376616378.git.mulhern@yoctoproject.org>
References: <cover.1376616378.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1376616378.git.mulhern@yoctoproject.org>
References: <cover.1376616378.git.mulhern@yoctoproject.org>
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
X-List-Received-Date: Fri, 16 Aug 2013 01:28:01 -0000

[YOCTO #4196] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=4196

The description field in the recipe was changed to match the package.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/perl/lib-perl_0.63.bb |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/recipes-security/perl/lib-perl_0.63.bb b/recipes-security/perl/lib-perl_0.63.bb
index 606ecfb..c05ae1e 100644
--- a/recipes-security/perl/lib-perl_0.63.bb
+++ b/recipes-security/perl/lib-perl_0.63.bb
@@ -1,6 +1,7 @@
-DESCRIPTION = "This package contains the URI.pm module with friends. \
-The module implements the URI class. URI objects can be used to access \
-and manipulate the various components that make up these strings."
+DESCRIPTION = "This is a small simple module which simplifies the \
+manipulation of @INC at compile time. It is typically used to add extra \
+directories to Perl's search path so that later "use" or "require" statements \
+will find modules which are not located in the default search path."
 
 SECTION = "libs"
 LICENSE = "Artistic-1.0 | GPL-1.0+"
-- 
1.7.10.4


