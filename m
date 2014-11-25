Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0F7BE008D9; Tue, 25 Nov 2014 12:38:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95B51E0084E
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 12:38:49 -0800 (PST)
Received: from [192.168.1.10] (unknown [68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 065D220793B7;
	Tue, 25 Nov 2014 20:38:48 +0000 (UTC)
Message-ID: <5474E8D7.601@mindchasers.com>
Date: Tue, 25 Nov 2014 15:38:47 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	"Stevens, Nick" <Nick.Stevens@etherios.com>
References: <94A9084532A7034A80AF38392EE560FF11063166@MTK-SMS-XCH03.digi.com>
	<5473A266.6070407@mindchasers.com>
	<4839222.tS45RDzaJt@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4839222.tS45RDzaJt@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Layer Priority with Wildcard .bbappend Files
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
X-List-Received-Date: Tue, 25 Nov 2014 20:38:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/25/2014 06:12 AM, Paul Eggleton wrote:
> Hi Bob / Nick,
>
> On Monday 24 November 2014 16:25:58 Bob Cochran wrote:
>> On 11/24/2014 03:22 PM, Stevens, Nick wrote:
>>> I think I've encountered a bug with how multiple bbappend files are
>>> processed when one of the bbappends contains a filename wildcard, but I
>>> want to make sure there's not something I'm missing before filing a bug
>>> report.>
>>> I have a BSP layer and a customization layer that are based on the OE/poky
>>> Daisy release. The output of `bitbake-layers show-layers` looks like:
>>>       layer                 path                 priority
>>>       =====================================================
>>>       meta                  poky/meta            5
>>>       meta-yocto            poky/meta-yocto      5
>>>       meta-yocto-bsp        poky/meta-yocto-bsp  5
>>>       ...ellided...
>>>       meta-bsp              meta-bsp             6
>>>       meta-custom           meta-custom          8
>>>
>>> In meta-bsp there is a bbappend for base-files named base-
>>> files_3.0.14.bbappend. The meta-bsp bbappend adds a sysctl.conf to /etc -
>>> pretty straightforward:
>>>       FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>       SRC_URI += "file://sysctl.conf"
>>>       do_install_append() {
>>>
>>>           install -m 0644 ${WORKDIR}/sysctl.conf ${D}${sysconfdir}/
>>>
>>>       }
>>>
>>> Now what I want to do is add a file called base-files_%.bbappend to meta-
>>> custom. It has its own version of sysctl.conf, and the recipe looks like
>>> this:
>>>       FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>
>>> Here's where things get weird. If I run `bitbake -e base-files` and pull
>>> out the section for FILESEXTRAPATHS, this is what I get (note that I've
>>> stripped out the huge absolute paths to make this easier to read):
>>>       # $FILESEXTRAPATHS [5 operations]
>>>       #   set poky/meta/conf/documentation.conf:172
>>>       #     [doc] "Extends the search path the OpenEmbedded build system
>>>       uses when looking for files and patches as it processes recipes and
>>>       append files." #   _prepend
>>>       meta-custom/recipes-core/base-files/base-files_%.bbappend:6 #
>>>       "meta-custom/recipes-core/base-files/base-files:"
>>>       #   _prepend
>>>       meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3
>>>       #     "meta-bsp/recipes-core/base-files/base-files:"
>>>       #   set data_smart.py:432 [finalize]
>>>       #     "meta-custom/recipes-core/base-files/base-files:"
>>>       #   set data_smart.py:432 [finalize]
>>>       #
>>>       "meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-cor
>>>       e/base-files/base-files:" # computed:
>>>       #
>>>       "meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-cor
>>>       e/base-files/base-files:"
>>>       FILESEXTRAPATHS="meta-bsp/recipes-core/base-files/base-files:meta-cu
>>>       stom/recipes-core/base-files/base-files:">
>>> For some reason meta-bsp is coming before meta-custom in FILESEXTRAPATHS,
>>> even though meta-custom has a higher priority!
>>
>> I also have some questions about how FILESEXTRAPATHS is supposed to work
>> with append files and layer priorities.
>>
>> Does a higher layer priority mean that the FILESEXTRAPATHS operation
>> should occur first?
>
> No. bbappends are parsed in ascending layer priority order. It wouldn't make
> sense to do it in the reverse - you want the higher priority layer's settings
> to take precedence
>
>> If this is the case, then a lower priority layer prepend will appear to the
>> left of the higher layer prepend since it runs later, and this will probably
>> not provide the result you want.
>
> The highest priority layer's bbappend will prepend last, thus anything it
> prepends will be first in the list.
>
>> The prepend and layer logic seems messy to me.  I would like to have a
>> way to write my custom layer and specify that what I include in my
>> SRC_URI in each recipe is definitive and can not be overwritten.
>> Suggestions on how to best accomplish this will be greatly appreciated.
>
> I think this is pretty much already the case. Is the problem that you can't
> follow the current behaviour, or that you don't completely trust the layers
> you are pulling in?


Thanks Paul.  Something is amiss when I try to prepend my recipes. I 
suspect it has something to do with OVERRIDE interactions.    I'm 
digging and will report later.



>
>> I have been trying to accomplish this with FILESOVERRIDES, but this
>> logic seems counterintuitive since  DISTROOVERRIDES take precedence over
>> MACHINEOVERRIDES in building the file search path during the unpack task.
>>
>> It seems to me that the file search path should be built using
>> FILESOVERRIDES from left to right:  TRANSLATED_TARGET_ARCH,
>> MACHINEOVERRIDES, and then DISTROOVERRIDES (specific to generic), but
>> this isn't what I'm seeing.  Still investigating how it's all put
>> together...
>>
>>
>> I verified this by building an image - the sysctl.conf that ends up in
>> the final image is the one from meta-bsp, not the one from meta-custom.
>> But if I switch the name of base-files_%.bbappend in meta-custom to
>> base-files_3.0.14.bbappend, this is what I get:
>>>       # $FILESEXTRAPATHS [5 operations]
>>>       #   set poky/meta/conf/documentation.conf:172
>>>       #     [doc] "Extends the search path the OpenEmbedded build system
>>>       uses when looking for files and patches as it processes recipes and
>>>       append files." #   _prepend
>>>       meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3 #
>>>       "meta-bsp/recipes-core/base-files/base-files:"
>>>       #   _prepend
>>>       meta-custom/recipes-core/base-files/base-files_3.0.14.bbappend:6 #
>>>         "meta-custom/recipes-core/base-files/base-files:"
>>>       #   set data_smart.py:432 [finalize]
>>>       #     "meta-bsp/recipes-core/base-files/base-files:"
>>>       #   set data_smart.py:432 [finalize]
>>>       #
>>>       "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-cor
>>>       e/base-files/base-files:" # computed:
>>>       #
>>>       "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-cor
>>>       e/base-files/base-files:"
>>>       FILESEXTRAPATHS="meta-custom/recipes-core/base-files/base-files:meta
>>>       -bsp/recipes-core/base-files/base-files:">
>>> And now the sysctl.conf file is being pulled from meta-custom.
>
> That absolutely should not happen. If you change it back does it revert to the
> version from meta-bsp? The wildcarding should not change the order in which
> the files are applied. The only corner case I can think of would be if the
> layer priority values are the same number - this isn't the case is it?
>
> Cheers,
> Paul
>


