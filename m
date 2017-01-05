Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14F96E0049A; Thu,  5 Jan 2017 07:08:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBD36E00443
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 07:08:45 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v05F8isV015576
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 5 Jan 2017 07:08:44 -0800
Received: from server.local (128.224.20.231) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 07:08:43 -0800
To: Jussi Laako <jussi.laako@linux.intel.com>, <yocto@yoctoproject.org>
References: <20170104151937.14632-1-jussi.laako@linux.intel.com>
	<905ec5b9-3c6f-9466-168d-c9e1306f5981@windriver.com>
	<9e71a49a-3476-a82c-d185-e00150c08829@linux.intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <1d1c4120-988f-6cf6-a50c-36dc02fe96f1@windriver.com>
Date: Thu, 5 Jan 2017 10:08:42 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <9e71a49a-3476-a82c-d185-e00150c08829@linux.intel.com>
Subject: Re: [PATCH 0/2] yocto-kernel-cache: Update audio support and add Firewire support
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
X-List-Received-Date: Thu, 05 Jan 2017 15:08:49 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-05 3:35 AM, Jussi Laako wrote:
> On 05.01.2017 05:24, Bruce Ashfield wrote:
>> On 2017-01-04 10:19 AM, Jussi Laako wrote:
>>> Here are two patches for yocto-kernel-cache:
>>
>> What are the target branches for this ?
>
> At the moment I'm targeting master, but maybe this could be material
> also for 4.9 branch. I'm going to look into some other areas that I
> believe could benefit small updates. I believe this audio part was the
> biggest...

Targeting master is fine with me (as would application to older
branches if there's need). I just wanted to be sure :D

Cheers,

Bruce

>


