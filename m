Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B536E006DB; Fri,  1 Aug 2014 07:13:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14F55E00543
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 07:13:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 167FC27E04D;
	Fri,  1 Aug 2014 14:13:38 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id H0r19CxyP2s4; Fri,  1 Aug 2014 14:13:36 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B960527E031;
	Fri,  1 Aug 2014 14:13:33 +0000 (UTC)
Message-ID: <53DBA085.7010705@dynamicdevices.co.uk>
Date: Fri, 01 Aug 2014 15:13:25 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: ronan <ronan.lemartret@open.eurogiciel.org>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
	<53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
In-Reply-To: <53DB66D8.3060500@dynamicdevices.co.uk>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
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
X-List-Received-Date: Fri, 01 Aug 2014 14:13:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 01/08/2014 11:07, Alex J Lennon wrote:
> On 01/08/2014 11:03, ronan wrote:
>> Hi Alex
>>
>>> I'm interested in trying this out. Presumably it should be trivial to
>>> add Mono support by pulling in meta-mono?
>>>
>>> Have you looked at this on ARM target platforms at all? e.g. i.MX6 ?
>> No, we did not test it for ARM yet, but it's in the pipe.
>>
>> If try a ARM build, we would be interested in your feed back.
>>
>> Regarding Mono, it shouldn't be an issue. 
> Thanks. I'll see if I can take a look here on an RPi or an i.MX6 then
> and let you know how it goes.
>
> Cheers,
>
> Alex
>
> _______________________________________________
> General mailing list
> General@lists.tizen.org
> https://lists.tizen.org/listinfo/general
>

Getting some errors here having followed the "Using Scripts" section.

I am guessing it might be as I'm using Ubuntu 14.04 LTS x64

This is for MACHINE=genericx86

e.g.

| make[3]: Leaving directory
'/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
| make[2]: Leaving directory
'/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
| make[1]: Leaving directory
'/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git'
| install: cannot stat 'scripts/find-supplements{,.ksyms}': No such file
or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_install (log file is located at
/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/temp/log.do_install.2441)
ERROR: Task 99
(virtual:native:/home/ajlennon/yocto/meta-tizen/recipes-tizen/rpm/rpm_git.bb,
do_install) failed with exit code '1'

Layers
=====

Build Configuration:
BB_VERSION        = "1.23.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "genericx86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6+snapshot-20140801"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "tizen:faa50171a19a59600f6ac4ec124689bdc0cc1c48"
meta-systemd
meta-ruby
meta-multimedia
meta-oe           = "master:321c808a57e657c857dfe412d3c09839ebac27f1"
meta-tizen        = "master:0f5ac68414f7c5702cec0fbc2d54cd01c104b4df"

Cheers,

Alex


