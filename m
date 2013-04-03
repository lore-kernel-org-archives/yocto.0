Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2F05E013A7
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 15:09:15 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2013 15:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,403,1363158000"; d="scan'208";a="289009529"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.68])
	by orsmga001.jf.intel.com with ESMTP; 03 Apr 2013 15:09:15 -0700
Message-ID: <515CA88A.9080806@linux.intel.com>
Date: Wed, 03 Apr 2013 15:09:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<515C4D0D.7030708@linux.intel.com>
	<1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>
	<80CD287EE4364CEF8862D95048BCA9A9@PAULD>
In-Reply-To: <80CD287EE4364CEF8862D95048BCA9A9@PAULD>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: This one can't be me...
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
X-List-Received-Date: Wed, 03 Apr 2013 22:09:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/03/2013 01:50 PM, Paul D. DeRocco wrote:
>> From: Darren Hart [mailto:dvhart@linux.intel.com] 
>>
>> Are you building with the rm work setting? Otherwise, that 
>> should not be
>> empty unless you have more than one linux-yocto* directory 
>> and the other is populated.
> 
> That option is off, and there is no other linux-yocto* directory.
> 
>> If not, verify rm work is not on and just build the kernel:
>>
>> $ bitbake linux-yocto -c cleansstate
>> $ bitbake linux-yocto
> 
> The first line says there is no do_cleanstate task for linux-yocto, and so
> the second line finds nothing to do. Is there another way to force that?

This doesn't make any sense. Can you send the actual output rather than
interpreting please?

Oh, actually, please read the command more carefully, there are two ss's in
cleansstate.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

