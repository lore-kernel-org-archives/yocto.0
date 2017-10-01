Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE2FBE00CD8; Sun,  1 Oct 2017 01:24:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 855BEE00C43
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 01:24:05 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Oct 2017 01:24:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,463,1500966000"; d="scan'208";a="158023774"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 01 Oct 2017 01:24:03 -0700
To: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>,
	yocto@yoctoproject.org
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<08461abb-3f52-4110-3bb5-14773fa89286@fridu.net>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <6ae04a22-4066-670a-87b8-f96c698c1621@linux.intel.com>
Date: Sun, 1 Oct 2017 11:20:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <08461abb-3f52-4110-3bb5-14773fa89286@fridu.net>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Sun, 01 Oct 2017 08:24:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 09/29/2017 05:01 PM, Dominig ar Foll (Intel Open Source) wrote:
>> Due to what our IT department can support, I am issued a Windows laptop for development.  In the past I have used VMWare to make a Linux virtual machine for my Yocto Project based image builds and application development.  We are starting to get Windows 10 laptops so I am evaluating doing my builds using the Windows Subsystem for Linux (WSL) by building a poky/morty image.  Overall it seems to be working.  I've had an issue that I've worked through and other issues that I'm not quite sure what is going on.
>>
> Hi Brian,
> 
> I have been trying the same thing attempting to build Automotive Grade
> Linux from Linux for Windows subsystem.
> We have many adopter of AGL who also receive Windows PC from their IT
> department. While VM work, they impose a serious limitation on memory
> and CPU usage.

Does anyone else think doing embedded linux development on windows 
machines is a ridiculous situation, and needs to be discussed with 
companies management? IT departments should either support product R&D 
work (because at the end of the day that is where the company makes 
money), or stay out of the way and let engineers self-manage their 
computers, including installing weird operating systems.


Alex

