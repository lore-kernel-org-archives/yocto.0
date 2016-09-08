Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B94CFE00C81; Thu,  8 Sep 2016 00:31:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F13EE00C72
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 00:31:05 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u887V1Q3012810; Thu, 8 Sep 2016 08:31:01 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 1Y9QDl39SWOZ; Thu,  8 Sep 2016 08:31:01 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u887UwY9012801
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 8 Sep 2016 08:30:59 +0100
Message-ID: <1473319858.20226.145.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Adolfo Sanchez <adolfo_sm_cr@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 08 Sep 2016 08:30:58 +0100
In-Reply-To: <SN2PR10MB009442733EA473DB41981EB1CFF90@SN2PR10MB0094.namprd10.prod.outlook.com>
References: <SN2PR10MB009442733EA473DB41981EB1CFF90@SN2PR10MB0094.namprd10.prod.outlook.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Subject: Re: Failing build following Quick Start
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
X-List-Received-Date: Thu, 08 Sep 2016 07:31:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-09-06 at 13:13 +0000, Adolfo Sanchez wrote:
> I am new to Yocto and trying to learn the basics of the system
> 
> I am following the Yocto Quick Start guide: 
> http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto-project-q
> s.html
> 
> Details:
> 1) I am using Lubuntu 16.04 64bits on a Oracle VirtualBox VM, over a
> Windows10 host.
> 2) I downloaded the poky from the Yocto page instead of download it
> via git
> 3) I am tryting to build the basic core-image-sato for qemu
> 4) I am getting  the following error:
> ERROR: Task 1921 (virtual:native:/home/adolfo/Yocto-testin/poky-
> krogoth-15.0.1/meta/recipes-support/gmp/gmp_6.1.0.bb, do_compile)
> failed with exit code '1'
> 5) I test  the ${WORKDIR}/temp/run.do_compile I get the following
> error: 
> x86_64-linux-libtool:   error: 'abs.lo' is not a valid libtool object
> Makefile:421: recipe for target 'libmpq.la' failed
> make[2]: *** [libmpq.la] Error 1
> 
> Any help would be appreciated.

Is this error reproducible, e.g. if you run "bitbake gmp-native -c
clean" which will wipe out the piece of source code that is failing,
then run "bitbake core-image-sato" again, does it work?

Cheers,

Richard


