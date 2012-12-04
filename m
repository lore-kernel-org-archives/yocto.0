Return-Path: <laurentiu.palcu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35514E01423
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 04:37:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Dec 2012 04:37:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,215,1355126400"; d="scan'208";a="228731075"
Received: from lpalcu-linux (HELO [10.237.105.165]) ([10.237.105.165])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2012 04:37:53 -0800
Message-ID: <50BDEEA0.80006@intel.com>
Date: Tue, 04 Dec 2012 14:37:52 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: koansoftware@gmail.com
References: <50BCBE77.4070700@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B67F66@ORSMSX101.amr.corp.intel.com>
	<50BDDCEE.4090902@gmail.com>
In-Reply-To: <50BDDCEE.4090902@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Howto use yocto meta-toolchain?
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
X-List-Received-Date: Tue, 04 Dec 2012 12:37:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/04/2012 01:22 PM, Marco wrote:
> Il 03/12/2012 18:46, Zhang, Jessica ha scritto:
>> Hi Marco,
>>
>> Can you filed a bug about this in bugzilla?  Also, you don't need to sudo to run the install script, if you choose the default location which is /opt/poky/1.3, it'll prompt you for the password, or you can specify a directory under your $HOME dir.  In your bug, can you provide some detail how you build the toolchain, e.g. the local.conf file changes, etc.?
>>
> 
> Jessica,
> thank you for answering.
> 
> Bugzilla classification is different from its documentation.
> Where do you suggest to place my bug?
> https://wiki.yoctoproject.org/wiki/Bugzilla_Configuration_and_Bug_Tracking
You can place it for ADT.

> 
> 
> Actually if I don't sudo to run the install script it doesn't work:
> 
> $ tmp/deploy/sdk/poky-eglibc-x86_64-arm-toolchain-1.3.sh
> Enter target directory for SDK (default: /opt/poky/1.3):
> You are about to install the SDK to "/opt/poky/1.3". Proceed[Y/n]?
> Error: Unable to create target directory. Do you have permissions?
> 
The latest changes which are now in master, should fix that. You will be
asked to insert the password. However, there still is a patch pending in
order for this to work properly (I just saw the problem today and sent a
patch on oe-core mailing list).

However, going back to your initial problem. Is that a tarball you
downloaded or one you built yourself? If you're filling a bug, provide
as much details as possible in order to replicate your issue.

Thanks,
Laurentiu

