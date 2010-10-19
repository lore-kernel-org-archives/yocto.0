Return-Path: <darren.hart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECF9B4C80815
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 16:45:08 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Oct 2010 14:45:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,352,1283756400"; d="scan'208";a="848847787"
Received: from unknown (HELO [10.255.12.104]) ([10.255.12.104])
	by fmsmga001.fm.intel.com with ESMTP; 19 Oct 2010 14:44:49 -0700
Message-ID: <4CBE1150.6090807@intel.com>
Date: Tue, 19 Oct 2010 14:44:48 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: "Zanussi, Tom" <tom.zanussi@intel.com>
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>	
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
	<1287504271.26874.205.camel@elmorro>
In-Reply-To: <1287504271.26874.205.camel@elmorro>
X-Mailman-Approved-At: Tue, 19 Oct 2010 17:06:31 -0500
Cc: "Li, Susie" <susie.li@intel.com>, "Lock, Joshua" <joshua.lock@intel.com>,
	"'McCombe, Kevin'" <kevin.mccombe@windriver.com>, "'Ta,
	Lieu'" <Lieu.Ta@windriver.com>, "'Anderson,
	Paul'" <paul.anderson@windriver.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>,
	'Bruce Ashfield' <bruce.ashfield@windriver.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Re: Yocto Linux Project Sync notes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 21:45:09 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/2010 09:04 AM, Zanussi, Tom wrote:
> On Tue, 2010-10-19 at 08:40 -0700, Stewart, David C wrote:
>
>>
>> * demo
>>
>> ** Alex will put the hardware bits together, Darren to write down the description of what needs to come together and wiki-fy it. RP suggests that maybe getting all the pieces running on one hardware might be a good way to try it out just in case.
>>
>
> I can try getting everything running on one machine too - would it make
> sense to try that all on e.g. emenlow, or all on a laptop using qemu, or
> both?

Everything on One machine doesn't make a lot of sense to me, for two 
reasons:

1) This is heavily network dependent, making sure the machines can find 
eachother is a critical aspect of testing this.
2) Qemu does some magic with tun/tap devices, you have to configure 
things to get multicast working between guests. I've tested the 
mediatomb image in qemu, it works. We need to test on real hardware.
3) We don't an image that will install everything on the same machine, 
and making one doesn't make a lot of sense to me.
4) Running a NAS to serve up media to itself doesn't test the networking 
side of things as well.

I'd rather use 3 real devices (even if they are all emenlow or 
blacksand) rather than qemu or all on one.

--
Darren

>
> Tom
>


-- 
Darren Hart
Embedded Linux Kernel

