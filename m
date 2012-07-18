Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B2D2E00348
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 09:47:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6IGln7l014755
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Jul 2012 09:47:49 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 18 Jul 2012 09:47:49 -0700
Message-ID: <5006E8A2.707@windriver.com>
Date: Wed, 18 Jul 2012 12:47:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1342504457.git.nitin.a.kamble@intel.com>
	<1342620801.2338.160.camel@trz-ThinkPad-T420>
In-Reply-To: <1342620801.2338.160.camel@trz-ThinkPad-T420>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
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
X-List-Received-Date: Wed, 18 Jul 2012 16:47:50 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-18 10:13 AM, Tom Zanussi wrote:
> On Mon, 2012-07-16 at 22:57 -0700, nitin.a.kamble@intel.com wrote:
>> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>>
>> This commit changes emgd kernel driver for crownbay bsp to the emgd-1.14.
>>
>
> Nitin,
>
> Doesn't switching this over in the kenrnel require emgd-1.14 userspace
> recipe updates to work?  Did I miss those?

Good question. I'm holding on merging and pushing this until we
are sure that the whole stack will work ..

Cheers,

Bruce

>
> Tom
>
>> Thanks,
>> Nitin
>>
>> The following changes since commit c2b5ee363bf2612932301488f3ac0644ff70fc7c:
>>
>>    meta: disable CONFIG_MTD_NAND_VERIFY_WRITE (2012-07-14 00:21:49 -0400)
>>
>> are available in the git repository at:
>>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib nitin/meta
>>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=nitin/meta
>>
>> Nitin A Kamble (1):
>>    meta: crownbay.scc change emgd branch name
>>
>>   .../bsp/crownbay/crownbay-standard.scc             |    2 +-
>>   1 files changed, 1 insertions(+), 1 deletions(-)
>>
>
>


