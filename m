Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE5FE009C5; Thu,  1 May 2014 08:14:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 493 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 May 2014 08:14:31 PDT
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98705E009BA
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 08:14:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E2E21F811EC; Thu,  1 May 2014 09:06:17 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 08749F811E9;
	Thu,  1 May 2014 09:06:14 -0600 (MDT)
Message-ID: <536262F6.3040702@mlbassoc.com>
Date: Thu, 01 May 2014 09:06:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Build problem with current master
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
X-List-Received-Date: Thu, 01 May 2014 15:14:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to build using the latest master ().

For historical (hysterical? customers), I'm maintaining some
old versions of GCC in my own layers.  Recent changes are causing
these recipes to throw errors:

NOTE: Error during finalise of /home/local/poky-cutting-edge/meta-amltd/recipes-devtools/gcc/gcc_4.7.bb
ERROR: ExpansionError during parsing /home/local/poky-cutting-edge/meta-amltd/recipes-devtools/gcc/gcc_4.7.bb: Failure expanding variable oe_runconf: ExpansionError: Failure 
expanding variable EXTRA_OECONF, expression was ${@['--enable-clocale=generic', ''][d.getVar('USE_NLS', True) != 'no']}                 --with-gnu-ld 
--enable-shared                 --enable-languages=c,c++                 --enable-threads=posix                 --enable-multilib                 --enable-c99 
--enable-long-long                 --enable-symvers=gnu                 --enable-libstdcxx-pch                 --program-prefix=arm-amltd-linux-gnueabi- 
--without-local-prefix                 --enable-target-optspace                  --enable-lto                    --enable-libssp                         --disable-bootstrap 
               --disable-libmudflap                    --with-system-zlib                      --with-linker-hash-style=gnu                     --enable-linker-build-id 
             --with-ppl=no                   --with-cloog=no                  --enable-checking=release                       --enable-cheaders=c_global 
--with-float=hard                      --with-sysroot=/     --with-build-sysroot=/home/local/imx6-cutting-edge_2014-05-01/tmp/sysroots/nitrogen6x 
--with-native-system-header-dir=/home/local/imx6-cutting-edge_2014-05-01/tmp/sysroots/nitrogen6x/usr/include     --with-gxx-include-dir=/usr/include/c++/ 
${@get_gcc_mips_plt_setting(bb, d)}                 ${@get_gcc_multiarch_setting(bb, d)} ${@gettext_oeconf(d)} which triggered exception AttributeError: 'module' object has no 
attribute 'contains'

I've noticed recent discussions about moving/renaming 'contains',
but it's not clear to me what I might need to do to get these old
GCC recipes (and maybe others?) going again.  Sadly, just abandoning
them isn't practical, at least not today.

Thanks for any ideas/pointers.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

