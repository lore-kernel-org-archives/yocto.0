Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1C21E00D38; Mon, 25 Jul 2016 23:32:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66482E00D25
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 23:32:34 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id u6Q6WXpb011776
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 09:32:33 +0300
To: yocto@yoctoproject.org
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <e00d74d8-fdca-0a3d-0b5e-0a2441badcc0@vitheia.com>
Date: Tue, 26 Jul 2016 09:32:32 +0300
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
X-List-Received-Date: Tue, 26 Jul 2016 06:32:40 -0000
Content-Type: multipart/alternative;
	boundary="------------15720ED88CB67E342BC5CDDE"

--------------15720ED88CB67E342BC5CDDE
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

--------------15720ED88CB67E342BC5CDDE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hello
    <br>
    <br>
    I have my own layer and I am trying to configure the kernel using
    partial configs.
    <br>
    I'm trying to enable netfilter support into the kernel - not as
    modules, so I set the CONFIG.... to "y"
    <br>
    I've created a bbappend file in my layer, here:
    recipes-kernel/linux/linux-yocto_3.14.bbappend
    <br>
    The content of this file is:
    <br>
    ---
    <br>
    FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
    <br>
    SRC_URI += <a class="moz-txt-link-rfc2396E"
      href="file://ipv6enable.cfgfile://netfilter_minimal.cfg">"file://ipv6enable.cfg
      file://netfilter_minimal.cfg"</a>
    <br>
    <br>
    SRCREV_machine = "${SRCREV}"
    <br>
    ---
    <br>
    <br>
    In the ipv6enable.cfg file I also enable the ipv6.
    <br>
    <br>
    recipes-kernel/linux/linux-yocto/netfilter_minimal.cfg:
    <br>
    CONFIG_NF_CONNTRACK=y
    <br>
    CONFIG_NF_NAT=y
    <br>
    CONFIG_NETFILTER_XTABLES=y
    <br>
    CONFIG_NETFILTER_XT_MATCH_CONNTRACK=y
    <br>
    CONFIG_NETFILTER_XT_MATCH_STATE=y
    <br>
    CONFIG_NF_DEFRAG_IPV6=y
    <br>
    CONFIG_NF_CONNTRACK_IPV6=y
    <br>
    CONFIG_IP6_NF_IPTABLES=y
    <br>
    CONFIG_NF_NAT_IPV6=y
    <br>
    <br>
    recipes-kernel/linux/linux-yocto/ipv6enable.cfg:
    <br>
    CONFIG_IPV6=y
    <br>
    CONFIG_INET6_TUNNEL=y
    <br>
    CONFIG_IPV6_TUNNEL=y
    <br>
    CONFIG_IPV6_ROUTER_PREF=y
    <br>
    <br>
    Now I'm configuring the kernel, cleaning first:
    <br>
    * bitbake -c cleansstate linux-yocto
    <br>
    * bitbake linux-yocto -c configure
    <br>
    <br>
    When inspecting the .config file from
    <br>
tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.36+gitAUTOINC+060fa80b79_4817747912-r0/linux-qemuarm-standard-build:
    <br>
    most of the kernel options related to netfilter are set to "m", it's
    like my options from my layer are ignored.
    <br>
    But the options from the ipv6enable.cfg file are set correctly (even
    if set to "n" or "y" changes are reflected in the output file
    .config)
    <br>
    <br>
    I've created the netfilter_minimal.cfg file in this way:
    <br>
    * configure a kernel without any of my changes
    <br>
    * made a backup of .config
    <br>
    * run bitbake linux-yocto -c menuconfig and set the options from
    there
    <br>
    * save the results to a different file
    <br>
    * resulting file compared with the original file: changes saved in
    netfilter_minimal.cfg
    <br>
    <br>
    <br>
    Thanks in advance
    <br>
    M.
  </body>
</html>

--------------15720ED88CB67E342BC5CDDE--
