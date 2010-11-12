Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A9924C80B6B
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 21:58:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Nov 2010 19:58:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,186,1288594800"; d="scan'208";a="347785922"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 11 Nov 2010 19:58:44 -0800
Received: from [10.255.13.76] (10.255.13.76) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 11 Nov 2010 20:58:44 -0700
Message-ID: <4CDCBB73.3010303@intel.com>
Date: Thu, 11 Nov 2010 19:58:43 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <AANLkTi=7yQCQB4=bKYuW3DTx4-psGZPDKkQeum+qdw3=@mail.gmail.com>
	<ibi10q$a68$1@dough.gmane.org>
In-Reply-To: <ibi10q$a68$1@dough.gmane.org>
Subject: Re: BSPs and duplicate files
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
X-List-Received-Date: Fri, 12 Nov 2010 03:58:45 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/11/2010 04:16 PM, Philip Balister wrote:
> On 11/11/2010 07:19 AM, João Henrique Freitas wrote:
>> Hi,
>>
>> Two questions:
>>
>> With some BSPs, like
>>
>> meta
>> meta-myhardware
>> meta-mydistro
>>
>> I need to create a conf/checksums.ini for every BSP or append it to
>> meta/conf/checksums.ini ? In other others, checksums.ini is per BSP or
>> unique?
>
> Poky still uses checksums.ini? OE moved the checksums to the recipes and
> this seems make things much easier to work with.

We'll be switching to recipe-based checksums soon in master, and in fact 
you'll notice that most of our recipes already have checksums in them. 
It's just a matter of importing the code from OE and making whatever 
tweaks might be necessary.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

