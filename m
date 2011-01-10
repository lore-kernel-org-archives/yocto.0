Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A94544C8108C
	for <yocto@yoctoproject.org>; Mon, 10 Jan 2011 11:26:14 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jan 2011 09:26:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,301,1291622400"; d="scan'208";a="695336831"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.154]) ([10.7.201.154])
	by orsmga001.jf.intel.com with ESMTP; 10 Jan 2011 09:26:14 -0800
Message-ID: <4D2B4170.6080609@intel.com>
Date: Mon, 10 Jan 2011 09:27:12 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Lightning/1.0b1
	Thunderbird/3.0.11 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "Xu, Jiajun" <jiajun.xu@intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6FC@orsmsx504.amr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31B0755D@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A31B0755D@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Changes to the autobuilder.
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
X-List-Received-Date: Mon, 10 Jan 2011 17:26:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I see that and I think I know what is going on. I should have a fix for
this today.

-b

On 01/09/2011 05:25 PM, Xu, Jiajun wrote:
>> I've made a few changes to the autobuilder that people should know about.
>> Currently, we've been utilizing the milestone builders to split the
>> nightly to both the internal and external builders in order to speed
>> things up. I've renamed them to nightly-internal* and
>> nightly-external*. They were putting their build output to the
>> milestone directory on the webserver. This was incorrect behavior.
>> I've changed this to make the build output go out to the nightly directory of the webserver: http://autobuilder.pokylinux.org/nightly.
>>
>> The big change is to how we deal with emenlow, atom-pc, beagleboard, etc.
>> These are now found under the machines/<machine_name>/<arch> directory
>> in the build output web directory. I'll need to eventually refactor
>> some of the autobuilder scripts to deal with BSPs a little more
>> elegantly, but it's functional for now and we have a standard to adhere to.
>>
>> Also, be aware that we now have a functional CURRENT link, so if you
>> go to the autobuilder/nightly/CURRENT directory this will point to the
>> last thing the autobuilder built. Keep in mind, it will create that link even if the build is broken.
>> I'll have a commit with all of this in it when I finish up the upgrade to 0.8.3.
>>
>> If you have any questions, feel free to ask.
>>
> 
> Hi Beth,
> We found there is no kernel image for QEMU target with latest nightly, http://autobuilder.pokylinux.org/nightly/20110108-1/qemu/. Could you help to have a check? And nightly-internal does not start last week.
> 
>> -b
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> Best Regards,
> Jiajun
> 
> 


