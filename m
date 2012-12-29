Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19600E0147A
	for <yocto@yoctoproject.org>; Sat, 29 Dec 2012 04:25:11 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id EB2D9F81230; Sat, 29 Dec 2012 05:25:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6A5FEF81188;
	Sat, 29 Dec 2012 05:25:09 -0700 (MST)
Message-ID: <50DEE132.9020108@mlbassoc.com>
Date: Sat, 29 Dec 2012 05:25:22 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <CACrgodehbngP-+zvoEyn=Gbr+mqK+w7ipsREOGT4kgbN+K7AvA@mail.gmail.com>
	<50DAE8D5.7090309@mlbassoc.com>
	<CACrgodeMSvt9yr_M_VE0GqTHVFeYXTbMhFzALF762QjXaJMbmg@mail.gmail.com>
	<50DDAEFD.90202@mlbassoc.com>
	<alpine.DEB.2.02.1212290446490.20712@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212290446490.20712@oneiric>
Cc: yocto@yoctoproject.org
Subject: Re: enable netbase network interfaces?
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
X-List-Received-Date: Sat, 29 Dec 2012 12:25:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-12-29 02:58, Robert P. J. Day wrote:
> On Fri, 28 Dec 2012, Gary Thomas wrote:
>
>> On 2012-12-27 23:40, Lai Eddy wrote:
>>> Thanks Gary,
>>>
>>> after download and extract the ti cortex A8 BSP . there's only binary image
>>> inside, what MACHINE to use to build a beagleboard yocto image?
>>
>> MACHINE="beagleboard"
>>
>> Why does this matter?  You asked about how to set up *your* BSP to have
>> a tailored network interface file.  All you need to do is pattern your
>> setup after the beagleboard one, as quoted.
>>
>> n.b. please don't top-post :-(
>>
>>>
>>> On 2012-12-25 16:31, Lai Eddy wrote:
>>>
>>>      in the "Reference Manual "How do I make sure connected network
>>> interfaces are brought up by default?" said 2 files need to be added to
>>> enable network interfaces, where can I find
>>>      template files?
>>>      ------------------------------__------------------------------__------------------------------__-----------------
>>>      The default interfaces file provided by the netbase recipe does not
>>> automatically bring up network interfaces. Therefore, you will need to add a
>>> BSP-specific netbase that includes
>>>      an interfaces file.
>>>      For example, add the following files to your layer:
>>>             meta-MACHINE/recipes-bsp/__netbase/netbase/MACHINE/__interfaces
>>>             meta-MACHINE/recipes-bsp/__netbase/netbase_5.0.bbappend
>>>      ------------------------------__------------------------------__------------------------------__------------------
>>>
>>>
>>> Look in meta-ti (git://git.yoctoproject.org/__meta-ti
>>> <http://git.yoctoproject.org/meta-ti>):
>>> $ find meta-ti/recipes-core/netbase/
>>> meta-ti/recipes-core/netbase/
>>> meta-ti/recipes-core/netbase/__netbase-5.0
>>> meta-ti/recipes-core/netbase/__netbase-5.0/beagleboard
>>> meta-ti/recipes-core/netbase/__netbase-5.0/beagleboard/__interfaces
>>> meta-ti/recipes-core/netbase/__netbase_5.0.bbappend
>
>    i'm not sure where your "__" prefixes are coming from, but i know
> i've pointed out before that meta-ti's netbase_5.0.bbappend file seems
> to be broken.  currently, on dev branch, it contains:
>
> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
>
>    that value for FILESPATH is incorrect -- because the directory name
> for the "interfaces" file in meta-ti is netbase-5.0 (not simply
> netbase), it will *not* be picked up; rather, the default "interfaces"
> file from oe-core will be pulled in.
>
>    using bitbake-env, you can *see* the FILESPATH value that's used
> when building for beagle using meta-ti:
>
> $ bitbake-env -r netbase FILESPATH | tr : '\n'
> Parsing recipes..WARNING: No recipes available for:
>
> /home/rpjday/oe/dist/layers/meta-ti/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> done.
> # FILESPATH="${@base_set_filespath(["${THISDIR}/${PN}"], d)}
> ${@base_set_filespath(["${FILE_DIRNAME}/${BP}",
> "${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"
> FILESPATH="/home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/arm
> /home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/beagleboard
> /home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/omap3
> /home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/armv7a
> /home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/
> /home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/arm
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/beagleboard
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/omap3
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/armv7a
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/arm
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/beagleboard
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/omap3
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/armv7a
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/arm
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/beagleboard
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/omap3
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/armv7a
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/
> /home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/"
> $
>
>    you can see that FILESPATH doesn't include the very directory in
> meta-ti that contains the overriding beagleboard "interfaces" file.
>
>    or am i horribly misunderstanding something here?

I agree that file is incorrect.  I simply quoted its use as it is the only
example in a commonly available layer.  I'll send a patch for the meta-ti
file and hopefully they'll fix it.

Here's what I use in my own layers [which are not public, sorry]
   $ cat meta-some-target/recipes-core/netbase/netbase_5.0.bbappend
   FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
   PACKAGE_ARCH = "${MACHINE_ARCH}"

This will pick up the interfaces file from ".../meta-some-target/recipes-core/netbase/netbase-5.0/${MACHINE}/interfaces"

As for the "__" scattered in the email - those crept in with Eddy's reply.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

