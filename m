Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A21DE00D2E; Mon, 25 Jul 2016 23:43:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C60FBE00D25
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 23:43:34 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id u6Q6AdWQ011298
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 09:10:39 +0300
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: yocto@yoctoproject.org
Message-ID: <d32c8f5f-c0b2-4e76-a4f0-c75c88ac540f@vitheia.com>
Date: Tue, 26 Jul 2016 09:10:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.1.0
MIME-Version: 1.0
Subject: Some partial kernel configs applied some are ignored
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
X-List-Received-Date: Tue, 26 Jul 2016 06:43:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello

I have my own layer and I am trying to configure the kernel using 
partial configs.
I'm trying to enable netfilter support into the kernel - not as modules, 
so I set the CONFIG.... to "y"
I've created a bbappend file in my layer, here: 
recipes-kernel/linux/linux-yocto_3.14.bbappend
The content of this file is:
---
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://ipv6enable.cfg file://netfilter_minimal.cfg"

SRCREV_machine = "${SRCREV}"
---

In the ipv6enable.cfg file I also enable the ipv6.

recipes-kernel/linux/linux-yocto/netfilter_minimal.cfg:
CONFIG_NF_CONNTRACK=y
CONFIG_NF_NAT=y
CONFIG_NETFILTER_XTABLES=y
CONFIG_NETFILTER_XT_MATCH_CONNTRACK=y
CONFIG_NETFILTER_XT_MATCH_STATE=y
CONFIG_NF_DEFRAG_IPV6=y
CONFIG_NF_CONNTRACK_IPV6=y
CONFIG_IP6_NF_IPTABLES=y
CONFIG_NF_NAT_IPV6=y

recipes-kernel/linux/linux-yocto/ipv6enable.cfg:
CONFIG_IPV6=y
CONFIG_INET6_TUNNEL=y
CONFIG_IPV6_TUNNEL=y
CONFIG_IPV6_ROUTER_PREF=y

Now I'm configuring the kernel, cleaning first:
* bitbake -c cleansstate linux-yocto
* bitbake linux-yocto -c configure

When inspecting the .config file from
tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.36+gitAUTOINC+060fa80b79_4817747912-r0/linux-qemuarm-standard-build:
most of the kernel options related to netfilter are set to "m", it's 
like my options from my layer are ignored.
But the options from the ipv6enable.cfg file are set correctly (even if 
set to "n" or "y" changes are reflected in the output file .config)

I've created the netfilter_minimal.cfg file in this way:
* configure a kernel without any of my changes
* made a backup of .config
* run bitbake linux-yocto -c menuconfig and set the options from there
* save the results to a different file
* resulting file compared with the original file: changes saved in 
netfilter_minimal.cfg


Thanks in advance
M.

