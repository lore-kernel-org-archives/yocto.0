Return-Path: <bradleyb@fuzziesquirrel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E576E00DA7; Tue,  3 Sep 2019 17:36:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
Received: from bajor.fuzziesquirrel.com (mail.fuzziesquirrel.com
	[173.167.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C9E7E00D67
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 17:36:43 -0700 (PDT)
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Received: from brads-mbp.dyn.fuzziesquirrel.com
	(Brads-MBP.dyn.fuzziesquirrel.com [192.168.253.30])
	by bajor.fuzziesquirrel.com (Postfix) with ESMTPSA id 8B89E5C08D;
	Tue,  3 Sep 2019 20:36:42 -0400 (EDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Brad Bishop <bradleyb@fuzziesquirrel.com>
In-Reply-To: <9e7fa5a8-3ac4-a187-e878-2e6a24b1713d@linux.intel.com>
Date: Tue, 3 Sep 2019 20:36:42 -0400
Message-Id: <6C9B290B-77CA-4324-9480-891F0DC1EB7D@fuzziesquirrel.com>
References: <038f49d9-099e-dabd-2957-d31e7b8bbf41@linux.intel.com>
	<628d5b4c-63d4-78b6-83d8-1781cbc86e0f@linux.intel.com>
	<7694CCA3-89BD-44FE-90D1-99569476E980@fuzziesquirrel.com>
	<fbcfc988-687f-55ad-1ca9-ace092f09a99@gmail.com>
	<68bddbec8c08cbd9d31f561222bb3afde814a94b.camel@fuzziesquirrel.com>
	<9e7fa5a8-3ac4-a187-e878-2e6a24b1713d@linux.intel.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-Mailer: Apple Mail (2.3445.104.11)
Cc: yocto@yoctoproject.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
	akuster808 <akuster808@gmail.com>,
	James Feist <james.feist@linux.intel.com>
Subject: Re: Build break in the latest openbmc tree.
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
X-List-Received-Date: Wed, 04 Sep 2019 00:36:44 -0000
Content-Type: text/plain;
	charset=us-ascii;
	delsp=yes;
	format=flowed
Content-Transfer-Encoding: 7bit

at 5:16 PM, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:

> On 8/27/2019 5:00 PM, Brad Bishop wrote:
>> On Sun, 2019-08-25 at 10:49 -0700, akuster808 wrote:
>>> the meta-security layer should be fix now.
>>>
>>> please update and let me know if not.
>> Thanks Armin!
>> Jae, I've pulled this into OpenBMC.  Can you give it a try?
>
> Thanks Armin, Brad!
>
> I tried it using the latest tree and checked that the build breakage has
> gone, but a new issue happened while it's building 'qemu-native'.
>
> | ERROR: Execution of  
> '/home/yoojae/workspace/openbmc/build/tmp/work/x86_64-linux/qemu-native/4.1.0-r0/temp/run.do_configure.2396'  
> failed with exit code 1:
> | ERROR: unknown option --disable-libssh
>
> So I made a patch to fix the new issue.
>
> --- a/poky/meta/recipes-devtools/qemu/qemu.inc
> +++ b/poky/meta/recipes-devtools/qemu/qemu.inc
> @@ -137,7 +137,7 @@ PACKAGECONFIG[curses] =  
> "--enable-curses,--disable-curses,ncurses,"
>  PACKAGECONFIG[gtk+] = "--enable-gtk,--disable-gtk,gtk+3 gettext-native"
>  PACKAGECONFIG[vte] = "--enable-vte,--disable-vte,vte gettext-native"
>  PACKAGECONFIG[libcap-ng] = "--enable-cap-ng,--disable-cap-ng,libcap-ng,"
> -PACKAGECONFIG[ssh] = "--enable-libssh,--disable-libssh,libssh,"
> +PACKAGECONFIG[ssh] = "--enable-libssh2,--disable-libssh2,libssh2,"
>  PACKAGECONFIG[gcrypt] = "--enable-gcrypt,--disable-gcrypt,libgcrypt,"
>  PACKAGECONFIG[nettle] = "--enable-nettle,--disable-nettle,nettle"
>  PACKAGECONFIG[libusb] = "--enable-libusb,--disable-libusb,libusb1"
>
> Brad,
> Please apply this change into the qemu recipe.

Hi Jae

Please send your patch to OE-Core.

FWIW I am able to build qemu-native without issue with OpenBMC 93ee980ed9  
although I am not using meta-security.

thx - brad

