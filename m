Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87B7FE00B27; Thu, 15 Oct 2015 07:57:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37986E00978
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 07:57:36 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZmjyC-0002tN-MV
	for yocto@yoctoproject.org; Thu, 15 Oct 2015 16:57:28 +0200
Received: from p57b31de5.dip0.t-ipconnect.de ([87.179.29.229])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 16:57:28 +0200
Received: from js by p57b31de5.dip0.t-ipconnect.de with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 16:57:28 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Joachim Schiele <js@lastlog.de>
Date: Thu, 15 Oct 2015 16:57:13 +0200
Message-ID: <mvoesa$s1n$1@ger.gmane.org>
References: <CAMKF1sre0u-rv4trRYYuy1_p1zTcgVg61V715_nXdY+fs7AY8Q@mail.gmail.com>
	<20151003201156.GC24208@resin>
	<CAMKF1srrD24mfm0DzBXLkiFM7DhMA1LaGUxnMZGJmy9_Rd2hRQ@mail.gmail.com>
	<20151003203312.GD24208@resin> <20151003204050.GE24208@resin>
	<20151003204607.GF24208@resin> <20151003212752.GG24208@resin>
	<CAMKF1srVj2-uquPvS6hSHxadZh3k9csDb4oBxgrW-29JVOhecA@mail.gmail.com>
	<20151003215305.GH24208@resin> <mvhid5$goi$1@ger.gmane.org>
	<20151013171357.GA6512@resin>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: p57b31de5.dip0.t-ipconnect.de
X-Enigmail-Draft-Status: N1110
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
In-Reply-To: <20151013171357.GA6512@resin>
Subject: Re: [meta-raspberrypi][PATCH V4 1/5] userland: Fix install prefix and generate pkgconfigs
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
X-List-Received-Date: Thu, 15 Oct 2015 14:57:41 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 13.10.2015 19:13, Andrei Gherzan wrote:
> On Tue, Oct 13, 2015 at 02:14:28AM +0200, Joachim Schiele wrote:
>> On 03.10.2015 23:53, Andrei Gherzan wrote:
>>> On Sat, Oct 03, 2015 at 02:47:24PM -0700, Khem Raj wrote:
>>>> On Sat, Oct 3, 2015 at 2:27 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>>>> On Sat, Oct 03, 2015 at 10:46:07PM +0200, Andrei Gherzan wrote:
>>>>>> On Sat, Oct 03, 2015 at 10:40:50PM +0200, Andrei Gherzan wrote:
>>>>>>> On Sat, Oct 03, 2015 at 10:33:12PM +0200, Andrei Gherzan wrote:
>>>>>>>> On Sat, Oct 03, 2015 at 01:31:24PM -0700, Khem Raj wrote:
>>>>>>>>> On Sat, Oct 3, 2015 at 1:11 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>>>>>>>>> On Sat, Oct 03, 2015 at 01:06:55PM -0700, Khem Raj wrote:
>>>>>>>>>>> On Sat, Oct 3, 2015 at 12:18 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>>>>>>>>>>> I tested with and without - same result.
>>>>>>>>>>>> DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia usbgadget
>>>>>>>>>>>> usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 libc-backtrace
>>>>>>>>>>>> libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt
>>>>>>>>>>>> libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab
>>>>>>>>>>>> libc-ftraverse                  libc-getlogin libc-idn libc-inet-anl libc-libm
>>>>>>>>>>>> libc-locales libc-locale-code                   libc-memusage libc-nis
>>>>>>>>>>>> libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc
>>>>>>>>>>>> libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
>>>>>>>>>>>> libc-posix-regexp-glibc                     libc-posix-wchar-io largefile
>>>>>>>>>>>> opengl ptest multiarch wayland pulseaudio sysvinit bluez5"
>>>>>>>>>>>>
>>>>>>>>>>>> No modification to the default poky distro.
>>>>>>>>>>>
>>>>>>>>>>> hmm I am using angstrom and it works there and for verification I now
>>>>>>>>>>> tried with OE-Core ( alone ) it works there too, can you check some
>>>>>>>>>>> other parameters that are there in your sandbox ? here is my build
>>>>>>>>>>>
>>>>>>>>>>>  MACHINE=raspberrypi2 bitbake userland
>>>>>>>>>>> Parsing recipes: 100%
>>>>>>>>>>> |######################################################################################################################################################################################################|
>>>>>>>>>>> ETA:  00:00:00
>>>>>>>>>>> Parsing of 918 .bb files complete (0 cached, 918 parsed). 1350
>>>>>>>>>>> targets, 59 skipped, 0 masked, 0 errors.
>>>>>>>>>>> NOTE: Resolving any missing task queue dependencies
>>>>>>>>>>>
>>>>>>>>>>> Build Configuration:
>>>>>>>>>>> BB_VERSION        = "1.28.0"
>>>>>>>>>>> BUILD_SYS         = "x86_64-linux"
>>>>>>>>>>> NATIVELSBSTRING   = "Ubuntu-14.04"
>>>>>>>>>>> TARGET_SYS        = "arm-oe-linux-gnueabi"
>>>>>>>>>>> MACHINE           = "raspberrypi2"
>>>>>>>>>>> DISTRO            = "nodistro"
>>>>>>>>>>> DISTRO_VERSION    = "nodistro.0"
>>>>>>>>>>> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
>>>>>>>>>>> vfpv4 cortexa7"
>>>>>>>>>>> TARGET_FPU        = "vfp-vfpv4-neon"
>>>>>>>>>>> meta-raspberrypi  = "kraj/master:a903a9cd18ae556121265da93ed74f857944a0da"
>>>>>>>>>>> meta              = "kraj/master:602e512b92bcc78403144fedeb4211bbf56ff1c8"
>>>>>>>>>>>
>>>>>>>>>>> NOTE: Preparing RunQueue
>>>>>>>>>>> NOTE: Executing SetScene Tasks
>>>>>>>>>>> NOTE: Executing RunQueue Tasks
>>>>>>>>>>> NOTE: Tasks Summary: Attempted 454 tasks of which 315 didn't need to
>>>>>>>>>>> be rerun and all succeeded.
>>>>>>>>>>
>>>>>>>>>> Here is my build configuration.
>>>>>>>>>>
>>>>>>>>>> Build Configuration:
>>>>>>>>>> BB_VERSION        = "1.28.0"
>>>>>>>>>> BUILD_SYS         = "x86_64-linux"
>>>>>>>>>> NATIVELSBSTRING   = "Arch-rolling"
>>>>>>>>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>>>>>>>>> MACHINE           = "raspberrypi2"
>>>>>>>>>> DISTRO            = "poky"
>>>>>>>>>> DISTRO_VERSION    = "2.0"
>>>>>>>>>> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard vfpv4
>>>>>>>>>> cortexa7"
>>>>>>>>>> TARGET_FPU        = "vfp-vfpv4-neon"
>>>>>>>>>> meta
>>>>>>>>>> meta-yocto
>>>>>>>>>> meta-yocto-bsp    = "master:eac61f37e36099f74485dab398b57f3812826d17"
>>>>>>>>>> meta-raspberrypi  = "master:48da0cdc5fb147a20b41a77b2dfeef4efd483b32"
>>>>>>>>>> meta-oe
>>>>>>>>>> meta-multimedia   = "master:f4533380c8a5c1d229f692222ee0c2ef9d187ef8"
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> But anyway can you please check in your userland install dir for the header I'm
>>>>>>>>>> missing? Or in sysroot.
>>>>>>>>>
>>>>>>>>> its part of userland itself so no other package should be needed and
>>>>>>>>> not required in sysroot
>>>>>>>>>
>>>>>>>>> ./work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/package/usr/src/debug/userland/git-r5/build/interface/vmcs_host/wayland-dispmanx-server-protocol.h
>>>>>>>>> ./work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/packages-split/userland-dbg/usr/src/debug/userland/git-r5/build/interface/vmcs_host/wayland-dispmanx-server-protocol.h
>>>>>>>>> ./work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/build/interface/khronos/wayland-dispmanx-server-protocol.h
>>>>>>>>> ./work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/build/interface/vmcs_host/wayland-dispmanx-server-protocol.h
>>>>>>>>
>>>>>>>> This is odd... what revision of userland are you using? The one on current
>>>>>>>> meta-rpi master?
>>>>>>>>
>>>>>>>> --
>>>>>>>> Andrei Gherzan
>>>>>>>
>>>>>>> This is not even in the current HEAD of master in userland official repository:
>>>>>>> https://github.com/raspberrypi/userland/tree/master/interface/vmcs_host
>>>>>>>
>>>>>>> Are you sure you don't inject the file somehow? I really don't know what's
>>>>>>> going on.
>>>>>>>
>>>>>>> --
>>>>>>> Andrei Gherzan
>>>>>>
>>>>>> I found the mistery. It gets generated in another path:
>>>>>> ./build/interface/khronos/wayland-dispmanx-server-protocol.h
>>>>>>
>>>>>> Figuring out why.
>>>>>>
>>>>>> --
>>>>>> Andrei Gherzan
>>>>>
>>>>> I managed to get to the bottom of this. It's a racing issue. Basically, with
>>>>> MAKE_PARALLEL high enough, the
>>>>>
>>>>> add_library(EGL ${SHARED} ${EGL_SOURCE})
>>>>>
>>>>> in git/interface/khronos/CMakeLists.txt gets to run before the header is
>>>>> generated. No dependency configured for that. And in the sources of EGL there
>>>>> is egl_wayland.c which includes the generated header by the call:
>>>>>
>>>>> wayland_add_protocol_server(
>>>>>        EGL_SOURCE
>>>>>        ../../interface/wayland/dispmanx.xml
>>>>>        dispmanx
>>>>> )
>>>>>
>>>>> Any idea how to define this dependency? What is the value of your PARALLEL_MAKE
>>>>
>>>> I use -j16, can you add the .h file with path to EGL_SOURCE
>>>
>>> Adding the path to EGL_SOURCE won't work because cmake will complain that the
>>> header is not in place. We need a dependency definition.
>>>
>>> --
>>> Andrei Gherzan
>>>
>>
>> in this file:
>> ./tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/egl.pc"
>>
>> i replaced
>>
>> Cflags: -I${includedir}/vc -I${includedir}/interface
>> -I${includedir}/interface/vcos -I${includedir}/interface/vcos/pthreads
>>
>> with that
>>
>> Cflags: -I${includedir}/vc -I${includedir}/interface
>> -I${includedir}/interface/vcos -I${includedir}/interface/vcos/pthreads
>> -I../build/interface/khronos/
>>
>> (basically adding -I../build/interface/khronos/)
>>
>> IIRC that worked for me. you can give that a try at least ;-)
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> Hi Joachim,
> 
> I'm not sure how would this help as long as the pc file is generated by
> userland and the error I'm facing is while compiling userland.
> 
> --
> Andrei Gherzan
> 

hi andrei,

you are right, my last answer was actually fror a different problem.
after looking into this issue, which is basically finding a way to make
-j n (with n > 1) work:

--- in short ---
so add a custom dependency:

######### interface/vmcs_host/CMakeLists.txt #########
if (BUILD_WAYLAND)
wayland_add_protocol_server(
    VCHOSTIF_SOURCE
    ../../interface/wayland/dispmanx.xml
    dispmanx
)
+ add_custom_target (myVmcs_hostTarget DEPENDS
wayland-dispmanx-server-protocol.h)

######### interface/khronos/CMakeLists.txt #########
   add_library(wayland-egl ${SHARED} ${WAYLAND_EGL_SOURCE})
   + add_dependencies(wayland-egl myVmcs_hostTarget)
   install(TARGETS wayland-egl DESTINATION lib)


note: i consider this a rather hacky solution. it works but assumes the
filename to be wayland-dispmanx-server-protocol.h even though if someone
changes the cmake function called 'wayland_add_protocol_server' (which
comes with the patch) to use a different filename, it will break.

the cmake background is described here:
#
http://stackoverflow.com/questions/4010212/cmake-struggling-with-add-custom-command-dependencies

tested with: conf/local.conf:
BB_NUMBER_THREADS = "4"
PARALLEL_MAKE = "-j 4"



--- in long ---
commands used:
  bitbake -c clean userland
  bitbake -f -c compile userland

target: userland

problem:
| [ 22%] Building C object
interface/khronos/CMakeFiles/khrn_static.dir/glxx/glxx_client.c.o
| cd
/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/khronos
&&
/home/linux/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
 -DEGL_SERVER_DISPMANX -DHAVE_CMAKE_CONFIG -DHAVE_VMCS_CONFIG
-DOMX_SKIP64BIT -DTV_SUPPORTED_MODE_NO_DEPRECATED -DUSE_VCHIQ_ARM
-DVCHI_BULK_ALIGN=1 -DVCHI_BULK_GRANULARITY=1 -D_FILE_OFFSET_BITS=64
-D_HAVE_SBRK -D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -D_REENTRANT
-D__VIDEOCORE4__ -march=armv6 -mfloat-abi=hard -mtune=arm1176jzf-s
-mfpu=vfp
--sysroot=/home/linux/yocto/poky/build/tmp/sysroots/raspberrypi  -O2
-pipe -g -feliminate-unused-debug-types -fPIC -fPIC -DBUILD_WAYLAND
-Wno-multichar -Wall -Wno-unused-but-set-variable -fPIC -O2 -pipe -g
-feliminate-unused-debug-types  -O2 -pipe -g
-feliminate-unused-debug-types -fPIC -fPIC -DNDEBUG
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/host_applications/framework
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/pthreads
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/linux
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/khronos
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/khronos/include
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vchiq_arm
-I/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/host_support/include
   -o CMakeFiles/khrn_static.dir/glxx/glxx_client.c.o   -c
/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/khronos/glxx/glxx_client.c
| In file included from
/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/khronos/ext/egl_wayland.c:35:0:
|
/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/vc_vchi_dispmanx.h:72:66:
fatal error: interface/vmcs_host/wayland-dispmanx-server-protocol.h: No
such file or directory

but requires -> #include
"interface/vmcs_host/wayland-dispmanx-server-protocol.h"

quelle von wayland-dispmanx-server-protocol.h ist:
  -I../build/interface/khronos/
also

/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/khronos/

explanation?:
in

/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/vc_vchi_dispmanx.h
rewrite:
  #include "interface/vmcs_host/wayland-dispmanx-server-protocol.h"
to:
  #include "interface/khronos/wayland-dispmanx-server-protocol.h"
and it compiles!

this means either:
- include path is wrong and should be corrected in
interface/vmcs_host/vc_vchi_dispmanx.h or
- someone forgot to add vmcs_host/wayland-dispmanx-server-protocol.h

but
/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build
  ./interface/khronos/wayland-dispmanx-server-protocol.h
  ./interface/vmcs_host/wayland-dispmanx-server-protocol.h

so it seems more likely that
'/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
must be an include path to make it work! how to do that? turns out, it
is! so why is it not used then?

tested #include <> vs #include "" but then it worked with either??!!

possible new solution:
there is probably a copy operation but it was too late so the next run
it works which explains the odd behavour! so where is the copy command?

the line which borks the include path is from:
git/patches/0001-wayland-support.patch

	  diff -Narubp a/interface/vmcs_host/vc_vchi_dispmanx.h
b/interface/vmcs_host/vc_vchi_dispmanx.h
	  --- a/interface/vmcs_host/vc_vchi_dispmanx.h    2015-02-28
08:44:03.332718168 +0900
	  +++ b/interface/vmcs_host/vc_vchi_dispmanx.h    2015-02-28
10:38:02.820914890 +0900
	  @@ -66,4 +66,19 @@ typedef struct {
	  #define ELEMENT_CHANGE_MASK_RESOURCE  (1<<4)
	  #define ELEMENT_CHANGE_TRANSFORM      (1<<5)

	  +#ifdef BUILD_WAYLAND
	  +/* XXX: This should be in a private header that can be included from
EGL and vc_* */
	  +#include <wayland-server.h>
	  +#include "interface/vmcs_host/wayland-dispmanx-server-protocol.h"
	  +struct wl_dispmanx_server_buffer {
	  +       struct wl_resource *resource;
	  +       struct wl_dispmanx *dispmanx;
	  +       enum wl_dispmanx_format format;
	  +       DISPMANX_RESOURCE_HANDLE_T handle;
	  +       int32_t width;
	  +       int32_t height;
	  +       int in_use;
	  +};
	  +#endif
	  +
	  #endif

patch is made from
meta-weston-rpi/recipes-graphics/userland/userland_git.bbappend:
    file://0001-wayland-support.patch \

linux@linux-VirtualBox:~/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/vmcs_host$
grep wayland-dis * -R
...
  CMakeFiles/vchostif.dir/build.make:     cd
/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/vmcs_host
&&
/home/linux/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/wayland-scanner
server-header <
/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/wayland/dispmanx.xml
>
/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/vmcs_host/wayland-dispmanx-server-protocol.h

found this string also:
  Generating wayland-dispmanx-server-protocol.h

linux@linux-VirtualBox:~/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5$
grep Generating * -R
build/interface/khronos/CMakeFiles/EGL.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_1) "Generating
wayland-dispmanx-server-protocol.h"
build/interface/khronos/CMakeFiles/EGL.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_2) "Generating
wayland-dispmanx-client-protocol.h"
build/interface/khronos/CMakeFiles/EGL.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_3) "Generating wayland-dispmanx-protocol.c"
build/interface/khronos/CMakeFiles/EGL_static.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_1) "Generating
wayland-dispmanx-server-protocol.h"
build/interface/khronos/CMakeFiles/EGL_static.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_2) "Generating
wayland-dispmanx-client-protocol.h"
build/interface/khronos/CMakeFiles/EGL_static.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_3) "Generating wayland-dispmanx-protocol.c"
build/interface/khronos/CMakeFiles/khrn_static.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_1) "Generating
wayland-dispmanx-server-protocol.h"
build/interface/khronos/CMakeFiles/khrn_static.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_2) "Generating
wayland-dispmanx-client-protocol.h"
build/interface/khronos/CMakeFiles/khrn_static.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_3) "Generating wayland-dispmanx-protocol.c"
build/interface/vmcs_host/CMakeFiles/vchostif.dir/build.make:
@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold
--progress-dir=/home/linux/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/CMakeFiles
--progress-num=$(CMAKE_PROGRESS_1) "Generating
wayland-dispmanx-server-protocol.h"

+# wayland_add_protocol_server(outfiles inputfile basename)
+function(WAYLAND_ADD_PROTOCOL_SERVER _sources _protocol _basename)
+    if(NOT WAYLAND_SCANNER_EXECUTABLE)
+        message(FATAL "The wayland-scanner executable has nto been
found on your system. You must install it.")
+    endif()
+
+    get_filename_component(_infile ${_protocol} ABSOLUTE)
+    set(_server_header
"${CMAKE_CURRENT_BINARY_DIR}/wayland-${_basename}-server-protocol.h")
+
+    add_custom_command(OUTPUT "${_server_header}"
+        COMMAND ${WAYLAND_SCANNER_EXECUTABLE} server-header <
${_infile} > ${_server_header}
+        DEPENDS ${_infile} VERBATIM)
+
+    list(APPEND ${_sources} "${_server_header}")
+    set(${_sources} ${${_sources}} PARENT_SCOPE)
+endfunction()

##### used like this: #####

set(VCHOSTIF_SOURCE
            ${VMCS_TARGET}/vcfilesys.c ${VMCS_TARGET}/vcmisc.c
            vc_vchi_gencmd.c vc_vchi_filesys.c
            vc_vchi_tvservice.c vc_vchi_cecservice.c
            vc_vchi_dispmanx.c vc_service_common.c)

# generates wayland-dispmanx-server-protocol.h
wayland_add_protocol_server(
    VCHOSTIF_SOURCE
    ../../interface/wayland/dispmanx.xml
    dispmanx
)


ansatz:
- rausfinden in welchem der CMakeLists.txt der fehler an welcher stelle
steckt:

~/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/khronos/CMakeLists.txt
und zwar target:
  if (BUILD_WAYLAND)
    set(EGL_SOURCE
      ${EGL_SOURCE}
      ext/egl_wayland.c   <---- hier will es
wayland-dispmanx-server-protocol.h!!
      common/linux/khrn_wayland.c)

was ich hab:
~/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/CMakeLists.txt
 |- interface/vmcs_host
 |- interface/khronos

und interface/khronos soll auf den bau von interface/vmcs_host warten!


~/yocto/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/CMakeLists.txt
add_subdirectory(interface/vmcs_host)
add_subdirectory(interface/vchiq_arm)
add_subdirectory(interface/khronos)

so add a custom dependency:
#
http://stackoverflow.com/questions/4010212/cmake-struggling-with-add-custom-command-dependencies

######### interface/vmcs_host/CMakeLists.txt #########
if (BUILD_WAYLAND)
wayland_add_protocol_server(
    VCHOSTIF_SOURCE
    ../../interface/wayland/dispmanx.xml
    dispmanx
)
+ add_custom_target (myVmcs_hostTarget DEPENDS
wayland-dispmanx-server-protocol.h)

######### interface/khronos/CMakeLists.txt #########
   add_library(wayland-egl ${SHARED} ${WAYLAND_EGL_SOURCE})
   + add_dependencies(wayland-egl myVmcs_hostTarget)
   install(TARGETS wayland-egl DESTINATION lib)





