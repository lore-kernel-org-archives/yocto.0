Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDE53E00596
	for <yocto@yoctoproject.org>; Mon,  7 May 2012 06:01:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q47D1Xiq006860
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 7 May 2012 06:01:33 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 7 May 2012 06:01:33 -0700
Message-ID: <4FA7C7AA.4050303@windriver.com>
Date: Mon, 7 May 2012 09:01:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
	<4FA30ABA.5020809@windriver.com>
In-Reply-To: <4FA30ABA.5020809@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/7][linux-yocto-3.2] fri2 and sys940x meta updates
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
X-List-Received-Date: Mon, 07 May 2012 13:01:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-03 06:46 PM, Bruce Ashfield wrote:
> On 12-05-01 06:13 PM, Darren Hart wrote:
>> Please apply to linux-yocto-3.2 meta branch.
>>
>> The following changes since commit
>> b14a08f5c7b469a5077c10942f4e1aec171faa9d:
>>
>> meta: Clean up BSPs kernel config (2012-04-17 16:04:15 -0400)
>>
>> are available in the git repository at:
>> git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/meta/dev
>> http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/meta/dev
>>
>
> queued. I'll push these when I get a better 'net connection.

Along with everything else, this is now pushed out and available.

Bruce

>
> Bruce
>
>>
>> Darren Hart (7):
>> fri2: Use emgd-1.10 feature and branch
>> fri2: Cleanup fri2-$KTYPE.scc files re efi-ext.scc
>> sys940x: Move emgd-1.10 data to the standard scc file
>> sys940x: Add efi-ext to standard and preempt-rt configs
>> sys940x: Add common standard and preempt-rt features
>> sys940x: Use PHYSICAL_START of 0x200000 to boot
>> sys940x: Cleanup sys940x.scc
>>
>> meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc | 2 +-
>> meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc | 6 +++---
>> .../bsp/sys940x/sys940x-preempt-rt.scc | 8 ++++++++
>> .../kernel-cache/bsp/sys940x/sys940x-standard.scc | 12 ++++++++++++
>> meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg | 4 ++++
>> meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc | 10 ++--------
>> 6 files changed, 30 insertions(+), 12 deletions(-)
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


