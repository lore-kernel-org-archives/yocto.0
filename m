Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7807E0108D; Thu, 25 Aug 2016 08:39:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC196E01087
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 08:39:36 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id d65so6379113ith.0
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 08:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=2+gZWdAnEBG+GmV0zJLWHxJ/slJSny0a5ehaBLrIzRk=;
	b=qkOOsJXNp+sQKsQnwIfo8w35blqhle/Parb4FSiaxUhxVjv8cI9JsObrbJXQnFuY44
	yDGsVkg1WNcMRDruVIoonkaNFpO4HI61OB4re7rjhYw1wSwt04Li6ox5HC4M2G+3EfqB
	LzmFbzhOmDwym6L2ASEVgC2mZUvNwRgPe349O+qGOQZ6ZBYjGGw5sjIRTGZRGTn/Y+gy
	t/Tq288Bso2bobpCtepP9Ux2SWDPOhe+6ahZqKMXmYaKY78YhEztoAcsjDicxP/6Cxgr
	XqnparzCTtmDSUiy4H8C4kJ9hYArVgB2nPCjXU/GYvWNIfYLlPTv0OxwzHiq17VUrO84
	WA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2+gZWdAnEBG+GmV0zJLWHxJ/slJSny0a5ehaBLrIzRk=;
	b=cIKvRDuRW8phvLcGPrTTCYCXjbCjzTClmvHBMrvFw2ELcOYYr5LzzToUdmNeCEjAl4
	eBkGeykUXKvTBJxPLzqxYJPwuBtOKsHBNRYfqbkZaRoDb9HiLrVm+rAeKiWUcrTwr/gC
	D8oJs7U4d7FzXkXeXqXg99lyheAOsstfD4mp00MJHfmQYF/O4TldyhHEiGSf+G6cFc6c
	VUWF6hiSlbaUwXCb7yqs2lSjjWksvdMm5YkF8gmBjH3IRgagkFSPEX5c7RmSaa7h9RSC
	cko2bgNPeiKcIJBBlBBiQWq2lpGr/U25XgeHbCJt3bKTkaWH/AxHUwvWYHBUaIwBYgJn
	QMcQ==
X-Gm-Message-State: AEkooutWMbjM8M3qAHbu+f8UVqjfTFpjaUCNwoWQeiXNprD0F/Ngx152mBSTv3I72pY8Zw==
X-Received: by 10.107.160.202 with SMTP id j193mr11131110ioe.23.1472139575505; 
	Thu, 25 Aug 2016 08:39:35 -0700 (PDT)
Received: from brrussell-Latitude-E6530.dhcp.lexmark.com ([192.146.101.8])
	by smtp.gmail.com with ESMTPSA id
	m128sm5695920iom.32.2016.08.25.08.39.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 25 Aug 2016 08:39:34 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 25 Aug 2016 11:39:17 -0400
Message-Id: <1472139557-7371-1-git-send-email-bkylerussell@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: yocto@yoctoproject.org, Kyle Russell <bkylerussell@gmail.com>
Subject: [prelink-cross][PATCH] rtld: Add missing DT_NEEDED DSOs to needed_list
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
X-List-Received-Date: Thu, 25 Aug 2016 15:39:40 -0000

prelink-rtld may report an "error while loading shared libraries" for
the wrong library.

If some set of DT_NEEDED DSOs are not in the default search path, they
may have a dso_list entry added, but no matching entry is added to the
needed_list.  This causes the linker to miscalculate the max number of
dsos during build_local_scope(), which later causes find_needed() to not
search the entire l_local_scope[0]->r_list during
_dl_check_map_versions() (since the max from build_local_scope() becomes
l_local_scope[0]->r_nlist).

Since find_needed() searches through the r_list, which would have the
dso_list entries for the libraries that weren't found earlier, this cuts
the search short, meaning libraries near the end of the local scope don't
get included in the map version search.

As the comment in _dl_check_map_versions() suggests, if needed is NULL,
that means a dependency was not found and no stub entry created, which
should never happen.

Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
---
 src/rtld/rtld.c | 36 ++++++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
index 8d7d760..d9a0862 100644
--- a/src/rtld/rtld.c
+++ b/src/rtld/rtld.c
@@ -686,6 +686,25 @@ find_lib_by_soname (const char *soname, struct dso_list *loader,
   return NULL;
 }
 
+static void
+add_dso_to_needed (struct dso_list *cur_dso_ent, struct dso_list *new_dso_ent)
+{
+  if (!cur_dso_ent->needed)
+    {
+      cur_dso_ent->needed = malloc (sizeof (struct needed_list));
+      cur_dso_ent->needed_tail = cur_dso_ent->needed;
+      cur_dso_ent->needed_tail->ent = new_dso_ent;
+      cur_dso_ent->needed_tail->next = NULL;
+    }
+  else if (!in_needed_list (cur_dso_ent->needed, new_dso_ent->name))
+    {
+      cur_dso_ent->needed_tail->next = malloc (sizeof (struct needed_list));
+      cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->next;
+      cur_dso_ent->needed_tail->ent = new_dso_ent;
+      cur_dso_ent->needed_tail->next = NULL;
+    }
+}
+
 static struct dso_list *
 load_dsos (DSO *dso, int host_paths)
 {
@@ -812,6 +831,8 @@ load_dsos (DSO *dso, int host_paths)
 			  dso_list_tail->canon_filename = strdup(soname);
 			  dso_list_tail->err_no = errno;
 
+                          add_dso_to_needed(cur_dso_ent, new_dso_ent);
+
 			  continue;
 			}
 
@@ -854,20 +875,7 @@ load_dsos (DSO *dso, int host_paths)
 			dso_list_tail->name = new_dso->soname;
 		    }
 
-		  if (!cur_dso_ent->needed)
-		    {
-		      cur_dso_ent->needed = malloc (sizeof (struct needed_list));
-		      cur_dso_ent->needed_tail = cur_dso_ent->needed;
-		      cur_dso_ent->needed_tail->ent = new_dso_ent;
-		      cur_dso_ent->needed_tail->next = NULL;
-		    }
-		  else if (!in_needed_list (cur_dso_ent->needed, soname))
-		    {
-		      cur_dso_ent->needed_tail->next = malloc (sizeof (struct needed_list));
-		      cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->next;
-		      cur_dso_ent->needed_tail->ent = new_dso_ent;
-		      cur_dso_ent->needed_tail->next = NULL;
-		    }
+                  add_dso_to_needed(cur_dso_ent, new_dso_ent);
 
 		  continue;
 		}
-- 
2.7.4


