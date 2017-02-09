Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24872E009F6; Thu,  9 Feb 2017 00:05:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1D31E009CD
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 00:05:04 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id CB87868A019; Thu,  9 Feb 2017 08:05:03 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4399868A019;
	Thu,  9 Feb 2017 08:05:01 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id A006B67400D4;
	Thu,  9 Feb 2017 09:05:00 +0100 (CET)
To: yocto@yoctoproject.org
References: <39e27fc1-7ad6-9411-5cd1-96628e962f75@mlbassoc.com>
	<89ae4442-5ec2-7d25-1245-dc4e9af683b9@mlbassoc.com>
	<15650683.oLyvIqKQ2l@peggleto-mobl.ger.corp.intel.com>
	<31b81d5d-a30a-3a1a-bdcd-9a91b03d7b85@mlbassoc.com>
	<20170209074907.u2ghryme4xzxopi7@ad.chargestorm.se>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <c0f718ed-2e97-632a-291b-f1a85e1044e9@mlbassoc.com>
Date: Thu, 9 Feb 2017 09:04:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170209074907.u2ghryme4xzxopi7@ad.chargestorm.se>
Subject: Re: sysroot question
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
X-List-Received-Date: Thu, 09 Feb 2017 08:05:08 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-09 08:49, Anders Darander wrote:
> * Gary Thomas <gary@mlbassoc.com> [170209 05:25]:
>> On 2017-02-08 20:36, Paul Eggleton wrote:
>>> I think the problem is that the task that prepares the sysroot
>>> (do_prepare_recipe_sysroot) isn't a dependency of your task. module.bbclass
>>> uses this:
>
>>> addtask make_scripts after do_prepare_recipe_sysroot before do_compile
>
>>> BTW you say you patterned your recipe after the skeleton example, except
>>> hello-mod at least currently inherits module rather than module-base + kernel-
>>> module-split - is there a compelling reason not to inherit module?
>
>> I may have been mistaken about the original source - it looks like I
>> used a similar module strategy from meta-freescale.  I did [just now]
>> try using "inherit module" and the build dies a horrible death with
>> this error
>> | make: *** No rule to make target 'modules_install'.  Stop.
>
> Well, that is simple to solve. module.bbclasses sets
>
> MODULES_INSTALL_TARGET ?= "modules_install"
>
> just override that with your own install target. (Or fix the module's
> Makefile). The last option is to simply override do_install in your
> recipe.

I already override do_install(), so that's not enough.

>
>> I changed my [task] dependencies to match what you've quoted and everything
>> works as before.  !Thanks!
>
> I'd still recommend doing as little as possible in each recipe, and
> leverage the standard modules.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

