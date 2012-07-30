Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16C7BE00280
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:50:14 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so5727624ghb.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=ipzql21ly0++4mcnoN09UNDiPdu5Y2JiQRY/IS8dfIc=;
	b=Nae6Knab55Hefh4AT+QLcpjOp/A80yccsqxb+BhtxJi+QlAU6zliAKvWscjHLp9ItT
	fuV56C95Ho7ZsxrE7l6EjUs0UbgHhcW2Ti9pzjEYb1X9M595NveqVefnFIMogQ08VlwY
	BWGWhJ5a9mHQPzBFb4E1M93vr2Z92HuUgABCh36oIDXcks6RZnzGx7zdKg7zTf4SWFTS
	9QLLjtNSzPLNOKkr5NovT7Xl+hpE8XdixZ42Tuca/Dz3NLDWCP6FgR5jNzfVYxcQpyVZ
	gFLq8DltVqJb9N/14jmIOUsEys6LzS1y9eGWPieN9U9EwHfr0R/WDXAbhBoNkT6I9a9i
	kJ/w==
Received: by 10.236.78.106 with SMTP id f70mr10780478yhe.51.1343667013493;
	Mon, 30 Jul 2012 09:50:13 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id a4sm20330683yhj.11.2012.07.30.09.50.12
	(version=SSLv3 cipher=OTHER); Mon, 30 Jul 2012 09:50:12 -0700 (PDT)
Message-ID: <5016BB44.8070202@gmail.com>
Date: Mon, 30 Jul 2012 12:50:12 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <501683DE.5030904@gmail.com> <50168905.4090608@mlbassoc.com>
	<501690C7.9030605@gmail.com> <50169277.1090400@mlbassoc.com>
	<5016960E.9060305@gmail.com> <5016985D.7010805@mlbassoc.com>
In-Reply-To: <5016985D.7010805@mlbassoc.com>
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Mon, 30 Jul 2012 16:50:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/30/2012 10:21 AM, Gary Thomas wrote:
> On 2012-07-30 08:11, Jim Abernathy wrote:
>> On 07/30/2012 09:56 AM, Gary Thomas wrote:
>>> On 2012-07-30 07:48, Jim Abernathy wrote:
>>>> On 07/30/2012 09:15 AM, Gary Thomas wrote:
>>>>> On 2012-07-30 06:53, Jim Abernathy wrote:
>>>>>> I'm on master branch trying to build core-image-minimal for the 
>>>>>> machine "pandaboard". Besides the basics, I put in a license 
>>>>>> statement for cloud9 into local.conf.
>>>>>>
>>>>>> My bblayer.conf is as follows:
>>>>>>
>>>>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>>>>>> # changes incompatibly
>>>>>> LCONF_VERSION = "5"
>>>>>>
>>>>>> BBPATH = "${TOPDIR}"
>>>>>> BBFILES ?= ""
>>>>>>
>>>>>> BBLAYERS ?= " \
>>>>>>    /home/jim/poky/meta \
>>>>>>    /home/jim/poky/meta-yocto \
>>>>>>    /home/jim/meta-openembedded/meta-oe \
>>>>>>    /home/jim/meta-ti \
>>>>>>    "
>>>>>>
>>>>>> The error I'm getting is:
>>>>>>
>>>>>> ERROR: ParseError at 
>>>>>> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not 
>>>>>> inherit file classes/systemd.bbclass
>>>>>>
>>>>>> Build Configuration:
>>>>>> BB_VERSION        = "1.15.3"
>>>>>> TARGET_ARCH       = "arm"
>>>>>> TARGET_OS         = "linux-gnueabi"
>>>>>> MACHINE           = "pandaboard"
>>>>>> DISTRO            = "poky"
>>>>>> DISTRO_VERSION    = "1.2+snapshot-20120730"
>>>>>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>>>>>> TARGET_FPU        = "vfp-neon"
>>>>>> meta
>>>>>> meta-yocto        = 
>>>>>> "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
>>>>>> meta-oe           = 
>>>>>> "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
>>>>>> meta-ti           = 
>>>>>> "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
>>>>>>
>>>>>> ERROR: Nothing PROVIDES 'pseudo-native'
>>>>>
>>>>> Try adding this in local.conf:
>>>>>   BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>>>>
>>>> BBMASK by itself didn't solve my particular problem.  I'll try the 
>>>> other suggestions and report back.
>>>
>>> What other problem do you have?  That BBMASK should keep bitbake from
>>> trying to parse the recipe mentioned above.
>>>
>>> Note: I use these layers with Yocto all the time with that mask...
>>>
>>
>> When I just used the statement:
>>
>> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>
>> I got the same error as my original post.
>
> The only way you could get that same error is if you already have a 
> BBMASK
> statement somewhere and this one is being ignored because of the ?= 
> assignment.
>
So I started with a clean build again. This time I only added the BBMASK 
statement you suggested.  I got the following error:

ERROR: No recipes available for:
/home/jim/meta-openembedded/meta-systemd/meta-gnome/recipes-gnome/gdm/gdm_2.32.2.bbappend
/home/jim/meta-openembedded/meta-systemd/meta-efl/recipes-efl/efl/elsa_svn.bbappend
ERROR: Command execution failed: Exited with 1

I'm guessing the BBMASK needs to call out 
meta-openembedded/meta-systemd/meta-gnome and meta-efl?

Jim A


