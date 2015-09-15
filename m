Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FAA5E00C91; Tue, 15 Sep 2015 10:32:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.55.86.74 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1851 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Sep 2015 10:32:46 PDT
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07DADE00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 10:32:46 -0700 (PDT)
Received: from [192.168.1.10] (c-73-194-208-34.hsd1.nj.comcast.net
	[73.194.208.34])
	by smtp.webfaction.com (Postfix) with ESMTP id BC3CC2078288;
	Tue, 15 Sep 2015 17:01:54 +0000 (UTC)
To: Romain Perier <romain.perier@gmail.com>, William Mills <wmills@ti.com>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<55F830DF.5030804@gmail.com> <55F83B9D.3020002@ti.com>
	<CABgxDoLS0nZa3vK-NnkLk_sCPj4N9AxqSmrCBNSKCXxWQ3+8uQ@mail.gmail.com>
From: Bob Cochran <yocto@mindchasers.com>
Message-ID: <55F84EFE.7080002@mindchasers.com>
Date: Tue, 15 Sep 2015 13:01:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CABgxDoLS0nZa3vK-NnkLk_sCPj4N9AxqSmrCBNSKCXxWQ3+8uQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: I hate busybox!
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
X-List-Received-Date: Tue, 15 Sep 2015 17:32:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/15/2015 12:38 PM, Romain Perier wrote:
> Hi all,
>
> I disagree,
> Unfortunately some embedded devices in the industry are not like most
> of the tablets and smartphones in the market (no quad or octo cores
> with few GB of ram... and few GB of flash...)   ;)  .For example,
> these days, at work, we're designing a board with the SoC zynq-7000
> and a quad-spi NOR flash. The NOR only has 16MB... now remove ~2Mb for
> u-boot... 4Mb for the bistream (fpga)... I only have 10MB for my
> kernel and my rootfs.
>
> Embedded projects like uclibc, musl or busybox are very appreciated in
> cases like this one :)
>
> I am not saying that it is a great thing to have busybox built and
> enabled by default, but that is a great thing to be able to use it.
> In fact, it strongly depends on your needs for the target...

Agreed.

I just tack on IMAGE_INSTALL_append = " tar findutils tree etc..." in my 
image recipe when I have the rootfs space, and I want the full tool. 
The build system seems to do a nice job of creating the links properly.


>
> Regards,
> Romain
>
> 2015-09-15 17:39 GMT+02:00 William Mills <wmills@ti.com>:
>>
>> On 09/15/2015 10:53 AM, Trevor Woerner wrote:
>>> On 09/15/15 10:47, Trevor Woerner wrote:
>>>> The only place busybox (and
>>>> toybox) are needed today are in the MMU-less-type systems, such as
>>>> Cortex-Ms etc.
>>>
>>> Actually, the presence or lack of MMU is irrelevant, I meant to single
>>> out those systems with limited on-SoC flash.
>>>
>>
>> OE-core is capable of building a system that has no GPLv3.
>> This capability is still important to some users and busybox is needed
>> for that as I understand.
>>
>> (Other users want the capability to build a system w/o proprietary code.
>>   OE serves both needs.)
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


