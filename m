Return-Path: <rich@noir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0196E00C23; Thu, 17 Mar 2016 09:32:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00, RCVD_IN_BRBL_LASTEXT,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.4 RCVD_IN_BRBL_LASTEXT RBL: RCVD_IN_BRBL_LASTEXT
	*      [198.144.209.5 listed in bb.barracudacentral.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from sendai.noir.com (m209-5.dsl.rawbw.com [198.144.209.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82DCFE00929
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 09:32:13 -0700 (PDT)
Received: from zama.noir.com (zama.noir.com [192.168.1.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by sendai.noir.com (Postfix) with ESMTPSA id 3917AE19ED;
	Thu, 17 Mar 2016 09:32:08 -0700 (PDT)
To: yocto@yoctoproject.org
References: <50f8e13e-bf3e-96b9-221b-3f6a92f948ee@noir.com>
	<56EA349D.10107@mlbassoc.com>
From: K Richard Pixley <rich@noir.com>
Message-ID: <f4588194-18da-e86b-4da6-a90ac1fa6f57@noir.com>
Date: Thu, 17 Mar 2016 09:32:23 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:47.0)
	Gecko/20100101 Thunderbird/47.0a2
MIME-Version: 1.0
In-Reply-To: <56EA349D.10107@mlbassoc.com>
Subject: Re: hddimg vs hdddirect?
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
X-List-Received-Date: Thu, 17 Mar 2016 16:32:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 3/16/16 21:37 , Gary Thomas wrote:
> On 03/16/2016 08:40 PM, K Richard Pixley wrote:
>> What's the intended difference between hddimg and hdddirect?
>>
>> I'm confused about the intent here. The data flow in previous releases,
>> even jethro, seems to be somewhat confused/broken so looking at the
>> source code isn't really helping here.
>>
>> Is one intended to be a simple syslinux bootable image while the other
>> is a "live" image with multiple boot choices?
>>
>> In master... How does one go about requesting either a vmdk of a live
>> image or a directly bootable vmdk?
>
> I'm not sure the difference between the .hddimg and .hdddirect.
> I tried converting a .hddimg to .vdi or .vmdk using the VBoxManage
> tool, but that didn't come up - there was a message about (paraphrased)
> "waiting for removable media to become ready"  and the boot just hung up
>
> However, I do know that .vmdk will boot easily with VirtualBox
> Just add this to your local.conf
>   IMAGE_FSTYPES += " vmdk"
>
> Note: as mentioned in the documentation, you must use += as
> IMAGE_FSTYPES_append will not do.
That hasn't worked for me yet on any branch I've tried.  Some build.  
None boot even past syslinux.  A variety of errors.

That's why I'm asking about intent and/or design.  If there's a plan, 
perhaps I can chip in.  But perhaps there is no concerted effort nor 
well known plan, in which case I can probably invent one if I can 
appreciate the relevant contexts.

In particular, *which* hdd should vmdk be an image of?  hddimg, (which 
builds and boots prior to master), or hdddirect, (which doesn't boot for 
me at all so I don't even know what it's intended to do)?  How do I get 
the old, single syslinux boot target hddimg, (the one that works), out 
of master?

--rich

