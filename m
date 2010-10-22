Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CFBE4C811A9
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 15:22:02 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Oct 2010 13:22:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,225,1286175600"; d="scan'208";a="339414059"
Received: from unknown (HELO [10.255.12.77]) ([10.255.12.77])
	by azsmga001.ch.intel.com with ESMTP; 22 Oct 2010 13:22:01 -0700
Message-ID: <4CC1F268.6070902@linux.intel.com>
Date: Fri, 22 Oct 2010 13:22:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.11) Gecko/20101006 Lightning/1.0b2 Thunderbird/3.1.5
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4CC0C619.7070201@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D0149B5B7@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D0149B5B7@shsmsx502.ccr.corp.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>
Subject: Re: RFC: "Demo Use Cases" documentation for the web page
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
X-List-Received-Date: Fri, 22 Oct 2010 20:22:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/2010 05:26 PM, Tian, Kevin wrote:
>> From: Darren Hart
>> Sent: Friday, October 22, 2010 7:01 AM
>>
>>
>> Media Network Demo
>> ==================
>> We're looking to have a section on the web site for the demo that
>> explains what each use-case is and possibly how it can be replicated.
>> I'm taking the approach of describing each image. Consider the
>> following:
>>
>> The Yocto Project launch event at ECLF 2010 featured a
>> multi-architecture Media Network Demo. All the source for this demo is
>> available in the meta-demo git repository as a layer for the poky build
>> system.
>>
>> The following images made up the demo:
>> o poky-image-nas
>> o poky-image-mediatomb
>> o poky-image-rygel
>>
>> poky-image-nas
>> --------------
>> The poky-image-nas image boots your device as a network attached storage
>> device. It provides a DHCP service and an NFS server. We used this image
>> to store all our media.
>>
>> poky-image-mediatomb
>> --------------------
>> The poky-image-mediatomb image adds a UPnP content provider via the
>> mediatomb package. This image mounts the media share from the NAS and
>> makes it available to UPnP renderers.
>>
>> poky-image-rygel
>> ----------------
>> The poky-image-rygel image provides gupnp tools and the rygel media
>> renderer along with the sato desktop. The renderer can be controlled
>> locally or via any control point on the network. Several devices can run
>> this image and stream media from the mediatomb device.
>>
>>
>> Open Questions
>> --------------
>> o Is this more or less what we are looking for?
>
> boards list used in this demo.

Hrm... do we want to explicitly call them out? The point is that it was 
multi-architecture, but for some to recreate it, the point is that it 
doesn't really matter what hardware they have - poky can build for any 
of them.

What do others think, should we mention the specific boards in use at 
the demo?

>
> Also a simple figure is always more intuitive to catch the intention here. :-)
>
>> o Should we modify the mediatomb image to:
>>    o automatically mount a specific share from the NAS?
>>    o add something to the config to automatically scan the
>>      media share?
>> o The poky-image-rygel description needs to be updated as we finalize
>>    the package.
>>
>
> One thought is, could we convert this demo page into something more useful
> as the collection for various use cases on Yocto which can be contributed by
> any user, and then here UPnP is the 1st example?

I'm not opposed to the idea, but for now, let's just make it a page 
where people can go and get more detail about what we did for the demo 
and get them started on replicating it if they should so choose.

>
> Thanks
> Kevin


-- 
Darren Hart
Embedded Linux Kernel

