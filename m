Return-Path: <giannis.damigos@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0C64E0044A
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2012 11:11:01 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so1688758wgb.11
	for <yocto@yoctoproject.org>; Sun, 01 Apr 2012 11:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=oFqfMa+a5qctPuTi7fI/jR8rldhdMbxUPaKN3TbLcs0=;
	b=acPF31sn/tUswxR5ePXKayzE3cDhe8edNMbnkd2UAyLENz6FV9IobDt9n5kmY4fRwt
	/1CGBaL+CWowoZ77wC0GnPVL+WvvO6sA6EUDpxEj3mzr9Gt2KLlf3CHDC4qGKajTTRz/
	atrp2PSaIMWqxDcpmygpx1fmykVpaAuUqBJUy3YAgECMhNDg0MtZjEKfEmn908PZJ4ua
	lDbz5pEpEoQnROkFvXju7163PRhypTYfHFqvbg1gDJFD7qy1KiKIQsoY+gqXNmx/I/x5
	vkxKrO2grkDtGSGQe9QB3jr7ibcOO3HGCZLPYak0Tgh8fRBO5gKyQGqSgsT8ABTQeEtn
	7uTQ==
Received: by 10.180.88.164 with SMTP id bh4mr17428012wib.22.1333303860446;
	Sun, 01 Apr 2012 11:11:00 -0700 (PDT)
Received: from [192.168.1.252] (athedsl-173654.home.otenet.gr. [85.75.221.244])
	by mx.google.com with ESMTPS id b3sm27220500wib.4.2012.04.01.11.10.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 01 Apr 2012 11:10:59 -0700 (PDT)
Message-ID: <4F789A30.90709@gmail.com>
Date: Sun, 01 Apr 2012 21:10:56 +0300
From: Giannis Damigos <giannis.damigos@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120328 Thunderbird/11.0.1
MIME-Version: 1.0
To: niqingliang@insigma.com.cn
References: <1332815600.25277.22.camel@localhost.localdomain>
	<4F717F1A.8090108@communistcode.co.uk>
	<1332842944.25277.42.camel@localhost.localdomain>
	<1332926479.25277.66.camel@localhost.localdomain>
	<4F72E29E.7000803@communistcode.co.uk>
	<1332985943.25277.85.camel@localhost.localdomain>
	<1332986753.25277.87.camel@localhost.localdomain>
	<CAG5jFBqnxDK0ZBHGyupC0aBZQxO3jkWzcPQtmJDrvEa4cmaYyg@mail.gmail.com>
	<1333007302.25277.114.camel@localhost.localdomain>
	<CAG5jFBqnZ=Ob5OSFV2vnFpbBbLew3Ti-wReC7OzaTTZLYg1gbg@mail.gmail.com>
	<1333012321.25277.127.camel@localhost.localdomain>
	<1333089019.10988.1.camel@localhost.localdomain>
	<CAG5jFBo0=FGsvMPmrsGCMzzirThfQi3KKw0geczAVScgeJa_eQ@mail.gmail.com>
	<1333092897.10988.5.camel@localhost.localdomain>
In-Reply-To: <1333092897.10988.5.camel@localhost.localdomain>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: who are using archlinux?
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
X-List-Received-Date: Sun, 01 Apr 2012 18:11:02 -0000
Content-Type: multipart/alternative;
	boundary="------------090203020101040801060302"

--------------090203020101040801060302
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/30/2012 10:34 AM, Ni Qingliang wrote:
> On Fri, 2012-03-30 at 15:23 +0800, Giannis Damigos wrote:
>> On Fri, Mar 30, 2012 at 9:30 AM, Ni Qingliang
>> <niqingliang@insigma.com.cn>  wrote:
>>> maybe we should report the two bugs?
>>>
>>> On Thu, 2012-03-29 at 17:12 +0800, 倪庆亮 wrote:
>>>> yes, you are right.
>>>>
>>>> the 32 bit lib and gconf is TWO problem, but maybe the reason is same,
>>>> the 'ld' search path.
>>>>
>>>> the 32 bit lib is only occured on NOT pure 64 bit arch. if you are using
>>>> 64 bit arch, and with this problem, maybe you have installed some 32 bit
>>>> libs. (my VM is a pure 64 bit arch, no this problem, and my host is
>>>> using multilib, with this problem)
>>>>
>>>> but the gconf problem is occured both on pure/NOT-pure 64 bit arch.
>>>>
>>>>
>>>> the former is focused on the arch (is 64 bit or 32 bit) of libs. and the
>>>> other one is focused on the dependency of libs.
>>>>
>>>> the gconf need libgtk/libgdk (found in the sysroot), and libgtk/libgdk
>>>> depends on libXrandr (found in host's rootfs), and libXrandr need glibc
>>>> 2.14 (not found in the sysroot, only glibc 2.13).
>>>>
>>>> so the search path is switch between the sysroot and host's rootfs back
>>>> and forth.
>>>>
>>>> On Thu, 2012-03-29 at 16:54 +0800, Giannis Damigos wrote:
>>>>> Installing package lib32-libxrandr, cleaning gconf and building it
>>>>> again does not solved the problem.
>>>>> Such problems on OE were solved by fixing the library path.
>>>>> Now gconf is looking for libXrandr in archlinux libraries and not in
>>>>> yocto's libraries in build directory.
>>>>>
>>>>>
>>>>> On Thu, Mar 29, 2012 at 10:48 AM, Ni Qingliang
>>>>> <niqingliang@insigma.com.cn>  wrote:
>>>>>> give you my hands. I have waited you so long time.:)
>>>>>>
>>>>>> indeed, I have the gcc-multilib problem also.
>>>>>> the ati driver catalyst-total need some 32 bit libs, once you installed
>>>>>> that, the poky compile fail, and then we need install other 32 bit libs
>>>>>> (like gcc-multilib you said). (with a pure 64 bit archlinux, all are OK)
>>>>>>
>>>>>> the only reason I doubt the 'ld', only because if I remove
>>>>>> libXrandr.so.2 in host's rootfs, the error info changed, the libXrandr
>>>>>> become another lib's name (maybe libXext, I can't remember clearly).
>>>>>>
>>>>>> and after several days experiments, I can ensure the problem is focused
>>>>>> on the 'ld' (belongs to binutils).
>>>>>>
>>>>>> On Thu, 2012-03-29 at 15:40 +0800, Giannis Damigos wrote:
>>>>>>> Hi,
>>>>>>>
>>>>>>> I had similar errors building an OE image for my Micro2440 board under
>>>>>>> archlinux x86-64. I solved the problem by installing gcc-multlib
>>>>>>> (https://wiki.archlinux.org/index.php/Arch64_FAQ#Multilib_Repository_-_Multilib_Project).
>>>>>>>
>>>>>>> But, I tried to bake gconf with yocto just adding MACHINE and DISTRO
>>>>>>> to my local.conf:
>>>>>>> MACHINE ?= "qemux86-64"
>>>>>>> DISTRO ?= "poky-lsb"
>>>>>>>
>>>>>>> and I had the same error.
>>>>>>>
>>>>>>> On Thu, Mar 29, 2012 at 5:05 AM, Ni Qingliang
>>>>>>> <niqingliang@insigma.com.cn>  wrote:
>>>>>>>> Oh, I lost something, before running the testgconf.sh, you should
>>>>>>>> cleanall gconf, and build gconf. If not, you can't run it.
>>>>>>>>
>>>>>>>> On Thu, 2012-03-29 at 09:52 +0800, 倪庆亮 wrote:
>>>>>>>>> what the custom script has done is only adding the build dir (which
>>>>>>>>> include the 'python' symlink) into the 'PATH', only that.
>>>>>>>>> AND: integrate the oe-init-build-env and bitbake together.
>>>>>>>>> indeed, no modification.
>>>>>>>>>
>>>>>>>>> using it, I can build anything with one command (call the script),
>>>>>>>>> without it, I must call init env script manually.
>>>>>>>>>
>>>>>>>>> archlinux: latest
>>>>>>>>> poky: latest
>>>>>>>>> build: clean (>  4times)
>>>>>>>>>
>>>>>>>>> indeed, the possibility you mentioned has been excluded by my test.
>>>>>>>>> you can build it succcessfully. what arch of arch you are using? x86 or
>>>>>>>>> x86-64? what about the local.conf? are you using the same as mine?.
>>>>>>>>>
>>>>>>>>> both of them from my side is x86-64.
>>>>>>>>>
>>>>>>>>> I doubt 'ld', only because of my test. the attachment 'testgconf.sh'
>>>>>>>>> contain the root cause of the problem. and I attached the local.conf I
>>>>>>>>> have used, just remove the 'SOURCE_MIRROR_URL' if test it.
>>>>>>>>>
>>>>>>>>> you can run it to check the output, before that, you should change the
>>>>>>>>> two var in the head of it:
>>>>>>>>> POKY_DIR="/media/pangu/optimus"
>>>>>>>>> COMPILE_DIR="/media/pangu/lsbt"
>>>>>>>>>
>>>>>>>>> in it, the modification I have done (modify 'PATH') has been removed.
>>>>>>>>>
>>>>>>>>> maybe you can run it success, but you can check the 'libXrandr.so.2'
>>>>>>>>> line in the output, if it like:
>>>>>>>>> found libXrandr.so.2 at /usr/lib/../lib/libXrandr.so.2
>>>>>>>>>
>>>>>>>>> that is the problem, even you success, it has problem.
>>>>>>>>> you can paste your output in the email. let's check it.
>>>>>>>>> the version of libxrandr on my host is 1.3.2-2.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On Wed, 2012-03-28 at 18:06 +0800, Jack Mitchell wrote:
>>>>>>>>>> On 28/03/12 10:21, Ni Qingliang wrote:
>>>>>>>>>>> no echo again?
>>>>>>>>>>>
>>>>>>>>>>> what's the problem?
>>>>>>>>>>>
>>>>>>>>>>> am I wrong? where?
>>>>>>>>>>>
>>>>>>>>>>> On Tue, 2012-03-27 at 18:09 +0800, 倪庆亮 wrote:
>>>>>>>>>>>> thanks your reply, indeed, this is not the first email thread about
>>>>>>>>>>>> the
>>>>>>>>>>>> gconf compile problem. it in there only because of no echo.
>>>>>>>>>>>>
>>>>>>>>>>>> I have installed python2, and made a symlink in the build
>>>>>>>>>>>> directory, and
>>>>>>>>>>>> exported to the env var PATH.
>>>>>>>>>>>>
>>>>>>>>>>>> this is the script I used to build (located in the build
>>>>>>>>>>>> directory):
>>>>>>>>>>>>   #!/bin/bash
>>>>>>>>>>>>   loc_dir="`pwd`"
>>>>>>>>>>>>   . ${loc_dir}/../optimus/oe-init-build-env ${loc_dir}
>>>>>>>>>>>>   export PATH="${loc_dir}:$PATH"
>>>>>>>>>>>>   bitbake $@
>>>>>>>>>>>>
>>>>>>>>>>>> OS: x86-64 arch / desktop env: gnome 3.2
>>>>>>>>>>>> local.conf ( modified section ):
>>>>>>>>>>>>   MACHINE ??= "qemux86-64"
>>>>>>>>>>>>   DISTRO ?= "poky-lsb"
>>>>>>>>>>>>   SOURCE_MIRROR_URL = "http://10.10.20.149/optimussources/"
>>>>>>>>>>>>   INHERIT += "own-mirrors"
>>>>>>>>>>>>   BB_GENERATE_MIRROR_TARBALLS = "0"
>>>>>>>>>>>>   INHERIT += "rm_work"
>>>>>>>>>>>>   CCACHE = ""
>>>>>>>>>>>>
>>>>>>>>>>>> when build gconf, got error:
>>>>>>>>>>>>    /usr/lib/../lib/libXrandr.so.2: undefined reference to
>>>>>>>>>>>> `memcpy@GLIBC_2.14'
>>>>>>>>>>>> when 'do_compile' at sanity-check step.
>>>>>>>>>>>>
>>>>>>>>>>>> the log of do_compile is attached, here is the last cmd (only
>>>>>>>>>>>> reserve
>>>>>>>>>>>> rpath):
>>>>>>>>>>>>   ../x86_64-poky-linux-libtool ...  -Wl,-rpath -Wl,/usr/lib/../lib
>>>>>>>>>>>>
>>>>>>>>>>>> the libXrandr.so.2 (depended by the libgtk/libgdk) not appear in
>>>>>>>>>>>> the
>>>>>>>>>>>> command explicitly.
>>>>>>>>>>>>
>>>>>>>>>>>> I have add --verbose in the command, and found the ld find it in
>>>>>>>>>>>> the
>>>>>>>>>>>> host's rootfs, but it should search it in the sysroot arg.
>>>>>>>>>>>>
>>>>>>>>>>>> If remove the rpath arg or with the rpath arg prefixed by sysroot
>>>>>>>>>>>> arg, I
>>>>>>>>>>>> can build success. (wich will search the libXrandr in the sysroot
>>>>>>>>>>>> arg
>>>>>>>>>>>> correctly)
>>>>>>>>>>>>
>>>>>>>>>>>> so I think the error is focused on the `ld' which should search in
>>>>>>>>>>>> the
>>>>>>>>>>>> sysroot arg at first for implicit dependended libs, but not host's
>>>>>>>>>>>> rootfs.
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> On Tue, 2012-03-27 at 16:49 +0800, Jack Mitchell wrote:
>>>>>>>>>>>>> On 27/03/12 03:33, Ni Qingliang wrote:
>>>>>>>>>>>>>> who are using archlinux? I want to talk about gconf compile fail
>>>>>>>>>>>>>> problem.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>> I use Archlinux for OE/Yocto, could you post your error so we can
>>>>>>>>>>>>> get an
>>>>>>>>>>>>> idea of the problem you are having?
>>>>>>>>>>>>>
>>>>>>>>>>>>> One note for Archlinux is that it ships Python 3 as default, to
>>>>>>>>>>>>> you must
>>>>>>>>>>>>> install Python2 from the repositories then symlink python2 to
>>>>>>>>>>>>> python in
>>>>>>>>>>>>> /usb/bin.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Regards,
>>>>>>>>>>>>>
>>>>>>>>>> I'm not 100% sure what the issue is. How come you are using a custom
>>>>>>>>>> build script and not the one bundled with OE? I'm not an expert by any
>>>>>>>>>> stretch of the imagination but by not using the given initialisation
>>>>>>>>>> scripts leaves me completely out of ideas as you're running a custom
>>>>>>>>>> setup which I couldn't possibly know the extent of.
>>>>>>>>>>
>>>>>>>>>> All I can really comment on is that Yocto builds fine and consistently
>>>>>>>>>> with Archlinux using the latest packages (I update nearly everyday) so
>>>>>>>>>> the only issue I can see is that your build setup script doesn't cut
>>>>>>>>>> the
>>>>>>>>>> mustard. Have you tried a completely clean build with only the bare
>>>>>>>>>> git
>>>>>>>>>> clone and no modifications?
>>>>>>>>>>
>>>>>>>>>> Regards,
>>>>>>>>>>
>>>>>>>> --
>>>>>>>> Yi Qingliang
>>>>>>>> niqingliang@insigma.com.cn
>>>>>>>> https://niqingliang2003.wordpress.com
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>> --
>>>>>> Yi Qingliang
>>>>>> niqingliang@insigma.com.cn
>>>>>> https://niqingliang2003.wordpress.com
>>>>>>
>>> --
>>> Yi Qingliang
>>> niqingliang@insigma.com.cn
>>> https://niqingliang2003.wordpress.com
>>>
>> First, we should test if the problem happens to an other x86-64 linux
>> distro or i686 Archlinux installation.
>> I have to setup a VM because I only use Arch.
>>
>> PS:
>> I read the Mailing List Guidelines from the wiki and they suggest not
>> to top post and to use interleaved (bottom) posting. I should have
>> read it before my first reply.
> the same problem on my side.:)
>
I setup a VM machine with guest OS Linux Mint Debian Edition (LMDE) 
x86_64 to test the problem.
I create a new build for both Archlinux and LMDE, configuring local.conf 
with:

MACHINE ??= "qemux86-64"
DISTRO ?= "poky"

I bake a core-image-base on both Archlinux and LMDE.
LMDE finish creating the image with no problems.
Archlinux failed with error in stage do_compile for the gconf recipe (Error message//usr/lib/../lib/libXrandr.so.2: undefined reference to `memcpy@GLIBC_2.14').
  /




--------------090203020101040801060302
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 03/30/2012 10:34 AM, Ni Qingliang wrote:
    <blockquote
      cite="mid:1333092897.10988.5.camel@localhost.localdomain"
      type="cite">
      <pre wrap="">On Fri, 2012-03-30 at 15:23 +0800, Giannis Damigos wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">On Fri, Mar 30, 2012 at 9:30 AM, Ni Qingliang
<a class="moz-txt-link-rfc2396E" href="mailto:niqingliang@insigma.com.cn">&lt;niqingliang@insigma.com.cn&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">maybe we should report the two bugs?

On Thu, 2012-03-29 at 17:12 +0800, 倪庆亮 wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">yes, you are right.

the 32 bit lib and gconf is TWO problem, but maybe the reason is same,
the 'ld' search path.

the 32 bit lib is only occured on NOT pure 64 bit arch. if you are using
64 bit arch, and with this problem, maybe you have installed some 32 bit
libs. (my VM is a pure 64 bit arch, no this problem, and my host is
using multilib, with this problem)

but the gconf problem is occured both on pure/NOT-pure 64 bit arch.


the former is focused on the arch (is 64 bit or 32 bit) of libs. and the
other one is focused on the dependency of libs.

the gconf need libgtk/libgdk (found in the sysroot), and libgtk/libgdk
depends on libXrandr (found in host's rootfs), and libXrandr need glibc
2.14 (not found in the sysroot, only glibc 2.13).

so the search path is switch between the sysroot and host's rootfs back
and forth.

On Thu, 2012-03-29 at 16:54 +0800, Giannis Damigos wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">Installing package lib32-libxrandr, cleaning gconf and building it
again does not solved the problem.
Such problems on OE were solved by fixing the library path.
Now gconf is looking for libXrandr in archlinux libraries and not in
yocto's libraries in build directory.


On Thu, Mar 29, 2012 at 10:48 AM, Ni Qingliang
<a class="moz-txt-link-rfc2396E" href="mailto:niqingliang@insigma.com.cn">&lt;niqingliang@insigma.com.cn&gt;</a> wrote:
</pre>
              <blockquote type="cite">
                <pre wrap="">give you my hands. I have waited you so long time.:)

indeed, I have the gcc-multilib problem also.
the ati driver catalyst-total need some 32 bit libs, once you installed
that, the poky compile fail, and then we need install other 32 bit libs
(like gcc-multilib you said). (with a pure 64 bit archlinux, all are OK)

the only reason I doubt the 'ld', only because if I remove
libXrandr.so.2 in host's rootfs, the error info changed, the libXrandr
become another lib's name (maybe libXext, I can't remember clearly).

and after several days experiments, I can ensure the problem is focused
on the 'ld' (belongs to binutils).

On Thu, 2012-03-29 at 15:40 +0800, Giannis Damigos wrote:
</pre>
                <blockquote type="cite">
                  <pre wrap="">Hi,

I had similar errors building an OE image for my Micro2440 board under
archlinux x86-64. I solved the problem by installing gcc-multlib
(<a class="moz-txt-link-freetext" href="https://wiki.archlinux.org/index.php/Arch64_FAQ#Multilib_Repository_-_Multilib_Project">https://wiki.archlinux.org/index.php/Arch64_FAQ#Multilib_Repository_-_Multilib_Project</a>).

But, I tried to bake gconf with yocto just adding MACHINE and DISTRO
to my local.conf:
MACHINE ?= "qemux86-64"
DISTRO ?= "poky-lsb"

and I had the same error.

On Thu, Mar 29, 2012 at 5:05 AM, Ni Qingliang
<a class="moz-txt-link-rfc2396E" href="mailto:niqingliang@insigma.com.cn">&lt;niqingliang@insigma.com.cn&gt;</a> wrote:
</pre>
                  <blockquote type="cite">
                    <pre wrap="">
Oh, I lost something, before running the testgconf.sh, you should
cleanall gconf, and build gconf. If not, you can't run it.

On Thu, 2012-03-29 at 09:52 +0800, 倪庆亮 wrote:
</pre>
                    <blockquote type="cite">
                      <pre wrap="">what the custom script has done is only adding the build dir (which
include the 'python' symlink) into the 'PATH', only that.
AND: integrate the oe-init-build-env and bitbake together.
indeed, no modification.

using it, I can build anything with one command (call the script),
without it, I must call init env script manually.

archlinux: latest
poky: latest
build: clean (&gt; 4times)

indeed, the possibility you mentioned has been excluded by my test.
you can build it succcessfully. what arch of arch you are using? x86 or
x86-64? what about the local.conf? are you using the same as mine?.

both of them from my side is x86-64.

I doubt 'ld', only because of my test. the attachment 'testgconf.sh'
contain the root cause of the problem. and I attached the local.conf I
have used, just remove the 'SOURCE_MIRROR_URL' if test it.

you can run it to check the output, before that, you should change the
two var in the head of it:
POKY_DIR="/media/pangu/optimus"
COMPILE_DIR="/media/pangu/lsbt"

in it, the modification I have done (modify 'PATH') has been removed.

maybe you can run it success, but you can check the 'libXrandr.so.2'
line in the output, if it like:
found libXrandr.so.2 at /usr/lib/../lib/libXrandr.so.2

that is the problem, even you success, it has problem.
you can paste your output in the email. let's check it.
the version of libxrandr on my host is 1.3.2-2.


On Wed, 2012-03-28 at 18:06 +0800, Jack Mitchell wrote:
</pre>
                      <blockquote type="cite">
                        <pre wrap="">On 28/03/12 10:21, Ni Qingliang wrote:
</pre>
                        <blockquote type="cite">
                          <pre wrap="">no echo again?

what's the problem?

am I wrong? where?

On Tue, 2012-03-27 at 18:09 +0800, 倪庆亮 wrote:
</pre>
                          <blockquote type="cite">
                            <pre wrap="">thanks your reply, indeed, this is not the first email thread about
the
gconf compile problem. it in there only because of no echo.

I have installed python2, and made a symlink in the build
directory, and
exported to the env var PATH.

this is the script I used to build (located in the build
directory):
 #!/bin/bash
 loc_dir="`pwd`"
 . ${loc_dir}/../optimus/oe-init-build-env ${loc_dir}
 export PATH="${loc_dir}:$PATH"
 bitbake $@

OS: x86-64 arch / desktop env: gnome 3.2
local.conf ( modified section ):
 MACHINE ??= "qemux86-64"
 DISTRO ?= "poky-lsb"
 SOURCE_MIRROR_URL = <a class="moz-txt-link-rfc2396E" href="http://10.10.20.149/optimussources/">"http://10.10.20.149/optimussources/"</a>
 INHERIT += "own-mirrors"
 BB_GENERATE_MIRROR_TARBALLS = "0"
 INHERIT += "rm_work"
 CCACHE = ""

when build gconf, got error:
  /usr/lib/../lib/libXrandr.so.2: undefined reference to
`<a class="moz-txt-link-abbreviated" href="mailto:memcpy@GLIBC_2.14">memcpy@GLIBC_2.14</a>'
when 'do_compile' at sanity-check step.

the log of do_compile is attached, here is the last cmd (only
reserve
rpath):
 ../x86_64-poky-linux-libtool ...  -Wl,-rpath -Wl,/usr/lib/../lib

the libXrandr.so.2 (depended by the libgtk/libgdk) not appear in
the
command explicitly.

I have add --verbose in the command, and found the ld find it in
the
host's rootfs, but it should search it in the sysroot arg.

If remove the rpath arg or with the rpath arg prefixed by sysroot
arg, I
can build success. (wich will search the libXrandr in the sysroot
arg
correctly)

so I think the error is focused on the `ld' which should search in
the
sysroot arg at first for implicit dependended libs, but not host's
rootfs.



On Tue, 2012-03-27 at 16:49 +0800, Jack Mitchell wrote:
</pre>
                            <blockquote type="cite">
                              <pre wrap="">On 27/03/12 03:33, Ni Qingliang wrote:
</pre>
                              <blockquote type="cite">
                                <pre wrap="">who are using archlinux? I want to talk about gconf compile fail
problem.


</pre>
                              </blockquote>
                              <pre wrap="">I use Archlinux for OE/Yocto, could you post your error so we can
get an
idea of the problem you are having?

One note for Archlinux is that it ships Python 3 as default, to
you must
install Python2 from the repositories then symlink python2 to
python in
/usb/bin.

Regards,

</pre>
                            </blockquote>
                          </blockquote>
                        </blockquote>
                        <pre wrap="">
I'm not 100% sure what the issue is. How come you are using a custom
build script and not the one bundled with OE? I'm not an expert by any
stretch of the imagination but by not using the given initialisation
scripts leaves me completely out of ideas as you're running a custom
setup which I couldn't possibly know the extent of.

All I can really comment on is that Yocto builds fine and consistently
with Archlinux using the latest packages (I update nearly everyday) so
the only issue I can see is that your build setup script doesn't cut
the
mustard. Have you tried a completely clean build with only the bare
git
clone and no modifications?

Regards,

</pre>
                      </blockquote>
                      <pre wrap="">
</pre>
                    </blockquote>
                    <pre wrap="">
--
Yi Qingliang
<a class="moz-txt-link-abbreviated" href="mailto:niqingliang@insigma.com.cn">niqingliang@insigma.com.cn</a>
<a class="moz-txt-link-freetext" href="https://niqingliang2003.wordpress.com">https://niqingliang2003.wordpress.com</a>

_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
                  </blockquote>
                </blockquote>
                <pre wrap="">
--
Yi Qingliang
<a class="moz-txt-link-abbreviated" href="mailto:niqingliang@insigma.com.cn">niqingliang@insigma.com.cn</a>
<a class="moz-txt-link-freetext" href="https://niqingliang2003.wordpress.com">https://niqingliang2003.wordpress.com</a>

</pre>
              </blockquote>
            </blockquote>
            <pre wrap="">
</pre>
          </blockquote>
          <pre wrap="">
--
Yi Qingliang
<a class="moz-txt-link-abbreviated" href="mailto:niqingliang@insigma.com.cn">niqingliang@insigma.com.cn</a>
<a class="moz-txt-link-freetext" href="https://niqingliang2003.wordpress.com">https://niqingliang2003.wordpress.com</a>

</pre>
        </blockquote>
        <pre wrap="">
First, we should test if the problem happens to an other x86-64 linux
distro or i686 Archlinux installation.
I have to setup a VM because I only use Arch.

PS:
I read the Mailing List Guidelines from the wiki and they suggest not
to top post and to use interleaved (bottom) posting. I should have
read it before my first reply.
</pre>
      </blockquote>
      <pre wrap="">the same problem on my side.:)

</pre>
    </blockquote>
    <small>I setup a VM machine with guest OS Linux Mint Debian Edition
      (LMDE) x86_64 to test the problem.<br>
      I create a new build for both Archlinux and LMDE, configuring
      local.conf with:<br>
    </small>
    <pre wrap="">MACHINE ??= "qemux86-64"
DISTRO ?= "poky"

I bake a core-image-base on both Archlinux and LMDE.
LMDE finish creating the image with no problems.
Archlinux failed with error in stage do_compile for the gconf recipe (Error message  <i>/usr/lib/../lib/libXrandr.so.2: undefined reference to `<a class="moz-txt-link-abbreviated" href="mailto:memcpy@GLIBC_2.14">memcpy@GLIBC_2.14</a>').
 </i></pre>
    <small> <br>
      <br>
    </small>
  </body>
</html>

--------------090203020101040801060302--
