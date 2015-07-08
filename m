Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 648B1E00978; Wed,  8 Jul 2015 10:31:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F29EDE0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 10:31:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t68HUtfU015669
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 8 Jul 2015 10:30:56 -0700 (PDT)
Received: from server.local (128.224.21.97) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 8 Jul 2015 10:30:55 -0700
Message-ID: <559D5E4E.8020001@windriver.com>
Date: Wed, 8 Jul 2015 13:30:54 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Klaus Knopper <yocto@knopper.net>, Leonardo Sandoval
	<leonardo.sandoval.gonzalez@linux.intel.com>
References: <20150708145002.GO5636@knopper.net>	<559D445A.4010308@linux.intel.com>
	<20150708163604.GQ5636@knopper.net>
In-Reply-To: <20150708163604.GQ5636@knopper.net>
Cc: Yocto Mailinglist <yocto@yoctoproject.org>
Subject: Re: Selecting different kernel inside an image recipe
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
X-List-Received-Date: Wed, 08 Jul 2015 17:31:06 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-08 12:36 PM, Klaus Knopper wrote:
> Hello Leonardo,
>
> On Wed, Jul 08, 2015 at 10:40:10AM -0500, Leonardo Sandoval wrote:
>> On 07/08/2015 09:50 AM, Klaus Knopper wrote:
>>> Hello list,
>>>
>>> I'm trying to build variantions/brands of an image that only differ in
>>> kernel configuration and kernel modules included, but everything else stays
>>> the same, for the exact same board, as in the main image.
>>>
>>> Setting PREFERRED_PROVIDER_virtual/kernel = "different_kernel"
>>> right inside in the new image recipe does not have any effect, as that
>>> variable seems to be evaluated exclusively in the local.conf machine
>>> file, which is read by all recipes.
>>
>> This variable is commonly used inside configuration metadata (machine or
>> distro conf files). You may try it there.
>
> Please help me to understand your answer: You are saying that I do have
> to change the machine or distro config used for ALL recipes, to be able
> to use a different kernel configuration in ONE recipe, right?
>
> I was really trying to avoid that. :-(
>
> So it is really not possible to just select a different kernel config
> within a normal recipe without changing the global configuration?

You really want a different kernel recipe to provide that different
kernel configuration.  Which looks to be what you are describing, and
you just want to switch the provider (again, what you are saying).

Changing the included kernel via that different kernel recipe/package
name, and setting it via the preferred provider is the same as any
bitbake variable.

So you should be able to set it in any .conf file, and then have what
you want. I've used layers with layer.conf files, and similar mechanisms
to do what you are trying in the past .. but the longer serving oe/bitbake
folks may have a better example to point at.

Cheers,

Bruce

>
> Regards
> -Klaus
>


