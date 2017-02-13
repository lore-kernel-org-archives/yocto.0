Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF0E2E00A0C; Sun, 12 Feb 2017 22:28:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB79E0082E
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 22:28:16 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9535368A01C; Mon, 13 Feb 2017 06:28:15 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 0C9C568A019;
	Mon, 13 Feb 2017 06:28:14 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B3898674043C;
	Mon, 13 Feb 2017 07:28:14 +0100 (CET)
To: yocto@yoctoproject.org
References: <9c692488-5c82-bd81-734d-74266648aef8@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <3a67914a-52e5-3e4a-89a4-ee63c5a7b6ba@mlbassoc.com>
Date: Mon, 13 Feb 2017 07:28:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <9c692488-5c82-bd81-734d-74266648aef8@mlbassoc.com>
Subject: Re: Getting build dependencies correct
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
X-List-Received-Date: Mon, 13 Feb 2017 06:28:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-13 07:02, Gary Thomas wrote:
> I'm trying to work with a new tool that creates executables
> for my target.  This tool has a shared library and some include
> files.  What I need to figure out is how to run the tool in my
> build environment such that it uses those files to create an
> executable for my target board.
>
> The tool is created by some recipe xxx.  I have enabled both
> the target version and the xxx-native version (using BBCLASSEXTEND)
> and end up with these files in the tmp/sysroots
>
> gthomas@europa:p8701_2016-10-22$ find tmp/sysroots-components/armv7ahf-neon/am335x-pru-support
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/sysroot-providers
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/sysroot-providers/am335x-pru-support
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/lib
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/lib/libprussdrv.so.0
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/lib/libprussdrv.so.0.0
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/include
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/include/pruss
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/include/pruss/pruss_intc_mapping.h
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/include/pruss/prussdrv.h
> gthomas@europa:p8701_2016-10-22$ find tmp/sysroots-components/x86_64/am335x-pru-support-native/
> tmp/sysroots-components/x86_64/am335x-pru-support-native/
> tmp/sysroots-components/x86_64/am335x-pru-support-native/sysroot-providers
> tmp/sysroots-components/x86_64/am335x-pru-support-native/sysroot-providers/am335x-pru-support-native
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/lib
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/lib/libprussdrv.so.0
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/lib/libprussdrv.so.0.0
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/include
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/include/pruss
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/include/pruss/pruss_intc_mapping.h
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/include/pruss/prussdrv.h
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/bin
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/bin/pasm
>
> The question becomes how to make use of this in a separate recipe
> that wants to use both the 'pasm' tool, as well as the include files
> and library from the 'pruss' support.
>
> I tried to use
>   DEPENDS="am335x-pru-support"
> as well as
>   DEPENDS="am335x-pru-support-native"
> in my recipe, but the correct sysroot is never found (e.g. <pruss/prussdrv.h>
> is not in my search path).
>
> Any help on how to proceed would be greatly appreciated.  I'm happy to share the
> actual recipes if needed (I just left them out to avoid too much noise...)

Following up on this, I'm rather confused.  I installed this package to my target,
but some files seem to be missing:

# opkg files am335x-pru-support-dev
Package am335x-pru-support-dev (2016-08-30-r0.1) is installed on root and has the following files:

When I look in my build, I see something quite different:

tmp/work/armv7ahf-neon-amltd-linux-gnueabi/am335x-pru-support/2016-08-30-r0/packages-split/am335x-pru-support-dev
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/am335x-pru-support/2016-08-30-r0/packages-split/am335x-pru-support-dev/usr
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/am335x-pru-support/2016-08-30-r0/packages-split/am335x-pru-support-dev/usr/include
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/am335x-pru-support/2016-08-30-r0/packages-split/am335x-pru-support-dev/usr/include/pruss
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/am335x-pru-support/2016-08-30-r0/packages-split/am335x-pru-support-dev/usr/include/pruss/pruss_intc_mapping.h
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/am335x-pru-support/2016-08-30-r0/packages-split/am335x-pru-support-dev/usr/include/pruss/prussdrv.h
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/am335x-pru-support/2016-08-30-r0/packages-split/am335x-pru-support-locale

So why aren't these include files actually in the final package?
(Probably related to why I can't find them in my desktop build)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

