Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2E61E00944; Thu, 20 Jul 2017 14:39:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.49 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A764EE0083A
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 14:39:26 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id k14so20076660pgr.0
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 14:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=Leli2jYDarAk3/FcRcpyKDCDXpb7WQQo2/xwQxzDp0E=;
	b=GQ/LwWQOXHZC+Zri9ckaFPLIFUreSXyA+zHUUsI4wV8/k0w2VRFHavbCiiruJtGc5V
	yNas8Z9MiVdouIBx+bD8SJ0CorZ3N1e+WQs8F3utBK0HlI1DX+nCD3ST6Ea1Z/LNoez5
	NQqIg06u7Ss4RBkx775BDzHwolb/Q9Mp0onvhUKcbes+XoqUIKjbWm3MYhCncc0GNv+F
	DQldosgpyCv7iT0Ct4oyd4lc5FXdbua7b+E4PK0Q0f4bA1hE8vA1EiZXzYviNZCeX7N9
	BjG5X/8HEW3n+CUwNZKQ+Vkzd0doq2/Yi4CkNE+qr0bWTsmKHg27JX1IsxhmanPYKnnW
	uD6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Leli2jYDarAk3/FcRcpyKDCDXpb7WQQo2/xwQxzDp0E=;
	b=ZMuWfhoDdGlPJrnga8mAh//oZBt5FAdt1fAuyLSXcly3BndGIeMYIV4ghHLhsK717a
	CupyDAjQG+7Gx8kg0FzcDp+iY2wxMEpCI37KNjuJ/AKzqVRkr43QaRE2o55p8GlX/TYc
	91ogwoUY0N+Yu/ALapyhFun6Ugdu7NCvIfl0QjR03p+mCkSQmTL1km+SEdNyIemsaYUb
	m4628F5FXNn1NtTD17X+jnNlBE6Ky8ptwsP6XszMmD3AWd+QoiigNkMokGJlhiRhDpc4
	BtF2KRQSBhOZgJKCq8JdjuuYhJ0JpW7RWhIA6i43erLlNVck8O5QQ+W8MJjQmK9FDb3h
	PGzQ==
X-Gm-Message-State: AIVw111fE0sVVVnME/alqTmIwQD+zrOqaiIJBWydhSmYtZ9qywO8MII6
	rjImc+RfGTzs04xS08c=
X-Received: by 10.98.86.3 with SMTP id k3mr5318228pfb.144.1500586765817;
	Thu, 20 Jul 2017 14:39:25 -0700 (PDT)
Received: from [10.43.100.234] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156])
	by smtp.gmail.com with ESMTPSA id w7sm6064502pfw.25.2017.07.20.14.39.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Jul 2017 14:39:25 -0700 (PDT)
To: Mark Hatle <mark.hatle@windriver.com>,
	Patrick Ohly <patrick.ohly@intel.com>
References: <1500447463.5689.81.camel@intel.com>
	<2ad0b40b-b201-9974-7f28-10efc611ffb1@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <1628a1f3-ec46-1144-1d5e-8242c8672edd@gmail.com>
Date: Thu, 20 Jul 2017 14:39:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <2ad0b40b-b201-9974-7f28-10efc611ffb1@windriver.com>
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
X-List-Received-Date: Thu, 20 Jul 2017 21:39:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 07/19/2017 05:29 AM, Mark Hatle wrote:
> On 7/19/17 1:57 AM, Patrick Ohly wrote:
>> Hello Armin!
>>
>> I'm trying to use the latest meta-security master in refkit. Refkit runs
>> yocto-compat-layer.py against its own layers, which then pulls in
>> meta-security as one of the dependencies. That's where I am hitting a
>> snag:
>>
>> INFO: Detected layers:
>> INFO: meta-refkit: LayerType.DISTRO, /fast/work/intel-iot-refkit-pr/meta-refkit
>> INFO:
>> INFO: Setting up for meta-refkit(LayerType.DISTRO), /fast/work/intel-iot-refkit-pr/meta-refkit
>> INFO: Adding layer dependency meta-selftest
>> INFO: Adding layer dependency meta-intel
>> INFO: Adding layer dependency meta-refkit-gateway
>> INFO: Adding layer dependency meta-refkit-core
>> INFO: Adding layer dependency meta-oic
>> INFO: Adding layer dependency meta-iot-web
>> INFO: Adding layer dependency meta-refkit-computervision
>> INFO: Adding layer dependency meta-intel-realsense
>> INFO: Adding layer dependency meta-clang
>> INFO: Adding layer dependency meta-oe
>> INFO: Adding layer dependency meta-refkit-industrial
>> INFO: Adding layer dependency meta-python
>> INFO: Adding layer dependency meta-ros
>> INFO: Adding layer dependency meta-iotqa
>> INFO: Adding layer dependency meta-security
>> INFO: Adding layer dependency meta-perl
>> INFO: Adding layer dependency meta-security-isafw
>> INFO: Adding layer dependency meta-filesystems
>> INFO: Adding layer dependency meta-gnome
>> INFO: Adding layer dependency meta-networking
>> INFO: Adding layer dependency meta-flatpak
>> Traceback (most recent call last):
>>    File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/yocto-compat-layer.py", line 203, in <module>
>>      ret =  main()
>>    File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/yocto-compat-layer.py", line 151, in main
>>      if not add_layer_dependencies(bblayersconf, layer, dep_layers, logger) or \
>>    File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/lib/compatlayer/__init__.py", line 195, in add_layer_dependencies
>>      output = check_command('Getting existing layers failed.', 'bitbake-layers show-layers').decode('utf-8')
>>    File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/lib/compatlayer/__init__.py", line 228, in check_command
>>      raise RuntimeError(msg)
>> RuntimeError: Getting existing layers failed.
>> Command: bitbake-layers show-layers
>> Output:
>> ERROR: Layer 'security' depends on layer 'xfce-layer', but this layer is not enabled in your configuration
Thats not good. Thanks for the feedback.

>>
>> The reason is the way how meta-security declares its dependencies:
>>
>> LAYERDEPENDS_security = "core openembedded-layer perl-layer"
>> LAYERDEPENDS_security += "${@bb.utils.contains("DISTRO_FEATURES", "x11", "gnome-layer xfce-layer", "", d)}"
>> LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
>> LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
>> LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer meta-filesystems", "",d)}"
>>
>> I haven't checked how exactly yocto-compat-layer.py deals with this, but
>> the end result is that it doesn't add meta-xfce when adding
>> meta-security. Then when "bitbake-layers show-layers" is called, a
>> distro (poky) has been chosen where x11 is in DISTRO_FEATURES, causing
>> the dependency check to fail.
> The meta-freescale method of checking if a layer is present and adding features
> is how they resolve this issue.  Instead of making it a dependency, they simply
> check if it's already present and then add to it.
>
> I agree the above is less then optimal way of doing things, and will prevent the
> layer index from getting a clear list of what may be required.
>
> Note, there is also LAYERRECOMMENDS_... in this case, the system could recommend
> gnome-layer, xfce-layer, tpm-layer, meta-filesystems, and then use the
> meta-freescale approach to only enabling thsoe features if the recommended
> layers are present.
Thanks. I will take a look at that.

>
>> This highlights a conceptual issue with the dynamic
>> LAYERDEPENDS_security above: which distro or machine config is active?
>> Tools like yocto-compat-layer.py or the layer index have to do their
>> work before that is defined.
>>
>> This is also problematic with multiconfig. The same bblayers.conf might
>> be used with one config where x11 is off and another where it is on.
>>
>> I suspect LAYERDEPENDS simply can't be dynamic. It either has to include
>> everything that a layer might depend on (even when the additional
>> content doesn't end up being used), or it just depends on the essential
>> parts and then enables additional recipes only when the optional layers
>> they depend on are present. BBFILES_DYNAMIC can be used for that, or the
>> recipes themselves check BBCOLLECTIONS in anonymous python code and
>> raise a SkipRecipe exception when their pre-condition isn't satisfied.
>>
>> Copying Paul (layer index) and Mark (oe-yocto-compat.py, setup tool) for
>> their input.
> I would certainly caution against dynamic layerdepends/layerrecommends and
> instead focus on listing everything between what is required and what you want
> to add in addition -- then using the meta-freescale approach of only extending
> (the recommends) when present.
This appears to be more beneficial in a  bbappends than a recipe needing 
a package from another layer.

>
> The setup program and layer index can handle this situaton.  The
> yocto-compat-layer checking may have to be augmented to deal with recommends as
> well, but that should be fairly minor.
>
> --Mark
Thanks for the detailed explanation. I will look into the and submit 
changes soon.
-armin

