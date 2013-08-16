Return-Path: <mulhern@gmail.com>
Received: from mail-gh0-f178.google.com (mail-gh0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24B32E01482;
	Thu, 15 Aug 2013 18:27:54 -0700 (PDT)
Received: by mail-gh0-f178.google.com with SMTP id g15so149275ghb.37
	for <multiple recipients>; Thu, 15 Aug 2013 18:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=TzD6dwLdA47p4uSlPNBNY9RE/Zje6h1YJ2xBnNbq6Oc=;
	b=J1UyzrSJ+FgG8EUPjovN/woGhc2xBzAzM/XXhn4x4hJ3cxUMIb1NTjnJcEEfSg4KW5
	IJgutTDY1j8kFI1hIghVoyIPoEHIeEIjqey73bLkweJrjjZMJX6K9C9BFUsOaeGoRtqt
	VOc7s9/aokS1th8F6o288GCLSxzxTyMK/8GF886QxvjNB1ZZhj852Pkbe47sWKl+eYmH
	hhq7mQ3Y449v3JHs3CC/irYnP81/EW6J5g3siV0XxeHR+pIuCMrEndBlEN1UdfVtmn+g
	b14QXmq35tG0QPm0CRZz3ovdrF0kOeR12uVHV4/d6t/ZRYEOkPjqfxn9VB6yHwiSDWPW
	fUNA==
X-Received: by 10.236.121.40 with SMTP id q28mr678442yhh.40.1376616473720;
	Thu, 15 Aug 2013 18:27:53 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id c7sm1271452yhk.23.2013.08.15.18.27.51
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 15 Aug 2013 18:27:53 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 15 Aug 2013 21:27:51 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu, 15 Aug 2013 21:27:44 -0400
Message-Id: <ceed3608abe5c9e4f7649d730e0b2ad19feeb8ba.1376616378.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1376616378.git.mulhern@yoctoproject.org>
References: <cover.1376616378.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1376616378.git.mulhern@yoctoproject.org>
References: <cover.1376616378.git.mulhern@yoctoproject.org>
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
X-List-Received-Date: Fri, 16 Aug 2013 01:27:56 -0000

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


