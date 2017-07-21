Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42DA0E009A4; Fri, 21 Jul 2017 06:06:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63DE6E0090A
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 06:06:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v6LD6QBb026622
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 21 Jul 2017 06:06:26 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 21 Jul 2017 06:06:26 -0700
To: Patrick Ohly <patrick.ohly@intel.com>, akuster808 <akuster808@gmail.com>
References: <1500447463.5689.81.camel@intel.com>
	<2ad0b40b-b201-9974-7f28-10efc611ffb1@windriver.com>
	<1628a1f3-ec46-1144-1d5e-8242c8672edd@gmail.com>
	<1500611869.8415.11.camel@intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <0ad0604b-0025-9c7d-f024-f6bd14cc3081@windriver.com>
Date: Fri, 21 Jul 2017 08:06:29 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1500611869.8415.11.camel@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: dynamic layer dependencies in meta-security
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
X-List-Received-Date: Fri, 21 Jul 2017 13:06:30 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 7/20/17 11:37 PM, Patrick Ohly wrote:
> On Thu, 2017-07-20 at 14:39 -0700, akuster808 wrote:
>>> I would certainly caution against dynamic layerdepends/layerrecommends and
>>> instead focus on listing everything between what is required and what you want
>>> to add in addition -- then using the meta-freescale approach of only extending
>>> (the recommends) when present.
> 
> FWIW, the meta-freescale approach has been superseeded by
> BBFILES_DYNAMIC.

BBFILES_DYNAMIC requires master.  You need to use the meta-freescale approach
for any of the existing released trees.

You are correct it is the right approach for master and future, but we should
fix existing trees as well, since it does affect the output of the layer index
for people looking at existing releases.

>> This appears to be more beneficial in a  bbappends than a recipe needing 
>> a package from another layer.
> 
> BBFILES_DYNAMIC can be used for both .bb and .bbappend files.
> 
> In refkit, I ended up just using it for .bbappend files:
> https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/conf/layer.conf#L7
> 
>         # All our .bbappends for other layers are in a separate
>         # "bbappends/<layer>" hierarchy. We activate only those
>         # bbappends for which the layer they apply to is actually
>         # present.
>         #
>         # Sorted by layer path to keep related layers together.
>         BBFILES_DYNAMIC += " \
>         clang-layer:${LAYERDIR}/bbappends/meta-clang/*/*/*.bbappend \
>         flatpak:${LAYERDIR}/bbappends/meta-flatpak/*/*/*.bbappend \

Even when using this, there should be a LAYERRECOMMENDS for clang-layer and
flatpak IMHO.  Otherwise the layer index and other automated tools will have no
way to determine that the user should have those items.

> For recipes, I wanted to have a bit more flexibility:
> - let developers decide from where they get the dependency - the
>   well-known layer or a copy elsewhere
> - let recipes decide which features they enable based on which
>   dependencies are available
>         
> Also, "bitbake foo" should result in an error about "dependency bar
> required for foo not found", not a blunt "nothing provides foo". With
> BBFILES_DYNAMIC for .bb files one only gets the latter.

Problem of course is that if we bring in a .bb that requires another layer (in
certain ways) then the parse can fail, or you have to start 'protecting' certain
things (like inherits/requires/etc) so the parse can complete.  This becomes a
big problem very quickly.

> Here's how it is defined what's available:
> https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/conf/layer.conf#L51
>         
>                 # There are multiple different ways for providing some of the
>                 # dependencies. Here we assume that the dependencies are available if
>                 # the layers that the refkit distro takes them from are present.
>                 HAVE_META_OE = "${@ bb.utils.contains('BBFILE_COLLECTIONS', 'openembedded-layer', 'True', 'False', d) }"
>                 HAVE_ATOP ??= "${HAVE_META_OE}"
>             HAVE_CRYPTSETUP ??= "${HAVE_META_OE}"
>             ...

I have mixed feeling on this approach... I certainly understand it, and get why
it's needed.  (I've used it myself as well...)  but in the end you are
essentially defining a distribution flag (variable?) that is being set by the
layer.conf based on the existence of another layer.  This would be very
confusing to someone trying to understand why two different builds are getting
different behaviors.

The best of the 'bad situation' would be to implement (in the recipes) a
PKGCONFIG where the default uses these magic variables to define the defaults.
Then the user can have a chance at debugging the issue by seeing that the
PKGCONFIG (default) is changing from one build to another.  Using the variables
directly during the build is very tempting, but I would caution against it.

> And here's how it is used:
> https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/recipes-images/images/initramfs-framework-refkit-dm-verity.bb#L22
> 
>         python () {
>             if not oe.types.boolean(d.getVar('HAVE_CRYPTSETUP') or '0'):
>                 raise bb.parse.SkipRecipe('cryptsetup dependency not available')
>         }

This is certainly nicer then the other way.  It may be possible in bitbake to
implement this type of work directly.  I.e. in the BBFILES_DYNAMIC processing.
If the layer isn't there, we could still process the glob and report the
skipRecipe.  (I'm sure I'm making it sound easier then it would be to implement.)

--Mark

