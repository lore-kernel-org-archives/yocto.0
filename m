Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98C7DE00346
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:48:57 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so5461864ghb.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=32pxrl9AG+wnmOdOl14eWZllGnv27l2EHcYdw0DuwEk=;
	b=Ny9Mc59o7DLXcZZw1xQC4hEpLkdAr5Puyzj8MMH1dcAUVfXFjhdZ+NWoiz/mZyohdp
	wEa6xXT7LaJnJWebnATzxT0tujGdY1Rnu/YhlNOAXr1pVd+DB3bWQ+/QA0Z8Gu4jV2ZW
	6iMWe6kh73YJSIr7ZXyqiDq8FG+njtcMNEduFV5Roo5VB/AslV5W0zepbM4Lw5kfVmwi
	ZbsdYw2bPnQn2YUR9voWw9BumtLwQ3SDVG/F4K5ONcXsetPrjPBY/E2pVrTzGg1aBeP4
	/Y7xmCs5mLgFjOYC/5O98/tYtCvhBDHi4R7gIw0Db6u4ql7lRg2FDSpVa+qf5C9K2Sj8
	OBYw==
Received: by 10.236.153.9 with SMTP id e9mr10204365yhk.32.1343656137016;
	Mon, 30 Jul 2012 06:48:57 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id s1sm9146699anl.8.2012.07.30.06.48.55
	(version=SSLv3 cipher=OTHER); Mon, 30 Jul 2012 06:48:56 -0700 (PDT)
Message-ID: <501690C7.9030605@gmail.com>
Date: Mon, 30 Jul 2012 09:48:55 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <501683DE.5030904@gmail.com> <50168905.4090608@mlbassoc.com>
In-Reply-To: <50168905.4090608@mlbassoc.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 13:48:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/30/2012 09:15 AM, Gary Thomas wrote:
> On 2012-07-30 06:53, Jim Abernathy wrote:
>> I'm on master branch trying to build core-image-minimal for the 
>> machine "pandaboard". Besides the basics, I put in a license 
>> statement for cloud9 into local.conf.
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
>>    /home/jim/poky/meta \
>>    /home/jim/poky/meta-yocto \
>>    /home/jim/meta-openembedded/meta-oe \
>>    /home/jim/meta-ti \
>>    "
>>
>> The error I'm getting is:
>>
>> ERROR: ParseError at 
>> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not 
>> inherit file classes/systemd.bbclass
>>
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
>
> Try adding this in local.conf:
>   BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>
BBMASK by itself didn't solve my particular problem.  I'll try the other 
suggestions and report back.

Jim A


