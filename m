Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF2CE00C45; Tue, 18 Jul 2017 23:57:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED6EBE00BC0
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 23:57:48 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id q4so36176020oif.1
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 23:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:organization:mime-version
	:content-transfer-encoding;
	bh=RlmRxPKufGd3Wk4jlM/sQ9xNFe/DJpeuS5QQ3b/nrMg=;
	b=EVsTSF/789PV/ocpDZnYIUmOZ8N2Ybkp9S0XiVzJ43xns0LmdpjdHEwTUWg/ImO/JA
	4n+SCKhgFQMXJ/dwU+G5FJJqAEf9ypPM8AHw5WhDW7kkuF6Vwk//+3kI9LJ4rqxJHxkH
	nM3RS4V7sOS4cnxuRVAbvJXshaPREndkc8WSmFNLpMMwLcjETN/vTANL5EkXIf6VBoFb
	tDAcXe5adyftbmkfDJHp22keRgiLoubtEjn6V1tGSM5oI9ETKI0IokBB07U33/7MKIsZ
	BSGy77hRfhqc8GsjjUxpv8l15QNcD83Wa5mmd66Ik+4ghLntg8IM4DZGwcpUS+kdtjwE
	LFWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
	:mime-version:content-transfer-encoding;
	bh=RlmRxPKufGd3Wk4jlM/sQ9xNFe/DJpeuS5QQ3b/nrMg=;
	b=AKMPe2giEExx7gaoOYyIJ+WDaSN+htleuxTJ3q4DiYm/JgmGJawbBLsbIk9El+9Lw8
	k8Nl7m5GkZC+GmiEE7HUoxuWbfywAu3VLvVnZkwwalAbVnZABOspkuArpCtG7fQ+TjCr
	vSXafiIxm9dyRLlMwAha2LzzW5Evt+9p/BTEGFvsEtzOJX96mwhNKAcpxaiczR2SJVUN
	GFQLkQMJeP+U0FshVNBIMid7I/h/IQTgjAe4JHmhFKnXskkU1WtAJzXMDV5KEuknet+0
	m8IFzQsR3dw10BTAQZ3L7kf6dyvIjb8dQ05NGmA84SbNZbPAAu0F5by/hXbYm1zDUKtK
	IAgA==
X-Gm-Message-State: AIVw113nAGs0BL5Euuel0eK3cyY7XW3fS5CTzqgbOlVtz1yVwiwE/FTz
	rh7m+5RtOSJNUDvx
X-Received: by 10.202.221.85 with SMTP id u82mr867355oig.67.1500447468088;
	Tue, 18 Jul 2017 23:57:48 -0700 (PDT)
Received: from pohly-mobl1 (p57A56075.dip0.t-ipconnect.de. [87.165.96.117])
	by smtp.gmail.com with ESMTPSA id
	j186sm5992727oih.23.2017.07.18.23.57.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Jul 2017 23:57:46 -0700 (PDT)
Message-ID: <1500447463.5689.81.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Armin Kuster <akuster808@gmail.com>
Date: Wed, 19 Jul 2017 08:57:43 +0200
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: dynamic layer dependencies in meta-security
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
X-List-Received-Date: Wed, 19 Jul 2017 06:57:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello Armin!

I'm trying to use the latest meta-security master in refkit. Refkit runs
yocto-compat-layer.py against its own layers, which then pulls in
meta-security as one of the dependencies. That's where I am hitting a
snag:

INFO: Detected layers:
INFO: meta-refkit: LayerType.DISTRO, /fast/work/intel-iot-refkit-pr/meta-refkit
INFO: 
INFO: Setting up for meta-refkit(LayerType.DISTRO), /fast/work/intel-iot-refkit-pr/meta-refkit
INFO: Adding layer dependency meta-selftest
INFO: Adding layer dependency meta-intel
INFO: Adding layer dependency meta-refkit-gateway
INFO: Adding layer dependency meta-refkit-core
INFO: Adding layer dependency meta-oic
INFO: Adding layer dependency meta-iot-web
INFO: Adding layer dependency meta-refkit-computervision
INFO: Adding layer dependency meta-intel-realsense
INFO: Adding layer dependency meta-clang
INFO: Adding layer dependency meta-oe
INFO: Adding layer dependency meta-refkit-industrial
INFO: Adding layer dependency meta-python
INFO: Adding layer dependency meta-ros
INFO: Adding layer dependency meta-iotqa
INFO: Adding layer dependency meta-security
INFO: Adding layer dependency meta-perl
INFO: Adding layer dependency meta-security-isafw
INFO: Adding layer dependency meta-filesystems
INFO: Adding layer dependency meta-gnome
INFO: Adding layer dependency meta-networking
INFO: Adding layer dependency meta-flatpak
Traceback (most recent call last):
  File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/yocto-compat-layer.py", line 203, in <module>
    ret =  main()
  File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/yocto-compat-layer.py", line 151, in main
    if not add_layer_dependencies(bblayersconf, layer, dep_layers, logger) or \
  File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/lib/compatlayer/__init__.py", line 195, in add_layer_dependencies
    output = check_command('Getting existing layers failed.', 'bitbake-layers show-layers').decode('utf-8')
  File "/fast/work/intel-iot-refkit-pr/openembedded-core/scripts/lib/compatlayer/__init__.py", line 228, in check_command
    raise RuntimeError(msg)
RuntimeError: Getting existing layers failed.
Command: bitbake-layers show-layers
Output:
ERROR: Layer 'security' depends on layer 'xfce-layer', but this layer is not enabled in your configuration

The reason is the way how meta-security declares its dependencies:

LAYERDEPENDS_security = "core openembedded-layer perl-layer"
LAYERDEPENDS_security += "${@bb.utils.contains("DISTRO_FEATURES", "x11", "gnome-layer xfce-layer", "", d)}"
LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer meta-filesystems", "",d)}"

I haven't checked how exactly yocto-compat-layer.py deals with this, but
the end result is that it doesn't add meta-xfce when adding
meta-security. Then when "bitbake-layers show-layers" is called, a
distro (poky) has been chosen where x11 is in DISTRO_FEATURES, causing
the dependency check to fail.

This highlights a conceptual issue with the dynamic
LAYERDEPENDS_security above: which distro or machine config is active?
Tools like yocto-compat-layer.py or the layer index have to do their
work before that is defined.

This is also problematic with multiconfig. The same bblayers.conf might
be used with one config where x11 is off and another where it is on.

I suspect LAYERDEPENDS simply can't be dynamic. It either has to include
everything that a layer might depend on (even when the additional
content doesn't end up being used), or it just depends on the essential
parts and then enables additional recipes only when the optional layers
they depend on are present. BBFILES_DYNAMIC can be used for that, or the
recipes themselves check BBCOLLECTIONS in anonymous python code and
raise a SkipRecipe exception when their pre-condition isn't satisfied.

Copying Paul (layer index) and Mark (oe-yocto-compat.py, setup tool) for
their input.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




