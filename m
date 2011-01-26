Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 203CA4C811A5
	for <yocto@yoctoproject.org>; Wed, 26 Jan 2011 15:31:01 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2011 13:31:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,382,1291622400"; d="scan'208";a="651494461"
Received: from unknown (HELO [10.255.14.182]) ([10.255.14.182])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jan 2011 13:31:00 -0800
Message-ID: <4D409288.90903@linux.intel.com>
Date: Wed, 26 Jan 2011 13:30:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Lorenzati, Marcelo" <marcelo.lorenzati@intel.com>
References: <FE028D69955796489B510CE43DBBE8030118C8B7E8@rrsmsx503.amr.corp.intel.com>
In-Reply-To: <FE028D69955796489B510CE43DBBE8030118C8B7E8@rrsmsx503.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ulibc instead of glibc
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
X-List-Received-Date: Wed, 26 Jan 2011 21:31:01 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/25/2011 10:36 AM, Lorenzati, Marcelo wrote:
> Hi all,
>
> I wanted to know if it’s feasible to build Yocto with ulibc instead of
> glibc and if someone have tried.
>
> In a really constrained system could be the difference between selecting
> RT Linux or another real time OS.

What size of an image are you hoping to achieve?


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

