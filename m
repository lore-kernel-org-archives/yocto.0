Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D61CE009EB; Wed, 24 Jun 2015 06:13:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A917E009C8
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 06:13:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 2E23627E291;
	Wed, 24 Jun 2015 13:13:37 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id kQItpRdqwePN; Wed, 24 Jun 2015 13:13:36 +0000 (UTC)
Received: from [192.168.1.10] (AMarseille-651-1-52-229.w109-208.abo.wanadoo.fr
	[109.208.35.229])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id DC72E27E289;
	Wed, 24 Jun 2015 13:13:35 +0000 (UTC)
Message-ID: <558AACF7.2090107@dynamicdevices.co.uk>
Date: Wed, 24 Jun 2015 15:13:27 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, chmorgan@gmail.com
References: <CAAPegz1a+Jf=DaTNnGDnGUrwZiEGCfc7f4F2tPpNvFmF3=M6Jg@mail.gmail.com>
In-Reply-To: <CAAPegz1a+Jf=DaTNnGDnGUrwZiEGCfc7f4F2tPpNvFmF3=M6Jg@mail.gmail.com>
Subject: Re: meta-mono: Issue building 4.0.2.4
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
X-List-Received-Date: Wed, 24 Jun 2015 13:13:43 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 24/06/2015 01:01, Chris Morgan wrote:
> The double nested output folder looks odd to me but leaving that, it
> looks like a file is being installed twice. Anyone else seeing this?
>
> meta
> meta-skeleton     =
> "(HEADdetachedat16caaab):16caaabfcc678b03a0cd88aaeac15f9b8d1c3dad"
> meta-yocto
> meta-yocto-bsp    =
> "(HEADdetachedat16caaab):16caaabfcc678b03a0cd88aaeac15f9b8d1c3dad"
> meta-mono         = "master:35e8ede514dd35eb3d645d5de22282d0e8204f86"
> meta-oe
> meta-webserver    =
> "(HEADdetachedatdf6c7b1):df6c7b1279790d27ebfd58fbdfbac89bde5782ec"
> meta-ti           =
> "(HEADdetachedatb81014d):b81014dbb5cc39fdfa66af87d18b72eb9eb3c701"
> meta-nodejs       =
> "(HEADdetachedate724e27):e724e270bc23a14f12d4a0d73869199457a1b925"
> bitbake-npm       =
> "(HEADdetachedatd88833b):d88833bcf52da7d00e775ca8c2e63ca44cf6ace1"
> meta-ros          =
> "(HEADdetachedatbdc603b):bdc603b821eae5e1d966ec25e63f6832f6386dc8"
> meta-rust         =
> "(HEADdetachedat61708ed):61708ed85e76beafdb08b6caf340abeae13bf4b2"
> meta-qt5          =
> "(HEADdetachedat378dfc2):378dfc20ad0e024412da7f3be22efe04c3421c6d"
> meta-ruby
> meta-python
> meta-networking   =
> "(HEADdetachedatdf6c7b1):df6c7b1279790d27ebfd58fbdfbac89bde5782ec"
>
>
> (output snipped)
> | /usr/bin/install -c -c -m 644 frameworks/net_4.5.xml
> /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild-frameworks/.NETFramework/v4.5/RedistList/FrameworkList.xml
> | /usr/bin/install -c -c -m 644
> targets/Microsoft.WebApplication.targets
> /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v9.0/WebApplications
> | mkdir -p -- /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/14.0/bin/MSBuild
> | /usr/bin/install -c -c -m 644
> targets/Microsoft.Portable.Common.targets
> /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/Microsoft/Portable/v4.0/Microsoft.Portable.Common.targets
> | /usr/bin/install -c -c -m 644
> targets/Microsoft.WebApplication.targets
> /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v9.0/WebApplications
> | /usr/bin/install: cannot create regular file
> '/home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild-frameworks/.NETFramework/v4.5/RedistList/FrameworkList.xml':
> File exists
> | Makefile:42: recipe for target 'install-frameworks' failed
> | make[6]: *** [install-frameworks] Error 1
> | make[6]: *** Waiting for unfinished jobs....

Hi Chris,

Yes the double nesting does look odd.

I did a test build of 4.0.2.4 here which worked for me. I've also been
supporting another chap who wanted to build 4.0.2.4 rather than the
default 3.12.1 build and he also let me know he had it building
successfully

Clearly there's some kind of issue though. I'm relocating between
countries at the moment without access to a build system and so it'll be
1-2 weeks before I can investigate further myself I'm afraid.

In the meantime do 4.0.1.34  and earlier versions build for you? Does -c
cleansstate help?

Regards,

Alex



