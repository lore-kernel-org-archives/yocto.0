Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8AAE4C80332
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 02:58:26 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Apr 2011 00:58:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,273,1301900400"; d="scan'208";a="914957505"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2011 00:58:25 -0700
Message-ID: <4DB7CCA1.5000500@intel.com>
Date: Wed, 27 Apr 2011 15:58:25 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: evolution-hackers@gnome.org
Cc: yocto@yoctoproject.org
Subject: [RFC] fix seg fault of evolution-data-server when adding default vcard
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
X-List-Received-Date: Wed, 27 Apr 2011 07:58:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This is one simple patch to fix seg fault of evolution-data-server,
when new contact is added for new created DB.

The root cause is simple: do_create (bf, XIMIAN_VCARD,....) would access
bf->priv->file_db and cause seg fault if not initialized.

I have created one bz https://bugzilla.gnome.org/show_bug.cgi?id=648736, 
also attached patch for comments.


=====================================
Adding default vcard for new created DB always failed with seg fault, as
file_db was not initialized before access. This patch fix it.

Signed-off-by: Edwin Zhai <edwin.zhai@intel.com>
Index: 
evolution-data-server/addressbook/backends/file/e-book-backend-file.c
===================================================================
---
evolution-data-server.orig/addressbook/backends/file/e-book-backend-file.c    

2011-04-26 15:46:03.000000000 +0800
+++
evolution-data-server/addressbook/backends/file/e-book-backend-file.c   
2011-04-26 15:59:13.000000000 +0800
@@ -1247,6 +1247,8 @@
 #ifdef CREATE_DEFAULT_VCARD
                 EContact *contact = NULL;
 
+                /* Initialize file_db, or else following do_create
cause seg fault */
+                bf->priv->file_db = db;
                 if (!do_create (bf, XIMIAN_VCARD, &contact, NULL))
                     g_warning ("Cannot create default contact");
                 if (contact)


------------------------
Yocto Project @
http://www.yoctoproject.org/


