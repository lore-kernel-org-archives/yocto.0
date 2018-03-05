Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F9AFE00D1C; Mon,  5 Mar 2018 01:31:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 861C5E00E27
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:18 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id 139so14082679wmn.2
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=2Riv+60Gs6yp7bxNSZbHPgyyLcAtOG69Mx4pO6T2Y5g=;
	b=QWzjy3aIl/v9qr3YMS0KKJKpG0xJ20yWGIfHCeHp+K559NOX31yJjOIsdYVaZ8JQ2Q
	WZPeygSOmCUglDsxARDsfdelEWnLCi3/78rSY6Oglo0TZ7zqXnP7MrtrayMDNjD0U3lR
	RbTqR0PX45zMUdXFha8TchKWf9jy84+6OwaIR8JH/2FPlVMEm69x7A4sDxi4Q5itN0kB
	tHyF0x5yEYgHXAfzlxqycRKzyliMPa2jDGL3J3I0Uvd2JKjYxvewvt+vTg7dwiPvZ/sJ
	Z24jWHxKtmIsSVxQFWVXZG93dS5QzJFYpmeWg/srWInLp3aO41qxyR9IQzg7nQDBg5e2
	z3ug==
X-Gm-Message-State: AElRT7G/v8cnpq8X6kE/uJ/XqAvIlGL4EVEgMO+kTguwbhR5vR+dOX/0
	1c/Uu3+uErxAh5+lHKNyyAN8DlyW
X-Google-Smtp-Source: AG47ELtCwMZo0OwYmNnEeQifdf9zmUWV78rppXZenlxG0rj7z3QWF+ho5zuLShDQXJmBz+q81v4C8g==
X-Received: by 10.28.113.79 with SMTP id m76mr1517562wmc.27.1520242277082;
	Mon, 05 Mar 2018 01:31:17 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.15 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:16 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:30:54 +0000
Message-Id: <20180305093106.11858-3-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 02/14] openjdk-8: doesn't compile on aarch64
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Mar 2018 09:31:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

OpenJDK's build system just doesn't support it (it somehow picks
compiler flags for am64 builds, which are invalid for aarch64).

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-common.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
index 19f5103..38a59f4 100644
--- a/recipes-core/openjdk/openjdk-8-common.inc
+++ b/recipes-core/openjdk/openjdk-8-common.inc
@@ -207,6 +207,8 @@ def get_jdk_arch(d):
     return jdk_arch
 
 JDK_ARCH = "${@get_jdk_arch(d)}"
+# We do not yet work for aarch64.
+COMPATIBLE_HOST = "^(?!aarch64).*"
 
 export DEBUG_BINARIES = "true"
 
-- 
2.16.2


