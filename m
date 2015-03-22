Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08D1AE0093B; Sun, 22 Mar 2015 05:19:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE212E006E3
	for <yocto@yoctoproject.org>; Sun, 22 Mar 2015 05:19:18 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8230AF811DB; Sun, 22 Mar 2015 06:19:16 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DC490F811DB;
	Sun, 22 Mar 2015 06:19:15 -0600 (MDT)
Message-ID: <550EB367.9070508@mlbassoc.com>
Date: Sun, 22 Mar 2015 06:19:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] RaspberryPi2 - no audio?
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
X-List-Received-Date: Sun, 22 Mar 2015 12:19:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I just built Poky/Yocto for the RaspberryPi2, straight out
of the box using this configuration:

Build Configuration:
BB_VERSION        = "1.25.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Fedora-13"
TARGET_SYS        = "arm-amltd-linux-gnueabi"
MACHINE           = "raspberrypi2"
DISTRO            = "amltd"
DISTRO_VERSION    = "1.7+snapshot-20150321"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard vfpv4 cortexa7"
TARGET_FPU        = "vfp-vfpv4-neon"
meta              = "master:12b6cf0f2212519b14333519746174a5b941f7bf"
meta-amltd        = "cutting-edge:d9350ea229c04d64111f38e638f372a1bac87be0"
meta-raspberrypi  = "master:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"

All seemed to go OK, but when I try to play audio, there are
no sound cards found.  Is there some configuration I need?
Once I get it going, how can I select between the internal
(phono) audio and HDMI?

Note: I had this working just fine on my RaspberryPi (model B)

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

