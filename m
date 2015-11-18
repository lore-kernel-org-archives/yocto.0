Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CCCEE00B9C; Tue, 17 Nov 2015 20:32:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.34 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F5B9E00B6D
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 20:32:01 -0800 (PST)
Received: from epcpsbgr2.samsung.com
	(u142.gpu120.samsung.co.kr [203.254.230.142])
	by mailout4.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NXZ018GWTXCQW90@mailout4.samsung.com> for
	yocto@yoctoproject.org; Wed, 18 Nov 2015 13:32:00 +0900 (KST)
Received: from epcpsbgm2new.samsung.com ( [172.20.52.124])
	by epcpsbgr2.samsung.com (EPCPMTA) with SMTP id 53.18.05272.04FFB465;
	Wed, 18 Nov 2015 13:32:00 +0900 (KST)
X-AuditID: cbfee68e-f791c6d000001498-3b-564bff406062
Received: from epmmp2 ( [203.254.227.17])	by epcpsbgm2new.samsung.com (EPCPMTA)
	with SMTP id 95.74.18629.F3FFB465; Wed, 18 Nov 2015 13:32:00 +0900 (KST)
Received: from localhost.localdomain ([107.108.92.210])
	by mmp2.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTPA id <0NXZ00L5LTVYIO90@mmp2.samsung.com>;
	Wed, 18 Nov 2015 13:31:59 +0900 (KST)
From: Maninder Singh <maninder1.s@samsung.com>
To: mark.hatle@windriver.com
Date: Wed, 18 Nov 2015 10:01:08 +0530
Message-id: <1447821068-39066-1-git-send-email-maninder1.s@samsung.com>
X-Mailer: git-send-email 1.7.9.5
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBLMWRmVeSWpSXmKPExsWyRsSkRtfhv3eYwbyFPBYvXk1gsXhw4SqT
	xeH5bSwWm54fZLG492Yrk8Whk3MZLSa9XMPmwO7Rt2UVo8f6LVuZPNpP9LEFMEdx2aSk5mSW
	pRbp2yVwZTReP89e8JezYud/1wbGnRxdjBwcEgImEm96ObsYOYFMMYkL99azdTFycQgJrGCU
	+Dp1LxtEwkRi0f9NTBCJWYwS/67uZoVwfjJKNE69wg5SxSagJ7Fq1x4WkKkiAjISr79xgdQw
	C2xklLg2pZEVpEZYIFJiw4MlzCA2i4CqxKdlTYwgNq+Au8SbxT3MEBcpSMyZZAPSKyHwm01i
	+swjrBD1AhLfJh9igaiRldh0gBniOEmJgytusExgFFzAyLCKUTS1ILmgOCm9yEivODG3uDQv
	XS85P3cTIzBAT/971reD8eYB60OMAhyMSjy8CYu9w4RYE8uKK3MPMZoCbZjILCWanA+Mg7yS
	eENjMyMLUxNTYyNzSzMlcd4EqZ/BQgLpiSWp2ampBalF8UWlOanFhxiZODilGhiDlyseNqs8
	cWsy1591MdfSOQ2zTX88upkZmRjRNm3be1fDOmYjbmv/iN3pSRqSnIHK5jd/Ce3VOvvnf7nb
	6fu3pnPGMn7Kti4+m1e1R8Q77PwX3peztO473lRaO0FeZO2DleWOa5fWf4n+mTlX9vRrgyuP
	tr5SUNfsPpr1RXLGPLXHLx95/K5UYinOSDTUYi4qTgQAqNSd/EsCAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeLIzCtJLcpLzFFi42I5/e+xoK7Df+8wg86XjBYvXk1gsXhw4SqT
	xeH5bSwWm54fZLG492Yrk8Whk3MZLSa9XMPmwO7Rt2UVo8f6LVuZPNpP9LEFMEc1MNpkpCam
	pBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXmAK1XUihLzCkFCgUk
	Fhcr6dthmhAa4qZrAdMYoesbEgTXY2SABhLWMGY0Xj/PXvCXs2Lnf9cGxp0cXYycHBICJhKL
	/m9igrDFJC7cW8/WxcjFISQwi1Hi39XdrBDOT0aJxqlX2EGq2AT0JFbt2sPSxcjBISIgI/H6
	GxdIDbPARkaJa1MaWUFqhAUiJTY8WMIMYrMIqEp8WtbECGLzCrhLvFncwwzSKyGgIDFnks0E
	Ru4FjAyrGCVSC5ILipPSc43yUsv1ihNzi0vz0vWS83M3MYLj4Jn0DsbDu9wPMQpwMCrx8HIs
	9A4TYk0sK67MPcQowcGsJMKr+QooxJuSWFmVWpQfX1Sak1p8iNEUaP9EZinR5HxgjOaVxBsa
	m5ibGptamliYmFkqifPqexqFCQmkJ5akZqemFqQWwfQxcXBKNTAyKhga64vuiv/979t3bitf
	1U8pp5yfVT14x/LzE+vpwmINh8WVcp1VbOrntF+FT2e47dVhqJp4lvPm2RUfv2U1mN5uPO5p
	e2rdrhl5S1X+MF8VYSgs8P8Tudk1+hq7tNnXjgvrgxman813+3/mxYI5Asrtd469PDJzf1tU
	6d0YfrNghdNqe8qUWIozEg21mIuKEwGMcEUdmQIAAA==
DLP-Filter: Pass
X-MTR: 20000000000000000@CPGS
X-CFilter-Loop: Reflected
Cc: Vaneet Narang <v.narang@samsung.com>, yocto@yoctoproject.org,
	doha.hwang@samsung.com, ajeet.y@samsung.com,
	Maninder Singh <maninder1.s@samsung.com>, pankaj.m@samsung.com
Subject: [prelink-cross][PATCH 1/1] configure.ac: with new automake make is not working
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
X-List-Received-Date: Wed, 18 Nov 2015 04:32:07 -0000

with automake verisoin(GNU automake) 1.15 (checked on aarch64),
make is not working and looping at below info:-

configure.ac:8: warning: AM_INIT_AUTOMAKE: two- and three-arguments
forms are deprecated.  For more info, see:
configure.ac:8:
http://www.gnu.org/software/automake/manual/automake.html#Modernize-AM_005fINIT_005fAUTOMAKE-invocation
 cd . && /bin/sh ./config.status Makefile
config.status: creating Makefile
make: Warning: File 'Makefile.am' has modification time 539 s in the
future

Thus changing configure.ac as given in above link.

Signed-off-by: Vaneet Narang <v.narang@samsung.com>
Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
---
 configure.ac |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/configure.ac b/configure.ac
index 4943932..791b8bd 100644
--- a/configure.ac
+++ b/configure.ac
@@ -1,11 +1,12 @@
 dnl Process this file with autoconf to produce a configure script. -*-m4-*-
-AC_INIT(src/prelink.c)
+AC_INIT([prelink], [0.0])
+AC_CONFIG_SRCDIR(src/prelink.c)
 AC_CONFIG_HEADERS(config.h)
 AC_PREREQ(2.50)			dnl Minimum Autoconf version required.
 AC_CANONICAL_SYSTEM
 AC_ARG_PROGRAM
 
-AM_INIT_AUTOMAKE([prelink], [0.0])
+AM_INIT_AUTOMAKE
 
 ALL_LINGUAS=
 
-- 
1.7.1


