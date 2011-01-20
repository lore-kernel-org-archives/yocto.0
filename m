Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 107E84C810DA
	for <yocto@yoctoproject.org>; Wed, 19 Jan 2011 23:04:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jan 2011 21:04:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,348,1291622400"; d="scan'208";a="698656058"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2011 21:04:33 -0800
Message-ID: <4D37C260.7010106@intel.com>
Date: Wed, 19 Jan 2011 21:04:32 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A31C3E710@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A31C3E710@shsmsx501.ccr.corp.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Generation of upgrade statistics table
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
X-List-Received-Date: Thu, 20 Jan 2011 05:04:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 06:23 PM, Xu, Dongxiao wrote:
> Hi Saul,
>
> Could you share with us how you generate your upgrade statistics table?
> We want to locally have a try of it and see if there is anything we missed.
>
Dongziao,

I use the checkpkg task in distrodata.bbclass, you need to ensure you
add INHERIT += distrodata to your local.conf to enable it.

Sau!

> Thanks,
> Dongxiao
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

