Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8788A4C80188
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 03:44:19 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5A8iIBE025111
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 09:44:18 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 24936-03 for <yocto@yoctoproject.org>;
	Fri, 10 Jun 2011 09:44:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5A8iDXI025105
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 09:44:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>
Date: Fri, 10 Jun 2011 09:44:02 +0100
Message-ID: <1307695442.15712.208.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Update on build time performance - not good
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
X-List-Received-Date: Fri, 10 Jun 2011 08:44:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

We've merged a number of things which should have helped performance
recently. Changes in my test included:

* Splitting out the locale generation [not merged yet]
* Not building tar-replacement-native when we don't need it
* Cleaned up dependencies for native/nativesdk
* Cleaned up dependencies for all-arch packages
* Reduced dbus-native dependencies

The time for the benchmark timing test against master with the locale
split patch applied was:

real	105m5.813s
user	386m39.170s
sys	59m40.250s

so not that much different from where we have been :(.

I did observe things through the build process:

* The first part of the build was *fast* getting through the first 2000 
  of 4295 tasks in about 10 minutes.
* The CPU usage was pretty much full for that time
* The next 5 minutes covered the next 150 tasks
* gettext-native didn't seem to get built until surprisingly late in 
  the process
* There was a highly serialised chain of gettext-native, libelf-native, 
  binutils-native, binutils-cross etc.
* Once eglibc/libgcc completed, processor usage was high again for the 
  rest of the build

I'm hoping my BB_NUMBER_THREADS (12 on a quad core machine) was too high
causing too much context switching and as the build process might now be
more efficient, lowering it might help. I am a bit disappointed in those
numbers though.

Cheers,

Richard




