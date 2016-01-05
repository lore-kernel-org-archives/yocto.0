Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5938FE00BB6; Tue,  5 Jan 2016 12:17:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dl9pf[at]gmx.de)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 778ADE009EA
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 12:17:09 -0800 (PST)
Received: from elrond.auenland.lan ([95.90.4.156]) by mail.gmx.com (mrgmx102)
	with ESMTPSA (Nemesis) id 0Meutp-1aaiL92Ifp-00OYMx;
	Tue, 05 Jan 2016 21:12:06 +0100
From: dl9pf@gmx.de
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 21:11:30 +0100
Message-Id: <1452024690-31461-2-git-send-email-dl9pf@gmx.de>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <1452024690-31461-1-git-send-email-dl9pf@gmx.de>
References: <1452024690-31461-1-git-send-email-dl9pf@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K0:upHk8uSB9yp+0Tj+Rs58COf5DTEbXp5l0V8eHDUKnAbGjScWLjQ
	aW1+8sYaj43UDuHpwEk2paH05e2GumGEwAaufGl9VUPf5X/3yOO3gH3UiFfQ0koRB652HNR
	HJXBOMM3mLOl1W6RSfEIbTOUCktWSVj23AcVVn+oyhkUarnAPeVZQSOG8rSqT4AyGSPh57X
	RwF7SrmOgpNG8k3X10ywg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:xtv6XbpKFaM=:dPtzT3QbR/96Ak5BZH+N6W
	d0qqG9qAgJuEm7YkUdxZwkv2UqAV3A/ztICyKFAoNXK1xw5j6DsN/NYsyaEpCu12aRPRF1Lsx
	OlrICf3mtOXqXq4ypMGQ1+dM111D0aXAQ10oFYeYEOJs/iW0zqialXtS/sUIYxFCHm27QrG5U
	27KOQX7cVunhsTjXvcIgNQR/xgrsjBwtePoKv5WJxR2PlLOmlCROiSNo1L7H5A5w43Z6ydqdN
	+nB1H4DsVJ0W9eDRUKtR3ScQAu4TLgVtgo80tq0gM6i9b23KVonN2T8JQRKAkYKGPPTtOCmyP
	SpzM+Fc1H7BwrxDAqtEujEU4By3ltrA5KJszSjv1siGXqQLgJoko3LcXZuAJX73t8BICbzIEz
	bzBmkzwF0ufgq5ZU0EiU9srDL+yV2OUZluIq1ACyzFkBAb0WWyqIiq+gNpQvywd0nXpqjMHNh
	zepz0wdSEIanlWp92DjlQRAOB4cZXdD4hlrtulmbq1Jp9AoxYs8dWAOUE1fYf7EAdJs4Vm0/T
	sXHjrrZV4jGFJ8lVD/37VcgQrnq/J+X3/742m2rcjYcoZPCRcWQvTEN+TRjJ1HnMnnSxwiai2
	z4JXsAyKqb4e9T9ATgCMXD5ff+ISYP2jMz530YXLd5wHBWaVmlBeLli0C2+tSEJqQL0MGlBl8
	/0Jk9YJB2uNNdH9+0NaiC+fyQMDvFjHjhygrs1JVLL1TiPGgpp/NUmGTUyk1kLU28WNAP7ZlH
	yDpKwY77zNQjOXFQSQIyMVGRuPIcdyxNyFsWsfheuR+/fH0gk35331vqRHTSM79rInl9ctP8e
	WO9MTWs
Subject: [PATCH] Fix connectivity check for BB_FETCH_PREMIRRORONLY case
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
X-List-Received-Date: Tue, 05 Jan 2016 20:17:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jan-Simon Möller <dl9pf@gmx.de>

BB_FETCH_PREMIRRORONLY sets BB_NO_NETWORK (implicitly in the fetcher).
To avoid the sanity check to fail in an offline environment,
use the same override mechanism as in the fetcher.

Signed-off-by: Jan-Simon Möller <dl9pf@gmx.de>
---
 meta/classes/sanity.bbclass | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index ad9dda8..62dce92 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -271,6 +271,9 @@ def check_connectivity(d):
     test_uris = (d.getVar('CONNECTIVITY_CHECK_URIS', True) or "").split()
     retval = ""
 
+    # Check for BB_FETCH_PREMIRRORONLY and adapt BB_NO_NETWORK
+    if bb.data.getVar("BB_FETCH_PREMIRRORONLY", self.d, True) is not None:
+        bb.data.setVar("BB_NO_NETWORK", "1", self.d)
     # Only check connectivity if network enabled and the
     # CONNECTIVITY_CHECK_URIS are set
     network_enabled = not d.getVar('BB_NO_NETWORK', True)
-- 
2.6.2


