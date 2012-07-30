Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE643E0143A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:06:25 -0700 (PDT)
Received: by yenl5 with SMTP id l5so5390383yen.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=uTv7D+EkN/D7PVijdbk9UiFcmhy8RikXF43yCWa0YCw=;
	b=A37ILgh3qj4kxOfoYK94ZLGdmBW5AOWN3Ai+VCOGg/HGstrrx/W2/PrSRgdpRNIk3v
	KD6T7ViO/abEWAuQBGsg3yaAqufYbSwm/mU8AxhvYGKKgUW74jrys8Lpq5wXHLG6e+y6
	GrB/NzhYeyqXymrmd2XkJh6bu1iPZ27Y69MeM5ecltajMhfadWFVo7hxwFFzxXX5H76h
	PGQW0tsUQND2C46wgxXFtplTWGt9O5xPi0GpzuxImYNlFqaXz2mqdZgQpBJPhipRdvjc
	E7xyergvT9f3t0Igk6BAwciDUFnlXH9+hOJ357YJCem5tb0Voah1ICVERfKsiveUNAZa
	EPNA==
Received: by 10.236.79.100 with SMTP id h64mr10139826yhe.50.1343653585194;
	Mon, 30 Jul 2012 06:06:25 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id y66sm19410450yhi.10.2012.07.30.06.06.24
	(version=SSLv3 cipher=OTHER); Mon, 30 Jul 2012 06:06:24 -0700 (PDT)
Message-ID: <501686CF.9060800@gmail.com>
Date: Mon, 30 Jul 2012 09:06:23 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <501683DE.5030904@gmail.com> <20120730130010.GH3261@jama.jama.net>
In-Reply-To: <20120730130010.GH3261@jama.jama.net>
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
X-List-Received-Date: Mon, 30 Jul 2012 13:06:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/30/2012 09:00 AM, Martin Jansa wrote:
> On Mon, Jul 30, 2012 at 08:53:50AM -0400, Jim Abernathy wrote:
>> I'm on master branch trying to build core-image-minimal for the machine
>> "pandaboard". Besides the basics, I put in a license statement for
>> cloud9 into local.conf.
>>
>> My bblayer.conf is as follows:
>>
>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>> # changes incompatibly
>> LCONF_VERSION = "5"
>>
>> BBPATH = "${TOPDIR}"
>> BBFILES ?= ""
>>
>> BBLAYERS ?= " \
>>     /home/jim/poky/meta \
>>     /home/jim/poky/meta-yocto \
>>     /home/jim/meta-openembedded/meta-oe \
>>     /home/jim/meta-ti \
>>     "
>>
>> The error I'm getting is:
>>
>> ERROR: ParseError at
>> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not
>> inherit file classes/systemd.bbclass
> add meta-openembedded/meta-systemd to your BBLAYERS
>
When I do that I get the errors:

ERROR: No recipes available for:
/home/jim/meta-openembedded/meta-systemd/meta-gnome/recipes-gnome/gdm/gdm_2.32.2.bbappend
/home/jim/meta-openembedded/meta-systemd/meta-efl/recipes-efl/efl/elsa_svn.bbappend
ERROR: Command execution failed: Exited with 1

Jim A
>> Build Configuration:
>> BB_VERSION        = "1.15.3"
>> TARGET_ARCH       = "arm"
>> TARGET_OS         = "linux-gnueabi"
>> MACHINE           = "pandaboard"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.2+snapshot-20120730"
>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>> TARGET_FPU        = "vfp-neon"
>> meta
>> meta-yocto        = "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
>> meta-oe           = "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
>> meta-ti           = "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
>>
>> ERROR: Nothing PROVIDES 'pseudo-native'
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


