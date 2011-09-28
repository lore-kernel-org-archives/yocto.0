Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0EB9E004DD
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 00:03:12 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Sep 2011 00:03:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,453,1312182000"; d="scan'208";a="21360334"
Received: from edwin-gen.sh.intel.com (HELO [10.239.36.111]) ([10.239.36.111])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Sep 2011 00:03:11 -0700
Message-ID: <4E82C632.6030500@intel.com>
Date: Wed, 28 Sep 2011 15:01:06 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "Zanussi, Tom" <tom.zanussi@intel.com>
References: <cover.1317084972.git.edwin.zhai@intel.com>
	<1317154129.16543.237.camel@elmorro>
In-Reply-To: <1317154129.16543.237.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/3] [RFC] enable Pegasus touch screen
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
X-List-Received-Date: Wed, 28 Sep 2011 07:03:13 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 09/28/2011 04:08 AM, Zanussi, Tom wrote:
> On Mon, 2011-09-26 at 18:03 -0700, Zhai, Edwin wrote:
>> From: Zhai Edwin<edwin.zhai@intel.com>
>>
>> Tom,
>> These changes, based on meta-intel/tzanussi/pegasus, are needed to enable
>> eGalax touch screen on Pegasus. Could you pls. help to review?
>>
>
> Hi Edwin,
>
> First, I don't think this is the correct list for meta-intel stuff,
> please use the yocto list.

Change it now:)

>
> Anyway, the first two patches look ok to me, but the 3rd seems to be a
> combination of what it says in the title, enabling touch screen kernel
> config, and updating the BSP to work with the current kernel recipes.
> The latter should I think be squashed into the base BSP, which isn't
> posted.
>
>> When will you push Pegasus changes into meta-intel/master? We can have a common
>> place for people to try pegasus...
>>
>
> The meta-pegasus you pointed to seems to be an old version, basically
> the same prototype version I gave you for the demo.  I thought the
> current one had been updated to address the comments from the quick
> review of Aug 9:
>
> - meta-pegasus - commented-out stuff in pegasus.conf, xorg.conf,
> linux-yocto-2.6.37.bbappend, ReleaseNotes are unrelated to the BSP, etc.
>
> Also, it has a blacksand.pdf and has old kernel recipes, etc.
>
> Basically, it needs to be cleaned up a bit before it can be pulled in,
> and should be buildable without relying on later patches.

Do you mean we need rebased against branch of 
meta-intel/tzanussi/pegasus-v2?

>
> Also, I'm wondering if there's a reason it's using 2.6.37 - we're at 3.0
> now, and it would be good if it used that.

Have we tested 3.0 on Pegasus or N450 system? I remember your mentioned 
graphic crash with linux 3.0...

>
> Finally, please also add yourself or whoever will be the maintainer
> going forward to meta-intel/MAINTAINERS...

Sure.
Tom,
Thanks for your comments!

>
> Thanks,
>
> Tom
>
>> Thanks,
>> Edwin
>>
>> The following changes since commit 59dc67f6e64a836fc01fa91a1200e76264bb954d:
>>
>>    meta-pegasus: new layer for Pegasus (N455) systems (2011-06-15 23:27:47 -0500)
>>
>> are available in the git repository at:
>>    git://git.pokylinux.org/poky-contrib gzhai/pegasus
>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/pegasus
>>
>> Zhai Edwin (3):
>>    eGalax touchscreen offical xorg driver
>>    Config xorg.conf with eGalax touchscreen input driver
>>    Enabled kernel module for eGalax touch screen.
>>
>>   meta-pegasus/conf/machine/pegasus.conf             |    2 +-
>>   .../xf86-input-egalax/88eGalaxCalibrate.sh         |    5 ++
>>   .../xorg-driver/xf86-input-egalax_3.06.5605.bb     |   49 ++++++++++++++++++++
>>   .../xserver-xf86-config/pegasus/xorg.conf          |   10 ++++
>>   .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 +
>>   .../recipes-kernel/linux/linux-yocto/pegasus.cfg   |    4 ++
>>   .../linux/linux-yocto_2.6.37.bbappend              |   12 +++++
>>   7 files changed, 83 insertions(+), 1 deletions(-)
>>   create mode 100755 meta-pegasus/recipes-graphics/xorg-driver/xf86-input-egalax/88eGalaxCalibrate.sh
>>   create mode 100644 meta-pegasus/recipes-graphics/xorg-driver/xf86-input-egalax_3.06.5605.bb
>>   create mode 100644 meta-pegasus/recipes-kernel/linux/linux-yocto/pegasus.cfg
>>   create mode 100644 meta-pegasus/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>>
>
>


