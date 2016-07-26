Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70FA6E00C09; Tue, 26 Jul 2016 08:31:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B58BE009AA
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 08:31:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u6QFVXBI004057
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 26 Jul 2016 08:31:34 -0700
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 26 Jul 2016 08:31:33 -0700
To: Mircea Gliga <mircea.gliga@vitheia.com>, <yocto@yoctoproject.org>
References: <e00d74d8-fdca-0a3d-0b5e-0a2441badcc0@vitheia.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <57978254.9080905@windriver.com>
Date: Tue, 26 Jul 2016 11:31:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <e00d74d8-fdca-0a3d-0b5e-0a2441badcc0@vitheia.com>
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
X-List-Received-Date: Tue, 26 Jul 2016 15:31:46 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-26 02:32 AM, Mircea Gliga wrote:
> Hello
>
> I have my own layer and I am trying to configure the kernel using
> partial configs.
> I'm trying to enable netfilter support into the kernel - not as modules,
> so I set the CONFIG.... to "y"
> I've created a bbappend file in my layer, here:
> recipes-kernel/linux/linux-yocto_3.14.bbappend

Which branch is this ? 3.14 spanned a few releases, so I can't
tell from the kernel version alone.

> The content of this file is:
> ---
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> SRC_URI += "file://ipv6enable.cfg file://netfilter_minimal.cfg"
>
> SRCREV_machine = "${SRCREV}"
> ---
>
> In the ipv6enable.cfg file I also enable the ipv6.
>
> recipes-kernel/linux/linux-yocto/netfilter_minimal.cfg:
> CONFIG_NF_CONNTRACK=y
> CONFIG_NF_NAT=y
> CONFIG_NETFILTER_XTABLES=y
> CONFIG_NETFILTER_XT_MATCH_CONNTRACK=y
> CONFIG_NETFILTER_XT_MATCH_STATE=y
> CONFIG_NF_DEFRAG_IPV6=y
> CONFIG_NF_CONNTRACK_IPV6=y
> CONFIG_IP6_NF_IPTABLES=y
> CONFIG_NF_NAT_IPV6=y
>
> recipes-kernel/linux/linux-yocto/ipv6enable.cfg:
> CONFIG_IPV6=y
> CONFIG_INET6_TUNNEL=y
> CONFIG_IPV6_TUNNEL=y
> CONFIG_IPV6_ROUTER_PREF=y
>
> Now I'm configuring the kernel, cleaning first:
> * bitbake -c cleansstate linux-yocto
> * bitbake linux-yocto -c configure
>
> When inspecting the .config file from
> tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.36+gitAUTOINC+060fa80b79_4817747912-r0/linux-qemuarm-standard-build:
>
> most of the kernel options related to netfilter are set to "m", it's
> like my options from my layer are ignored.

They wouldn't be ignored, but if they are not the last configs, a
dependency or select statement is in play, the option could be changed.

In particular, check "bitbake -e" and the linux-yocto kernel recipe
for KERNEL_FEATURES .. we have them for netfilter options in particular.

KERNEL_FEATURES are applied last (something that has been tweaked in
master, but would be the case in an older release).

They are applied last, since they are a hard error if they aren't set
.. which means that something on the SRC_URI can't simply override
them, it has to be another KERNEL_FEATURE.

There is a way to create a KERNEL_FEATURE in your bbappend, but in the
case of the netfilter options, they are enabled via the
KERNEL_EXTRA_FEATURES variable, so you can override and clear that
variable to avoid the kernel feature coming in and changing what you
are trying to set.

Bruce


> But the options from the ipv6enable.cfg file are set correctly (even if
> set to "n" or "y" changes are reflected in the output file .config)
>
> I've created the netfilter_minimal.cfg file in this way:
> * configure a kernel without any of my changes
> * made a backup of .config
> * run bitbake linux-yocto -c menuconfig and set the options from there
> * save the results to a different file
> * resulting file compared with the original file: changes saved in
> netfilter_minimal.cfg
>
>
> Thanks in advance
> M.
>
>


