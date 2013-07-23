Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05DDEE0143C
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 17:02:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 22 Jul 2013 17:02:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,722,1367996400"; d="scan'208";a="369393967"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2013 17:02:36 -0700
Message-ID: <51EDC81B.8060203@linux.intel.com>
Date: Mon, 22 Jul 2013 17:02:35 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
References: <36ED13F3654AE54CA763E6821D93A5712C6FA1DF@szxeml534-mbx.china.huawei.com>
In-Reply-To: <36ED13F3654AE54CA763E6821D93A5712C6FA1DF@szxeml534-mbx.china.huawei.com>
Cc: Sanil kumar <sanil.kumar@huawei.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>,
	Irfan rehman <irfan.rehman@huawei.com>
Subject: Re: [RFC] Binary Configuration support design
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
X-List-Received-Date: Tue, 23 Jul 2013 00:02:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/18/2013 06:57 AM, Venkata ramana gollamudi wrote:
> Hi,
>      I have intiated few discussions earlier to support binary configuration tool,
>     which allows configuration of post built binaries to generate custom image, without a need to rebuild from source.
>
Ramana:

I am starting to review this, please be aware that RP is away for a few 
more weeks so he might review it until he returns.

>      It is being tracked under bug 3252.
>      Design to realize the same is updated in wiki. https://wiki.yoctoproject.org/wiki/Binary_configuration_support
>      Please go through it and provide comments, so that I can proceed to submit patches.
>
There has already been one pull request that is pending currently (in 
the Consolidated Pull) for added users via a config option, please take 
a look at the extrausers, it's different than what you have started to 
go with.

We should sync up on this and ensure all needs are met without creating 
conflicting interfaces.

Sau!


> Regards,
> Ramana
>

