Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87DD6E0121B
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 07:54:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r15FsrG2027712
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 5 Feb 2013 07:54:53 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Tue, 5 Feb 2013 07:54:52 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Tue, 5 Feb 2013 17:54:41 +0200
Message-ID: <1360079682-7778-2-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1360079682-7778-1-git-send-email-andrei.gherzan@windriver.com>
References: <1360079682-7778-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 2/3] nfs-utils: Sync with oe-core version
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
X-List-Received-Date: Tue, 05 Feb 2013 15:54:53 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 ...ils_1.2.3.bbappend => nfs-utils_1.2.7.bbappend} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-connectivity/nfs-utils/{nfs-utils_1.2.3.bbappend => nfs-utils_1.2.7.bbappend} (100%)

diff --git a/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend b/recipes-connectivity/nfs-utils/nfs-utils_1.2.7.bbappend
similarity index 100%
rename from recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
rename to recipes-connectivity/nfs-utils/nfs-utils_1.2.7.bbappend
-- 
1.7.5.4


