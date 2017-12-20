Return-Path: <smart@smartpal.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B044E00CE8; Wed, 20 Dec 2017 12:51:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1085 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Dec 2017 12:51:42 PST
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
	[217.26.49.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E8B3E008FB
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 12:51:42 -0800 (PST)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout017.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <smart@smartpal.de>) id 1eRl3Y-000Pw6-Lc
	for yocto@yoctoproject.org; Wed, 20 Dec 2017 21:33:36 +0100
Received: from gw.ptr-80-238-209-140.customer.ch.netstream.com
	([80.238.209.140] helo=[172.16.11.152])
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.89_1 (FreeBSD))
	(envelope-from <smart@smartpal.de>) id 1eRl3Y-0004Pa-JD
	for yocto@yoctoproject.org; Wed, 20 Dec 2017 21:33:36 +0100
X-Authenticated-Sender-Id: michael@siebecker.ch
To: yocto@yoctoproject.org
From: cc_Smart <smart@smartpal.de>
Message-ID: <35a33b3a-cc87-944a-9121-19fbd07ea657@smartpal.de>
Date: Wed, 20 Dec 2017 21:33:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: Trying to make PylonGPS build with DEPENDS, does not find includes
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
X-List-Received-Date: Wed, 20 Dec 2017 20:51:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Greetings.

I'm trying to set up a poky layer at 
https://github.com/navdata-net/meta-navdatanet/tree/rocko

Compiling PylonGPS from https://github.com/charlesrwest/pylonGPS 
requires, amongst others Google protobuf.

I include this as

DEPENDS += "protobuf-native"

During build i get

fatal error: google/protobuf/stubs/common.h: No such file or directory
#include <google/protobuf/stubs/common.h>

However, this file can be found at

/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/include/google/protobuf/stubs/common.h

So i assume it is a problem with visibility / build environment setup.

For running the build, i'm using the crops/poky docker image.

Where should i look for finding the correct solution ?

Thanks for your input.



