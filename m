Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0920E0073D; Fri, 29 Jul 2016 02:50:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 365B1E0045D
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:50:26 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id u6T9oLfd024547
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 12:50:21 +0300
To: yocto@yoctoproject.org
References: <e00d74d8-fdca-0a3d-0b5e-0a2441badcc0@vitheia.com>
	<57978254.9080905@windriver.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <101debc7-def8-2ab4-6bb5-2cc87070644e@vitheia.com>
Date: Fri, 29 Jul 2016 12:50:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <57978254.9080905@windriver.com>
Subject: Re: Some partial kernel configs applied some are ignored
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
X-List-Received-Date: Fri, 29 Jul 2016 09:50:30 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Thanks for your reply Bruce!
Indeed that was the problem with my partial kernel configs that got 
'ignored'.
The recipe poky/meta/recipes-kernel/linux/linux-yocto_3.14.bb sets the 
KERNEL_FEATURES:

KERNEL_EXTRA_FEATURES ?= "features/netfilter/netfilter.scc"
KERNEL_FEATURES_append = " ${KERNEL_EXTRA_FEATURES}"

KERNEL_FEATURES having a higher priority, resets my configuration options.

So in my bbapend file, from my layer,I've set KERNEL_EXTRA_FEATURES = ""

Now it works as expected.
I was not aware - from the documentation, if there is any regarding this 
priorities - that KERNEL_FEATURES are applied last and could override my 
configs.

To answer your first question here is my Build Configuration:

BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Debian-8.5"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky-lsb"
DISTRO_VERSION    = "2.0.1"
TUNE_FEATURES     = "arm armv5 thumb dsp"
TARGET_FPU        = "soft"
meta-atmel        = "jethro:4765d7064e4916784c15095347eda21cc10aabb4"
meta-smartcom     = "master:8577784729b3d4346ea56df8edb08f4c43d03ccb"
meta-qt5          = "jethro:ea37a0bc987aa9484937ad68f762b4657c198617"
meta
meta-yocto
meta-yocto-bsp    = "jethro:f117786f2447d86810d2b8078f125363632c7662"
meta-oe
meta-networking
meta-python
meta-ruby
meta-multimedia   = "jethro:d69386740b85b7865ea1ca844b91bbacd27041d8"

Have a nice day.


On 07/26/2016 06:31 PM, Bruce Ashfield wrote:
> On 2016-07-26 02:32 AM, Mircea Gliga wrote:
>> Hello
>>
>> I have my own layer and I am trying to configure the kernel using
>> partial configs.
>> I'm trying to enable netfilter support into the kernel - not as modules,
>> so I set the CONFIG.... to "y"
>> I've created a bbappend file in my layer, here:
>> recipes-kernel/linux/linux-yocto_3.14.bbappend
>
> Which branch is this ? 3.14 spanned a few releases, so I can't
> tell from the kernel version alone.
>
>> The content of this file is:
>> ---
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> SRC_URI += "file://ipv6enable.cfg file://netfilter_minimal.cfg"
>>
>> SRCREV_machine = "${SRCREV}"
>> ---
>>
>> In the ipv6enable.cfg file I also enable the ipv6.
>>
>> recipes-kernel/linux/linux-yocto/netfilter_minimal.cfg:
>> CONFIG_NF_CONNTRACK=y
>> CONFIG_NF_NAT=y
>> CONFIG_NETFILTER_XTABLES=y
>> CONFIG_NETFILTER_XT_MATCH_CONNTRACK=y
>> CONFIG_NETFILTER_XT_MATCH_STATE=y
>> CONFIG_NF_DEFRAG_IPV6=y
>> CONFIG_NF_CONNTRACK_IPV6=y
>> CONFIG_IP6_NF_IPTABLES=y
>> CONFIG_NF_NAT_IPV6=y
>>
>> recipes-kernel/linux/linux-yocto/ipv6enable.cfg:
>> CONFIG_IPV6=y
>> CONFIG_INET6_TUNNEL=y
>> CONFIG_IPV6_TUNNEL=y
>> CONFIG_IPV6_ROUTER_PREF=y
>>
>> Now I'm configuring the kernel, cleaning first:
>> * bitbake -c cleansstate linux-yocto
>> * bitbake linux-yocto -c configure
>>
>> When inspecting the .config file from
>> tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.36+gitAUTOINC+060fa80b79_4817747912-r0/linux-qemuarm-standard-build: 
>>
>>
>> most of the kernel options related to netfilter are set to "m", it's
>> like my options from my layer are ignored.
>
> They wouldn't be ignored, but if they are not the last configs, a
> dependency or select statement is in play, the option could be changed.
>
> In particular, check "bitbake -e" and the linux-yocto kernel recipe
> for KERNEL_FEATURES .. we have them for netfilter options in particular.
>
> KERNEL_FEATURES are applied last (something that has been tweaked in
> master, but would be the case in an older release).
>
> They are applied last, since they are a hard error if they aren't set
> .. which means that something on the SRC_URI can't simply override
> them, it has to be another KERNEL_FEATURE.
>
> There is a way to create a KERNEL_FEATURE in your bbappend, but in the
> case of the netfilter options, they are enabled via the
> KERNEL_EXTRA_FEATURES variable, so you can override and clear that
> variable to avoid the kernel feature coming in and changing what you
> are trying to set.
>
> Bruce
>
>
>> But the options from the ipv6enable.cfg file are set correctly (even if
>> set to "n" or "y" changes are reflected in the output file .config)
>>
>> I've created the netfilter_minimal.cfg file in this way:
>> * configure a kernel without any of my changes
>> * made a backup of .config
>> * run bitbake linux-yocto -c menuconfig and set the options from there
>> * save the results to a different file
>> * resulting file compared with the original file: changes saved in
>> netfilter_minimal.cfg
>>
>>
>> Thanks in advance
>> M.
>>
>>
>


