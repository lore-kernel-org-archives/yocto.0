Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AA18E011BC
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 08:12:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7BFCZ0t027338
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Aug 2011 08:12:35 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 11 Aug 2011 08:12:35 -0700
Message-ID: <4E43F161.7090406@windriver.com>
Date: Thu, 11 Aug 2011 11:12:33 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
	<d3104bcb5205dffefbe8149f38f65b3edd48e03a.1313050084.git.dvhart@linux.intel.com>
	<4E439262.3060403@linux.intel.com>
In-Reply-To: <4E439262.3060403@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 02/17] meta/rt: beagleboard preempt-rt support
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
X-List-Received-Date: Thu, 11 Aug 2011 15:12:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-11 04:27 AM, Darren Hart wrote:
> On 08/11/2011 01:23 AM, Darren Hart wrote:
>
> Oh the hypocrisy! For those of you that have caught my lack of detailed
> commentary for all the added preempt-rt .scc files - you are completely
> justified. I intended to paste a blurb for each and forgot by the time I
> sent them out. Probably not worth resending, but I will if Bruce is a
> 10th as picky as I am. Apologies.

I'll put something in place when merging. It really isn't
very interesting, and is something that we can better describe
outside of commits if anyone is interested. So a free pass
on this one, and I'll do the tidyup.

Bruce

>
> --
> Darren
>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   .../bsp/beagleboard/beagleboard-preempt-rt.scc     |    7 +++++++
>>   1 files changed, 7 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
>>
>> diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
>> new file mode 100644
>> index 0000000..aa71a94
>> --- /dev/null
>> +++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
>> @@ -0,0 +1,7 @@
>> +define KMACHINE beagleboard
>> +define KTYPE preempt-rt
>> +define KARCH arm
>> +
>> +# no new branch required, re-use the ktypes/preempt-rt branch
>> +include ktypes/preempt-rt
>> +include beagleboard.scc
>


