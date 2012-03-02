Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74A4DE003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 15:18:43 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D3D96F811DB; Fri,  2 Mar 2012 16:18:42 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 653EAF811DA;
	Fri,  2 Mar 2012 16:18:41 -0700 (MST)
Message-ID: <4F515551.50708@mlbassoc.com>
Date: Fri, 02 Mar 2012 16:18:41 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric>
	<4F514EC8.8000606@ti.com>
In-Reply-To: <4F514EC8.8000606@ti.com>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Fri, 02 Mar 2012 23:18:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-02 15:50, William Mills wrote:
>
>
> On 03/02/2012 05:33 PM, Robert P. J. Day wrote:
>> On Fri, 2 Mar 2012, William Mills wrote:
>>
>> ... snip ...
>>
>>> Congratulations you are the first beta tester for the new README.txt
>>> language :) (patched two days ago).
>>>
>>> Denys: I suggest
>>>
>>> change:
>>>
>>> "Due to the above, it is now recommended to follow the instructions
>>> at http://www.angstrom-distribution.org/building-angstrom"
>>>
>>> to:
>>>
>>> "When the other layer combinations are supported instructions will
>>> be supplied here. Until that time please see the Angstrom setup
>>> instructions below.
>>>
>>> *** Angstrom w/ meta-ti Layer Stack setup: ***
>>> Please follow the instructions at
>>> http://www.angstrom-distribution.org/building-angstrom"
>>
>> i might try something a bit different. given that angstrom is the
>> tested way to go, by all means, point that out and *strongly*
>> recommend that approach.
>>
>> on the other hand, what is the current issue with the yocto/meta-ti
>> combo? is it *known* to be broken? or is it simply not sufficiently
>> tested? in cases like that, i see no problem in cautioning people
>> about it, but telling them that if they're feeling adventurous,
>> they're welcome to give it a shot but if it breaks, as they say, they
>> get to keep all the pieces.
>>
>> don't discourage people from trying it, but make sure you give
>> proper instructions for how to use it, that's all. unless, as i said,
>> it's really and truly unusable.
>
> We will update the README when it is merely in need of testing.
> Today, we know there is code that does not work with GCC 4.6.
> Today, we know there are features in the recipes that do not work w/o Angstrom.

Can you elaborate on the above?  I have been [I think] successfully using poky+meta-ti
to support internal platform based on DM8148 and DM3730 - meta-ti is the best choice
for a kernel "jumping off point" for these platforms.  So far, I've only
had to make a scant few tweaks to get this combo to work, in particular:

* In conf/local.conf, I use this to avoid parsing problems with some meta-ti
   recipes (none of which I need at the moment)
     # Ignore troublesome TI recipes
     BBMASK = ".*/meta-ti/recipes-misc/"

* In distro.conf (I do have my own distro, but it's very close to poky), I needed
     # Allow hardware overrides, e.g. armv7a
     OVERRIDES .= ":${SOC_FAMILY}"

With these minor additions, I've been able to use the meta-ti layer for [some]
kernel work, u-boot, DSP support, etc - all the stuff one expects the layer
to provide.

I know my setup is a bit outside pure poky+meta-ti, but it does show that
you don't actually have to have Angstrom to use meta-ti.

It would be nice to understand what your concerns are, certainly the details
of your two "Today,..." statements above, if they fall outside what I've outlined
here.

> As soon as we remove the above for even one platform we will update the README to reflect an Alpha state for oc-core &| poky layer stack for that platform(s).

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

