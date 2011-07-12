Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EAF194C80AE6
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 15:20:46 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6CKKkVX005588
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Jul 2011 13:20:46 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 12 Jul 2011 13:20:46 -0700
Message-ID: <4E1CAC9C.9050802@windriver.com>
Date: Tue, 12 Jul 2011 16:20:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1310094637.git.jingdong.lu@windriver.com>
	<4E1CAC2D.7040609@linux.intel.com>
In-Reply-To: <4E1CAC2D.7040609@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1]meta/routerstationpro: remove some conflicted configurations
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
X-List-Received-Date: Tue, 12 Jul 2011 20:20:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/12/11 16:18, Saul Wold wrote:
> On 07/11/2011 05:22 PM, Jingdong Lu wrote:
>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>
>> Some kernel options were redefined by routerstationpro.cfg and
>> it will cause some bugs. So remove some configurations which have
>> been defined in base.cfg or standard.cfg from routerstationpro.cfg.
>>
>> Fix bug [YOCTO #1161]
>> Fix bug [YOCTO #773]
>>
> The Bug fix info needs to go into the commit message, not as part of the
> email header as it will get lost here.

Not for the kernel, we explicitly don't want them in the kernel
tree. I'll make sure the appropriate bugs get updated in the tracker.

Bruce

>
> Thanks
> Sau!
>
>> Jingdong Lu (1):
>> meta/routerstationpro: remove some conflicted configurations
>>
>> .../bsp/routerstationpro/routerstationpro.cfg | 45 --------------------
>> 1 files changed, 0 insertions(+), 45 deletions(-)
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


