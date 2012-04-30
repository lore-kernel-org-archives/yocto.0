Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67E60E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 10:31:08 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q3UHV6bl004258;
	Mon, 30 Apr 2012 12:31:06 -0500
Received: from DFLE71.ent.ti.com (dfle71.ent.ti.com [128.247.5.62])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id q3UHV6wa014400;
	Mon, 30 Apr 2012 12:31:06 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle71.ent.ti.com
	(128.247.5.62) with Microsoft SMTP Server id 14.1.323.3;
	Mon, 30 Apr 2012 12:31:06 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q3UHV6pD018544;	Mon, 30 Apr 2012 12:31:06 -0500
Message-ID: <4F9ECC59.6070708@ti.com>
Date: Mon, 30 Apr 2012 13:31:05 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <e181fc2fd029f7853acab1ba7b66bc9f5c87126d.1334784305.git.tom.zanussi@intel.com>	<266faf71ffdb15e1f6777b520fbe4acaeb26457d.1334784305.git.tom.zanussi@intel.com>
	<4F9B334D.9060508@linux.intel.com>
In-Reply-To: <4F9B334D.9060508@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] yocto-bsp: clarify help with reference to meta-intel
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
X-List-Received-Date: Mon, 30 Apr 2012 17:31:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

nit of nit

On 04/27/2012 08:01 PM, Darren Hart wrote:
> On 04/27/2012 12:00 PM, tom.zanussi@intel.com wrote:
>> From: Tom Zanussi<tom.zanussi@intel.com>
>>
>> + NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
>> + presence of the of the meta-intel layer, so you should also have a
>> + meta-intel layer present and added to your bblayers.conf as well.
> Consider:
>
> + NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
> + presence of the of the meta-intel layer. Ensure the meta-intel layer
> + is present and added to bblayers.conf.
>

Unless I am really mis-reading this I think "presence of the of the" 
should just be "presence of the"

