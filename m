Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A6FD54C800C0
	for <yocto@yoctoproject.org>; Fri,  4 Feb 2011 16:29:59 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 32BB716603AC; Fri,  4 Feb 2011 15:29:59 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0F0791660366;
	Fri,  4 Feb 2011 15:29:58 -0700 (MST)
Message-ID: <4D4C7DE6.3010409@mlbassoc.com>
Date: Fri, 04 Feb 2011 15:29:58 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D4B37F9.7080708@mlbassoc.com> <4D4BA607.3060006@linux.intel.com>
	<4D4C7BFC.60400@linux.intel.com>
In-Reply-To: <4D4C7BFC.60400@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-linaro woes continue
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
X-List-Received-Date: Fri, 04 Feb 2011 22:30:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2011 03:21 PM, Darren Hart wrote:
> On 02/03/2011 11:08 PM, Darren Hart wrote:
>> On 02/03/2011 03:19 PM, Gary Thomas wrote:
>>> n.b. this is a continuation of "Kernel Panics on armv4t with gcc.4.5.1"
>>> but the actual discussion has changed enough and there was too much
>>> noise in the previous thread.
>>
>> Hi Gary,
>>
>> We're both pounding away on the meta-linaro layer at the same time
>> unfortunately. I've reorganized things a bit and cleaned up how the
>> layer is configured. I believe this layer ran into some trouble when gcc
>> and binutils changed, but also suffered from a bad BBFILES variable as
>> well (as you noted below). I'll push my changes to
>> poky-contrib/dvhart/meta-linaro just as soon as they build.
>>
>> --
>> Darren
>>
>>>
>>> Trying to use the meta-linaro layer (to solve my problems
>>> with GCC/4.5.1 on armv5te ), I was able to include and use
>>> the layer with the attached changes. I added this layer
>>> intact, moving meta-linaro into my poky tree at the same
>>> level as meta, meta-extras, etc.
>>>
>>> I also had to copy meta/recipes-devtools/gcc/gcc-4.5.1 into
>>> meta-linaro/recipes-devtools/gcc (I didn't know how to expand
>>> the FILESPATH variable to suck from the main meta tree)
>>>
>>> The next problem is this:
>>>
>>> | configure: WARNING: unrecognized options: --enable-languages,
>>> --enable-threads, --enable-target-optspace, --enable-lto,
>>> --enable-libssp, --disable-bootstrap, --disable-libgomp,
>>> --disable-libmudflap, --with-float, --with-local-prefix, --with-sysroot,
>>> --with-build-sysroot, --disable-libunwind-exceptions,
>>> --enable-__cxa_atexit
>>> | Checking autotools environment for common misconfiguration
>>> | NOTE: Checking autotools environment for common misconfiguration
>>> | This autoconf log indicates errors, it looked at host includes.
>>> | Rerun configure task after fixing this. The path was
>>> '/home/local/efacec_omap_linaro/tmp/work/armv5te-poky-linux-gnueabi/gcc-runtime-4.5.1.linaro-r0/gcc-4.5.1.linaro/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libstdc++-v3'
>>>
>>>
>>> | ERROR: This autoconf log indicates errors, it looked at host includes.
>>> | Rerun configure task after fixing this. The path was
>>> '/home/local/efacec_omap_linaro/tmp/work/armv5te-poky-linux-gnueabi/gcc-runtime-4.5.1.linaro-r0/gcc-4.5.1.linaro/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libstdc++-v3'
>>>
>>>
>>> | Function 'do_qa_configure' failed
>>> | ERROR: Function 'do_qa_configure' failed
>>> NOTE: package gcc-runtime-4.5.1.linaro-r0: task do_qa_configure: Failed
>>>
>>> Ideas? I'm really anxious to see if this fixes my kernel problems.
>
> I'm hitting something similar with libtool. I've pushed my dev branch out so you can see how things have changed. I've also asked Nitin to take a look at the libtool issues (and if
> they are related to the linaro gcc).
>
> My branch is available here:
>
> poky-extras/dvhart/meta-linaro-dev
>
> I picked up your do_src_move change as it resolves the issue - but I can't say that I really understand the problem being solved - can you elaborate on why you took this approach?
> I'll credit you properly in the commit in the final set of branches.

I made this change because do_unpack_append() was being treated
as a Python function, so the syntax was wrong.  By using that
function to run a shell function, the problem is solved.  I patterned
this after similar functions, e.g. in the eglibc recipe.  It took me
a while to find and understand this, but then it became obvious.

>
> Also note, this branch WILL be rebased and otherwise abused as I get it in shape for a pull request.

Thanks for your time

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

