Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C094E00543; Fri,  1 Aug 2014 14:56:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC087E004DD
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 14:56:00 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s71Lttef018421; Fri, 1 Aug 2014 22:55:55 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id IGk2l6HfVWlQ; Fri,  1 Aug 2014 22:55:55 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s71Ltmvq018122
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 1 Aug 2014 22:55:50 +0100
Message-ID: <1406930148.6981.9.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Fri, 01 Aug 2014 22:55:48 +0100
In-Reply-To: <53DBA085.7010705@dynamicdevices.co.uk>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
	<53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
	<53DBA085.7010705@dynamicdevices.co.uk>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
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
X-List-Received-Date: Fri, 01 Aug 2014 21:56:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-08-01 at 15:13 +0100, Alex J Lennon wrote:
> Getting some errors here having followed the "Using Scripts" section.
> 
> I am guessing it might be as I'm using Ubuntu 14.04 LTS x64
> 
> This is for MACHINE=genericx86
> 
> e.g.
> 
> | make[3]: Leaving directory
> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
> | make[2]: Leaving directory
> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
> | make[1]: Leaving directory
> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git'
> | install: cannot stat 'scripts/find-supplements{,.ksyms}': No such file
> or directory
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_install (log file is located at
> /home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/temp/log.do_install.2441)
> ERROR: Task 99
> (virtual:native:/home/ajlennon/yocto/meta-tizen/recipes-tizen/rpm/rpm_git.bb,
> do_install) failed with exit code '1'

Its because there are bashisms in that metadata and you have dash
as /bin/sh.

I've already mentioned this at least once but have been ignored :(

Cheers,

Richard


