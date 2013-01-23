Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2839E0045D
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 05:49:01 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0NDmxRj019679
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 23 Jan 2013 05:48:59 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 23 Jan 2013 05:48:59 -0800
Message-ID: <50FFEA46.5050303@windriver.com>
Date: Wed, 23 Jan 2013 08:48:54 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Patrick Turley <PatrickTurley@gamestop.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
	<50FEF7EC.6030601@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370A99@GV1HQPEX03.babgsetc.pvt>
	<50FF6A82.9090201@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F09@GV1HQPEX03.babgsetc.pvt>
	<50FF7254.2050903@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F97@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C370F97@GV1HQPEX03.babgsetc.pvt>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build external module against Yocto kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Jan 2013 13:49:01 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-01-23 12:34 AM, Patrick Turley wrote:
>
> On Jan 22, 2013, at 11:17 PM, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>
>> On 13-01-23 12:14 AM, Patrick Turley wrote:
>>> On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<bruce.ashfield@windriver.com>  wrote:
>>>> On 13-01-22 9:26 PM, Patrick Turley wrote:
>>>>> If I just hold down the "Enter" key, I believe all the defaults are taken, and I eventually *do* get hostprogs that execute, but I don't know if they're appropriate to my kernel. (Again, I'm a n00b, so perhaps there's no effect at all.)
>>>>
>>>> This will be fine, the defaults will work. The kernel build infrastructure
>>>> is picking up what it thinks is a change source ->  to config and trying
>>>> to reconcile the differences.
>>>>
>>>> If you throw in a 'make oldconfig' before you do the 'make scripts', does
>>>> that quiet things down a bit ?
>>>
>>> No -- "make oldconfig" caused the very same questions (see below).
>>
>> Aha. of course (now that I think about it), the build was simply triggering
>> old config automatically.
>>
>> silentoldconfig is what I really should have typed :)
>
>
> Nope - still doesn't work.

Argh. I'll have to just run the commands myself and stop spamming the
list with ideas :) It's just a matter of making lkc accept the defaults
(i.e. you could also use allyesconfig, or allnoconfig) or even better
not trigger that config check at all.

Cheers,

Bruce

>
> --------------------
>
> $ sudo make silentoldconfig
>    HOSTCC  scripts/basic/fixdep
>    HOSTCC  scripts/basic/docproc
>    HOSTCC  scripts/kconfig/conf.o
>    HOSTCC  scripts/kconfig/kxgettext.o
>    SHIPPED scripts/kconfig/zconf.tab.c
>    SHIPPED scripts/kconfig/lex.zconf.c
>    SHIPPED scripts/kconfig/zconf.hash.c
>    HOSTCC  scripts/kconfig/zconf.tab.o
>    HOSTLD  scripts/kconfig/conf
> scripts/kconfig/conf --silentoldconfig Kconfig
> *
> * Restart config...
> *
> *
> * General setup
> *
> Prompt for development and/or incomplete code/drivers (EXPERIMENTAL) [Y/n/?] y
> Cross-compiler tool prefix (CROSS_COMPILE) []
> Local version - append to kernel release (LOCALVERSION) []
> Automatically append version information to the version string (LOCALVERSION_AUTO) [N/y/?] n
> Kernel compression mode
>> 1. Gzip (KERNEL_GZIP)
>    2. Bzip2 (KERNEL_BZIP2) (NEW)
>    3. LZMA (KERNEL_LZMA)
>    4. LZO (KERNEL_LZO)
> choice[1-4?]:
>


