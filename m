Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA977E00596
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 13:47:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q44KkuL3004465
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 May 2012 13:46:56 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 4 May 2012 13:46:56 -0700
Message-ID: <4FA4403E.8010000@windriver.com>
Date: Fri, 4 May 2012 16:46:54 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <loom.20120504T174109-199@post.gmane.org>
	<CAEsOVNfDA9rcQ1dshyKBq=rCk4nmqsBTQ0QvNL9jxa5SO52VBg@mail.gmail.com>
In-Reply-To: <CAEsOVNfDA9rcQ1dshyKBq=rCk4nmqsBTQ0QvNL9jxa5SO52VBg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jim Rucker <jrucker@altera.com>
Subject: Re: error with bb.fetch2.get_srcrev(d)
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
X-List-Received-Date: Fri, 04 May 2012 20:47:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-04 12:08 PM, McClintock Matthew-B29882 wrote:
> On Fri, May 4, 2012 at 10:46 AM, Jim Rucker<jrucker@altera.com>  wrote:
>> In the project that I'm working on we have a recipes-bsp and recipes-kernel, and
>> when I try to build virtual/kernel I'm getting the following error. It looks to
>> me like it's trying to get the git from our u-boot server so it can find the
>> version, but at this point I'm trying to build the kernel, not u-boot. So, is
>> there a way to build it independently, and if so how do I isolate the issue?
>> bitbake -DDD doesn't provide any additional info
>>
>>
>>
>> ERROR: Failure expanding variable SRCPV, expression was
>> ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher
>> failure for URL: 'None'. Fetch command export HOME="/home/jrucker"; export
>> SSH_AGENT_PID="1461"; export SSH_AUTH_SOCK="/tmp/keyring-yphCY1/ssh"; export
>> GIT_CONFIG="/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686-
>> linux/usr/etc/gitconfig"; export PATH="/home/jrucker/poky/6.0/poky-edison-
>> 6.0/build/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-poky-linux-
>> gnueabi:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/build/tmp/sysroots/socfpga5xs1/usr/bin/crossscripts:/home/jrucker/poky/6.0/p
>> oky-edison-6.0/build/tmp/sysroots/i686-
>> linux/usr/sbin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686-
>> linux/usr/bin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686-
>> linux/sbin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686-
>> linux//bin:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sb
>> in:/usr/bin:/sbin:/bin:/usr/games:/home/jrucker/poky/6.0/poky-edison-
>> 6.0/scripts"; git ls-remote ssh://git@ec2-67-102-16-93.compute-
>> 1.amazonaws.com/uboot.git socfpga5xs1_v2011.12 failed with signal 128, output:
>> Permission denied (publickey).
>> fatal: The remote end hung up unexpectedly
>
> Does your u-boot SRCREV = ${AUTOREV}? You could try picking a specific
> SHA so it does not have to check for the latest each time.

This is definitely a good suggestion. If you aren't using AUTOREV, then
something else is triggering the fetcher. All of your parsed recipes can
trigger fetchers, whether or not it is precisely what you are building,
since the upstream sources are part of determining what needs to be
rebuilt. It was a surprising (to me), but fundamental thing that happens,
and I've just gotten used to it :)

Richard could probably correct my description above, or provide more
options.

Bruce

>
> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


