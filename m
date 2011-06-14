Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE7664C8009D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 09:36:32 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5EEaSul028394;
	Tue, 14 Jun 2011 07:36:29 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: dvhart@linux.intel.com, tom.zanussi@intel.com, saul.wold@intel.com
Date: Tue, 14 Jun 2011 10:34:46 -0400
Message-Id: <1308062087-21027-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org
Subject: Tom/Darren/Saul,
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
X-List-Received-Date: Tue, 14 Jun 2011 14:36:33 -0000

Not sure who wants to proxy these into meta-intel for me, 
so I've copied you all. Now that the recipe renames for
linux-yocto in the main repos, meta-intel needs to be updated
as well.

These are the referenes that I found (hopefully I didn't 
miss any) and fixed to the new naming convention. 

Note: I can't push to meta-intel-contrib, so I'm just sending
this as a patch.

Cheers,

Bruce

