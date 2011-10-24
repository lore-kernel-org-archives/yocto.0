Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A35E011AC
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 08:33:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Oct 2011 08:33:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,398,1315206000"; d="scan'208";a="65764273"
Received: from unknown (HELO [10.255.15.122]) ([10.255.15.122])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2011 08:33:52 -0700
Message-ID: <4EA58560.5060905@linux.intel.com>
Date: Mon, 24 Oct 2011 08:33:52 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4EA529F5.4010706@communistcode.co.uk>
	<4EA52BEF.8000100@communistcode.co.uk>
In-Reply-To: <4EA52BEF.8000100@communistcode.co.uk>
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Mon, 24 Oct 2011 15:33:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 24/10/11 02:12, Jack Mitchell wrote:
> On 24/10/2011 10:03, Jack Mitchell wrote:
>> I am trying to use the new eclipse plugin, which I have had working
>> fine for the past couple of weeks until I switched from the master
>> branch to edison.
>>
>> I performed a fresh build using the stable edison branch, installed
>> the new 1.1 eclipse plugin and now whenever I try to setup the Yocto
>> eclipse environment I receive the following error:
>>
>> Yocto Preferences Configuration Error!
>> OECORE related items are not found in envrionement setup files.
>> The ADT version you're using is too old.
>> Please upgrade to our latest ADT Version!
>>
>> This pops up in a message box, not the eclipse console. I have
>> followed the ADT Setup guide to the letter and it's not playing ball -
>> could someone confirm this as working or point me towards a reason why
>> I may be getting this error?
>>
>> Cheers,
>> Jack.
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> This is a pastebin of my current environment setup file:
> 
> http://pastebin.com/4vnWPAD2
> 

I'm not ADT expert but I expect the problem is this line:

export OECORE_DISTRO_VERSION="1.1+snapshot-20111021"

By switching to the edison branch you'll now have a DISTRO_VERSION of
"1.1", without the snapshot and date - hence version mismatch.

I'm not sure if you need to change the plugin or just build a new
meta-ide-support, though.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

