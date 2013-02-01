Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7211CE00515
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 20:50:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r114ouAN014940
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 31 Jan 2013 20:50:56 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.221) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Thu, 31 Jan 2013 20:50:56 -0800
Message-ID: <510B49AC.405@windriver.com>
Date: Thu, 31 Jan 2013 23:50:52 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
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
	<50FFEA46.5050303@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
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
X-List-Received-Date: Fri, 01 Feb 2013 04:50:58 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-01-23 10:17 AM, Patrick Turley wrote:
>
> On Jan 23, 2013, at 7:48 AM, Bruce Ashfield<bruce.ashfield@windriver.com>
>   wrote:
>> On 13-01-23 12:34 AM, Patrick Turley wrote:
>>>
>>> On Jan 22, 2013, at 11:17 PM, Bruce Ashfield<bruce.ashfield@windriver.com>  wrote:
>>>
>>>> On 13-01-23 12:14 AM, Patrick Turley wrote:
>>>>> On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<bruce.ashfield@windriver.com>   wrote:
>>>>>> On 13-01-22 9:26 PM, Patrick Turley wrote:
>>
>> Argh. I'll have to just run the commands myself and stop spamming the
>> list with ideas :) It's just a matter of making lkc accept the defaults
>> (i.e. you could also use allyesconfig, or allnoconfig) or even better
>> not trigger that config check at all.
>
> You're very kind to have spent so much time on my problem already. I look forward to hearing back.

I'm not sure if you are still interested in this topic, but I took
a few minutes to look into this more today .. just to understand
exactly what is happening.

It is what was discussed on the thread already, when you invoke
make scripts, there is an explicit dependency on auto.conf and
that is what triggers the make oldconfig if the .config is newer
than it is. Technically we are safe from this, assuming that the
.config and captured auto.conf match, and that auto.conf is in the
SDK.

The other way that oldconfig is triggered in my experience (and
testing today) is what we mentioned before. If your .config was
generated with ARCH=<foo> (even ARCH=i386 the default) and you then
execute 'make scripts', you'll trigger the oldconfig.

So to avoid it, you should execute your make scripts with ARCH=<your arch>
on the command line.

As for saving ARCH in the .config, it has been considered in the past,
but never implemented. Other elements such as CROSS_COMPILE are now
saved, but not ARCH= since it isn't directly used in the .config, it's
a Makefile construct.

Cheers,

Bruce

>


