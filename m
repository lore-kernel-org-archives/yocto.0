Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17AE0E00BC0; Wed, 19 Jul 2017 05:29:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37E51E00B76
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 05:29:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v6JCTHWp010656
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Jul 2017 05:29:17 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 19 Jul 2017 05:29:16 -0700
To: Patrick Ohly <patrick.ohly@intel.com>, Armin Kuster <akuster808@gmail.com>
References: <1500447463.5689.81.camel@intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <2ad0b40b-b201-9974-7f28-10efc611ffb1@windriver.com>
Date: Wed, 19 Jul 2017 07:29:15 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1500447463.5689.81.camel@intel.com>
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
X-List-Received-Date: Wed, 19 Jul 2017 12:29:21 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 7/19/17 1:57 AM, Patrick Ohly wrote:
> Hello Armin!
> 
> I'm trying to use the latest meta-security master in refkit. Refkit runs
> yocto-compat-layer.py against its own layers, which then pulls in
> meta-security as one of the dependencies. That's where I am hitting a
> snag:
> 
> INFO: Detected layers:
> INFO: meta-refkit: LayerType.DISTRO, /fast/work/intel-iot-refkit-pr/meta-refkit
> INFO: 
> INFO: Setting up for meta-refkit(LayerType.DISTRO), /fast/work/intel-iot-refkit-pr/meta-refkit
> INFO: Adding layer dependency meta-selftest
> INFO: Adding layer dependency meta-intel
> INFO: Adding layer dependency meta-refkit-gateway
> INFO: Adding layer dependency meta-refkit-core
> INFO: Adding layer dependency meta-oic
> INFO: Adding layer dependency meta-iot-web
> INFO: Adding layer dependency meta-refkit-computervision
> INFO: Adding layer dependency meta-intel-realsense
> INFO: Adding layer dependency meta-clang
> INFO: Adding layer dependency meta-oe
> INFO: Adding layer dependency meta-refkit-industrial
> INFO: Adding layer dependency meta-python
> INFO: Adding layer dependency meta-ros
> INFO: Adding layer dependency meta-iotqa
> INFO: Adding layer dependency meta-security
> INFO: Adding layer dependency meta-perl
> INFO: Adding layer dependency meta-security-isafw
> INFO: Adding layer dependency meta-filesystems
> INFO: Adding layer dependency meta-gnome
> INFO: Adding layer dependency meta-networking
> INFO: Adding layer dependency meta-flatpak
> Traceback (most recent call last):
>   File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/yocto-compat-layer.py", line 203, in <module>
>     ret =  main()
>   File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/yocto-compat-layer.py", line 151, in main
>     if not add_layer_dependencies(bblayersconf, layer, dep_layers, logger) or \
>   File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/lib/compatlayer/__init__.py", line 195, in add_layer_dependencies
>     output = check_command('Getting existing layers failed.', 'bitbake-layers show-layers').decode('utf-8')
>   File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/lib/compatlayer/__init__.py", line 228, in check_command
>     raise RuntimeError(msg)
> RuntimeError: Getting existing layers failed.
> Command: bitbake-layers show-layers
> Output:
> ERROR: Layer 'security' depends on layer 'xfce-layer', but this layer is not enabled in your configuration
> 
> The reason is the way how meta-security declares its dependencies:
> 
> LAYERDEPENDS_security = "core openembedded-layer perl-layer"
> LAYERDEPENDS_security += "${@bb.utils.contains("DISTRO_FEATURES", "x11", "gnome-layer xfce-layer", "", d)}"
> LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
> LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
> LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer meta-filesystems", "",d)}"
> 
> I haven't checked how exactly yocto-compat-layer.py deals with this, but
> the end result is that it doesn't add meta-xfce when adding
> meta-security. Then when "bitbake-layers show-layers" is called, a
> distro (poky) has been chosen where x11 is in DISTRO_FEATURES, causing
> the dependency check to fail.

The meta-freescale method of checking if a layer is present and adding features
is how they resolve this issue.  Instead of making it a dependency, they simply
check if it's already present and then add to it.

I agree the above is less then optimal way of doing things, and will prevent the
layer index from getting a clear list of what may be required.

Note, there is also LAYERRECOMMENDS_... in this case, the system could recommend
gnome-layer, xfce-layer, tpm-layer, meta-filesystems, and then use the
meta-freescale approach to only enabling thsoe features if the recommended
layers are present.

> This highlights a conceptual issue with the dynamic
> LAYERDEPENDS_security above: which distro or machine config is active?
> Tools like yocto-compat-layer.py or the layer index have to do their
> work before that is defined.
> 
> This is also problematic with multiconfig. The same bblayers.conf might
> be used with one config where x11 is off and another where it is on.
> 
> I suspect LAYERDEPENDS simply can't be dynamic. It either has to include
> everything that a layer might depend on (even when the additional
> content doesn't end up being used), or it just depends on the essential
> parts and then enables additional recipes only when the optional layers
> they depend on are present. BBFILES_DYNAMIC can be used for that, or the
> recipes themselves check BBCOLLECTIONS in anonymous python code and
> raise a SkipRecipe exception when their pre-condition isn't satisfied.
> 
> Copying Paul (layer index) and Mark (oe-yocto-compat.py, setup tool) for
> their input.

I would certainly caution against dynamic layerdepends/layerrecommends and
instead focus on listing everything between what is required and what you want
to add in addition -- then using the meta-freescale approach of only extending
(the recommends) when present.

The setup program and layer index can handle this situaton.  The
yocto-compat-layer checking may have to be augmented to deal with recommends as
well, but that should be fairly minor.

--Mark

