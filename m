Return-Path: <evadeflow@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CDE8E0027E
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 10:18:35 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so11405099iea.35
	for <yocto@yoctoproject.org>; Mon, 08 Oct 2012 10:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=+aOR58WNSBKNQYEnJ1BsMtzm+hMEcoHY5PVteQD0uqc=;
	b=i7GxYRdQfY1nPca4yQhIXP2xZpLUeO46ostDcvcAyyHjo7sO7h8m1bryoBUh3JRgsp
	1etehLCipVGz4Y5ePRkEWZ3dmOlrrkBvTZVKPF8orxyEs9aBCSlUBZWcqvD2lBHEzruh
	mDueHM7Obg80pzhKG5cMtopupLYiF8pUmLLYPo+DWPZHZtyzLQvBIDMzdifWjTEihss5
	7G6fmbkElBuYtNiT0HVX4d02iDTXXh+CY2ojSave292fPgwJfHrlBWc+evgi8W5aS5PE
	iY/cVwMa64OHwz280WXtZBuBSBzbR5gz8exYl0FOzjjFWBxZkqBgzeNNyaGwjyRpu1LC
	MKOQ==
Received: by 10.50.42.197 with SMTP id q5mr6664904igl.21.1349716709851;
	Mon, 08 Oct 2012 10:18:29 -0700 (PDT)
Received: from localhost.localdomain (11.sub-174-232-65.myvzw.com.
	[174.232.65.11])
	by mx.google.com with ESMTPS id v12sm7866661igv.3.2012.10.08.10.18.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 08 Oct 2012 10:18:29 -0700 (PDT)
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 13:18:14 -0400
Message-Id: <1349716696-15807-1-git-send-email-evadeflow@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <011802>
References: <011802>
Subject: [PATCH 0/2] Move 'tag=' for a few SRC_URIs to SRCREV
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
X-List-Received-Date: Mon, 08 Oct 2012 17:18:35 -0000

Sending in response to:

  - http://lists.yoctoproject.org/pipermail/yocto/2012-September/011802.html

Building with BB_NO_NETWORK can fail if recipes specify 'tag=' in
SRC_URI, since bitbake must contact the source repository to verify
which hash the tag currently points to.  Since tags can, in principle,
change, current best practice is to omit 'tag=' from SRC_URIs and
instead specify the required revision hash in SRCREV.

SHA hashes *cannot* change, so they should not need to be checked, in
theory; however, bitbake currently has no mechanism for distinguishing
between human-friendly tags like 'v2.1.2' and SHA-1 sums like
'fdb6c0402337d9607c7a39155088eaf033742752': both will result in a call
to `git ls-remote` to verify the tag, which is problematic for
BB_NO_NETWORK builds.

The second part of this patch was, I think, already submitted, but not
yet applied to master[?]:

  - http://lists.yoctoproject.org/pipermail/yocto/2012-September/011949.html


Evade Flow (2):
  Move 'tag=' to SRCREV in btrfs-tools recipe
  Move 'tag=' to SRCREV in mtd-utils recipe

 .../btrfs-tools/btrfs-tools_git.bb                 |    3 ++-
 meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb       |    3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
1.7.9.5


