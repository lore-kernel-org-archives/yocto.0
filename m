Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FB73E005B4; Wed, 31 Dec 2014 06:27:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [81.169.146.163 listed in list.dnswl.org]
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E082CE002F9
	for <yocto@yoctoproject.org>; Wed, 31 Dec 2014 06:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1420036042; l=4569;
	s=domk; d=jenslucius.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Subject:To:MIME-Version:From:Date;
	bh=r/cxHBYi8SevSub5bvZdHKrgoD4=;
	b=mVvz9p2j06IQ011pnarb/qjF7c1Aj4yNm//11HTMx89c8L3OQHShQZlqUbSluM4IvKu
	/6cuhFqMZTIuNKrnQX3xYFrC+Ga0aKQ7/+wUceURWA01nqJ4ORBjUlW7kUS1axPBp6KTi
	i1krn0nCrqXXsDuD5bLyQr6NGFB3Gi6fJco=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgREHsiFrwgHms97X5Q==
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p5B0E3C70.dip0.t-ipconnect.de [91.14.60.112])
	by smtp.strato.de (RZmta 36.3 DYNA|AUTH)
	with ESMTPSA id f06d96qBVERH9Wp
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate);
	Wed, 31 Dec 2014 15:27:17 +0100 (CET)
Message-ID: <54A407C8.1090408@jenslucius.de>
Date: Wed, 31 Dec 2014 15:27:20 +0100
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: akuster808 <akuster808@gmail.com>, 
	atulkumar singh <atul.singh008@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <SIXPR03MB304909CFBAC30A54D4EF6EFEA5E0@SIXPR03MB304.apcprd03.prod.outlook.com>	<CAH21_vEQd3=qBOb7sLqo8Kw+UxaW004HSfOfHFnRzi9BJZPq2w@mail.gmail.com>
	<54A36E5E.2010103@gmail.com>
In-Reply-To: <54A36E5E.2010103@gmail.com>
Subject: Re: GCC plugin missing
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
X-List-Received-Date: Wed, 31 Dec 2014 14:27:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I had the same problem, here is an example .bbapend:

gcc-cross_%.bbappend

EXTRA_OECONF += "--enable-plugin"

You also need a very recent gcc on the host, I think it was at least 4.9.

Regards,

Jens

Am 31.12.2014 um 04:32 schrieb akuster808:
> Atul.
>
> I believe you need to add
> EXTRA_OECONF += "--enable-plugin"
>
> in  a bbappend file for the gcc you need the support it.
>
> That wont solve your problem.  The kernel Makefile is hard coded to 
> use your 'HOST' gcc. It is trying to build 'HOST' tools.
>
> Look at the kernel Makefile.
>
> You might need to install gcc-<ver>-plugin-dev or something equivalent 
> you your host, but that might not solve all the issues.
>
> - Armin
>
>
>
> On 12/30/2014 06:34 PM, atulkumar singh wrote:
>> Hi All,
>>
>> I have built the toolchin using meta-toolchain.
>>
>> But while building the kernel using the same toolchain,we are getting
>> error message as below:-
>>
>> Makefile:635: *** Your gcc installation does not support plugins.  If
>> the necessary headers for plugin support are missing, they should be
>> installed.  On Debian, apt-get install gcc-<ver>-plugin-dev.  If you
>> choose to ignore this error and lessen the improvements provided by this
>> patch, re-run make with the DISABLE_PAX_PLUGINS=y argument.. Stop.
>>
>>
>> Please let me know what need to be added to have the missing headers for
>> GCC plugins.
>>
>>
>> Output of bash ./scripts/gcc-plugin.sh:
>>
>> bash ./scripts/gcc-plugin.sh arm-pokymllibv5te-linux-gnueabi-gcc
>>
>> ./scripts/gcc-plugin.sh: line 3: -print-file-name=plugin: command not 
>> found
>>
>>
>> And our GCC is not configure with plugin support(--enable-plugin):
>> [atulk@localhost linux-3.2.65]$ arm-pokymllibv5te-linux-gnueabi-gcc -v
>>
>> gcc-4.9.1/configure --build=x86_64-linux --host=i686-pokysdk-linux
>> --target=arm-pokymllibv5te-linux-gnueabi
>> --prefix=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr
>> --exec_prefix=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr
>> --bindir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/bin/arm-pokymllibv5te-linux-gnueabi 
>>
>> --sbindir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/bin/arm-pokymllibv5te-linux-gnueabi 
>>
>> --libexecdir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/libexec/arm-pokymllibv5te-linux-gnueabi 
>>
>> --datadir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/share
>> --sysconfdir=/usr/local/windriver/sysroots/i686-pokysdk-linux/etc
>> --sharedstatedir=/usr/local/windriver/sysroots/i686-pokysdk-linux/com
>> --localstatedir=/usr/local/windriver/sysroots/i686-pokysdk-linux/var
>> --libdir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/lib/arm-pokymllibv5te-linux-gnueabi 
>>
>> --includedir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/include 
>> --oldincludedir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/include 
>>
>> --infodir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/share/info 
>> --mandir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/share/man
>> --disable-silent-rules --disable-dependency-tracking
>> --with-libtool-sysroot=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/i686-nativesdk-pokysdk-linux 
>>
>> --with-gnu-ld --enable-shared --enable-languages=c,c++
>> --enable-threads=posix --enable-multilib --enable-c99 --enable-long-long
>> --enable-symvers=gnu --enable-libstdcxx-pch
>> --program-prefix=arm-pokymllibv5te-linux-gnueabi- --without-local-prefix
>> --enable-target-optspace --enable-lto --enable-libssp
>> --disable-bootstrap --disable-libmudflap --with-system-zlib
>> --with-linker-hash-style=gnu --enable-linker-build-id --with-ppl=no
>> --with-cloog=no --enable-checking=release --enable-cheaders=c_global
>> --with-gxx-include-dir=/usr/local/windriver/sysroots/armv5te-pokymllibv5te-linux-gnueabi/usr/include/c++/4.9.1 
>>
>> --with-build-time-tools=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/x86_64-linux/usr/arm-pokymllibv5te-linux-gnueabi/bin 
>>
>> --with-sysroot=/usr/local/windriver/sysroots/armv5te-pokymllibv5te-linux-gnueabi 
>>
>> --with-build-sysroot=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/libv5te-arm-sdk 
>>
>> --enable-poison-system-directories
>> --with-mpfr=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/i686-nativesdk-pokysdk-linux 
>>
>> --with-mpc=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/i686-nativesdk-pokysdk-linux 
>>
>> --enable-nls
>>
>>
>> Regards,
>> Atul
>>
>>
>>


