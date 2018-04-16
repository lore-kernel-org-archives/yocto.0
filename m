Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAE05E00A26; Sun, 15 Apr 2018 19:29:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 533E0E008BF
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2018 19:29:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w3G2Tc9o005283
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 15 Apr 2018 19:29:38 -0700
Received: from [128.224.163.220] (128.224.163.220) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Sun, 15 Apr 2018 19:29:37 -0700
To: Anuj Mittal <anuj.mittal@intel.com>, <yocto@yoctoproject.org>,
	<Adrian.Dudau@enea.com>, <alexandru.vaduva@linux.com>,
	<joe_macdonald@mentor.com>
References: <1523843847-24868-1-git-send-email-yi.zhao@windriver.com>
	<1523843847-24868-2-git-send-email-yi.zhao@windriver.com>
	<01c55349-6375-9c4d-49f8-d2e580c09c5e@intel.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <ed259549-1396-d7b0-dfd5-b152e7480160@windriver.com>
Date: Mon, 16 Apr 2018 10:29:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <01c55349-6375-9c4d-49f8-d2e580c09c5e@intel.com>
X-Originating-IP: [128.224.163.220]
Subject: Re: [meta-cgl][PATCH 2/3] pacemaker: refresh patches to fix QA warning
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
X-List-Received-Date: Mon, 16 Apr 2018 02:29:49 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



在 2018年04月16日 10:26, Anuj Mittal 写道:
> Hi Yi
>
> On 04/16/2018 09:57 AM, Yi Zhao wrote:
>
>> +
>> +diff --git a/lib/common/mainloop.c b/lib/common/mainloop.c
>> +index 385ca7d..c259c7c 100644
>> +--- a/lib/common/mainloop.c
>> ++++ b/lib/common/mainloop.c
>>   @@ -32,6 +32,7 @@
>>    #include <crm/common/xml.h>
>>    #include <crm/common/mainloop.h>
>>    #include <crm/common/ipcs.h>
>>   +#include <qb/qbarray.h>
>>    
>> - struct mainloop_child_s {
>> -     pid_t pid;
>> + #include <qb/qbarray.h>
>> +
> It looks like this patch is no longer required and is just adding the
> same thing twice. Please check.

Thanks. You are right. I will send V2.

//Yi

>


