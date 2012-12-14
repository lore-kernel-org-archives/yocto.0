Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13160E006C3
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 18:26:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qBE2Qm10008251
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 18:26:48 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Thu, 13 Dec 2012 18:26:48 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <yocto@yoctoproject.org>, <florin.sarbu@windriver.com>,
	<holger.behrens@windriver.com>
Date: Fri, 14 Dec 2012 04:26:35 +0200
Message-ID: <1355451995-29313-2-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1355451995-29313-1-git-send-email-andrei.gherzan@windriver.com>
References: <1355451995-29313-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 2/2] qt4-embedded: Sync bbappend version with oe-core
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
X-List-Received-Date: Fri, 14 Dec 2012 02:26:49 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 ..._4.8.3.bbappend => qt4-embedded_4.8.4.bbappend} |    0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-qt/qt4/{qt4-embedded_4.8.3.bbappend => qt4-embedded_4.8.4.bbappend} (100%)

diff --git a/recipes-qt/qt4/qt4-embedded_4.8.3.bbappend b/recipes-qt/qt4/qt4-embedded_4.8.4.bbappend
similarity index 100%
rename from recipes-qt/qt4/qt4-embedded_4.8.3.bbappend
rename to recipes-qt/qt4/qt4-embedded_4.8.4.bbappend
-- 
1.7.9.5


