Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11C80E006B4
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 03:01:11 -0700 (PDT)
Received: from dlep33.itg.ti.com ([157.170.170.112])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id p9KA18bU013075
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 20 Oct 2011 05:01:08 -0500
Received: from dlep26.itg.ti.com (smtp-le.itg.ti.com [157.170.170.27])
	by dlep33.itg.ti.com (8.13.7/8.13.8) with ESMTP id p9KA18b4010303;
	Thu, 20 Oct 2011 05:01:08 -0500 (CDT)
Received: from DFLE71.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9KA182d004625;
	Thu, 20 Oct 2011 05:01:08 -0500 (CDT)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle71.ent.ti.com
	(128.247.5.62) with Microsoft SMTP Server id 14.1.323.3;
	Thu, 20 Oct 2011 05:01:07 -0500
Received: from [172.24.16.66] (h16-66.vpn.ti.com [172.24.16.66])	by
	dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9KA17xB021481;
	Thu, 20 Oct 2011 05:01:07 -0500
Message-ID: <4E9FF162.2030902@ti.com>
Date: Thu, 20 Oct 2011 06:01:06 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Rainer Koenig <Rainer.Koenig@ts.fujitsu.com>
References: <4E9EC5ED.6050503@ts.fujitsu.com> <4E9EF175.1050605@ti.com>
	<4E9FCA99.5050209@ts.fujitsu.com>
In-Reply-To: <4E9FCA99.5050209@ts.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions from a greenhorn about build problems
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
X-List-Received-Date: Thu, 20 Oct 2011 10:01:12 -0000
Content-Type: text/plain; charset="ISO-8859-15"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/2011 03:15 AM, Rainer Koenig wrote:
> Hi William,
>
>> I think your probably running a bit ahead of us.
>
> Yes, looks like. :-) Well, my goal is to be able to build a small
> embedded Linux distribution for ARM based SoC boards. Currently we have
> the Beagleboard and the TI 8148 EVM to test, but sooner or later there
> will be another board available.
>
>> Keep in mind that at this point meta-texasinstruments has not been
>> tested with the poky layer stack.  It is a work in progress and is being
>> tested with a layer stack that includes oe-core + meta-oe + meta-angstrom.
>
> Yes. I just tried out and ran into problems, that's what makes a
> developers life challenging. ;-) I really don't mind about problems as
> long as I have hope to fix them.
>
>> It is certainly in scope for meta-ti (new name) to work w/ a stock poky
>> release or snapshot, were just not verified that yet.  As of now our
>> plan includes building and testing the following layer combinations:
>>
>> oe-core + meta-ti
>> oe-core + meta-ti + meta-openembedded + meta-angstrom
>> poky + meta-ti
>> oe-core + meta-ti + meta-openembedded + meta-arago<= TI SDKs
>
> Looks good, even that I faild in playing around with oe-core. One thing
> that made me fail could be the SOCKS problem that I solved now. Maybe I
> give it another test run. Anyway, yocto seems to fit perfectly for my
> needs since its well documented and gave me some success events.

For you or any one else listing I should mention that TI SDKs today are 
still based on oe classic.  The layers we use for these are always 
publicly available at http://arago-project.org

If you need something that has been tested by TI today, you may want to 
look there.  If your willing to work through a few bumps and want to 
start on the new baseline then we would be happy to work with you on 
poky/oe-core + meta-ti.

We expect meta-ti to have some boards tested to the above layer stacks 
in November and most/all boards working by the end of the year.  The 
first TI SDKs built from the new structure will be in Q1 2012.

>
>> I would encourage you to subscribe to our brand spanking new meta-ti
>> mailing list to discuss, monitor and prod.
>
> Ok, I subscribed to that list too.
>
>> I don't think any of this explains why you are having proxy issues and
>> we will let the rest of the thread play out for that.  I just wanted to
>> set your expectations.
>
> That's ok. Looks like the proxy issue is solved and my next obstacle in
> the way to success is called u-boot_git.bb. So far I see that this
> recipe fails during configure because it wants to make with a rule
> "ti8148_evm_config_nand" that is not available in the u-boot sources
> that we currently get from git.denx.de.
>

Humm,  I need to be careful or I may sound like I know what I am doing. 
  However, a quick look[1] makes me think that AM8148 should be using 
u-boot_2010.06-psp.

[1] 
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstruments/tree/recipes-bsp/u-boot/u-boot_2010.06-psp.bb

There are few things that could be going wrong.  Why don't you move this 
thread to meta-ti and Denys and Koen should be able to help you.

> On the other hand I have the TI EZSDK kit available and there is an
> u-boot version shipped that covers the TI8148 EVM board, so I guess all
> I have to do is to include those sources in the meta-ti layer so that
> u-boot will also build for my TI8148 EVM.
>
> Well, I keep on testing and trying things out. Still new to the embedded
> world after many years of desktop Linux.
>
> Regards
> Rainer

