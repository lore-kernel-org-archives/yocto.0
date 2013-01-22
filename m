Return-Path: <laurentiu.palcu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D9D8E01466
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 01:44:41 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jan 2013 01:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,513,1355126400"; d="scan'208";a="280440745"
Received: from lpalcu-linux (HELO [10.237.105.165]) ([10.237.105.165])
	by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2013 01:44:40 -0800
Message-ID: <50FE5F87.4060300@intel.com>
Date: Tue, 22 Jan 2013 11:44:39 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20130122071621.9D11520DA8C@gemini.denx.de>
	<50FE4900.7020804@intel.com>
	<20130122090351.6492320DA8C@gemini.denx.de>
In-Reply-To: <20130122090351.6492320DA8C@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installation of i686 SDK on a x86_64 machine?
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
X-List-Received-Date: Tue, 22 Jan 2013 09:44:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 01/22/2013 11:03 AM, Wolfgang Denk wrote:
> Id	SDK_ARCH	INST_ARCH	Status
> ==============================================
> 1	ix86		ix86		works
> 2	ix86		x86_64		works
> 3	x86_64		ix86		cannot work
> 4	x86_64		x86_64		works
> 
> The bug report is about case 3 - attempting to install a 64 bit SDK on
> a 32 bit machine.  This indeed cannot work and shuld be prevented byy
> the installer.
> 
> But the current code also prevents case 2, installing 32 bit images on
> a 64 bit machine, which works perfectly fine (assuming you have the
> needed 32 bit libraries installed).

I see your point. Would you please file a bug on this?

Thanks,
Laurentiu

