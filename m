Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3D9BE009C1; Fri,  2 May 2014 10:24:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5597BE00939
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 10:24:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s42HOofQ005484
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 May 2014 10:24:51 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 2 May 2014 10:24:50 -0700
Message-ID: <5363D4E2.2080006@windriver.com>
Date: Fri, 2 May 2014 13:24:50 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Neuer User <auslands-kv@gmx.de>, <yocto@yoctoproject.org>
References: <ljl1vt$ink$1@ger.gmane.org>	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>	<535E54BB.7060701@windriver.com>	<ljllf9$frh$1@ger.gmane.org>	<535E59A1.1080808@windriver.com>	<ljlmib$45t$1@ger.gmane.org>	<53616636.5000509@windriver.com>	<5361CDAE.8050206@windriver.com>	<5361EA76.1080604@gmx.de>
	<53628066.7060300@windriver.com>
In-Reply-To: <53628066.7060300@windriver.com>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Fri, 02 May 2014 17:24:57 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 14-05-01 01:12 PM, Bruce Ashfield wrote:
> On 14-05-01 02:32 AM, Neuer User wrote:
>> Hi Bruce
>>
>> Here is the error messega, I get after a "bitbake linux-cubox-i -c
>> cleansstate; bitbake linux-cubox-i" using the recipe you posted:
>
> Aha. This is what I was seeing as well, and there's some issues and
> assumptions
> that are built into those kernel recipes that are causing the yocto
> tools to attempt a patch (which is already on the branch) and hence
> the failure (the recipes should really be tweaked .. but I digress).
>
> I'm prepping a small patch that will have this particular recipe and
> use case working out of the box.

... and I managed to get this working without a patch. You just
need the following as your bbappend:

----------------
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"

SRC_URI += "file://videoin.cfg"

SRCREV_machine = "${SRCREV}"
----------------

The key is the addition of SRCREV_machine. It deals with the issue
that I mentioned with the kernel recipes. They have a series of patches
that are already on the branch being built. But yet the SRCREV backs
the branch off and allows the patches to apply (something I wouldn't
do .. but that's not the point).

The linux-yocto validation can do a similar back off, but it currently
triggers on SRCREV_machine, which wasn't set .. this is already fixed
in my current series that will go out for Yocto 1.7.

After this:

]> pwd
/home/bruce/poky/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0
yow-bashfiel-d3 [/home/bruc.../3.0.35-r0]> grep CONFIG_VIDEO_ADV7180 
linux-cubox_i-standard-build/.config
CONFIG_VIDEO_ADV7180=y

Note, the fragment you were working with needs this:

 > cat videoin.cfg
CONFIG_VIDEO_CAPTURE_DRIVERS=y
CONFIG_VIDEO_ADV7180=y

Or you'll be missing a dependency and have the config dropped from
the final .config.

Bruce


>
> Bruce
>
>>
>> ERROR: Function failed: do_patch (log file is located at
>> /home/ubuntu/yocto/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0/temp/log.do_patch.5660)
>>
>> ERROR: Logfile of failure stored in:
>> /home/ubuntu/yocto/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0/temp/log.do_patch.5660
>>
>> Log data follows:
>> | DEBUG: Executing shell function do_patch
>> | WARNING: no meta data branch found ...
>> | ls: cannot access .meta*: No such file or directory
>> | Already on 'imx_3.0.35_4.1.0'
>> | [INFO] validating against known patches  (cubox-i-standard-meta)
>> error: patch failed: arch/arm/lib/memset.S:19#############] (/)(110 %)
>> | error: arch/arm/lib/memset.S: patch does not apply
>> | ERROR. could not update git tree
>> | ERROR. Could not apply patches for cubox-i.
>> |        Patch failures can be resolved in the devshell (bitbake -c
>> devshell linux-cubox-i)
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_patch (log file is located at
>> /home/ubuntu/yocto/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0/temp/log.do_patch.5660)
>>
>> ERROR: Task 3
>> (/home/ubuntu/yocto/sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-cubox-i_3.0.35.bb,
>>
>> do_patch) failed with exit code '1'
>>
>> Hope, it helps!
>>
>> Michael
>>
>> Am 01.05.2014 06:29, schrieb Bruce Ashfield:
>>> I'm glad that I looked again, I though there was an error without my
>>> clean up series .. but what I was seeing was a legitimate double
>>> application of the patch.
>>>
>>> What error where you seeing when you tried a bbappend like so:
>>> ll ticking.. ;-)
>
> If anyone has more suggestions or info, please let me know! I’ll keep
> you posted.
>
> Update: Just reached 4 days of uptime!
>
> Update 2: Today it’s 4 month’s after I wrote this blog. The machine is
> still up & running and has reached 106 days of uptime!
>
> Update 3: After 7 months (222 days of uptime) I finally retired the
> machine since we migrated to our CloudStack cloud. The fix described ab
>>> ------------
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>>
>>> inherit kernel
>>> require recipes-kernel/linux/linux-yocto.inc
>>>
>>> COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"
>>>
>>> SRC_URI += "file://videoin.cfg"
>>> --------------
>>>
>>> Your error message will set me straight .. and tell me if it is just
>>> the late night hacking fooling my eyes .. or not!
>>>
>>>
>>> Bruce
>>
>>
>


