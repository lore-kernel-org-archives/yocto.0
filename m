Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 72AC54C800C1
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 15:49:05 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5EKn28w013373;
	Tue, 14 Jun 2011 13:49:03 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: dvhart@linux.intel.com, tom.zanussi@intel.com, saul.wold@intel.com
Date: Tue, 14 Jun 2011 16:47:19 -0400
Message-Id: <1308084441-6399-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org
Subject: [PATCH v3] meta-yocto/meta-intel: linux-yocto recipe renames
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
X-List-Received-Date: Tue, 14 Jun 2011 20:49:05 -0000

Tom/Darren/Saul,

Here's v3 of this patch series, I was unfortunately on bernard when I did the
first and second patches. This one has been tested on multiple boards, and
contains changes to both the names and some SRCREV movement to bbappend
files.

Patch 2 is for meta-yocto with the same change.

These are the references that I found (hopefully I didn't 
miss any) and fixed to the new naming convention. 

Note: I still can't push to meta-intel-contrib, so I'm just
sending this as a patch.

Cheers,

Bruce
	      
Bruce Ashfield (1):
  meta-intel/linux-yocto: update to match the renamed linux-yocto
    recipes

 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    6 ------
 meta-crownbay/conf/machine/crownbay.conf           |    8 +-------
 .../linux/linux-yocto-stable_git.bbappend          |    9 ---------
 .../linux/linux-yocto_2.6.34.bbappend              |   15 +++++++++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |   15 +++++++++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    9 ---------
 meta-emenlow/conf/machine/emenlow.conf             |    6 ------
 .../linux/linux-yocto-stable_git.bbappend          |    3 ---
 .../linux/linux-yocto_2.6.34.bbappend              |    6 ++++++
 .../linux/linux-yocto_2.6.37.bbappend              |    6 ++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 ---
 meta-fishriver/conf/machine/fishriver.conf         |    6 ------
 .../linux/linux-yocto-stable_git.bbappend          |    5 -----
 .../linux/linux-yocto_2.6.34.bbappend              |    8 ++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |    7 +++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 ---
 meta-jasperforest/conf/machine/jasperforest.conf   |    2 --
 .../linux/linux-yocto-stable_git.bbappend          |    5 -----
 .../linux/linux-yocto_2.6.34.bbappend              |    5 +++++
 .../linux/linux-yocto_2.6.37.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    6 ------
 .../linux/linux-yocto-stable_git.bbappend          |   10 ----------
 .../linux/linux-yocto_2.6.34.bbappend              |   10 ++++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |   10 ++++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 ----------
 meta-sugarbay/conf/machine/sugarbay.conf           |    3 ---
 .../linux/linux-yocto_2.6.37.bbappend              |    7 +++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    5 -----
 28 files changed, 98 insertions(+), 98 deletions(-)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend


