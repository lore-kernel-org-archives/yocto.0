Return-Path: <eas@sw-optimization.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3D46E00CC3; Sun,  8 Oct 2017 10:04:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.19.149.137 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx27lb.world4you.com (mx27lb.world4you.com [81.19.149.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61198E00C96
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 10:04:37 -0700 (PDT)
Received: from [81.19.149.42] (helo=webmail.world4you.com)
	by mx27lb.world4you.com with esmtpa (Exim 4.84_2)
	(envelope-from <eas@sw-optimization.com>)
	id 1e1F0E-0004yU-OR; Sun, 08 Oct 2017 19:04:34 +0200
MIME-Version: 1.0
Date: Sun, 08 Oct 2017 19:04:34 +0200
From: Eric Schwarz <eas@sw-optimization.com>
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LY6iJ=OYvxbMb-Bt_z3ahfsy0eGiCpvxvjSnEGNGiKGrw@mail.gmail.com>
References: <1e416606941630df1aab3c738aab7c66@sw-optimization.com>
	<CAJTo0LY6iJ=OYvxbMb-Bt_z3ahfsy0eGiCpvxvjSnEGNGiKGrw@mail.gmail.com>
Message-ID: <68a10b257f64bd9c808c96de999e19f0@sw-optimization.com>
X-Sender: eas@sw-optimization.com
User-Agent: World4You Webmail
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
X-SA-Exim-Connect-IP: 81.19.149.42
X-SA-Exim-Mail-From: eas@sw-optimization.com
X-SA-Exim-Scanned: No (on mx27lb.world4you.com);
	SAEximRunCond expanded to false
Cc: yocto@yoctoproject.org
Subject: Re: u-boot recipe: Missing dependencies
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
X-List-Received-Date: Sun, 08 Oct 2017 17:04:41 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

>> DEPENDS += "bc-native dtc-native"
>> +DEPENDS_append = " python-native"
>> +DEPENDS_append_x86-64 = " iasl-native swig-native"
> 
> Don't _append when you can just extend the assignment above.

I just did it that way for the moment since I wanted to circumvent merge
conflicts when I upgrade the underlying recipes from openembedded.

> Depending on python-native does nothing as the binary isn't in $PATH 
> still.

I thought any Yocto native binaries built are in the PATH automatically. 
- How
to fix this/do it correctly?

> Can you provide a configuration to make U-Boot build on x86 for 
> testing?

I put now some patches in ordered manner on top of the original recipes 
from
openembedded.
However, before sending I would like to fix two issues so the recipes 
can go
into mainline immediately.

1.) I am working w/ -morty Yocto branch at the moment. The 'u-boot.inc' 
from
     openembedded does not work w/ -morty.
     I get the following error "AttributeError: module 'bb.utils' has no
     attribute 'filter'". Building w/ the original -morty 'u-boot.inc' 
works.
2.) There is an issue w/ the U-Boot build system that it needs the 
"libgcc.a"
     from the local host system [1]. I circumvented this by checking in 
my
     "libgcc.a" and patching the U-Boot makefile accordingly. This must 
be
     fixed in U-boot.

[1]... https://www.mail-archive.com/yocto@yoctoproject.org/msg36721.html

Cheers
Eric

