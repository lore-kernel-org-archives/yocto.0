Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD1B9E00BCC; Thu, 26 Nov 2015 00:02:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36EBDE00B5D
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 00:02:08 -0800 (PST)
Received: from epcpsbgr4.samsung.com
	(u144.gpu120.samsung.co.kr [203.254.230.144])
	by mailout4.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NYE02HLCWZJ9Z70@mailout4.samsung.com> for
	yocto@yoctoproject.org; Thu, 26 Nov 2015 17:02:07 +0900 (KST)
Received: from epcpsbgm1new.samsung.com ( [172.20.52.122])
	by epcpsbgr4.samsung.com (EPCPMTA) with SMTP id 0E.C3.29659.E7CB6565;
	Thu, 26 Nov 2015 17:02:07 +0900 (KST)
X-AuditID: cbfee690-f79e96d0000073db-66-5656bc7e7c41
Received: from epmmp1.local.host ( [203.254.227.16])
	by epcpsbgm1new.samsung.com (EPCPMTA) with SMTP id 36.05.24993.E7CB6565;
	Thu, 26 Nov 2015 17:02:06 +0900 (KST)
Received: from localhost.localdomain ([107.108.92.210])
	by mmp1.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTPA id <0NYE00KH3WYK2MK0@mmp1.samsung.com>;
	Thu, 26 Nov 2015 17:02:06 +0900 (KST)
From: Maninder Singh <maninder1.s@samsung.com>
To: mark.hatle@windriver.com
Date: Thu, 26 Nov 2015 13:31:18 +0530
Message-id: <1448524880-31492-1-git-send-email-maninder1.s@samsung.com>
X-Mailer: git-send-email 1.7.9.5
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPLMWRmVeSWpSXmKPExsWyRsSkSrd+T1iYwYtrrBYvXk1gsdi87iSz
	xYMLV5ks2t7+ZLM4PL+NxWLT84MsFvfebGWymPRyDZsDh0ffllWMHuu3bGXyaD/RxxbAHMVl
	k5Kak1mWWqRvl8CVcfrYbJaCtXwV13+sZGpgvM/dxcjJISFgIvHyxTI2CFtM4sK99UA2F4eQ
	wApGic6vX9hgih6c3cMOkVjKKHFuyhUWCOcno8SnmRtYQarYBPQkVu3aA5Tg4BARkJF4/Y0L
	pIZZYC+jxIlfuxlBaoQFAiSmrekGm8oioCpxdP88dhCbV8BdYkLPblaQXgkBBYk5k2xAeiUE
	/rNJLH11jBmiXkDi2+RDLBA1shKbDjBDHCcpcXDFDZYJjIILGBlWMYqmFiQXFCelF5noFSfm
	Fpfmpesl5+duYgSG6+l/zybsYLx3wPoQowAHoxIPb4FtWJgQa2JZcWXuIUZToA0TmaVEk/OB
	UZFXEm9obGZkYWpiamxkbmmmJM77WupnsJBAemJJanZqakFqUXxRaU5q8SFGJg5OqQZG+Rf3
	P2W/k9gdGLDx2fcN+2dbTisS2xzI5PTz+rsPqz9V6d6eddr4wbKyZVUKFteXr2c7IPx9koh4
	cZOr4Tdlu91K/9ZWGrwwe3ur70Zl2ovP2z2yZ6+1WWxwtKT9WpG892Vd9aO/PQVcz4a2Tplr
	eWviR+X+BXpc73NkjSuy/m6x/SxTyHH8mRJLcUaioRZzUXEiAOLOPflSAgAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphkeLIzCtJLcpLzFFi42I5/e+xgG7dnrAwgwMNFhYvXk1gsdi87iSz
	xYMLV5ks2t7+ZLM4PL+NxWLT84MsFvfebGWymPRyDZsDh0ffllWMHuu3bGXyaD/RxxbAHNXA
	aJORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6DrlpkDdIOSQlli
	TilQKCCxuFhJ3w7ThNAQN10LmMYIXd+QILgeIwM0kLCGMeP0sdksBWv5Kq7/WMnUwHifu4uR
	k0NCwETiwdk97BC2mMSFe+vZuhi5OIQEljJKnJtyhQXC+cko8WnmBlaQKjYBPYlVu/YAJTg4
	RARkJF5/4wKpYRbYyyhx4tduRpAaYYEAiWlrutlAbBYBVYmj++eBbeAVcJeY0LObFaRXQkBB
	Ys4kmwmM3AsYGVYxSqQWJBcUJ6XnGuallusVJ+YWl+al6yXn525iBMfEM6kdjAd3uR9iFOBg
	VOLhLbANCxNiTSwrrsw9xCjBwawkwhuTDRTiTUmsrEotyo8vKs1JLT7EaAq0fyKzlGhyPjBe
	80riDY1NzE2NTS1NLEzMLJXEeS/s9wsTEkhPLEnNTk0tSC2C6WPi4JRqYNQ+8VRrR8B2k7+i
	rGddKs66qt1Zf8/9YtCttmerKjpNt+oeFdX/axmw6Gllb8iPyl6X6tuC2w5X1c5//cxt4w4m
	cYd2DVXVdX8EVDtmXCjevSZI8dSzcJM6F4s7+lzVfz9MP8p3MOTUiVOZZzo/5eTnbsvl2jD9
	6W31rg77C321wp2XHQyBqYKlOCPRUIu5qDgRAAqgkm+fAgAA
DLP-Filter: Pass
X-MTR: 20000000000000000@CPGS
X-CFilter-Loop: Reflected
Cc: hakbong5.lee@samsung.com, yocto@yoctoproject.org, doha.hwang@samsung.com,
	ajeet.y@samsung.com, akhilesh.k@samsung.com,
	Maninder Singh <maninder1.s@samsung.com>, pankaj.m@samsung.com
Subject: [prelink-cross][PATCH 0/2] aarch64 fixes reported by testsuite failures
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
X-List-Received-Date: Thu, 26 Nov 2015 08:02:10 -0000

aarch64 fixes reported by testsuite failures

To work this we need to copy all required system libs
in testsuite directory, and at our set-up we copied
below libs:-
1. ld-linux-aarch64.so.1
2. libc.so.6
3. libgcc_s.so.1
4. libm.so.6
5. libstdc++.so.6

root# make check
make  check-TESTS
make[1]: Entering directory 'prelink-cross/testsuite'
make[2]: Entering directory 'prelink-cross/testsuite'
SKIP: movelibs.sh
PASS: reloc1.sh
PASS: reloc2.sh
PASS: reloc3.sh
SKIP: reloc4.sh
SKIP: reloc5.sh
PASS: reloc6.sh
PASS: reloc7.sh
PASS: reloc8.sh
PASS: reloc9.sh
PASS: reloc10.sh
PASS: reloc11.sh
PASS: shuffle1.sh
PASS: shuffle2.sh
PASS: shuffle3.sh
PASS: shuffle4.sh
PASS: shuffle5.sh
PASS: shuffle6.sh
PASS: shuffle7.sh
PASS: shuffle8.sh
PASS: shuffle9.sh
PASS: undo1.sh
PASS: layout1.sh
PASS: layout2.sh
FAIL: unprel1.sh
PASS: tls1.sh
PASS: tls2.sh
PASS: tls3.sh
PASS: tls4.sh
PASS: tls5.sh
PASS: tls6.sh
PASS: tls7.sh
PASS: cxx1.sh
PASS: cxx2.sh
PASS: cxx3.sh
FAIL: quick1.sh
FAIL: quick2.sh
FAIL: quick3.sh
PASS: cycle1.sh
PASS: cycle2.sh
FAIL: deps1.sh
FAIL: deps2.sh
SKIP: ifunc1.sh
SKIP: ifunc2.sh
SKIP: ifunc3.sh
PASS: undosyslibs.sh
FAIL: preload1.sh
============================================================================
Testsuite summary for
============================================================================
# TOTAL: 47
# PASS:  34
# SKIP:  6
# XFAIL: 0
# FAIL:  7
# XPASS: 0
# ERROR: 0

Maninder Singh (2):
  testsuite: fixes in testsuite according to aarch64
  src/arch-aarch64.c:testsuite failure fixes in aarch64

 src/arch-aarch64.c  |    7 ++++---
 testsuite/reloc2.sh |    2 +-
 testsuite/reloc8.sh |    2 +-
 testsuite/reloc9.sh |    2 +-
 testsuite/tls3.sh   |    2 +-
 5 files changed, 8 insertions(+), 7 deletions(-)


