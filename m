Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F564E00A73; Wed,  4 Nov 2015 12:08:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 240CEE00A28
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 12:08:02 -0800 (PST)
Received: (qmail 25747 invoked by uid 1003); 4 Nov 2015 20:08:02 -0000
Received: from unknown (HELO ?192.168.11.125?)
	(philip@opensdr.com@108.44.122.7)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	4 Nov 2015 20:08:02 -0000
To: Jeff Waller <truthset@gmail.com>, yocto@yoctoproject.org
References: <A3D3D7B9-251A-43B6-9D08-00CD6C0FA241@gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <563A65A1.5090005@balister.org>
Date: Wed, 4 Nov 2015 15:08:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <A3D3D7B9-251A-43B6-9D08-00CD6C0FA241@gmail.com>
Subject: Re: Trying to build tools for Cortex A9 Dora failure on Ubuntu 15 using gcc 5.2
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
X-List-Received-Date: Wed, 04 Nov 2015 20:08:08 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 11/04/2015 01:08 PM, Jeff Waller wrote:
> There are probably a number of things wrong including some configuration errors I’ve made being that
> I’m just getting started.  My ultimate goal is to cross-compile tools to augment the OS running on a
> 3DR Solo drone, here’s the doc on linux binary builds as you can see it’s minimal, but I’ve read elsewhere
> that the processor is Cortex-A9 based at least, and it looks like it’s poky 1.5 which I think is
> Dora

Only recently could we do builds on gcc5 machines. The -native recipes
are built with host gcc and not everything would build without patches.

I'd build a vm with an "older" Linux distro and build there.

Philip

> 
> http://dev.3dr.com/advanced-linux.html <http://dev.3dr.com/advanced-linux.html>
> 
> Like I said, I’m just getting started and totally new at this, so I’m pretty much following the Yocto
> Linux guide
> 
> http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html <http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html>
> 
> But am getting build errors, Now I do recognize this as a possible problem, and maybe need to use ubuntu
> 14 instead.  
> 
> jeffw@chill:~/src/poky/build$ bitbake core-image-sato
> WARNING: Host distribution "Ubuntu-15.10" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> 
> 
> Summary: 5 tasks failed:
>   virtual:native:/home/jeffw/src/poky/meta/recipes-devtools/pseudo/pseudo_1.5.1.bb, do_compile
>   virtual:native:/home/jeffw/src/poky/meta/recipes-support/libgpg-error/libgpg-error_1.12.bb, do_compile
>   virtual:native:/home/jeffw/src/poky/meta/recipes-core/ncurses/ncurses_5.9.bb, do_compile
>   /home/jeffw/src/poky/meta/recipes-core/eglibc/cross-localedef-native_2.18.bb, do_compile
>   virtual:native:/home/jeffw/src/poky/meta/recipes-devtools/binutils/binutils_2.23.2.bb, do_compile
> 
> 
> But I think rather that ubuntu being the problemI think many (perhaps all?) of these errors are due to gcc 5.2
> 
> specifically:
> 
> 
> jeffw@chill:~/src/poky/build$ gcc -v
> Using built-in specs.
> COLLECT_GCC=gcc
> COLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-linux-gnu/5/lto-wrapper
> Target: x86_64-linux-gnu
> Configured with: ../src/configure -v --with-pkgversion='Ubuntu 5.2.1-22ubuntu2' --with-bugurl=file:///usr/share/doc/gcc-5/README.Bugs --enable-languages=c,ada,c++,java,go,d,fortran,objc,obj-c++ --prefix=/usr --program-suffix=-5 --enable-shared --enable-linker-build-id --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --with-default-libstdcxx-abi=new --enable-gnu-unique-object --disable-vtable-verify --enable-libmpx --enable-plugin --with-system-zlib --disable-browser-plugin --enable-java-awt=gtk --enable-gtk-cairo --with-java-home=/usr/lib/jvm/java-1.5.0-gcj-5-amd64/jre --enable-java-home --with-jvm-root-dir=/usr/lib/jvm/java-1.5.0-gcj-5-amd64 --with-jvm-jar-dir=/usr/lib/jvm-exports/java-1.5.0-gcj-5-amd64 --with-arch-directory=amd64 --with-ecj-jar=/usr/share/java/eclipse-ecj.jar --enable-objc-gc --enable-multiarch --disable-werror --with-arc
h-32=i686 --with-abi=m64 --with-multilib-list=m32,m64,mx32 --enable-multilib --with-tune=generic --enable-checking=release --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu
> Thread model: posix
> gcc version 5.2.1 20151010 (Ubuntu 5.2.1-22ubuntu2) 
> 
> 
> The pseudo failure:
> 
>  pseudo_util.c:101:29: error: initializer element is not constant
> |   static size_t unload_len = strlen(unload);
> |                              ^
> | Makefile:121: recipe for target 'pseudo_util.o' failed
> 
> 
> For libgpg this looks like a syntax error or maybe there’s a define that does not exist?:
> 
> | ./mkerrcodes.h:134:5: error: expected expression before ',' token
> |    { , "GPG_ERR_EXFULL" },
> |      ^
> | Makefile:1043: recipe for target 'mkerrcodes' failed
> | make[2]: *** [mkerrcodes] Error 1
> 
> ncurses fail:
> 
>  In file included from /home/jeffw/src/poky/build/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/curses.priv.h:283:0,
> |                  from ../ncurses/lib_gen.c:19:
> | _19066.c:835:15: error: expected ')' before 'int'
> | ../include/curses.h:1594:56: note: in definition of macro 'mouse_trafo'
> |  #define mouse_trafo(y,x,to_screen) wmouse_trafo(stdscr,y,x,to_screen)
> 
> 
> Localdef:
> 
>  argp-help.c:(.text+0x1e00): multiple definition of `argp_fmtstream_write'
> | argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined here
> | argp-help.o: In function `argp_fmtstream_puts':
> | argp-help.c:(.text+0x1e50): multiple definition of `argp_fmtstream_puts'
> | argp-fmtstream.o:argp-fmtstream.c:(.text+0x860): first defined here
> etc…
> 
> 
> And finally binutils:
> 
> | /home/jeffw/src/poky/build/tmp/work/x86_64-linux/binutils-native/2.23.2-r4/binutils-2.23.2/bfd/elf64-alpha.c:3588:11: error: switch condition has boolean value [-Werror=switch-bool]
> |    switch (!dynamic && !info->link_info->shared)
> |            ^
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 

