Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA940E00655; Mon, 27 Feb 2017 21:14:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1726FE0052B
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 21:14:12 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5861368A01A; Tue, 28 Feb 2017 05:14:11 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E5CFB68A019;
	Tue, 28 Feb 2017 05:14:06 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 4564E6740364;
	Tue, 28 Feb 2017 06:14:05 +0100 (CET)
To: Max Krummenacher <max.oss.09@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <10426572-3dbf-9403-f73b-ecbcb3a02157@mlbassoc.com>
	<1488226281.2083.7.camel@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <c3895122-3421-6067-6955-abb525e9df48@mlbassoc.com>
Date: Tue, 28 Feb 2017 06:13:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1488226281.2083.7.camel@gmail.com>
Subject: Re: Shared library question
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
X-List-Received-Date: Tue, 28 Feb 2017 05:14:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-27 21:11, Max Krummenacher wrote:
> Hi
>
> Am Montag, den 27.02.2017, 15:03 +0100 schrieb Gary Thomas:
>> I trying to create a package am335x-pru-support which creates a
>> shared library used by another package pru-examples.  The library
>> files installed with am335x-pru-support are (from <BUILD>/image)
>> -rwxr-xr-x 4 gthomas gthomas 17074 Feb 27 13:40 usr/lib/libprussdrv.a
>> lrwxrwxrwx 1 gthomas gthomas    16 Feb 27 13:40 usr/lib/libprussdrv.so -> libprussdrv.so.1
>> lrwxrwxrwx 1 gthomas gthomas    18 Feb 27 13:40 usr/lib/libprussdrv.so.1 -> libprussdrv.so.1.0
>> -rwxr-xr-x 1 gthomas gthomas 22092 Feb 27 13:40 usr/lib/libprussdrv.so.1.0
>> -rw-r--r-- 4 gthomas gthomas 8074 Feb 27 13:40 usr/include/pruss/prussdrv.h
>> -rw-r--r-- 4 gthomas gthomas 4286 Feb 27 13:40 usr/include/pruss/pruss_intc_mapping.h
>>
>> These files are split by the packager as:
>> gthomas@europa:packages-split$ find am335x-pru-support | sort
>> am335x-pru-support
>> am335x-pru-support/usr
>> am335x-pru-support/usr/lib
>> am335x-pru-support/usr/lib/libprussdrv.so.1
>> am335x-pru-support/usr/lib/libprussdrv.so.1.0
>> gthomas@europa:packages-split$ find am335x-pru-support-dev | sort
>> am335x-pru-support-dev
>> am335x-pru-support-dev/usr
>> am335x-pru-support-dev/usr/include
>> am335x-pru-support-dev/usr/include/pruss
>> am335x-pru-support-dev/usr/include/pruss/prussdrv.h
>> am335x-pru-support-dev/usr/include/pruss/pruss_intc_mapping.h
>> am335x-pru-support-dev/usr/lib
>> am335x-pru-support-dev/usr/lib/libprussdrv.so
>>
>> These files get staged correctly to pru-examples recipe-specific-sysroot
>> and I can build and link against them, using DEPENDS="am335x-pru-support".
>> The problem is that when my build (target recipe) uses
>>    $(CC) my_target_program.c $(LDFLAGS) -lprussdrv
>> it gets satisfied by /usr/lib/libprussdrv.so and not /usr/lib/libprussdrv.so.1
>> This in turn appears to keep the pru-examples package from having
>> a runtime dependency against the am335x-pru-support package and the
>> necessary library file does not end up on my target.
>>
>> I've tried to work through this, following many recipes as examples,
>> e.g. meta/recipes-multimedia/libogg (pattern for am335x-pru-support)
>> and meta/recipes-multimedia/flac (pattern for pru-examples).  The
>> libogg/flac combo works correctly, mine does not :-(
>>
>> Any pointers on what I might be doing wrong?  I'm so close to getting
>> this stuff going, it's just the packaging that's going to claim the
>> last hairs from my head...
>
> When linking a shared object file you have to pass the linker a soname which adds compatible version
> information into the share object file.
> Have a look here:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/recipes-bsp?id=7ff327a4e3e8e19d1e3f848
> 865b6b27ba9f6250b
> http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html
>
>
> Alternatively you can drop the libprussdrv.so.1 and libprussdrv.so.1.0, and force with FILES... the
> libprussdrv.so into the not -dev package.
> Probably you would also want to INSANE_SKIP_${PN} = "dev-so".

Perfect, that worked a treat!

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

