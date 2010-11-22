Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 781324C80B6B
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 09:32:23 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3EC7616607FC; Mon, 22 Nov 2010 08:32:23 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0F5EB16607F1;
	Mon, 22 Nov 2010 08:32:21 -0700 (MST)
Message-ID: <4CEA8D05.8010608@mlbassoc.com>
Date: Mon, 22 Nov 2010 08:32:21 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <4CEA3442.6080909@mlbassoc.com>
	<4CEA53B8.9060804@mlbassoc.com>	<C10D3FB0CD45994C8A51FEC1227CE22F1ACE892ED1@shsmsx502.ccr.corp.intel.com>	<4CEA7405.8070700@mlbassoc.com>	<C10D3FB0CD45994C8A51FEC1227CE22F1ACE892EE5@shsmsx502.ccr.corp.intel.com>
	<4CEA8B25.3060103@mlbassoc.com>
In-Reply-To: <4CEA8B25.3060103@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse plugin
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
X-List-Received-Date: Mon, 22 Nov 2010 15:32:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 08:24 AM, Gary Thomas wrote:
> On 11/22/2010 06:55 AM, Lu, Lianhao wrote:
>>
>> Gary Thomas wrote on 2010-11-22:
>>> Thanks, I installed Helios directly from the Eclipse site and that's
>>> working better now. I also installed the components you mention above.
>>>
>>> When I try to configure Yocto, I'm trying to use the Poky tree method
>>> but it doesn't like my tree :-( I pointed it to my build directory
>>> (the one which contains tmp/, sstate-cache/ and conf/)
>>>
>>> What else am I missing?
>>>
>>
>> You need to "bitbake meta-ide-support" before you can use the poky tree mode.
>
> I did that and now I can move a bit farther. I managed to select my SDK type
> (ppc603e-poky-linux) and started with the autotools example. However, I
> get this error when trying to run autogen.sh:
>
>
> Generating Makefile in build directory: /home/gthomas/workspace/yocto_test3
>
> sh /home/gthomas/workspace/yocto_test3/configure --host=powerpc-poky-linux --build=i686-linux --target=powerpc-poky-linux
> checking for a BSD-compatible install... /usr/bin/install -c
> checking whether build environment is sane... yes
> checking for powerpc-poky-linux-strip... no
> checking for strip... strip
> configure: WARNING: using cross tools not prefixed with host triplet
> checking for a thread-safe mkdir -p... /bin/mkdir -p
> checking for gawk... gawk
> checking whether make sets $(MAKE)... yes
> checking build system type... i686-pc-linux-gnu
> checking host system type... powerpc-poky-linux-gnu
> checking for style of include used by make... GNU
> checking for powerpc-poky-linux-gcc... powerpc-poky-linux-gcc
> checking whether the C compiler works... no
> configure: error: in `/home/gthomas/workspace/yocto_test3':
> configure: error: C compiler cannot create executables
> See `config.log' for more details.
>
> Configuration failed with error
>
> It looks like there is a confusion over the SDK type and the
> compiler setup?
>

BTW, this was on my console (hidden by the eclipse window), in
case it helps:

get env key CC value powerpc-poky-linux-gcc
get env key CXX value powerpc-poky-linux-g++
get env key GDB value powerpc-poky-linux-gdb
get env key TARGET_PREFIX value powerpc-poky-linux-
get env key CONFIGURE_FLAGS value --target=powerpc-poky-linux --host=powerpc-poky-linux --build=i686-linux
get env key CFLAGS value -mcpu=603e -mhard-float
get env key CXXFLAGS value -mcpu=603e -mhard-float
get env key POKY_NATIVE_SYSROOT value /home/gary/mytarget_poky/tmp/sysroots/i686-linux
get env key POKY_TARGET_SYSROOT value /home/gary/mytarget_poky/tmp/sysroots/ppc603e-poky-linux

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

