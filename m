Return-Path: <martin.jansa@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AA5CE01434
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 08:34:28 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so4711274bkc.35
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 08:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=EL3SmxlpYhYdqPzDkqKj1xN8b2z19DKnJjENqV258ng=;
	b=Z1Wy+FitE/zAEJ4pYdHBal4lohKcFGvPkVIFer2+RyNCGgeWfvYJRybAQ4EjyHXKlw
	DGm/guIL81i8iX0riSFCdD5zulInwPFq2d4FnnwGMz/sspaczQSjwQuxPaqIFTFXlFxu
	cpnr7wBlsKMiNrhJ7RBrcu//+Q6qIHpKEsbdLYZSzm7jNKtmCs57ryYpPBjVNuev2E4+
	pB60OvPgsCTk4zhEenPtA8B60Nf2ga0XQ05260jJMI+2R7ABPtaIplNantQVebthZ+XA
	X4xYua7W1PsCRpSDOhxKjGoso6h5vXpqoW1CcEX6pWfQAnAds3zlI7eTTFs7uHmfjJ1P
	cRaw==
Received: by 10.204.148.72 with SMTP id o8mr6016275bkv.127.1338305667014;
	Tue, 29 May 2012 08:34:27 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id m2sm18526364bkm.2.2012.05.29.08.34.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 May 2012 08:34:26 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 29 May 2012 17:34:14 +0200
Message-Id: <527918a02c6d8529a545d5e76ff08ab8e0a82f19.1338305162.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.6
In-Reply-To: <cover.1338305162.git.Martin.Jansa@gmail.com>
References: <cover.1338305162.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1338305162.git.Martin.Jansa@gmail.com>
References: <cover.1338305162.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 1/2] Option "C" ist shown in usage() and implemented, but was missing in getopts. Added "C".
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
X-List-Received-Date: Tue, 29 May 2012 15:34:28 -0000

From: Ondics Githubler <githubler@ondics.de>

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-build |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/opkg-build b/opkg-build
index 012afd3..485897a 100755
--- a/opkg-build
+++ b/opkg-build
@@ -160,7 +160,7 @@ outer=ar
 noclean=0
 opkext=0
 usage="Usage: $0 [-c] [-C] [-O] [-o owner] [-g group] <pkg_directory> [<destination_directory>]"
-while getopts "cg:ho:vO" opt; do
+while getopts "cCg:ho:vO" opt; do
     case $opt in
 	o ) owner=$OPTARG
 	    ogargs="--owner=$owner"
-- 
1.7.8.6


