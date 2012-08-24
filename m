Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24B6FE0076A
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 06:40:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q7ODem6g003556
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 24 Aug 2012 06:40:48 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Fri, 24 Aug 2012 06:40:49 -0700
Message-ID: <5037845B.1020709@windriver.com>
Date: Fri, 24 Aug 2012 09:40:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1345627689-23016-1-git-send-email-raj.khem@gmail.com>
	<503531E4.8000506@windriver.com>
	<CAMKF1sruHLr3Tq22SzoMevz7QArWZxE6wj+=t+LRMhZDkHLKKQ@mail.gmail.com>
In-Reply-To: <CAMKF1sruHLr3Tq22SzoMevz7QArWZxE6wj+=t+LRMhZDkHLKKQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [linux-yocto-3.2][PATCH] arm: Fix linking errors with binutils 2.23
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Aug 2012 13:40:51 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-22 04:22 PM, Khem Raj wrote:
> On Wed, Aug 22, 2012 at 12:24 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>>
>> I haven't looked yet, will 3.4+ need the same fix ?
>
> yes looking at 3.4 code. But havent tried that yet

I've merged this to the 3.2 tree and the 3.4 tree. I haven't
seen any build failures, but then again, I wasn't seeing any
before :)

It's pushed to the kernel trees, I'll send some SRCREV updates
later today.

Cheers,

Bruce

