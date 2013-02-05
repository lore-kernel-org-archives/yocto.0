Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04442E01470
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 07:54:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r15Fst2A009933
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 5 Feb 2013 07:54:55 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Tue, 5 Feb 2013 07:54:54 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Tue, 5 Feb 2013 17:54:42 +0200
Message-ID: <1360079682-7778-3-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1360079682-7778-1-git-send-email-andrei.gherzan@windriver.com>
References: <1360079682-7778-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 3/3] eglibc: Sync with oe-core version
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
X-List-Received-Date: Tue, 05 Feb 2013 15:54:55 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../{eglibc_2.16.bbappend => eglibc_2.17.bbappend} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-core-ivi/eglibc/{eglibc_2.16.bbappend => eglibc_2.17.bbappend} (100%)

diff --git a/recipes-core-ivi/eglibc/eglibc_2.16.bbappend b/recipes-core-ivi/eglibc/eglibc_2.17.bbappend
similarity index 100%
rename from recipes-core-ivi/eglibc/eglibc_2.16.bbappend
rename to recipes-core-ivi/eglibc/eglibc_2.17.bbappend
-- 
1.7.5.4


