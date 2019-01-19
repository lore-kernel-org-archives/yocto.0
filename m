Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C376E00CCC; Sat, 19 Jan 2019 11:58:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scottellis.developer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86325E00C5F
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2019 11:58:56 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id n32so18941508qte.11
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2019 11:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=CrXHk4BrsefJe36qwRGjcrnWI68r3AAiMRa6hIkda5o=;
	b=QjFRm1ZaLK0gSsRk/nhgH6D0wWgvEZHaHdrJO6KoXibnTdi/9hp7SyUEGfFGdXzB9L
	oR3b1CQxueGMzj750EZ9Y/5Mj0L9dzTAqyczojvumLL09qXnYZYohgl42CbjpwtxOUi4
	Hd2v96Mz/M/q6mJwdi82Jq6rQpeumXlwxcTOsVAwERSOH3PBqineKkzUTCGU60wIzwPY
	rb+dOYFHURrckOZtnFGrbDsfY4H0NwGNKV36iBaVyZUhLmJAcLUfmdeZg79Y0PVndS6K
	goYVWgsH8A4iWd79ElrJgI9PVstSQUqsiC/30Q0gCrZs1xmMY/KXfgceGU3js65vMDSJ
	YfIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=CrXHk4BrsefJe36qwRGjcrnWI68r3AAiMRa6hIkda5o=;
	b=HslO3YhAca5kMnBcQlUdrfY7ytX2bSVBOotVwcbhusv7RXtKM0nSkFX95GYAjXTwA5
	XL/1mF38Uv4n2LFi8Jb+7XBNkqW2YHxLfz7KGDP/jtaX8fybY0g0d73DqlM4EXaGJbJ6
	xeWVSZmWCcWRY3VuZIFnVFAEZXOOJp53sr1Ryceh6ffLB+Kt7cIxcp0Tq0UYeb40kNpD
	pTBG2y6UX0HXZgNQhjNyUdqVyh8swfA3q4uNZKUHDfAV+tqwPg80qRN6hHhN2ddt1l1h
	ZL7zLUqxriY2sKv8wkoF7812YbsLjHvBawpZLSnR8g8eqJ+aHN5YieWdA6fcSPVLmsXn
	MfiQ==
X-Gm-Message-State: AJcUukdQKK4+QWIo5449cN7VX0iC+n34vCPpsIM0K5HQ6Sk9HEJchvHr
	7cT03GqlRI5SCXPslXooIXdXvrNZ
X-Google-Smtp-Source: ALg8bN5WHLuY/PQBAUVi3JYqoBXmIdXyEmIIIud63xGX6ZtEUQceS6BHiINMm1omuZGutFM6iWjncA==
X-Received: by 2002:ac8:231a:: with SMTP id a26mr21546909qta.40.1547927935709; 
	Sat, 19 Jan 2019 11:58:55 -0800 (PST)
Received: from fractal.jumpnow (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	n68sm52042711qte.66.2019.01.19.11.58.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 19 Jan 2019 11:58:55 -0800 (PST)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Sat, 19 Jan 2019 14:58:52 -0500
Message-Id: <1547927932-4718-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] scapy: Fix shebang for python3
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
X-List-Received-Date: Sat, 19 Jan 2019 19:58:57 -0000

Both scapy and UTscapy have python in the shebang line
regardless of whether python3-scapy or python-scapy
was built.

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/scapy/python-scapy.inc | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
index f90b93d..43ef959 100644
--- a/recipes-security/scapy/python-scapy.inc
+++ b/recipes-security/scapy/python-scapy.inc
@@ -10,6 +10,13 @@ SRC_URI[sha256sum] = "1baa048936207ceb1a4281a0e1e3b4317667c754872a0bb4734c5213c4
 
 inherit pypi
 
+do_install_append() {
+    if [ "${PYTHON_PN}" = "python3" ]; then
+        sed -i -e 's/python/python3/' ${D}${bindir}/scapy
+        sed -i -e 's/python/python3/' ${D}${bindir}/UTscapy
+    fi
+}
+
 RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-cryptography ${PYTHON_PN}-netclient  \
                   ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_PN}-pkgutil ${PYTHON_PN}-shell \
                   ${PYTHON_PN}-threading ${PYTHON_PN}-numbers ${PYTHON_PN}-pycrypto"
-- 
2.7.4


