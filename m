Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0865AE0056A; Sat,  2 Aug 2014 02:35:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EA7E004DD
	for <yocto@yoctoproject.org>; Sat,  2 Aug 2014 02:35:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 1CFEB27E04D;
	Sat,  2 Aug 2014 09:35:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id ecEUu8lM1N1B; Sat,  2 Aug 2014 09:35:09 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 1B22227E031;
	Sat,  2 Aug 2014 09:35:08 +0000 (UTC)
Message-ID: <53DCB0C6.6000405@dynamicdevices.co.uk>
Date: Sat, 02 Aug 2014 10:35:02 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <53DA58C9.50705@open.eurogiciel.org>	
	<53DB6430.8090608@dynamicdevices.co.uk>	
	<53DB660B.6040700@open.eurogiciel.org>	
	<53DB66D8.3060500@dynamicdevices.co.uk>	
	<53DBA085.7010705@dynamicdevices.co.uk>
	<1406930148.6981.9.camel@ted>
In-Reply-To: <1406930148.6981.9.camel@ted>
X-Enigmail-Version: 1.6
Cc: general@lists.tizen.org, yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 02 Aug 2014 09:35:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 01/08/2014 22:55, Richard Purdie wrote:
> On Fri, 2014-08-01 at 15:13 +0100, Alex J Lennon wrote:
>> Getting some errors here having followed the "Using Scripts" section.
>>
>> I am guessing it might be as I'm using Ubuntu 14.04 LTS x64
>>
>> This is for MACHINE=genericx86
>>
>> e.g.
>>
>> | make[3]: Leaving directory
>> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
>> | make[2]: Leaving directory
>> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
>> | make[1]: Leaving directory
>> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git'
>> | install: cannot stat 'scripts/find-supplements{,.ksyms}': No such file
>> or directory
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_install (log file is located at
>> /home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/temp/log.do_install.2441)
>> ERROR: Task 99
>> (virtual:native:/home/ajlennon/yocto/meta-tizen/recipes-tizen/rpm/rpm_git.bb,
>> do_install) failed with exit code '1'
> Its because there are bashisms in that metadata and you have dash
> as /bin/sh.
>
> I've already mentioned this at least once but have been ignored :(
>

Yes, thanks Richard, I'd cracked onto that. I wonder if it would be
useful/possible to add a class of warning to bitbake "Bashism detected"
or some such?

Next problem is that grub on my x64 system doesn't seem to like being
used to install x86 files ... :)

Cheers,

Alex

