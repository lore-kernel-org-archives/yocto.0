Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC6744C803C9
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 18:48:17 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Oct 2010 16:48:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,357,1283756400"; d="scan'208";a="618750284"
Received: from unknown (HELO [10.255.12.168]) ([10.255.12.168])
	by fmsmga002.fm.intel.com with ESMTP; 20 Oct 2010 16:48:11 -0700
Message-ID: <4CBF7FBB.3080804@linux.intel.com>
Date: Wed, 20 Oct 2010 16:48:11 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <1287595139.2635.16.camel@scimitar>
	<1287612589.2231.3.camel@scimitar>
In-Reply-To: <1287612589.2231.3.camel@scimitar>
Cc: yocto@yoctoproject.org
Subject: Re: UPnP demo - call for testing
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
X-List-Received-Date: Wed, 20 Oct 2010 23:48:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/2010 03:09 PM, Joshua Lock wrote:
> On Wed, 2010-10-20 at 18:18 +0100, Joshua Lock wrote:
>> Hi all,
>>
>> I've successfully tested the UPnP demo in my office but would appreciate
>> someone else taking a bash.
>>
>> Unfortunately you currently need my branch from poky-contrib (josh/demo)
>> and the corresponding branch from meta-demo (josh/demo).
>
> I've just pushed one change to poky/master and merged a tidied up
> changeset into the master branch of meta-demo. So you should now be able
> to test with latest poky and meta-demo master.
>
> Cheers,
> Joshua

I have added the COMMERCIAL_LICENSE bits to my local.conf and mediatomb 
built after that.

building poky-image-rygel-live, gupnp-dlna do_configure is failing with:

	configure: error: Package requirements (gstreamer-0.10 >=
	0.10.29.2) were not met:

	No package 'gstreamer-0.10' found

Have you seen that?

-- 
Darren Hart
Embedded Linux Kernel

