Return-Path: <Andrew_Stubbs@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04395E00C88; Fri,  9 Dec 2016 09:53:46 -0800 (PST)
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
X-Greylist: delayed 1130 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Dec 2016 09:53:42 PST
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3907E00C40
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 09:53:42 -0800 (PST)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=svr-ies-mbx-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1cFP4N-00007c-9m from Andrew_Stubbs@mentor.com ;
	Fri, 09 Dec 2016 09:34:51 -0800
Received: from [172.30.64.154] (137.202.0.87) by
	svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) with Microsoft SMTP
	Server (TLS) id 15.0.1210.3; Fri, 9 Dec 2016 17:34:47 +0000
From: Andrew Stubbs <ams@codesourcery.com>
To: "Hatle, Mark" <Mark.Hatle@windriver.com>
Message-ID: <83bef13e-9fd4-5b87-52f3-73d29f516367@codesourcery.com>
Date: Fri, 9 Dec 2016 17:34:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
X-Originating-IP: [137.202.0.87]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
	svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-Mailman-Approved-At: Sat, 10 Dec 2016 17:22:32 -0800
Cc: yocto@yoctoproject.org
Subject: [prelink-cross][patch] Fix ifunc on x86_64 x32
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
X-List-Received-Date: Fri, 09 Dec 2016 17:53:46 -0000
X-Groupsio-MsgNum: 33416
Content-Type: multipart/mixed; boundary="------------A8AB25EBD00006BFD1D03E65"

--------------A8AB25EBD00006BFD1D03E65
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mark,

The ifunc1, ifunc2, and ifunc3 tests currently fail on x86_64 x32 ABI 
because the testcase crashes at runtime. The testcases run fine when not 
prelinked.

In the case of ifunc1, the test tries to call the "lib2t2" function 
directly, instead of using it as an indirect call, which leads to the 
testcase aborting. In real code this would not cause an immediate crash, 
but presumably would lead to undefined behaviour.

The attached patch fixes the problem by converting R_X86_64_32 conflict 
relocations to R_X86_64_IRELATIVE (in the same way as R_X86_64_64 
relocations are).

I've tested this with the cross_prelink branch and a suitably configured 
cross-toolchain. I expect it would be fine on the master branch also, 
but I can't test that.

Andrew Stubbs
Mentor Graphics/CodeSourcery

--------------A8AB25EBD00006BFD1D03E65
Content-Type: text/x-patch; name="prelink-fix-ifunc-on-x86_64-x32.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="prelink-fix-ifunc-on-x86_64-x32.patch"

2016-12-09  Andrew Stubbs  <ams@codesourcery.com>

	* src/arch-x86_64.c (x86_64_prelink_conflict_rela): Also convert
	R_X86_64_32 conflicts to R_X86_64_IRELATIVE for ifuncs.
---
 src/arch-x86_64.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
index dae66cd..6a97370 100644
--- a/src/arch-x86_64.c
+++ b/src/arch-x86_64.c
@@ -332,16 +332,13 @@ x86_64_prelink_conflict_rela (DSO *dso, struct prelink_info *info,
       ret->r_info = GELF_R_INFO (0, (gelf_getclass (dso->elf) == ELFCLASS32 ? R_X86_64_32 : R_X86_64_64));
       /* FALLTHROUGH */
     case R_X86_64_JUMP_SLOT:
+    case R_X86_64_32:
     case R_X86_64_64:
     case R_X86_64_IRELATIVE:
       ret->r_addend = value + rela->r_addend;
       if (conflict != NULL && conflict->ifunc)
 	ret->r_info = GELF_R_INFO (0, R_X86_64_IRELATIVE);
       break;
-    case R_X86_64_32:
-      value += rela->r_addend;
-      ret->r_addend = value;
-      break;
     case R_X86_64_PC32:
       ret->r_addend = value + rela->r_addend - rela->r_offset;
       ret->r_info = GELF_R_INFO (0, R_X86_64_32);
-- 
2.8.1


--------------A8AB25EBD00006BFD1D03E65--
