Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666DDE01423
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 04:07:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r04C7Aq7010881
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 4 Jan 2013 04:07:10 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Fri, 4 Jan 2013 04:07:09 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Fri, 4 Jan 2013 14:07:20 +0200
Message-ID: <1357301242-22113-3-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357301242-22113-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357301242-22113-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 3/4] xserver-xorg: Sync version with oe-core
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
X-List-Received-Date: Fri, 04 Jan 2013 12:07:09 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 ....13.0.bbappend => xserver-xorg_1.13.1.bbappend} |    0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-graphics/xorg-xserver/{xserver-xorg_1.13.0.bbappend => xserver-xorg_1.13.1.bbappend} (100%)

diff --git a/recipes-graphics/xorg-xserver/xserver-xorg_1.13.0.bbappend b/recipes-graphics/xorg-xserver/xserver-xorg_1.13.1.bbappend
similarity index 100%
rename from recipes-graphics/xorg-xserver/xserver-xorg_1.13.0.bbappend
rename to recipes-graphics/xorg-xserver/xserver-xorg_1.13.1.bbappend
-- 
1.7.9.5


