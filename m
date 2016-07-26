Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67872E006D8; Tue, 26 Jul 2016 07:09:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62697E0049A
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 07:09:30 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 30B8468A019; Tue, 26 Jul 2016 15:09:30 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 94A8F68A019;
	Tue, 26 Jul 2016 15:09:27 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 430A867400DE;
	Tue, 26 Jul 2016 16:09:27 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57976F16.8010700@mlbassoc.com>
Date: Tue, 26 Jul 2016 16:09:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: python3 on build host
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
X-List-Received-Date: Tue, 26 Jul 2016 14:09:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have a build host that I've used for years.  It is not
possible to [directly] update python3 on this system to
one which is identified as suitable for use with bitbake.

To try and work around this, I created a meta-toolchain SDK
for my target.  I remember needing to do this years ago when
one of my boxes also became out of date.  Sadly, this process
has not led me to a solution.

First question: is this the proper way to solve this problem?
I simply can't update python3 on this box (I've tried), so I
need another solution so I can continue to use this workhorse.

Here's a list of the stumbling blocks I've run across so far.

* Using a SDK toolchain ostensibly is incompatible with the
normal bitbake flow.  Here's what I did for my 'meta-board' BSP:
   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
   [gary@thor tmp]$ TEMPLATECONF=meta-board/conf . ./opt/amltd/poky/oe-init-build-env build
   Error: The OE SDK/ADT was detected as already being present in this shell environment. Please use a clean shell when 
sourcing this environment script.
   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

* I tried to work around this:
   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
   [gary@thor tmp]$ unset OECORE_SDK_VERSION
   [gary@thor tmp]$ TEMPLATECONF=meta-board/conf . ./opt/amltd/poky/oe-init-build-env build
   You had no conf/local.conf file. This configuration file has therefore been
   created for you with some default values. You may wish to edit it to, for
   example, select a different MACHINE (target hardware). See conf/local.conf
   for more information as common configuration options are commented.

   You had no conf/bblayers.conf file. This configuration file has therefore been
   created for you with some default values. To add additional metadata layers
   into your configuration please add entries to conf/bblayers.conf.

   The Yocto Project has extensive documentation about OE including a reference
   manual which can be found at:
     http://yoctoproject.org/documentation

   For more information about OpenEmbedded see their website:
     http://www.openembedded.org/


   ### Shell environment set up for builds. ###

   You can now run 'bitbake <target>'
   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

   So, it looked like I was making some progress.  Sadly, it was short-lived:
   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
   [gary@thor build]$ bitbake production-testing-image
   Traceback (most recent call last):
     File "/home/gary/tmp/opt/amltd/poky/bitbake/bin/bitbake", line 31, in <module>
       import bb
     File "/home/gary/tmp/opt/amltd/poky/bitbake/lib/bb/__init__.py", line 43, in <module>
       import logging
     File "/opt/amltd/2.1+snapshot/sysroots/i686-amltdsdk-linux/usr/lib/python3.5/logging/__init__.py", line 26, in <module>
       import sys, os, time, io, traceback, warnings, weakref, collections
     File "/opt/amltd/2.1+snapshot/sysroots/i686-amltdsdk-linux/usr/lib/python3.5/traceback.py", line 3, in <module>
       import collections
     File "/opt/amltd/2.1+snapshot/sysroots/i686-amltdsdk-linux/usr/lib/python3.5/collections/__init__.py", line 10, in 
<module>
       from operator import itemgetter as _itemgetter, eq as _eq
   ImportError: No module named 'operator'
   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

   I moved a step further by copying /usr/lib/python3.5/operator.py from one of
   my working build hosts into the appropriate sysroots in the SDK.  That only
   got me one more step along as I then needed _compat_pickle.py.  Then it failed
   with no module 'fcntl' and at this point, I don't know where to find that.

Second question: even if this is not the correct way to solve my initial problem
of providing a suitable python3 on my build host, shouldn't I be able to run
bitbake (or indeed any suitably complex python3 program) using the SDK I installed?

Thanks for your time and I truly hope I can find a working answer for question one.
I have deliveries upcoming to customers I know will not be happy that they have to
update and I've positioned our BSP deliveries solely on Poky/Yocto.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

