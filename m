Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74BBEE00C0F; Thu, 26 Nov 2015 00:03:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.25 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12ECEE00BE2
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 00:03:04 -0800 (PST)
Received: from epcpsbgr4.samsung.com
	(u144.gpu120.samsung.co.kr [203.254.230.144])
	by mailout2.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NYE00EMCX13N880@mailout2.samsung.com> for
	yocto@yoctoproject.org; Thu, 26 Nov 2015 17:03:03 +0900 (KST)
Received: from epcpsbgm1new.samsung.com ( [172.20.52.122])
	by epcpsbgr4.samsung.com (EPCPMTA) with SMTP id 33.64.29659.7BCB6565;
	Thu, 26 Nov 2015 17:03:03 +0900 (KST)
X-AuditID: cbfee690-f79e96d0000073db-68-5656bcb7dcf9
Received: from epmmp1.local.host ( [203.254.227.16])
	by epcpsbgm1new.samsung.com (EPCPMTA) with SMTP id 13.25.24993.6BCB6565;
	Thu, 26 Nov 2015 17:03:03 +0900 (KST)
Received: from localhost.localdomain ([107.108.92.210])
	by mmp1.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTPA id <0NYE00KH3WYK2MK0@mmp1.samsung.com>;
	Thu, 26 Nov 2015 17:03:02 +0900 (KST)
From: Maninder Singh <maninder1.s@samsung.com>
To: mark.hatle@windriver.com
Date: Thu, 26 Nov 2015 13:31:20 +0530
Message-id: <1448524880-31492-3-git-send-email-maninder1.s@samsung.com>
X-Mailer: git-send-email 1.7.9.5
In-reply-to: <1448524880-31492-1-git-send-email-maninder1.s@samsung.com>
References: <1448524880-31492-1-git-send-email-maninder1.s@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDLMWRmVeSWpSXmKPExsWyRsSkSnf7nrAwg+ZlPBYvXk1gsdi87iSz
	xYMLV5ks2t7+ZLM4PL+NxWLT84MsFvfebGWyOHRyLqPFpJdr2Bw4Pfq2rGL0WL9lK5NH+4k+
	tgDmKC6blNSczLLUIn27BK6Md5sOMRd08FT0T2tna2DczdnFyMkhIWAi8fPOHhYIW0ziwr31
	bF2MXBxCAisYJS7972KHKfq/cBMjRGIpo8SJ33+gqn4ySiw408EIUsUmoCexahfIKA4OEQEZ
	idffuEBqmAUeM0rM6TzLClIjLBAt8XVrI1g9i4CqxKEb08BsXgF3iRMbJzOD9EoIKEjMmWQD
	EuYU8JBY3jQXrEQIpGTiXWaQmRICi9gl1t2exAoxR0Di2+RDLBC9shKbDjBDHC0pcXDFDZYJ
	jMILGBlWMYqmFiQXFCelF5noFSfmFpfmpesl5+duYgQG+ul/zybsYLx3wPoQowAHoxIPb4Ft
	WJgQa2JZcWXuIUZToA0TmaVEk/OB8ZRXEm9obGZkYWpiamxkbmmmJM77WupnsJBAemJJanZq
	akFqUXxRaU5q8SFGJg5OqQZGv0nffn1Un13Pf+/g8hms0stqEluKl089k91kws3vu+LY43Nm
	Jo8TNnSWVty7sDl/gZHvnSBFpehSsbYCq0uPohwvelu4H5l+0Zy5bMpBIaE5nQ+5PHqDl+/f
	1borVWbyd5N0jnWV8/qXBa/Tneinu63bVm1R86fzl1tzZ8x4VXUy/k61EyenEktxRqKhFnNR
	cSIAtTihvm8CAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t9jAd3te8LCDN4+ZrR48WoCi8XmdSeZ
	LR5cuMpk0fb2J5vF4fltLBabnh9ksbj3ZiuTxaGTcxktJr1cw+bA6dG3ZRWjx/otW5k82k/0
	sQUwRzUw2mSkJqakFimk5iXnp2TmpdsqeQfHO8ebmhkY6hpaWpgrKeQl5qbaKrn4BOi6ZeYA
	HaKkUJaYUwoUCkgsLlbSt8M0ITTETdcCpjFC1zckCK7HyAANJKxhzHi36RBzQQdPRf+0drYG
	xt2cXYycHBICJhL/F25ihLDFJC7cW8/WxcjFISSwlFHixO8/UM5PRokFZzrAqtgE9CRW7drD
	0sXIwSEiICPx+hsXSA2zwGNGiTmdZ1lBaoQFoiW+bm0Eq2cRUJU4dGMamM0r4C5xYuNkZpBe
	CQEFiTmTbEDCnAIeEsub5oKVCIGUTLzLPIGRdwEjwypGidSC5ILipPRcw7zUcr3ixNzi0rx0
	veT83E2M4Gh6JrWD8eAu90OMAhyMSjy8BbZhYUKsiWXFlbmHGCU4mJVEeGOygUK8KYmVValF
	+fFFpTmpxYcYTYHumsgsJZqcD4z0vJJ4Q2MTc1NjU0sTCxMzSyVx3gv7/cKEBNITS1KzU1ML
	Uotg+pg4OKUaGGtO/RRm3/lt/4JdHXwxvJumLDYXf2D0pllPzk72osVuP9abPPJstx6XqC4J
	3lR2vW5lifWRreu2FO25FS0RaGjTIpme2Nkjv+SZ62fGzPUc2ec3Knff+Bm1ymFDxaaNWy9N
	tpm+iGt5ohrX+8aMV3lewjd3iFxx2N7122+2CN+pObvrpGxvPlViKc5INNRiLipOBAA5+boC
	vAIAAA==
DLP-Filter: Pass
X-MTR: 20000000000000000@CPGS
X-CFilter-Loop: Reflected
Cc: Vaneet Narang <v.narang@samsung.com>, hakbong5.lee@samsung.com,
	yocto@yoctoproject.org, doha.hwang@samsung.com,
	ajeet.y@samsung.com, akhilesh.k@samsung.com,
	Maninder Singh <maninder1.s@samsung.com>, pankaj.m@samsung.com
Subject: [prelink-cross][PATCH 2/2] src/arch-aarch64.c:testsuite failure fixes in aarch64
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
X-List-Received-Date: Thu, 26 Nov 2015 08:03:30 -0000

This patch fixes testsuite failure in aarch64 prelink undo section.

Signed-off-by: Vaneet Narang <v.narang@samsung.com>
Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
---
 src/arch-aarch64.c |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/src/arch-aarch64.c b/src/arch-aarch64.c
index e04dd6e..3e5ddd1 100644
--- a/src/arch-aarch64.c
+++ b/src/arch-aarch64.c
@@ -470,7 +470,9 @@ aarch64_undo_prelink_rela (DSO *dso, GElf_Rela *rela, GElf_Addr relaaddr)
   switch (GELF_R_TYPE (rela->r_info))
     {
     case R_AARCH64_NONE:
+ 	break;	
     case R_AARCH64_RELATIVE:
+	write_ne64 (dso, rela->r_offset, 0);
       break;
     case R_AARCH64_JUMP_SLOT:
       sec = addr_to_sec (dso, rela->r_offset);
@@ -487,9 +489,7 @@ aarch64_undo_prelink_rela (DSO *dso, GElf_Rela *rela, GElf_Addr relaaddr)
 
 	  assert (rela->r_offset >= dso->shdr[sec].sh_addr + 24);
 	  assert (((rela->r_offset - dso->shdr[sec].sh_addr) & 7) == 0);
-	  write_neclass (dso, rela->r_offset,
-		      2 * (rela->r_offset - dso->shdr[sec].sh_addr - 24)
-		      + data);
+	  write_neclass (dso, rela->r_offset, data);
 	}
       break;
     case R_AARCH64_GLOB_DAT:
@@ -501,6 +501,7 @@ aarch64_undo_prelink_rela (DSO *dso, GElf_Rela *rela, GElf_Addr relaaddr)
       write_ne64 (dso, rela->r_offset, 0);
       break;
     case R_AARCH64_TLS_TPREL:
+      write_ne64 (dso, rela->r_offset, 0);
       break;
     case R_AARCH64_TLSDESC:
       write_ne64 (dso, rela->r_offset, 0);
-- 
1.7.1


