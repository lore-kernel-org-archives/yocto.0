Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5930FE00346
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:11:31 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so5459923ggn.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=bebzmd5+xZMz8JxuCFvtHdNylF7UKQt3RHBlBFRyC5E=;
	b=qJ8XDo5wEfyuh7GV5+bhHvI6KAYwB+WmYITvNAo5Z+vFGo9eQvWqSKjNxoxL2aSb0+
	jpUQfj8SiYwnhzWbo8GjzlrAamKBa3sDf7m0glCuFVtDKyDD5bwBd/sOz6PiJMqFjhH8
	JTNm94mO3Epw3NaXFIkqTbugc76O+3uZjnhFEwa2u8F9FkfoSsFtCCG8ikCO01fXPCFW
	F88D5BzIVtd/c1VErgWHTA7Ds/wvKtJIGJfejvW0VqmaGdGNcWRtqsbLzLSxhPDtanKp
	uqVZTTSiz99kCUq/kJaRbFiypRZ13B7fm4qKRbJYysgXO4WWh8rz3leN2guzxREhVh4Q
	6e9g==
Received: by 10.236.182.228 with SMTP id o64mr10041258yhm.85.1343657490933;
	Mon, 30 Jul 2012 07:11:30 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id x7sm9186451ang.7.2012.07.30.07.11.28
	(version=SSLv3 cipher=OTHER); Mon, 30 Jul 2012 07:11:30 -0700 (PDT)
Message-ID: <5016960E.9060305@gmail.com>
Date: Mon, 30 Jul 2012 10:11:26 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <501683DE.5030904@gmail.com> <50168905.4090608@mlbassoc.com>
	<501690C7.9030605@gmail.com> <50169277.1090400@mlbassoc.com>
In-Reply-To: <50169277.1090400@mlbassoc.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 14:11:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/30/2012 09:56 AM, Gary Thomas wrote:
> On 2012-07-30 07:48, Jim Abernathy wrote:
>> On 07/30/2012 09:15 AM, Gary Thomas wrote:
>>> On 2012-07-30 06:53, Jim Abernathy wrote:
>>>> I'm on master branch trying to build core-image-minimal for the 
>>>> machine "pandaboard". Besides the basics, I put in a license 
>>>> statement for cloud9 into local.conf.
>>>>
>>>> My bblayer.conf is as follows:
>>>>
>>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>>>> # changes incompatibly
>>>> LCONF_VERSION = "5"
>>>>
>>>> BBPATH = "${TOPDIR}"
>>>> BBFILES ?= ""
>>>>
>>>> BBLAYERS ?= " \
>>>>    /home/jim/poky/meta \
>>>>    /home/jim/poky/meta-yocto \
>>>>    /home/jim/meta-openembedded/meta-oe \
>>>>    /home/jim/meta-ti \
>>>>    "
>>>>
>>>> The error I'm getting is:
>>>>
>>>> ERROR: ParseError at 
>>>> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not 
>>>> inherit file classes/systemd.bbclass
>>>>
>>>> Build Configuration:
>>>> BB_VERSION        = "1.15.3"
>>>> TARGET_ARCH       = "arm"
>>>> TARGET_OS         = "linux-gnueabi"
>>>> MACHINE           = "pandaboard"
>>>> DISTRO            = "poky"
>>>> DISTRO_VERSION    = "1.2+snapshot-20120730"
>>>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>>>> TARGET_FPU        = "vfp-neon"
>>>> meta
>>>> meta-yocto        = "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
>>>> meta-oe           = "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
>>>> meta-ti           = "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
>>>>
>>>> ERROR: Nothing PROVIDES 'pseudo-native'
>>>
>>> Try adding this in local.conf:
>>>   BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>>
>> BBMASK by itself didn't solve my particular problem.  I'll try the 
>> other suggestions and report back.
>
> What other problem do you have?  That BBMASK should keep bitbake from
> trying to parse the recipe mentioned above.
>
> Note: I use these layers with Yocto all the time with that mask...
>

When I just used the statement:

BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"

I got the same error as my original post.

Jim A



