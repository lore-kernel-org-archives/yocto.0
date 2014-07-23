Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FA8DE006DB; Wed, 23 Jul 2014 12:44:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 595CDE006B7
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 12:44:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6NJiB39027166
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 23 Jul 2014 12:44:11 -0700 (PDT)
Received: from msp-dhcp53.wrs.com (172.25.34.53) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 23 Jul 2014 12:44:10 -0700
Message-ID: <53D0108A.5070104@windriver.com>
Date: Wed, 23 Jul 2014 14:44:10 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Cc: "Maciej W. Rozycki" <macro@codesourcery.com>
Subject: cross - prelinker - new version available
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
X-List-Received-Date: Wed, 23 Jul 2014 19:44:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

A new version of the cross-prelinker has been pushed to the git repository 
(cross_prelink branch).

I will work to get OE-Core/Poky updated in the next few days.

Changes since the last version:

commit faa069deec99bf61418d0bab831c83d7c1b797ca
Author: Maciej W. Rozycki <macro@codesourcery.com>

     Always create a conflict for R_ARM_TLS_DESC relocs

commit 8291921c30800f397880547e107d890551acce26
Author: Mark Hatle <mark.hatle@windriver.com>

     Merge to upstream r209

commit a66330b87662f3a4db31c3978252b3f990108b6d
Author: jakub <jakub@94c539fb-cf18-0410-b60f-edeeb537fa16>

         * src/arch-s390.c (s390_prelink_conflict_rela): For R_390_IRELATIVE,
         always use that relocation type in the conflict section.

commit 7895d947a47b8c42479870f039305583e5ac098e
Author: jakub <jakub@94c539fb-cf18-0410-b60f-edeeb537fa16>

         * testsuite/ifunc.h (IFUNC_ASM): Add s390x and s390 version.

commit b8dbaadf503718a2a74e8dba144ed54ce62ba320
Author: jakub <jakub@94c539fb-cf18-0410-b60f-edeeb537fa16>

         * src/arch-s390.c (s390_prelink_conflict_rela): Fix handling of
         R_390_IRELATIVE.
         * src/arch-s390x.c (s390x_prelink_conflict_rela): Likewise.

