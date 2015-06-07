Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06012E009CA; Sun,  7 Jun 2015 11:30:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 151FFE0097D
	for <yocto@yoctoproject.org>; Sun,  7 Jun 2015 11:30:16 -0700 (PDT)
Received: by qkoo18 with SMTP id o18so67794553qko.1
	for <yocto@yoctoproject.org>; Sun, 07 Jun 2015 11:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=v2TBxbRPXXPYLdH5FfpDRITogu6swSeQQDSEGnKeHiI=;
	b=eig7CcyO/BAkCS62l4c1z5Kh4BY2mjFG2GGoY1DF8+37ogSavfWTlPQz8yBHcoKxys
	/4uaaJcNjGzPdyt/J6YchDK3xvu7/y1vfAos4DuY/YrNihzPschOmmgjzsxV6hkOg4vb
	u0nthfcH6HbRBoMhN8RQq8PBOY35BjMqGCDJV1PMsCAyN/LIcUdFZEM0Y4ettHEyGbFi
	uu8TyUQB8W1id32xE0xrtkLgFqeNw3SLnIGb2Q3SPs7pF60xLBRlxabNdRCaREffZ2Yv
	8lmkikZI1j2qyxTjhtg4topjckLfxxCLJVSoObeMiwRdEol3WqzIprh2oayssgoDoR/n
	4FGw==
X-Received: by 10.55.41.24 with SMTP id p24mr25099800qkh.55.1433701815957;
	Sun, 07 Jun 2015 11:30:15 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id r88sm163222qkh.12.2015.06.07.11.30.14
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 07 Jun 2015 11:30:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  7 Jun 2015 11:30:06 -0700
Message-Id: <1433701806-3473-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1433701806-3473-1-git-send-email-akuster808@gmail.com>
References: <1433701806-3473-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] scapy: add new package
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
X-List-Received-Date: Sun, 07 Jun 2015 18:30:19 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/scapy/scapy_2.3.1.bb | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 recipes-security/scapy/scapy_2.3.1.bb

diff --git a/recipes-security/scapy/scapy_2.3.1.bb b/recipes-security/scapy/scapy_2.3.1.bb
new file mode 100644
index 0000000..d8c731b
--- /dev/null
+++ b/recipes-security/scapy/scapy_2.3.1.bb
@@ -0,0 +1,17 @@
+SUMMARY = "Network scanning and manipulation tool"
+DESCRIPTION = "Scapy is a powerful interactive packet manipulation program. It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them, match requests and replies, and much more. It can easily handle most classical tasks like scanning, tracerouting, probing, unit tests, attacks or network discovery (it can replace hping, 85% of nmap, arpspoof, arp-sk, arping, tcpdump, tethereal, p0f, etc.). It also performs very well at a lot of other specific tasks that most other tools can't handle, like sending invalid frames, injecting your own 802.11 frames, combining technics (VLAN hopping+ARP cache poisoning, VOIP decoding on WEP encrypted channel, ...), etc."
+SECTION = "security"
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
+
+SRC_URI = "https://bitbucket.org/secdev/${PN}/downloads/${BP}.zip"
+
+SRC_URI[md5sum] = "a30d828e59801d1d092219b349f1da9e"
+SRC_URI[sha256sum] = "8972c02e39a826a10c02c2bdd5025f7251dce9589c57befd9bb55c65f02e4934"
+
+inherit setuptools
+
+RDEPENDS_${PN} = "tcpdump python-subprocess python-compression python-netclient  \
+                  python-netserver python-pydoc python-pkgutil python-shell \
+                  python-threading python-numbers python-pycrypto"
-- 
2.3.5


