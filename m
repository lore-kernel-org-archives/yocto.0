Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8F4DE004A1
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:57:47 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so5440212ggn.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=B4Yt4Q9/t8BD6eVaxmNxmTz4ma/copzdBBQPTvbgP2E=;
	b=aCEHf1iZa4YpKw3MY8XNYNaiQG7erX4qbLuU8AnjZaxL6DwPFHM/luaAT8e0exuDrj
	t1k1OHAUAeIvM9dTl89TJwwWVtNqZ8E2mkTan23pxyEV8HBu+HC9UwoowX6e8/Rqpp/3
	mr3Xmn6ptO/K0d1UN0ncTzZ78A/Rjw+KUoAxxm5qapeEC+S3wXseTba1FCum2WFfh92g
	jFrBeHeIjeanuTJ7It9m1c47hk4QcKcMVmRFARUY9ompQzEWa+GkCAucKMq9AC5hu6ao
	ciwxY1B3egcgo81gFULyeQADNIsLQsGLBsFwrzth0PXe7xwwDYReHD1irJU1zlYe4CQX
	4JVw==
Received: by 10.236.153.39 with SMTP id e27mr10126996yhk.130.1343656666917;
	Mon, 30 Jul 2012 06:57:46 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id y66sm19608278yhi.10.2012.07.30.06.57.45
	(version=SSLv3 cipher=OTHER); Mon, 30 Jul 2012 06:57:46 -0700 (PDT)
Message-ID: <501692D9.2060403@gmail.com>
Date: Mon, 30 Jul 2012 09:57:45 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <501683DE.5030904@gmail.com> <20120730130010.GH3261@jama.jama.net>
	<501686CF.9060800@gmail.com> <20120730131930.GI3261@jama.jama.net>
In-Reply-To: <20120730131930.GI3261@jama.jama.net>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 30 Jul 2012 13:57:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/30/2012 09:19 AM, Martin Jansa wrote:
> On Mon, Jul 30, 2012 at 09:06:23AM -0400, Jim Abernathy wrote:
>> On 07/30/2012 09:00 AM, Martin Jansa wrote:
>>> On Mon, Jul 30, 2012 at 08:53:50AM -0400, Jim Abernathy wrote:
>>>> I'm on master branch trying to build core-image-minimal for the machine
>>>> "pandaboard". Besides the basics, I put in a license statement for
>>>> cloud9 into local.conf.
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
>>>>      /home/jim/poky/meta \
>>>>      /home/jim/poky/meta-yocto \
>>>>      /home/jim/meta-openembedded/meta-oe \
>>>>      /home/jim/meta-ti \
>>>>      "
>>>>
>>>> The error I'm getting is:
>>>>
>>>> ERROR: ParseError at
>>>> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not
>>>> inherit file classes/systemd.bbclass
>>> add meta-openembedded/meta-systemd to your BBLAYERS
>>>
>> When I do that I get the errors:
>>
>> ERROR: No recipes available for:
>> /home/jim/meta-openembedded/meta-systemd/meta-gnome/recipes-gnome/gdm/gdm_2.32.2.bbappend
>> /home/jim/meta-openembedded/meta-systemd/meta-efl/recipes-efl/efl/elsa_svn.bbappend
>> ERROR: Command execution failed: Exited with 1
> Add BB_DANGLINGAPPENDS_WARNONLY to
> meta-openembedded/meta-systemd/conf/layer.conf
BB_DANDLINGAPPENDS_WARNONLY = "yes"  seems to have gotten me past the 
build errors for now.

I'll look at the BBMASK some more since it looks cleaner to just modify 
the local.conf file.

Jim A

> or add meta-gnome/meta-efl layers if you would use them..
>
> Cheers,
>
>> Jim A
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
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto


