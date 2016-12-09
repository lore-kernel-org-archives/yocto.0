Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DD33E00CA6; Fri,  9 Dec 2016 09:36:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D68AE00C40
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 09:36:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id uB9HabAW029530
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Dec 2016 09:36:37 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 9 Dec 2016 09:36:36 -0800
To: Andrew Stubbs <ams@codesourcery.com>
References: <83bef13e-9fd4-5b87-52f3-73d29f516367@codesourcery.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <aee78894-a043-870d-f04b-0d40d178d6c7@windriver.com>
Date: Fri, 9 Dec 2016 11:36:36 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <83bef13e-9fd4-5b87-52f3-73d29f516367@codesourcery.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross][patch] Fix ifunc on x86_64 x32
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
X-List-Received-Date: Fri, 09 Dec 2016 17:36:41 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Thanks.  I try to get this merged soon.

--Mark

On 12/9/16 11:34 AM, Andrew Stubbs wrote:
> Hi Mark,
> 
> The ifunc1, ifunc2, and ifunc3 tests currently fail on x86_64 x32 ABI 
> because the testcase crashes at runtime. The testcases run fine when not 
> prelinked.
> 
> In the case of ifunc1, the test tries to call the "lib2t2" function 
> directly, instead of using it as an indirect call, which leads to the 
> testcase aborting. In real code this would not cause an immediate crash, 
> but presumably would lead to undefined behaviour.
> 
> The attached patch fixes the problem by converting R_X86_64_32 conflict 
> relocations to R_X86_64_IRELATIVE (in the same way as R_X86_64_64 
> relocations are).
> 
> I've tested this with the cross_prelink branch and a suitably configured 
> cross-toolchain. I expect it would be fine on the master branch also, 
> but I can't test that.
> 
> Andrew Stubbs
> Mentor Graphics/CodeSourcery
> 


