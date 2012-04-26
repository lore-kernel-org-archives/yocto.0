Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C15C6E00596
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 13:05:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3QK5l87011376
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Apr 2012 13:05:47 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 26 Apr 2012 13:05:47 -0700
Message-ID: <4F99AA8F.3010704@windriver.com>
Date: Thu, 26 Apr 2012 16:05:35 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1335362402.git.tom.zanussi@intel.com>
	<4F9831B7.4060809@windriver.com>
In-Reply-To: <4F9831B7.4060809@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][3.2 KERNEL] standard/default/emenlow update
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
X-List-Received-Date: Thu, 26 Apr 2012 20:05:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-25 01:17 PM, Bruce Ashfield wrote:
> On 12-04-25 10:11 AM, tom.zanussi@intel.com wrote:
>> From: Tom Zanussi<tom.zanussi@intel.com>
>>
>> This fixes [YOCTO #1669]. Please pull into linux-yocto-3.2.
>>
>> The following changes since commit
>> 86d05af47be45c786c1823a76b6854fa8b411bec:
>> Bruce Ashfield (1):
>> Merge branch 'yocto/standard/base' into standard/default/emenlow
>
> Looks fine. I'll merge this into a spot that only the psb boards
> will pick up, and we won't need any core SRCREV updates .. to stay
> out of the 1.2 release's way.

both emenlow updates are pushed to the 3.2 tree now. Feel free
to update your SRCREVs.

Bruce

>
> Bruce
>
>>
>> are available in the git repository at:
>>
>> git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git
>> tzanussi/drm-lock-fix
>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/commit/?h=tzanussi/drm-lock-fix
>>
>>
>> Tom Zanussi (1):
>> bsp/emenlow: give up drm_global_mutex on contention in drm_lock()
>>
>> drivers/gpu/drm-psb/drm_lock.c | 2 ++
>> 1 files changed, 2 insertions(+), 0 deletions(-)
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


