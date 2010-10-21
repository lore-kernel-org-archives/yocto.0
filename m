Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36E3B4C80054
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 10:38:14 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9LFcDOF017816
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 08:38:13 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 21 Oct 2010 08:38:13 -0700
Received: from Macintosh-5.local ([172.25.36.230]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 21 Oct 2010 08:38:13 -0700
Message-ID: <4CC05E64.8040606@windriver.com>
Date: Thu, 21 Oct 2010 10:38:12 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.11) Gecko/20101013 Thunderbird/3.1.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1287595139.2635.16.camel@scimitar>
	<1287672729.2073.11.camel@elmorro>
In-Reply-To: <1287672729.2073.11.camel@elmorro>
X-OriginalArrivalTime: 21 Oct 2010 15:38:13.0518 (UTC)
	FILETIME=[F903EAE0:01CB7135]
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
X-List-Received-Date: Thu, 21 Oct 2010 15:38:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/10 9:52 AM, Tom Zanussi wrote:
> On Wed, 2010-10-20 at 10:18 -0700, Joshua Lock wrote:
>> Hi all,
>>
>> I've successfully tested the UPnP demo in my office but would appreciate
>> someone else taking a bash.
>>
>
> With the mediatomb image running on a Black Sand and the rygel image
> running on an eMenlow, and using the av-cp on my laptop, I'm able to get
> ok audio out of the eMenlow speakers - pretty nifty! ;-)
>
> Still need to get the nas piece going, but it all basically works with
> the hardware I have (and will be bringing) - nice job!

poky-image-nas should work on any hardware -- just keep in mind that by default 
it serves everything over "eth1".  Update the config files in 
meta-demo/images/poky-image-nas/* to point to eth0 (or elsewhere).

--Mark

> Tom
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto


