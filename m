Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67556E00D0A; Mon, 31 Oct 2016 05:19:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2333EE00CF0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 05:19:23 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 8DA3968A01C; Mon, 31 Oct 2016 12:19:20 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 193E768A019;
	Mon, 31 Oct 2016 12:19:20 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 4C2796740215;
	Mon, 31 Oct 2016 13:19:19 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
Date: Mon, 31 Oct 2016 13:19:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
Subject: esdk without using Poky?
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
X-List-Received-Date: Mon, 31 Oct 2016 12:19:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to build an extensible SDK (eSDK) for my target and running into
a few problems.

   gthomas@zeus:~$ /work/tmp/mlb-glibc-x86_64-arm-toolchain-ext-2.2+snapshot.sh
   MLB @SDK_TITLE@ Associates Embedded (Poky/Yocto Powered) Extensible SDK installer version 2.2+snapshot
   ======================================================================================================
   Enter target directory for SDK (default: ~/mlb_sdk):
   You are about to install the SDK to "/home/gthomas/mlb_sdk". Proceed[Y/n]? y
   Extracting SDK.........................................done
   Setting it up...
   Extracting buildtools...
   Preparing build system...
   Error: 'meta-poky/conf' must be a directory containing local.conf & bblayers.conf

The first thing I notice is the banner which should read:
   MLB & Associates Embedded (Poky/Yocto Powered) Extensible SDK installer version 2.2+snapshot
   ============================================================================================

The second is that I use my own distribution (not poky).  How can I
build an eSDK using my distribution?

Once I ran into this error, I tried rebuilding using the [old] SDK.
I noticed that it seemed to rebuild [most] everything all over again.
Is there no shared state / reusable components between the eSDK and SDK?

Finally, since I had to install SDK and not eSDK, I'm missing some tools
I was hoping to have.  I want to build PRU programs for the BeagleBoneBlack
and I'm using meta-ti to import those tools and programs.  I was expecting
the PRU tools which come from ti-cgt-pru-native to be included with my
eSDK/SDK, but they don't seem to be, at least not in the SDK.  How can I
get these tools available so I can use the SDK to develop PRU code for the BBB?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

