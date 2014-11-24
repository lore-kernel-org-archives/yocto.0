Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 066DCE0084F; Mon, 24 Nov 2014 13:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCF25E007C1
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 13:27:20 -0800 (PST)
Received: from [192.168.1.10] (unknown [68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 63EEE207E07F;
	Mon, 24 Nov 2014 21:26:00 +0000 (UTC)
Message-ID: <5473A266.6070407@mindchasers.com>
Date: Mon, 24 Nov 2014 16:25:58 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "Stevens, Nick" <Nick.Stevens@etherios.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <94A9084532A7034A80AF38392EE560FF11063166@MTK-SMS-XCH03.digi.com>
In-Reply-To: <94A9084532A7034A80AF38392EE560FF11063166@MTK-SMS-XCH03.digi.com>
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
X-List-Received-Date: Mon, 24 Nov 2014 21:27:29 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2014 03:22 PM, Stevens, Nick wrote:
> I think I've encountered a bug with how multiple bbappend files are processed when one of the bbappends contains a filename wildcard, but I want to make sure there's not something I'm missing before filing a bug report.
>
> I have a BSP layer and a customization layer that are based on the OE/poky Daisy release. The output of `bitbake-layers show-layers` looks like:
>      layer                 path                 priority
>      =====================================================
>      meta                  poky/meta            5
>      meta-yocto            poky/meta-yocto      5
>      meta-yocto-bsp        poky/meta-yocto-bsp  5
>      ...ellided...
>      meta-bsp              meta-bsp             6
>      meta-custom           meta-custom          8
>
> In meta-bsp there is a bbappend for base-files named base-files_3.0.14.bbappend. The meta-bsp bbappend adds a sysctl.conf to /etc - pretty straightforward:
>      FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>      SRC_URI += "file://sysctl.conf"
>      do_install_append() {
>          install -m 0644 ${WORKDIR}/sysctl.conf ${D}${sysconfdir}/
>      }
>
> Now what I want to do is add a file called base-files_%.bbappend to meta-custom. It has its own version of sysctl.conf, and the recipe looks like this:
>      FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> Here's where things get weird. If I run `bitbake -e base-files` and pull out the section for FILESEXTRAPATHS, this is what I get (note that I've stripped out the huge absolute paths to make this easier to read):
>      # $FILESEXTRAPATHS [5 operations]
>      #   set poky/meta/conf/documentation.conf:172
>      #     [doc] "Extends the search path the OpenEmbedded build system uses when looking for files and patches as it processes recipes and append files."
>      #   _prepend meta-custom/recipes-core/base-files/base-files_%.bbappend:6
>      #     "meta-custom/recipes-core/base-files/base-files:"
>      #   _prepend meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3
>      #     "meta-bsp/recipes-core/base-files/base-files:"
>      #   set data_smart.py:432 [finalize]
>      #     "meta-custom/recipes-core/base-files/base-files:"
>      #   set data_smart.py:432 [finalize]
>      #     "meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-core/base-files/base-files:"
>      # computed:
>      #   "meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-core/base-files/base-files:"
>      FILESEXTRAPATHS="meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-core/base-files/base-files:"
>
> For some reason meta-bsp is coming before meta-custom in FILESEXTRAPATHS, even though meta-custom has a higher priority!


I also have some questions about how FILESEXTRAPATHS is supposed to work 
with append files and layer priorities.

Does a higher layer priority mean that the FILESEXTRAPATHS operation 
should occur first?  If this is the case, then a lower priority layer 
prepend will appear to the left of the higher layer prepend since it 
runs later, and this will probably not provide the result you want.

The prepend and layer logic seems messy to me.  I would like to have a 
way to write my custom layer and specify that what I include in my 
SRC_URI in each recipe is definitive and can not be overwritten. 
Suggestions on how to best accomplish this will be greatly appreciated.

I have been trying to accomplish this with FILESOVERRIDES, but this 
logic seems counterintuitive since  DISTROOVERRIDES take precedence over 
MACHINEOVERRIDES in building the file search path during the unpack task.

It seems to me that the file search path should be built using 
FILESOVERRIDES from left to right:  TRANSLATED_TARGET_ARCH, 
MACHINEOVERRIDES, and then DISTROOVERRIDES (specific to generic), but 
this isn't what I'm seeing.  Still investigating how it's all put 
together...


I verified this by building an image - the sysctl.conf that ends up in 
the final image is the one from meta-bsp, not the one from meta-custom. 
But if I switch the name of base-files_%.bbappend in meta-custom to 
base-files_3.0.14.bbappend, this is what I get:
>      # $FILESEXTRAPATHS [5 operations]
>      #   set poky/meta/conf/documentation.conf:172
>      #     [doc] "Extends the search path the OpenEmbedded build system uses when looking for files and patches as it processes recipes and append files."
>      #   _prepend meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3
>      #     "meta-bsp/recipes-core/base-files/base-files:"
>      #   _prepend meta-custom/recipes-core/base-files/base-files_3.0.14.bbappend:6
>      #     "meta-custom/recipes-core/base-files/base-files:"
>      #   set data_smart.py:432 [finalize]
>      #     "meta-bsp/recipes-core/base-files/base-files:"
>      #   set data_smart.py:432 [finalize]
>      #     "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-core/base-files/base-files:"
>      # computed:
>      #   "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-core/base-files/base-files:"
>      FILESEXTRAPATHS="meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-core/base-files/base-files:"
>
> And now the sysctl.conf file is being pulled from meta-custom.
>
> Is there something I'm missing, like some sort of decreased priorty for bbappend files with a wildcard? Or is this a bug?
>
> Thanks for any help!
>
> Nick Stevens
>


