Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FBC8E006AD
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:21:13 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CBB7FF811F1; Mon, 30 Jul 2012 08:21:12 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 28FEDF811EE;
	Mon, 30 Jul 2012 08:21:12 -0600 (MDT)
Message-ID: <5016985D.7010805@mlbassoc.com>
Date: Mon, 30 Jul 2012 08:21:17 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <501683DE.5030904@gmail.com> <50168905.4090608@mlbassoc.com>
	<501690C7.9030605@gmail.com> <50169277.1090400@mlbassoc.com>
	<5016960E.9060305@gmail.com>
In-Reply-To: <5016960E.9060305@gmail.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 14:21:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-07-30 08:11, Jim Abernathy wrote:
> On 07/30/2012 09:56 AM, Gary Thomas wrote:
>> On 2012-07-30 07:48, Jim Abernathy wrote:
>>> On 07/30/2012 09:15 AM, Gary Thomas wrote:
>>>> On 2012-07-30 06:53, Jim Abernathy wrote:
>>>>> I'm on master branch trying to build core-image-minimal for the machine "pandaboard". Besides the basics, I put in a license statement for cloud9 into local.conf.
>>>>>
>>>>> My bblayer.conf is as follows:
>>>>>
>>>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>>>>> # changes incompatibly
>>>>> LCONF_VERSION = "5"
>>>>>
>>>>> BBPATH = "${TOPDIR}"
>>>>> BBFILES ?= ""
>>>>>
>>>>> BBLAYERS ?= " \
>>>>>    /home/jim/poky/meta \
>>>>>    /home/jim/poky/meta-yocto \
>>>>>    /home/jim/meta-openembedded/meta-oe \
>>>>>    /home/jim/meta-ti \
>>>>>    "
>>>>>
>>>>> The error I'm getting is:
>>>>>
>>>>> ERROR: ParseError at /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not inherit file classes/systemd.bbclass
>>>>>
>>>>> Build Configuration:
>>>>> BB_VERSION        = "1.15.3"
>>>>> TARGET_ARCH       = "arm"
>>>>> TARGET_OS         = "linux-gnueabi"
>>>>> MACHINE           = "pandaboard"
>>>>> DISTRO            = "poky"
>>>>> DISTRO_VERSION    = "1.2+snapshot-20120730"
>>>>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>>>>> TARGET_FPU        = "vfp-neon"
>>>>> meta
>>>>> meta-yocto        = "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
>>>>> meta-oe           = "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
>>>>> meta-ti           = "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
>>>>>
>>>>> ERROR: Nothing PROVIDES 'pseudo-native'
>>>>
>>>> Try adding this in local.conf:
>>>>   BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>>>
>>> BBMASK by itself didn't solve my particular problem.  I'll try the other suggestions and report back.
>>
>> What other problem do you have?  That BBMASK should keep bitbake from
>> trying to parse the recipe mentioned above.
>>
>> Note: I use these layers with Yocto all the time with that mask...
>>
>
> When I just used the statement:
>
> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>
> I got the same error as my original post.

The only way you could get that same error is if you already have a BBMASK
statement somewhere and this one is being ignored because of the ?= assignment.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

