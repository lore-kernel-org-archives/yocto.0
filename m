Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE667E0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 11:45:03 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 46BC0F81245; Sun,  4 Mar 2012 12:45:03 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id ECECBF8122A;
	Sun,  4 Mar 2012 12:45:01 -0700 (MST)
Message-ID: <4F53C63D.1000305@mlbassoc.com>
Date: Sun, 04 Mar 2012 12:45:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>
References: <D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric>
	<4F514EC8.8000606@ti.com> <4F515551.50708@mlbassoc.com>
	<20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203041310220.20388@oneiric>
	<20120304192728.GO24667@denix.org>
In-Reply-To: <20120304192728.GO24667@denix.org>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sun, 04 Mar 2012 19:45:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-04 12:27, Denys Dmytriyenko wrote:
> On Sun, Mar 04, 2012 at 01:14:17PM -0500, Robert P. J. Day wrote:
>> On Sun, 4 Mar 2012, Gary Thomas wrote:
>>
>>> On 2012-03-04 05:19, Robert P. J. Day wrote:
>>>>
>>>>     not sure if you're suggesting i should now be able to build
>>>> for, say, beagleboard with the meta-ti layer, but i cloned meta-ti
>>>> into my yocto tree, added that layer to bblayers.conf, and tried
>>>> to
>>>>
>>>> $ bitbake core-image-minimal
>>>>
>>>> and got what i believe gary was referring to above:
>>>>
>>>> $ bitbake core-image-minimal
>>>> Pseudo is not present but is required, building this first before the main
>>>> build
>>>> ERROR: ParseError at
>>>> /home/rpjday/yocto/git/meta-ti/recipes-misc/payload/bonescript.bb:5:
>>>> Could not inherit file classes/systemd.bbclass
>>>> ERROR: Command execution failed: Exited with 1
>>>>
>>>>     or am i misreading what you wrote?
>>>
>>> Oops, that's one more workaround I forgot to mention.  This file
>>> is in OE-core, but not in poky.  I made a local copy in my distro
>>> layer, but there must be a better way to handle it.
>>
>>    um ... AFAICT, that .bbclass file is in meta-oe, not oe-core.  and
>> since i have meta-openembedded checked out, i simply copied the whole
>> thing into my yocto tree, then tweaked my bblayers.conf file to look
>> like:
>>
>> BBLAYERS ?= " \
>>    /home/rpjday/yocto/git/meta \
>>    /home/rpjday/yocto/git/meta-yocto \
>>    /home/rpjday/yocto/git/meta-ti \
>>    /home/rpjday/yocto/git/meta-openembedded/meta-oe \
>>    "
>
> Either way, meta-oe is still required for meta-ti due to toolchain issues...

Can you explain what the toolchain problems are and why the versions in
oe-core don't work for meta-ti?

>
>> then started:
>>
>>    $ bitbake core-image-minimal    (MACHINE=beagleboard)
>>
>> and it seems to be building.  i'm entirely prepared for this to fail
>> at some point, but i might as well see how far it gets.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

