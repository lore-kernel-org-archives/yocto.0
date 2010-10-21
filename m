Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63CE04C803C9
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 22:28:25 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9L3SIip025694;
	Wed, 20 Oct 2010 20:28:18 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 20 Oct 2010 20:28:17 -0700
Received: from bruce-ashfields-macbook.local ([128.224.143.28]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 20 Oct 2010 20:28:17 -0700
Message-ID: <4CBFB34F.7080108@windriver.com>
Date: Wed, 20 Oct 2010 23:28:15 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.11) Gecko/20101013 Thunderbird/3.1.5
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <1287595139.2635.16.camel@scimitar>
	<625BA99ED14B2D499DC4E29D8138F1504D0149B25A@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D0149B25A@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 21 Oct 2010 03:28:18.0448 (UTC)
	FILETIME=[011E9100:01CB70D0]
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
X-List-Received-Date: Thu, 21 Oct 2010 03:28:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-10-20 10:53 PM, Tian, Kevin wrote:
>> From: Joshua Lock
>> Sent: Thursday, October 21, 2010 1:19 AM
>>
>> Hi all,
>>
>> I've successfully tested the UPnP demo in my office but would appreciate
>> someone else taking a bash.
>>
>> Unfortunately you currently need my branch from poky-contrib (josh/demo)
>> and the corresponding branch from meta-demo (josh/demo).
>>
>> The renderer and controller are installed together in the
>> poky-image-rygel image (I've been using the -live variant).
>>
>> I needed to use amixer to enable the soundcard and increase the volume
>> on the netbook I was using.
>>
>> "amixer set Master on
>> amixer set Master 75"
>>
>> Run rygel from a terminal and launch gupnp-av-cp and you should be able
>> to set play music from a content store on the device. I haven't tested
>> video...
>>
>> I need to tweak the recipes some more so that:
>> * Rygel is configured and started automatically at boot on the rygel
>> image
>> * All of the required recipes are self contained in the master branch
>> meta-demo overlay.
>>
>> I think this may mean using bbappend to extend recipes where I've
>> currently modified them in the main meta overlay, rather than
>> replication a recipe with the same PN and PV.
>>
>> I'll probably work on this tomorrow.
>>
>
> I'd like to understand a full picture of this demo just in case others are
> also interested in the test. From what I read so far:
> 	Mark works on an NAS server
> 	Darren covers a media server with mediatomb
> 	Josh sits on UPnP renderer/controller with rygel and gupnp tools
>
> So is the demo chained as below:
>
> NAS server provides media contents which are then found and exported
> by mediatomb which then are found by UPnP controller which then points to
> the UPnP renderer for final output. Here UPnP controller and renderer may
> or may not be the same board.
>
> what Josh wants people to test here is self-contained in one image which
> contains both renderer/controller and server (local media files), which hasn't
> been connected to other bits yet.
>
> Is above understanding correct?

That matches my understanding.

Bruce

>
> Thanks,
> Kevin
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto


