Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69A68E009B3; Thu, 23 Jul 2015 07:57:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1167CE00867
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 07:57:16 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1E7D9F811E2; Thu, 23 Jul 2015 08:57:15 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9E43CF811E2;
	Thu, 23 Jul 2015 08:57:15 -0600 (MDT)
Message-ID: <55B100CE.6050404@mlbassoc.com>
Date: Thu, 23 Jul 2015 08:57:18 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <161750250.1065434.1437662263729.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <161750250.1065434.1437662263729.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 14:57:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-23 08:37, Edward Vidal wrote:
> Hi Gary,
> Is this the log that you need?
> I also ran the  bitbake -DD core-image-sato and have the log for that run.
>
> | WARNING: exit code 1 from a shell command.
> | ERROR: oe_runconf failed
> | ERROR: Function failed: do_configure (log file is located at
> /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.9672)
> ERROR: Task 4597 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'

Did you look at the error?  It's the same as you had yesterday:
   checking for EGL... no
   configure: error: Package requirements (egl) were not met:
   No package 'egl' found

Did you perhaps remove those PREFERRED_PROVIDER lines from local.conf?
You need these lines for this to work:
   PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
   PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"

> Let me know what I can provide.

Send your _complete_ local.conf and bblayers.conf

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

