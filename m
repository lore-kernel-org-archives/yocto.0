Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3172E00E47; Fri, 16 Dec 2016 09:02:12 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BADEE00D56
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 09:02:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id uBGH23eW016471
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 16 Dec 2016 09:02:06 -0800 (PST)
Received: from msp-dhcp26.wrs.com (172.25.34.26) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 16 Dec 2016 09:02:03 -0800
To: Andrew Stubbs <ams@codesourcery.com>, <yocto@yoctoproject.org>
References: <67edb1f0-90af-cccc-3a9a-4a9dd6fc442b@codesourcery.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <7de010e0-a3ed-a7ae-46f6-5b7776901ceb@windriver.com>
Date: Fri, 16 Dec 2016 11:02:03 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <67edb1f0-90af-cccc-3a9a-4a9dd6fc442b@codesourcery.com>
Subject: Re: [prelink-cross][patch] Fix layout1 test on x86_64 x32.
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
X-List-Received-Date: Fri, 16 Dec 2016 17:02:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Thank you.

I've added this to the TODO set, and will hopefully have it (and the previous
one) staged very soon.

--Mark

On 12/16/16 8:52 AM, Andrew Stubbs wrote:
> Hi Mark,
> 
> The layout1 test case currently fails for x32 because there is 
> insufficient address space for all the libraries.
> 
> There's two ways to fix this:
> 
> 1. Increase mmap_end such that there's more space.
> 
> 2. Reduce max_page_size so that less space is wasted.
> 
> I'm not sure what the implications of option 2 would be, so the attached 
> patch implements option 1.
> 
> This still limits the number of possible libraries somewhat severely, 
> but it's more than enough to pass the layout1 test.
> 
> Andrew
> 


