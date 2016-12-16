Return-Path: <Andrew_Stubbs@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3152EE00D46; Fri, 16 Dec 2016 06:52:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: codesourcery.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09BBAE00CCD
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 06:52:43 -0800 (PST)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=svr-ies-mbx-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1cHtsI-0003VT-7W from Andrew_Stubbs@mentor.com ;
	Fri, 16 Dec 2016 06:52:42 -0800
Received: from [172.30.64.190] (137.202.0.87) by
	svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) with Microsoft SMTP
	Server (TLS) id 15.0.1210.3; Fri, 16 Dec 2016 14:52:38 +0000
To: "Hatle, Mark" <Mark.Hatle@windriver.com>, <yocto@yoctoproject.org>
From: Andrew Stubbs <ams@codesourcery.com>
Message-ID: <67edb1f0-90af-cccc-3a9a-4a9dd6fc442b@codesourcery.com>
Date: Fri, 16 Dec 2016 14:52:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
X-Originating-IP: [137.202.0.87]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
	svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Subject: [prelink-cross][patch] Fix layout1 test on x86_64 x32.
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
X-List-Received-Date: Fri, 16 Dec 2016 14:52:47 -0000
X-Groupsio-MsgNum: 33509
Content-Type: multipart/mixed; boundary="------------1E0A5E7F1FAD3A93D0ABF373"

--------------1E0A5E7F1FAD3A93D0ABF373
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mark,

The layout1 test case currently fails for x32 because there is 
insufficient address space for all the libraries.

There's two ways to fix this:

1. Increase mmap_end such that there's more space.

2. Reduce max_page_size so that less space is wasted.

I'm not sure what the implications of option 2 would be, so the attached 
patch implements option 1.

This still limits the number of possible libraries somewhat severely, 
but it's more than enough to pass the layout1 test.

Andrew

--------------1E0A5E7F1FAD3A93D0ABF373
Content-Type: text/x-patch; name="prelink-fix-x32-layout1-test.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="prelink-fix-x32-layout1-test.patch"

From 6c8aec5590ba9ba93e6cbb458c34ead0481b0b7c Mon Sep 17 00:00:00 2001
From: Andrew Stubbs <ams@codesourcery.com>
Date: Fri, 16 Dec 2016 14:08:28 +0000
Subject: [PATCH] Fix x32 layout1 test.

2016-12-16  Andrew Stubbs  <ams@codesourcery.com>

	* src/arch-x86_64.c (PL_ARCH(x32)): Set mmap_end to 0x60000000.
---
 src/arch-x86_64.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
index 6a97370..5c95f47 100644
--- a/src/arch-x86_64.c
+++ b/src/arch-x86_64.c
@@ -595,7 +595,7 @@ PL_ARCH(x32) = {
      Also, if this guard area isn't too small, typically
      even dlopened libraries will get the slots they desire.  */
   .mmap_base = 0x41000000,
-  .mmap_end =  0x50000000,
+  .mmap_end =  0x60000000,
   .max_page_size = 0x200000,
   .page_size = 0x1000
 };
-- 
2.8.1


--------------1E0A5E7F1FAD3A93D0ABF373--
