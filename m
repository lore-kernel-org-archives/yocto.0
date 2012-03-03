Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A336EE003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 16:07:11 -0800 (PST)
Received: from dlep26.itg.ti.com ([157.170.170.121])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q23077xj010898;
	Fri, 2 Mar 2012 18:07:07 -0600
Received: from DFLE71.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id q230772f013882;
	Fri, 2 Mar 2012 18:07:07 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle71.ent.ti.com
	(128.247.5.62) with Microsoft SMTP Server id 14.1.323.3; Fri, 2 Mar 2012
	18:07:06 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q23076Cw020330;	Fri, 2 Mar 2012 18:07:06 -0600
Message-ID: <4F5160AA.4040004@ti.com>
Date: Fri, 2 Mar 2012 19:07:06 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>	<4F4D457F.7000306@windriver.com>	<alpine.DEB.2.02.1202281651040.8024@oneiric>	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>	<alpine.DEB.2.02.1202281723110.9200@oneiric>	<4F514826.5050402@ti.com>	<alpine.DEB.2.02.1203021729040.31351@oneiric>	<4F514EC8.8000606@ti.com>
	<4F515551.50708@mlbassoc.com>
In-Reply-To: <4F515551.50708@mlbassoc.com>
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
X-List-Received-Date: Sat, 03 Mar 2012 00:07:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 03/02/2012 06:18 PM, Gary Thomas wrote:
> On 2012-03-02 15:50, William Mills wrote:
>>
>>
>> On 03/02/2012 05:33 PM, Robert P. J. Day wrote:
>>> On Fri, 2 Mar 2012, William Mills wrote:
>>>
>>> ... snip ...
>>>
>>>> Congratulations you are the first beta tester for the new README.txt
>>>> language :) (patched two days ago).
>>>>
>>>> Denys: I suggest
>>>>
>>>> change:
>>>>
>>>> "Due to the above, it is now recommended to follow the instructions
>>>> at http://www.angstrom-distribution.org/building-angstrom"
>>>>
>>>> to:
>>>>
>>>> "When the other layer combinations are supported instructions will
>>>> be supplied here. Until that time please see the Angstrom setup
>>>> instructions below.
>>>>
>>>> *** Angstrom w/ meta-ti Layer Stack setup: ***
>>>> Please follow the instructions at
>>>> http://www.angstrom-distribution.org/building-angstrom"
>>>
>>> i might try something a bit different. given that angstrom is the
>>> tested way to go, by all means, point that out and *strongly*
>>> recommend that approach.
>>>
>>> on the other hand, what is the current issue with the yocto/meta-ti
>>> combo? is it *known* to be broken? or is it simply not sufficiently
>>> tested? in cases like that, i see no problem in cautioning people
>>> about it, but telling them that if they're feeling adventurous,
>>> they're welcome to give it a shot but if it breaks, as they say, they
>>> get to keep all the pieces.
>>>
>>> don't discourage people from trying it, but make sure you give
>>> proper instructions for how to use it, that's all. unless, as i said,
>>> it's really and truly unusable.
>>
>> We will update the README when it is merely in need of testing.
>> Today, we know there is code that does not work with GCC 4.6.
>> Today, we know there are features in the recipes that do not work w/o
>> Angstrom.
>
> Can you elaborate on the above? I have been [I think] successfully using
> poky+meta-ti
> to support internal platform based on DM8148 and DM3730 - meta-ti is the
> best choice
> for a kernel "jumping off point" for these platforms. So far, I've only
> had to make a scant few tweaks to get this combo to work, in particular:

If we can make some simple changes (or document workarounds) that enable 
bare bones support for poky/oe-core that does not break full support in 
Angstrom, I'm all for it.  Even if we have to limit it to a subset of 
boards.

I'll try to give you a better answer Monday.



