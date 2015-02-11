Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 660BFE0097F; Wed, 11 Feb 2015 03:23:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6E66E009C1
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 03:23:42 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E3862F811E4; Wed, 11 Feb 2015 04:23:41 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4BCC4F811DF;
	Wed, 11 Feb 2015 04:23:41 -0700 (MST)
Message-ID: <54DB3BCC.9010402@mlbassoc.com>
Date: Wed, 11 Feb 2015 04:23:56 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54DA3FBD.2000503@mlbassoc.com>	<CABcZAN=2uiE8=fmTJOxvq3zsbaL5W9BwS+r7zxN2bMtChQL7vA@mail.gmail.com>
	<54DA4F70.7030702@mlbassoc.com>
In-Reply-To: <54DA4F70.7030702@mlbassoc.com>
Subject: Re: [meta-freescale] tmp/work-shared and sstate
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
X-List-Received-Date: Wed, 11 Feb 2015 11:23:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-10 11:35, Gary Thomas wrote:
> On 2015-02-10 11:13, Christopher Larson wrote:
>>
>> On Tue, Feb 10, 2015 at 10:28 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>>
>>     If I run a build where the kernel package is brought in via
>>     sstate, tmp/work-shared (in particular the kernel-source tree)
>>     is not populated.  This will break at least these recipes:
>>        meta-fsl-arm/recipes-__multimedia/gstreamer/gst-fsl-__plugin_4.0.2.bb <http://gst-fsl-plugin_4.0.2.bb>
>>        meta-fsl-arm/recipes-__multimedia/alsa/fsl-alsa-__plugins_1.0.25.bb <http://fsl-alsa-plugins_1.0.25.bb>
>>
>>     These programs reference the kernel includes directly for some
>>     ARM/i.MX specific headers (e.g. <linux/mxcfb.h>).  These headers
>>     are not part of the mainline kernel which is used to create the
>>     kernel headers that populates tmp/sysroots, so the build fails.
>>     Note: I'm not sure of the mechanism that lets these programs
>>     peek into the kernel build (I looked at them but nothing jumped
>>     out), but they do build find if the kernel is actually built
>>     and not just brought in by sstate.
>>
>>     Is this an error & if so, which recipe is at fault?  The FSL
>>     recipes, or the new kernel build/classes?
>>
>>
>> Per commit 46cdaf1c7bc597735d926af6a46f9483f7e57ce5 (oe-core 6a1ff0e7eacef595738f2fed086986fd622ec32a), you need to add this if you depend on the sources:
>>
>>      do_configure[depends] += "virtual/kernel:do_shared_workdir"
>> --
>
> Thanks, I'm checking now to see if this fixes the problem.
>
> One thing I noted is I added that line to the two recipes in
> question.  When I [re]built my target image with these changes
> in a tree that I had just built using only sstate, it kicked
> off a ton of tasks (~6000!), and it seems that it's now rebuilding
> everything from scratch, not just unpacking the kernel.  Once this
> finishes, I'll try another rebuild from sstate to see how that works,
> but it sure looks like it's doing a lot more than necessary.
>
> Is this to be expected?

I'm not sure why this complete rebuild happened (sadly, it took
more than 8 hours...)  When it completed, I tried another rebuild
from sstate only and things worked as expected with everything
coming in from sstate.

One concern though - the kernel package seems to have been completely
rebuilt, not just the work-shared tree being repopulated.  Is this
correct?

Thanks for the swift answer to this problem.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

