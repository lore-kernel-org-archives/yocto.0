Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD11DE00CE8; Sat, 19 Jan 2019 09:30:11 -0800 (PST)
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
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98D9DE00C91
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2019 09:30:10 -0800 (PST)
Received: by mail-qt1-f175.google.com with SMTP id t13so18765729qtn.3
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2019 09:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=/mOcOT1pAIffBHyzof3CLvD/KlOrMDHG1FiAVpv+QAY=;
	b=vQnfqxmEIQLq+fina/oryjyQ2xe3jR1J4f/Kl0icgdwVxl5d5Dg4DeIofpz4SUUl69
	QiFSb5jeWWupbrSnEqSvauUZZgnlIk9g5owGCrpruuWOIQ7KsE/qIX+tiByroLgHgBVZ
	05SpQz6NPTyG0H+i8thHPPtwSk4jx0QL1ETZnTZIbQW4h04HRgLd3fAF1yvQm2pyVdQN
	0P6x9ZCKWWFJswTz3psmUSuOgDA2pftc0TmEneiasZQnjjtVOAd93+Gnxy6CVRutL9Po
	Ux7/KhZmmlrVzPJpWieOfz1AbBZYr/EJpz/JSkdnzN/IBIWXzeIni4H7FoaGvGR3tL5u
	J6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/mOcOT1pAIffBHyzof3CLvD/KlOrMDHG1FiAVpv+QAY=;
	b=or0r8x6V1+ndQt1AZl7XRFu4ZIj+WYJdO1/tN0HZPK12Qs6pQVDl66zdnKKRFMuhDf
	ltoG9VcMGkvlYwgKHiNGm2vfEe4uE33V798QMyVXjVFaHZtJZWnbprcIc7YlWnyW6ceU
	Wk/KnnaRn4XDDL5xxPz9kn0aABojFKUi4GaCJvPmaMyfr8AMjjkjeE7rd76SYRz9pBu6
	aBOk/JNDPGiDjo7um996iI8+1YmVyESRNFiexMrE3IZEU1NGhUtjWScBTcDNaYGN39D/
	H3eY18IA2nhaFqa1oIcNPjpfU3qYMJ+QYk58sp/dTsqHMuUtejFup1fPed7Zbu8x2SBy
	dbfw==
X-Gm-Message-State: AJcUukfa4FycMvefAbpYZmK2Hg3WoibsUugdmXETIk3/hlp3moOyJuWt
	x4hgU505hJ7ty8fVgetzLdEKGo+E
X-Google-Smtp-Source: ALg8bN4/Wg1cjh0P/iHSR0LF37HTmTQACrs+RBasNwAHqMaLy4v1T1/01JLjH2eM/QHdnplopp6Hxw==
X-Received: by 2002:a0c:a326:: with SMTP id u35mr20232694qvu.190.1547919009868;
	Sat, 19 Jan 2019 09:30:09 -0800 (PST)
Received: from fractal.jumpnow (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	v32sm77783705qta.37.2019.01.19.09.30.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 19 Jan 2019 09:30:09 -0800 (PST)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Sat, 19 Jan 2019 12:29:05 -0500
Message-Id: <1547918945-28424-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] scapy: Add python-cryptography to RDEPENDS
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
X-List-Received-Date: Sat, 19 Jan 2019 17:30:11 -0000

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/scapy/python-scapy.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
index 95e5312..f90b93d 100644
--- a/recipes-security/scapy/python-scapy.inc
+++ b/recipes-security/scapy/python-scapy.inc
@@ -10,6 +10,6 @@ SRC_URI[sha256sum] = "1baa048936207ceb1a4281a0e1e3b4317667c754872a0bb4734c5213c4
 
 inherit pypi
 
-RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-netclient  \
+RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-cryptography ${PYTHON_PN}-netclient  \
                   ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_PN}-pkgutil ${PYTHON_PN}-shell \
                   ${PYTHON_PN}-threading ${PYTHON_PN}-numbers ${PYTHON_PN}-pycrypto"
-- 
2.7.4


