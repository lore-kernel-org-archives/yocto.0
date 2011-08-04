Return-Path: <tim.bird@am.sony.com>
Received: from VA3EHSOBE001.bigfish.com (va3ehsobe001.messaging.microsoft.com
	[216.32.180.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DEA504C8009A
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 19:09:03 -0500 (CDT)
Received: from mail130-va3-R.bigfish.com (10.7.14.251) by
	VA3EHSOBE001.bigfish.com (10.7.40.21) with Microsoft SMTP Server id
	14.1.225.22; Thu, 4 Aug 2011 00:09:03 +0000
Received: from mail130-va3 (localhost.localdomain [127.0.0.1])	by
	mail130-va3-R.bigfish.com (Postfix) with ESMTP id 10EF213D029D	for
	<yocto@yoctoproject.org>; Thu,  4 Aug 2011 00:09:03 +0000 (UTC)
X-SpamScore: -14
X-BigFish: VPS-14(zz11efR14ffO853kzz1202hzz8275dhz2fh668h839h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:160.33.98.74; KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received-SPF: pass (mail130-va3: domain of am.sony.com designates 160.33.98.74
	as permitted sender) client-ip=160.33.98.74;
	envelope-from=tim.bird@am.sony.com; helo=mail7.fw-bc.sony.com ;
	-bc.sony.com ; 
Received: from mail130-va3 (localhost.localdomain [127.0.0.1]) by mail130-va3
	(MessageSwitch) id 1312416540800787_10847;
	Thu,  4 Aug 2011 00:09:00 +0000 (UTC)
Received: from VA3EHSMHS008.bigfish.com (unknown [10.7.14.237])	by
	mail130-va3.bigfish.com (Postfix) with ESMTP id 8E3091010046	for
	<yocto@yoctoproject.org>; Thu,  4 Aug 2011 00:09:00 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by VA3EHSMHS008.bigfish.com
	(10.7.99.18) with Microsoft SMTP Server id 14.1.225.22;
	Thu, 4 Aug 2011 00:08:59 +0000
Received: from mail1x.sgo.in.sel.sony.com (mail1.sgo.in.sel.sony.com
	[43.130.1.112])	by mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp)
	with
	ESMTP id p7408xT0030724	for <yocto@yoctoproject.org>; Thu, 4 Aug 2011
	00:08:59 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	p7408mxt012706	for <yocto@yoctoproject.org>;
	Thu, 4 Aug 2011 00:08:48 GMT
Message-ID: <4E39E30B.3080206@am.sony.com>
Date: Wed, 3 Aug 2011 17:08:43 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: Build failure on recent yocto download
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
X-List-Received-Date: Thu, 04 Aug 2011 00:09:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hi all,

I'm not sure where to report this, but I tried again to build
Yocto, without success.

I downloaded poky-bernard-4.0.tar.bz2, and followed instructions
for installing it.

I am using 'MACHINE ?= qemuarm' and doing 'bitbake poky-image-sato'

bitbake error messages follow below.

The first error is a failure to fetch the kernel, and a follow-on
failure to do a git-clone on the kernel.  I'm behind a firewall and
this is a perennial problem for me.  Is there another way to get this
code?  If I do a git-clone on a remote machine and copy it over to
my development host, where do I put it?  (Why did the first http-based
fetch fail, anyway?)  Any help would be appreciated.

Assuming the second error (a cairo build problem with a mutex) is
not a cascade from the first, does anyone have any idea what I should
do with this?  Possible the failure with libpseudo.so is the start
of the problem, but if so, how do I investigate and resolve that?

Thanks for any help.
 -- Tim


$ bitbake poky-image-sato
Loading cache: 100% |###########################################################################################################################| ETA:  00:00:00
Loaded 957 entries from dependency cache.
Parsing recipes: 100% |#########################################################################################################################| Time: 00:00:00
Parsing of 783 .bb files complete (749 cached, 34 parsed). 991 targets, 34 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "<unknown>"
METADATA_REVISION = "<unknown>"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0"
TARGET_FPU        = "soft"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 1305 of 4708 (ID: 562, /a/home/tbird/work/yocto/poky-bernard-5.0/meta/recipes-kernel/linux/linux-yocto_git.bb, do_fetch)
NOTE: Running task 1356 of 4708 (ID: 3657, /a/home/tbird/work/yocto/poky-bernard-5.0/meta/recipes-graphics/cairo/cairo_1.10.2.bb, do_compile)
NOTE: package linux-yocto-2.6.37+git1+212cae404e57ff9dc58c808035770d51325c3512_1+233213a1e09eae3de7047ff406b156608788ec17-r16: task do_fetch: Started
ERROR: Function 'Fetcher failure for URL: 'git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/arm-versatile-926ejs,meta;name=machine,meta'. Unable to fetch URL
git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/arm-versatile-926ejs,meta;name=machine,meta from any source.' failed
ERROR: Logfile of failure stored in:
/a/home/tbird/work/yocto/poky-5.0-build/tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto-2.6.37+git1+212cae404e57ff9dc58c808035770d51325c3512_1+233213a1e09eae3de7047ff406b156608788ec17-r16/temp/log.do_fetch.16756
Log data follows:
| NOTE: fetch http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
| git.pokylinux.org[0: 140.211.169.125]: errno=Connection refused
|  fatal: unable to connect a socket (Connection refused)
|  Cloning into bare repository /a/home/tbird/work/yocto/poky-5.0-build/downloads/git2/git.pokylinux.org.linux-yocto-2.6.37...
| ERROR: Function 'Fetcher failure for URL: 'git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/arm-versatile-926ejs,meta;name=machine,meta'. Unable to fetch
URL git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/arm-versatile-926ejs,meta;name=machine,meta from any source.' failed
|
NOTE: package linux-yocto-2.6.37+git1+212cae404e57ff9dc58c808035770d51325c3512_1+233213a1e09eae3de7047ff406b156608788ec17-r16: task do_fetch: Failed
NOTE: package cairo-1.10.2-r0: task do_compile: Started
ERROR: Function 'do_compile' failed (see /a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/temp/log.do_compile.16757 for further information)
ERROR: Logfile of failure stored in: /a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/temp/log.do_compile.16757
Log data follows:
| NOTE: make -j 6
| make  all-recursive
| make[1]: Entering directory `/a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/cairo-1.10.2'
| Making all in src
| make[2]: Entering directory `/a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/cairo-1.10.2/src'
| make  all-am
| make[3]: Entering directory `/a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/cairo-1.10.2/src'
|   CC     cairo-analysis-surface.lo
|   CC     cairo-arc.lo
|   CC     cairo-array.lo
|   CC     cairo-atomic.lo
|   CC     cairo-base64-stream.lo
|   CC     cairo-base85-stream.lo
| ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
| ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
| ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
| ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
| ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
| ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-arc.c:37:
| cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex implementation found.  Cairo will not work with multiple threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this limitation
and compile cairo without thread-safety support."
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-arc.c:37:
| cairo-mutex-impl-private.h:271:30: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_impl_t'
| In file included from cairo-scaled-font-private.h:45:0,
|                  from cairoint.h:380,
|                  from cairo-arc.c:37:
| cairo-mutex-type-private.h:49:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:52:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:55:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:139:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined"
| cairo-mutex-type-private.h:142:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined"
| cairo-mutex-type-private.h:151:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined"
| cairo-mutex-type-private.h:161:28: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_mutex_t'
| cairo-mutex-type-private.h:162:38: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_t'
| In file included from cairoint.h:380:0,
|                  from cairo-arc.c:37:
| cairo-scaled-font-private.h:108:5: error: expected specifier-qualifier-list before 'cairo_mutex_t'
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-base64-stream.c:39:
| cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex implementation found.  Cairo will not work with multiple threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this limitation
and compile cairo without thread-safety support."
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-base64-stream.c:39:
| cairo-mutex-impl-private.h:271:30: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_impl_t'
| In file included from cairo-scaled-font-private.h:45:0,
|                  from cairoint.h:380,
|                  from cairo-base64-stream.c:39:
| cairo-mutex-type-private.h:49:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:52:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:55:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:139:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined"
| cairo-mutex-type-private.h:142:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined"
| cairo-mutex-type-private.h:151:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined"
| cairo-mutex-type-private.h:161:28: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_mutex_t'
| cairo-mutex-type-private.h:162:38: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_t'
| In file included from cairoint.h:380:0,
|                  from cairo-base64-stream.c:39:
| cairo-scaled-font-private.h:108:5: error: expected specifier-qualifier-list before 'cairo_mutex_t'
| In file included from cairo-mutex-private.h:62:0,
|                  from cairoint.h:2519,
|                  from cairo-arc.c:37:
| cairo-mutex-list-private.h:39:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_pattern_solid_surface_cache_lock'
| cairo-mutex-list-private.h:41:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_image_solid_cache_mutex'
| cairo-mutex-list-private.h:43:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_error_mutex'
| cairo-mutex-list-private.h:44:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_toy_font_face_mutex'
| cairo-mutex-list-private.h:45:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_intern_string_mutex'
| cairo-mutex-list-private.h:46:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_map_mutex'
| cairo-mutex-list-private.h:47:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_glyph_page_cache_mutex'
| cairo-mutex-list-private.h:48:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_error_mutex'
| cairo-mutex-list-private.h:51:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_ft_unscaled_font_map_mutex'
| cairo-mutex-list-private.h:55:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_xlib_display_mutex'
| make[3]: *** [cairo-arc.lo] Error 1
| make[3]: *** Waiting for unfinished jobs....
| In file included from cairo-mutex-private.h:62:0,
|                  from cairoint.h:2519,
|                  from cairo-base64-stream.c:39:
| cairo-mutex-list-private.h:39:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_pattern_solid_surface_cache_lock'
| cairo-mutex-list-private.h:41:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_image_solid_cache_mutex'
| cairo-mutex-list-private.h:43:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_error_mutex'
| cairo-mutex-list-private.h:44:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_toy_font_face_mutex'
| cairo-mutex-list-private.h:45:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_intern_string_mutex'
| cairo-mutex-list-private.h:46:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_map_mutex'
| cairo-mutex-list-private.h:47:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_glyph_page_cache_mutex'
| cairo-mutex-list-private.h:48:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_error_mutex'
| cairo-mutex-list-private.h:51:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_ft_unscaled_font_map_mutex'
| cairo-mutex-list-private.h:55:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_xlib_display_mutex'
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-atomic.c:34:
| cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex implementation found.  Cairo will not work with multiple threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this limitation
and compile cairo without thread-safety support."
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-atomic.c:34:
| cairo-mutex-impl-private.h:271:30: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_impl_t'
| In file included from cairo-scaled-font-private.h:45:0,
|                  from cairoint.h:380,
|                  from cairo-atomic.c:34:
| cairo-mutex-type-private.h:49:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:52:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:55:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:139:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined"
| cairo-mutex-type-private.h:142:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined"
| cairo-mutex-type-private.h:151:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined"
| cairo-mutex-type-private.h:161:28: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_mutex_t'
| cairo-mutex-type-private.h:162:38: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_t'
| In file included from cairoint.h:380:0,
|                  from cairo-atomic.c:34:
| cairo-scaled-font-private.h:108:5: error: expected specifier-qualifier-list before 'cairo_mutex_t'
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-base85-stream.c:37:
| cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex implementation found.  Cairo will not work with multiple threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this limitation
and compile cairo without thread-safety support."
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-base85-stream.c:37:
| cairo-mutex-impl-private.h:271:30: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_impl_t'
| In file included from cairo-scaled-font-private.h:45:0,
|                  from cairoint.h:380,
|                  from cairo-base85-stream.c:37:
| cairo-mutex-type-private.h:49:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:52:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:55:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:139:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined"
| cairo-mutex-type-private.h:142:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined"
| cairo-mutex-type-private.h:151:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined"
| cairo-mutex-type-private.h:161:28: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_mutex_t'
| cairo-mutex-type-private.h:162:38: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_t'
| In file included from cairoint.h:380:0,
|                  from cairo-base85-stream.c:37:
| cairo-scaled-font-private.h:108:5: error: expected specifier-qualifier-list before 'cairo_mutex_t'
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-analysis-surface.c:37:
| cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex implementation found.  Cairo will not work with multiple threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this limitation
and compile cairo without thread-safety support."
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-analysis-surface.c:37:
| cairo-mutex-impl-private.h:271:30: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_impl_t'
| In file included from cairo-scaled-font-private.h:45:0,
|                  from cairoint.h:380,
|                  from cairo-analysis-surface.c:37:
| cairo-mutex-type-private.h:49:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:52:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:55:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:139:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined"
| cairo-mutex-type-private.h:142:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined"
| cairo-mutex-type-private.h:151:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined"
| cairo-mutex-type-private.h:161:28: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_mutex_t'
| cairo-mutex-type-private.h:162:38: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_t'
| In file included from cairoint.h:380:0,
|                  from cairo-analysis-surface.c:37:
| cairo-scaled-font-private.h:108:5: error: expected specifier-qualifier-list before 'cairo_mutex_t'
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-array.c:38:
| cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex implementation found.  Cairo will not work with multiple threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this limitation
and compile cairo without thread-safety support."
| In file included from cairo-mutex-type-private.h:45:0,
|                  from cairo-scaled-font-private.h:45,
|                  from cairoint.h:380,
|                  from cairo-array.c:38:
| cairo-mutex-impl-private.h:271:30: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_impl_t'
| In file included from cairo-scaled-font-private.h:45:0,
|                  from cairoint.h:380,
|                  from cairo-array.c:38:
| cairo-mutex-type-private.h:49:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:52:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:55:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined.  Check cairo-mutex-impl-private.h."
| cairo-mutex-type-private.h:139:3: error: #error "CAIRO_MUTEX_IMPL_LOCK not defined"
| cairo-mutex-type-private.h:142:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK not defined"
| cairo-mutex-type-private.h:151:3: error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined"
| cairo-mutex-type-private.h:161:28: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_mutex_t'
| cairo-mutex-type-private.h:162:38: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'cairo_recursive_mutex_t'
| In file included from cairoint.h:380:0,
|                  from cairo-array.c:38:
| cairo-scaled-font-private.h:108:5: error: expected specifier-qualifier-list before 'cairo_mutex_t'
| make[3]: *** [cairo-base64-stream.lo] Error 1
| In file included from cairo-mutex-private.h:62:0,
|                  from cairoint.h:2519,
|                  from cairo-atomic.c:34:
| cairo-mutex-list-private.h:39:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_pattern_solid_surface_cache_lock'
| cairo-mutex-list-private.h:41:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_image_solid_cache_mutex'
| cairo-mutex-list-private.h:43:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_error_mutex'
| cairo-mutex-list-private.h:44:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_toy_font_face_mutex'
| cairo-mutex-list-private.h:45:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_intern_string_mutex'
| cairo-mutex-list-private.h:46:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_map_mutex'
| cairo-mutex-list-private.h:47:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_glyph_page_cache_mutex'
| cairo-mutex-list-private.h:48:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_error_mutex'
| cairo-mutex-list-private.h:51:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_ft_unscaled_font_map_mutex'
| cairo-mutex-list-private.h:55:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_xlib_display_mutex'
| In file included from cairo-mutex-private.h:62:0,
|                  from cairoint.h:2519,
|                  from cairo-base85-stream.c:37:
| cairo-mutex-list-private.h:39:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_pattern_solid_surface_cache_lock'
| cairo-mutex-list-private.h:41:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_image_solid_cache_mutex'
| cairo-mutex-list-private.h:43:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_error_mutex'
| cairo-mutex-list-private.h:44:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_toy_font_face_mutex'
| cairo-mutex-list-private.h:45:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_intern_string_mutex'
| cairo-mutex-list-private.h:46:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_map_mutex'
| cairo-mutex-list-private.h:47:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_glyph_page_cache_mutex'
| cairo-mutex-list-private.h:48:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_error_mutex'
| cairo-mutex-list-private.h:51:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_ft_unscaled_font_map_mutex'
| cairo-mutex-list-private.h:55:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_xlib_display_mutex'
| In file included from cairo-mutex-private.h:62:0,
|                  from cairoint.h:2519,
|                  from cairo-analysis-surface.c:37:
| cairo-mutex-list-private.h:39:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_pattern_solid_surface_cache_lock'
| cairo-mutex-list-private.h:41:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_image_solid_cache_mutex'
| cairo-mutex-list-private.h:43:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_error_mutex'
| cairo-mutex-list-private.h:44:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_toy_font_face_mutex'
| cairo-mutex-list-private.h:45:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_intern_string_mutex'
| cairo-mutex-list-private.h:46:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_map_mutex'
| cairo-mutex-list-private.h:47:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_glyph_page_cache_mutex'
| cairo-mutex-list-private.h:48:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_error_mutex'
| cairo-mutex-list-private.h:51:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_ft_unscaled_font_map_mutex'
| cairo-mutex-list-private.h:55:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_xlib_display_mutex'
| make[3]: *** [cairo-atomic.lo] Error 1
| In file included from cairo-mutex-private.h:62:0,
|                  from cairoint.h:2519,
|                  from cairo-array.c:38:
| cairo-mutex-list-private.h:39:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_pattern_solid_surface_cache_lock'
| cairo-mutex-list-private.h:41:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_image_solid_cache_mutex'
| cairo-mutex-list-private.h:43:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_error_mutex'
| cairo-mutex-list-private.h:44:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_toy_font_face_mutex'
| cairo-mutex-list-private.h:45:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_intern_string_mutex'
| cairo-mutex-list-private.h:46:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_map_mutex'
| cairo-mutex-list-private.h:47:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_glyph_page_cache_mutex'
| cairo-mutex-list-private.h:48:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_scaled_font_error_mutex'
| cairo-mutex-list-private.h:51:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_ft_unscaled_font_map_mutex'
| cairo-mutex-list-private.h:55:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '_cairo_xlib_display_mutex'
| make[3]: *** [cairo-base85-stream.lo] Error 1
| make[3]: *** [cairo-analysis-surface.lo] Error 1
| make[3]: *** [cairo-array.lo] Error 1
| make[3]: Leaving directory `/a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/cairo-1.10.2/src'
| make[2]: *** [all] Error 2
| make[2]: Leaving directory `/a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/cairo-1.10.2/src'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory `/a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/cairo-1.10.2'
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see /a/home/tbird/work/yocto/poky-5.0-build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/temp/log.do_compile.16757 for further information)
NOTE: package cairo-1.10.2-r0: task do_compile: Failed
ERROR: Task 562 (/a/home/tbird/work/yocto/poky-bernard-5.0/meta/recipes-kernel/linux/linux-yocto_git.bb, do_fetch) failed with exit code '1'
ERROR: Task 3657 (/a/home/tbird/work/yocto/poky-bernard-5.0/meta/recipes-graphics/cairo/cairo_1.10.2.bb, do_compile) failed with exit code '1'
ERROR: '/a/home/tbird/work/yocto/poky-bernard-5.0/meta/recipes-kernel/linux/linux-yocto_git.bb' failed
ERROR: '/a/home/tbird/work/yocto/poky-bernard-5.0/meta/recipes-graphics/cairo/cairo_1.10.2.bb' failed

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


