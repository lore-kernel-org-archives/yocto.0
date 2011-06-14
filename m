Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 590754C8051E
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 09:55:07 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5EEt41Q001773;
	Tue, 14 Jun 2011 07:55:05 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: dvhart@linux.intel.com, tom.zanussi@intel.com, saul.wold@intel.com
Date: Tue, 14 Jun 2011 10:53:21 -0400
Message-Id: <1308063203-22165-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
from: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Tue, 14 Jun 2011 14:55:07 -0000

Tom/Darren/Saul,

Not sure who wants to proxy these into meta-intel for me, 
so I've copied you all. Now that the recipe renames for
linux-yocto in the main repos, meta-intel needs to be updated
as well.

Patch 2 is for meta-yocto with the same change.

These are the referenes that I found (hopefully I didn't 
miss any) and fixed to the new naming convention. 

Note: I can't push to meta-intel-contrib, so I'm just sending
this as a patch.

Cheers,

Bruce

