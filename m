Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 492ECE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:28 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=HjNEyT+/hMQn0qpE4bG8rJFqQ5Ymt1ySAYjLRn8hJsI=;
	b=bkS+lzP32y6KQtvyUXujq/JhseR6Q1pNPebcfCktoIYBJt4Yic51xDDENyB2AwQsUZ
	nnI1psH04j6JuOkue25rZHvyaTI2LuHhYYc5HIJMgCGSa1XCqHhiiD3Pd8ZT1kULQ23Z
	NEnfPxiFKCiFWibzvHgS0t4X+Ulxuh5rBRmOyucBqTTYSrHh1dBZEtFSjU+Bsf+2r1YL
	OvKpYGegbolowyFDTkulL2RYwsSLQAMbwD+SRs++SIzJLmQhotnk8TcDffrFUNW2t9IR
	NHfgB5JqDXeBUsHJ2wQ/RGFxOe+Cg1w69q4rLnsLfapr127tA/au03BCzpFaUXm7xp6Z
	WQKQ==
Received: by 10.180.80.40 with SMTP id o8mr111907wix.10.1333059867956;
	Thu, 29 Mar 2012 15:24:27 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id o2sm1070390wiv.11.2012.03.29.15.24.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:24:27 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:47 +0200
Message-Id: <2849b98a940f5501b9e9512684a06e664c8d4239.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 13/22] opkg-make-index: show OSError/IOError
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2012 22:24:28 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-make-index |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 997f286..e0844a7 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -131,11 +131,11 @@ for filename in files:
                to_morgue(basename)
           if opt_s:
                print(filename)
-  except OSError:
-      sys.stderr.write("Package %s disappeared on us!\n" % (filename))
+  except OSError as e:
+      sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (filename, e))
       continue
-  except IOError:
-      sys.stderr.write("Package %s disappeared on us!\n" % (filename))
+  except IOError as e:
+      sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (filename, e))
       continue
 
 pkgsStampsFile = open(stamplist_filename, "w")
@@ -173,11 +173,11 @@ for name in names:
      if (verbose):
           sys.stderr.write("Writing info for package %s\n" % (pkg.package,))
      print(pkg)
-  except OSError:
-      sys.stderr.write("Package %s disappeared on us!\n" % (name))
+  except OSError as e:
+      sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
       continue
-  except IOError:
-      sys.stderr.write("Package %s disappeared on us!\n" % (name))
+  except IOError as e:
+      sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
       continue
 
 if packages_filename:
@@ -199,10 +199,10 @@ for name in names:
      try:
           fnlist = packages[name].get_file_list()
      except OSError as e:
-          sys.stderr.write("Package %s disappeared on us!\n" % (name))
+          sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
           continue
      except IOError as e:
-          sys.stderr.write("Package %s disappeared on us!\n" % (name))
+          sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
           continue
      for fn in fnlist:
           (h,t) = os.path.split(fn)
-- 
1.7.8.5


