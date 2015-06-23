Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56274E009E7; Tue, 23 Jun 2015 05:40:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS,T_HDRS_LCASE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [203.254.224.25 listed in list.dnswl.org]
	*  0.0 T_HDRS_LCASE Odd capitalization of message header
X-Greylist: delayed 602 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Jun 2015 05:40:35 PDT
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05DCBE009D9
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 05:40:35 -0700 (PDT)
Received: from epcpsbgr2.samsung.com
	(u142.gpu120.samsung.co.kr [203.254.230.142])
	by mailout2.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NQE02VZ0DEVP810@mailout2.samsung.com> for
	yocto@yoctoproject.org; Tue, 23 Jun 2015 21:30:31 +0900 (KST)
Received: from epcpsbgm2.samsung.com ( [172.20.52.125])
	by epcpsbgr2.samsung.com (EPCPMTA) with SMTP id 59.19.28411.76159855;
	Tue, 23 Jun 2015 21:30:31 +0900 (KST)
X-AuditID: cbfee68e-f79c56d000006efb-44-55895167a5a5
Received: from epmmp2 ( [203.254.227.17])	by epcpsbgm2.samsung.com (EPCPMTA)
	with SMTP id 46.27.05312.76159855; Tue, 23 Jun 2015 21:30:31 +0900 (KST)
Received: from localhost.localdomain ([107.108.92.210])
	by mmp2.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTPA id <0NQE007A7DDOICP0@mmp2.samsung.com>;
	Tue, 23 Jun 2015 21:30:31 +0900 (KST)
From: Maninder Singh <maninder1.s@samsung.com>
To: mark.hatle@windriver.com, yocto@yoctoproject.org
Date: Tue, 23 Jun 2015 17:58:32 +0530
Message-id: <1435062512-34808-1-git-send-email-maninder1.s@samsung.com>
X-Mailer: git-send-email 1.7.9.5
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJLMWRmVeSWpSXmKPExsWyRsSkVjc9sDPU4N95Y4vD89tYLDY9P8hi
	ce/NViaLSS/XsDmwePRtWcXosX7LViaP9hN9bAHMUVw2Kak5mWWpRfp2CVwZp4/MZCpYw1Ix
	p/0JawPjNuYuRk4OCQETiXs7LrBA2GISF+6tZ+ti5OIQEljKKLF28jNWmKJPcx8yQySmM0pM
	XHMArFtI4CejxL3FGSA2m4CexKpde8AmiQA1tG5ZxNjFyMHBLOAkMf2rHkhYWMBV4uDCTWCt
	LAKqEt1nvzOB2LwC7hLN3XeYQcolBBQk5kyyAVklIXCbTWJD41NGiHoBiW+TD7FA1MhKbDoA
	db+kxMEVN1gmMAouYGRYxSiaWpBcUJyUXmSkV5yYW1yal66XnJ+7iREYgqf/PevbwXjzgPUh
	RgEORiUe3hk+naFCrIllxZW5hxhNgTZMZJYSTc4HBnpeSbyhsZmRhamJqbGRuaWZkjhvgtTP
	YCGB9MSS1OzU1ILUovii0pzU4kOMTBycUg2MvPxaKYveiPRm1epcXe7y8Zx22Ra1XrOTe424
	sndOtJkpaBUaIrrod4TB8/IgDvcbccKHH5auqdjE7TtffafbdbX/nmHmN1oCTXUbzliaHVf9
	ffbmsoy8L4e3u1qdMei+lBT+72xOidGrFaJ/O1dqe60Nt2u/fPZjo8NG66Bb7mJLpreHNvop
	sRRnJBpqMRcVJwIAZoMg4TwCAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMLMWRmVeSWpSXmKPExsVy+t9jQd30wM5Qg8uvdCwOz29jsdj0/CCL
	xb03W5ksJr1cw+bA4tG3ZRWjx/otW5k82k/0sQUwRzUw2mSkJqakFimk5iXnp2TmpdsqeQfH
	O8ebmhkY6hpaWpgrKeQl5qbaKrn4BOi6ZeYA7VNSKEvMKQUKBSQWFyvp22GaEBripmsB0xih
	6xsSBNdjZIAGEtYwZpw+MpOpYA1LxZz2J6wNjNuYuxg5OSQETCQ+zX0IZYtJXLi3nq2LkYtD
	SGA6o8TENQfAEkICPxkl7i3OALHZBPQkVu3awwJiiwA1t25ZxNjFyMHBLOAkMf2rHkhYWMBV
	4uDCTWCtLAKqEt1nvzOB2LwC7hLN3XeYQcolBBQk5kyymcDIvYCRYRWjaGpBckFxUnqukV5x
	Ym5xaV66XnJ+7iZGcIA/k97BuKrB4hCjAAejEg/vDJ/OUCHWxLLiytxDjBIczEoivL8dgEK8
	KYmVValF+fFFpTmpxYcYTYGWT2SWEk3OB0ZfXkm8obGJuamxqaWJhYmZpZI478l8n1AhgfTE
	ktTs1NSC1CKYPiYOTqkGxpgpNo/ObwlUCTGf69McK6rAFunwuGxLavIfsweHZzUyfVy4cfLV
	JM1WJeb8t8U9x6evyN2V3n9S104kx+bh/5jciq3yf/J8shrD7rxKMLt3wr+98deCA46PJqZ4
	1m9sEqo9I3hbWLXu14LCs9/ZPJI65utsfLRiwczsq8f5Nj/++eK59AojTiWW4oxEQy3mouJE
	ALElURiGAgAA
DLP-Filter: Pass
X-MTR: 20000000000000000@CPGS
X-CFilter-Loop: Reflected
Cc: Maninder Singh <maninder1.s@samsung.com>, pankaj.m@samsung.com
Subject: [prelink-cross][PATCH 1/1] rtld: remove if check before free
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
X-List-Received-Date: Tue, 23 Jun 2015 12:40:39 -0000

No need of explicit NULL check before free

Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
---
 trunk/src/rtld/rtld.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/trunk/src/rtld/rtld.c b/trunk/src/rtld/rtld.c
index 35dfde7..3ed1db3 100644
--- a/trunk/src/rtld/rtld.c
+++ b/trunk/src/rtld/rtld.c
@@ -1270,7 +1270,6 @@ process_one_dso (DSO *dso, int host_paths)
 		       (uint32_t) l->l_map_start);
 	}
 
-      if (filename)
 	free (filename);
 
       cur_dso_ent = cur_dso_ent->next;
-- 
1.7.1


