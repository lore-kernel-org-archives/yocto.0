Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B93BE004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 15:04:00 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2012 15:03:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="102870858"
Received: from unknown (HELO [10.255.14.103]) ([10.255.14.103])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2012 15:03:59 -0800
Message-ID: <4F29C4DF.50704@linux.intel.com>
Date: Wed, 01 Feb 2012 15:03:59 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<d40c099c9dced8365653e7cef02108e03ab4bfdf.1328135056.git.dvhart@linux.intel.com>
	<4F29C23F.5070801@linux.intel.com>
In-Reply-To: <4F29C23F.5070801@linux.intel.com>
Subject: Re: [pull-sys940x 4/4] netbase: Add interfaces with RANDOM_MAC for sys940x* machines
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
X-List-Received-Date: Wed, 01 Feb 2012 23:04:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 01/02/12 14:52, Joshua Lock wrote:
>> +++ b/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
>> @@ -0,0 +1,3 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>> +RDEPENDS_${PN} += "genmac"
>
> We can use a MACHINE specific override here, I think.
>
> RDEPENDS_${PN}_sys940x += "genmac"
>
> Ideally we don't want that interfaces file on non-sys940x machines,
> perhaps we could name the interfaces file differently and add a
> do_install_append_sys940x which installs the MACHINE specific interface
> file?

In this instance, however, I don't know what would happen if we built 
netbase with this layer enabled for a different core2 MACHINE and then 
built for the sys940x....

I suspect the existing core2 package would be used and think for this 
approach to work we'd need to mark this recipe MACHINE specific.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

