Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CC28E00DDD; Sat, 12 Sep 2015 07:21:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 536A9E0071A
	for <yocto@yoctoproject.org>; Sat, 12 Sep 2015 07:21:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t8CELhvR002875
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 12 Sep 2015 07:21:43 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Sat, 12 Sep 2015 07:21:42 -0700
To: <maninder1.s@samsung.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <87817094.969641442036116314.JavaMail.weblogic@ep2mlwas07a>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <55F434F5.7010801@windriver.com>
Date: Sat, 12 Sep 2015 09:21:41 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <87817094.969641442036116314.JavaMail.weblogic@ep2mlwas07a>
Cc: Vaneet Narang <v.narang@samsung.com>, AJEET YADAV <ajeet.y@samsung.com>,
	pankaj.m@samsung.com
Subject: Re: [prelink-cross] LD_PRELOAD Implementation in Prelink
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
X-List-Received-Date: Sat, 12 Sep 2015 14:21:52 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 9/12/15 12:35 AM, Maninder Singh wrote:
> Hi Mark,
> 
> Thanks for checking,
> 
> There is one bug in this patch , we will share the fix after testing probably on monday.

I added what I thought was a fairly reasonable test case to prelink.
testsuite/preload1*

Can you update the test case to include a specific check for the failure you are
aware of so we can avoid it in the future?

--Mark

> Thanks
> Maninder Singh
> 
> 
>>> Merged to the staging branch.
> 
>> On 5/18/15 12:17 AM, Maninder Singh wrote:
>>> EP-F6AA0618C49C4AEDA73BFF1B39950BAB
>>> Hi,
>>>
>>> Subject: [PATCH 1/1] LD_PRELOAD Implementation in Prelink
>>>
>>> prelink fails if  there are ld_preload libs present at target with below error.
>>> 	expect libsX.so.1, found /lib/libY.so in dependency order
>>> 	where libY.so.1 is ld_preload lib
>>>  
>>> To use this feature :
>>> ./prelink --ld-preload=libpreload1.so:libpreload2.so:.... upto 20 libs
>>> Order of libraries to be preloaded is significant. Make sure sequence
>>> mentioned in prelink
>>> should be same as runtime sequence.
>>>
>>> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
>>> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
>>> Reviewed-by: Ajeet Yadav <ajeet.v@samsung.com>
>>> Reviewed-by: Geon-ho Kim <gh007.kim@samsung.com>
>>> ---
>>>  src/gather.c    |    8 +++++++-
>>>  src/get.c       |    9 ++++++++-
>>>  src/main.c      |    6 ++++++
>>>  src/prelink.h   |    1 +
>>>  src/rtld/rtld.c |   51 +++++++++++++++++++++++++++++++++++++++++++++------
>>>  5 files changed, 67 insertions(+), 8 deletions(-)


