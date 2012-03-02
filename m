Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 660D7E003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 14:22:35 -0800 (PST)
Received: from dlep26.itg.ti.com ([157.170.170.121])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q22MMVcv009652;
	Fri, 2 Mar 2012 16:22:31 -0600
Received: from DFLE71.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id q22MMVjW022417;
	Fri, 2 Mar 2012 16:22:31 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle71.ent.ti.com
	(128.247.5.62) with Microsoft SMTP Server id 14.1.323.3; Fri, 2 Mar 2012
	16:22:31 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q22MMUw8018070;	Fri, 2 Mar 2012 16:22:30 -0600
Message-ID: <4F514826.5050402@ti.com>
Date: Fri, 2 Mar 2012 17:22:30 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>	<4F4D457F.7000306@windriver.com>	<alpine.DEB.2.02.1202281651040.8024@oneiric>	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
In-Reply-To: <alpine.DEB.2.02.1202281723110.9200@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Koen Kooi <koen@beagleboard.org>
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
X-List-Received-Date: Fri, 02 Mar 2012 22:22:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 02/28/2012 05:28 PM, Robert P. J. Day wrote:
> On Tue, 28 Feb 2012, Koen Kooi wrote:
>
>> Op 28 feb. 2012, om 22:55 heeft Robert P. J. Day het volgende geschreven:
>>
>>> On Tue, 28 Feb 2012, Bruce Ashfield wrote:
>>>
>>>> It is true that the beagleboard is a hardware reference board in the
>>>> yocto consolidated kernel tree and meta-yocto layers. That means
>>>> that it gets the yocto standard QA builds and boot testing.
>>>>
>>>> That being said, if you are looking for the latest + specific
>>>> features then you've been pointed in a good direction .. meta-ti
>>>> will meet your needs.
>>>>
>>>> As for disentangling and reducing questions in this area .. rest
>>>> assured, we are working on it.
>>>   ok, that's perfectly reasonable -- meta-yocto provides a generic,
>>> well-tested product, while the meta-ti layer provides more
>>> leading-edge content, correct?
>> No, the amount of testing is not the difference, the amount of
>> support for the board is. Meta-ti supports the camera interfaces, 3d
>> engine, dsp, crypto engines, expansion boards, etc. Meta-yocto lacks
>> all that for beagleboard.
>    i understand that reasonably well, and i'll make one more
> observation, then i'll shut up.
>
>    i cloned the meta-ti layer into my yocto clone, and here's the
> majority of the meta-ti README:
>
> ===== start
>
> This layer depends on:
>
> URI: git://git.openembedded.org/openembedded-core
> branch: master
> revision: HEAD
>
> URI: git://git.openembedded.org/meta-openembedded
> branch: master
> revision: HEAD
>
> URI: git://git.angstrom-distribution.org/meta-angstrom
> branch: master
> revision: HEAD
>
> Currently meta-ti only works with the Angstrom distribution and hence
> requires the meta-angstrom layer. There are known issues when using
> gcc-4.6 based toolchain from OpenEmbedded-Core, thus gcc-4.5
> toolchain, provided by meta-openembedded, is needed. It is planned to
> fix these shortcomings in the near future and allow building the base
> BSP part of meta-ti with different distributions and layer stacks,
> such as: distro-less (only with OE-Core), with Yocto/Poky, with
> Angstrom or Arago.
>
> Due to the above, it is now recommended to follow the instructions at
> http://www.angstrom-distribution.org/building-angstrom
>
> This will set it up for the OpenEmbedded-core layout instead of the
> old "Classic" OpenEmbedded-dev layout. You can optionally tweak
> sources/layers.txt and conf/bblayers.conf to (de)select BSP layers.
>
> ===== end
>
>    by the time i'm done reading that, i'm not sure whether i've been
> told i can use yocto as long as i do the necessary prep first, or that
> i should give up on yocto and just use angstrom directly.  i'm fine
> with either approach, but the README seems to just waffle *totally* on
> which strategy to use.
>
>    quite simply, that README seems to provide nothing but more
> confusion than anything else.

Congratulations you are the first beta tester for the new README.txt 
language :) (patched two days ago).

Denys: I suggest

change:

"Due to the above, it is now recommended to follow the instructions at
http://www.angstrom-distribution.org/building-angstrom"

to:

"When the other layer combinations are supported instructions will be supplied here.
Until that time please see the Angstrom setup instructions below.

*** Angstrom w/ meta-ti Layer Stack setup: ***
Please follow the instructions at
http://www.angstrom-distribution.org/building-angstrom"

etc.



