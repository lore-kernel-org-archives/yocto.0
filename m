Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 485EDE00D56; Thu,  1 Dec 2016 18:51:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF956E00A64
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 18:51:37 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A32F768A01A; Fri,  2 Dec 2016 02:51:36 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 6FF6468A019;
	Fri,  2 Dec 2016 02:51:35 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 1C96467400E0;
	Fri,  2 Dec 2016 03:51:35 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <a62994c8-9eef-1457-7355-0681df26a29e@mlbassoc.com>
	<1865791.yBGQ8Ql6od@peggleto-mobl.ger.corp.intel.com>
Message-ID: <75a81e29-9a06-1377-f5cf-800628151a85@mlbassoc.com>
Date: Fri, 2 Dec 2016 03:51:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1865791.yBGQ8Ql6od@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Shared state doesn't live up to its name?
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
X-List-Received-Date: Fri, 02 Dec 2016 02:51:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-12-01 18:35, Paul Eggleton wrote:
> On Thu, 01 Dec 2016 10:27:50 Gary Thomas wrote:
>> I have a build machine where I build for lots of targets.  On
>> all of these targets (save a primary), I set the SSTATE_MIRROR
>> to point to the sstate-cache of the primary target.  I always build
>> for the primary target first, then later the secondary ones.
>>
>> For the most part, the sstate mechanism works pretty well, but I
>> see some anomalies.  For example, why on the same host, built back
>> to back, would a secondary build target (which uses the primary
>> as it's SSTATE_MIRROR and that build is complete) need to rebuild
>> from scratch such NATIVE packages as openssl?  Note that these are
>> native packages I'm asking about, so in my mind they should always
>> be sharable.
>>
>> Any ideas?  Is there something I can look at to investigate this?
>
> bitbake-diffsigs is the basic tool to compare signatures when those have
> changed. Find the siginfo / sigdata file for one of the early tasks that
> executed and compare them to see what changed.
>
> How are you setting SSTATE_MIRRORS in this scenario btw?

SSTATE_MIRRORS ?= "\
file://.* file:///local/p0382_2016-01-13/sstate-cache/PATH"

I ran a build yesterday that caused me to comment on this pattern.  Here are the
siginfo files for the secondary target (the latest build):

-rw-rw-r-- 1 gthomas gthomas 21240 Dec  1 10:12 
sstate-cache/universal/99/sstate:openssl-native:x86_64-linux:1.0.2j:r0:x86_64:3:99515597e2223aa4413f7f2e4acf6532_configure.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas  8917 Dec  1 10:17 
sstate-cache/universal/a4/sstate:openssl-native:x86_64-linux:1.0.2j:r0:x86_64:3:a49c66a9c786fe100f8e8b6e3bbd1e86_compile.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas 14864 Dec  1 10:18 
sstate-cache/universal/a7/sstate:openssl-native:x86_64-linux:1.0.2j:r0:x86_64:3:a747322ce06467949097c3da58497c7d_install.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas 36490 Dec  1 10:18 
sstate-cache/universal/e6/sstate:openssl-native:x86_64-linux:1.0.2j:r0:x86_64:3:e65ab886428d88f8735dba617268892f_populate_sysroot.tgz.siginfo

Here are the corresponding ones from my primary target:
cb9e0e1440492b85a6a9683b_unpack.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas  6278 Nov 28 08:11 
sstate-cache/44/sstate:openssl-native::1.0.2j:r0::3:44adeda2ff6ac235331af5dae45e45ea_patch.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas  4997 Nov 28 08:11 
sstate-cache/e9/sstate:openssl-native::1.0.2j:r0::3:e9ccda2229e69e2138ad0465a709e33a_fetch.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas 21336 Nov 28 08:13 
sstate-cache/universal/99/sstate:openssl-native:x86_64-linux:1.0.2j:r0:x86_64:3:99515597e2223aa4413f7f2e4acf6532_configure.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas  8833 Nov 28 08:14 
sstate-cache/universal/a4/sstate:openssl-native:x86_64-linux:1.0.2j:r0:x86_64:3:a49c66a9c786fe100f8e8b6e3bbd1e86_compile.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas 14750 Nov 28 08:14 
sstate-cache/universal/a7/sstate:openssl-native:x86_64-linux:1.0.2j:r0:x86_64:3:a747322ce06467949097c3da58497c7d_install.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas 31029 Dec  1 09:45 
sstate-cache/57/sstate:openssl-native::1.0.2j:r0::3:5725888ec8cde61e1417bc0b6ea51c6c_populate_lic.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas 36502 Dec  1 09:45 
sstate-cache/universal/e6/sstate:openssl-native:x86_64-linux:1.0.2j:r0:x86_64:3:e65ab886428d88f8735dba617268892f_populate_sysroot.tgz.siginfo

Clearly, they are identical and the ones from the primary were built long before
the ones on the secondary target.

I'm still confused why it didn't work as expected.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

