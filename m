Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F03B5E00C4B; Thu, 11 Feb 2016 19:49:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F14AE00C44
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 19:49:38 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5E0CA68A01B; Fri, 12 Feb 2016 03:49:37 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E5B0068A019;
	Fri, 12 Feb 2016 03:49:33 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 73C52674009C;
	Fri, 12 Feb 2016 04:49:33 +0100 (CET)
To: Khem Raj <raj.khem@gmail.com>
References: <56BAE751.6080000@mlbassoc.com> <56BB66B5.7000401@windriver.com>
	<DF6400FC-9DE0-40FA-8247-9C2D4153A10E@gmail.com>
	<56BC02E0.3020200@mlbassoc.com> <56BD019A.8050605@windriver.com>
	<56BD4D4A.7070904@mlbassoc.com>
	<5F58602F-A6A2-40A6-AD2D-A463C007FFA8@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56BD564D.5020500@mlbassoc.com>
Date: Fri, 12 Feb 2016 04:49:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <5F58602F-A6A2-40A6-AD2D-A463C007FFA8@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Debugging shared libraries
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
X-List-Received-Date: Fri, 12 Feb 2016 03:49:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-02-12 04:18, Khem Raj wrote:
>
>> On Feb 11, 2016, at 7:11 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> On 2016-02-11 22:48, Mark Hatle wrote:
>>> On 2/10/16 9:41 PM, Gary Thomas wrote:
>>>> On 2016-02-10 21:08, Khem Raj wrote:
>>>>>
>>>>>> On Feb 10, 2016, at 8:35 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
>>>>>>
>>>>>> On 2/10/16 1:31 AM, Gary Thomas wrote:
>>>>>>> I'm trying to debug some code (mplayer) which uses some shared
>>>>>>> libraries from ffmpeg.  When I use GDB (via gdbserver), I don't
>>>>>>> get all the debug information I need - note that many of the shared
>>>>>>> libraries do not have any symbolic debugging info:
>>>>>>
>>>>>> Is your system using the the split debug binaries, and if so, do you have them
>>>>>> all installed on the system that GDB is running on?
>>>>>>
>>>>>> (When GDB starts, you should see it load the symbols, or error it can't find them.)
>>>>>>
>>>>>> Assuming you DO have the symbol files available, and some things are lacking
>>>>>> debuginfo, it's possible those recipes are not properly building with full
>>>>>> symbols (they should be, the whole system should be.)
>>>>>>
>>>>>> Easiest way to check is do a readelf/objdump on the .debug version of the
>>>>>> library and check that there are dwarf symbols present... if not, it's probably
>>>>>> a recipe error.
>>>>>>
>>>>>> --Mark
>>>>>>
>>>>>>> (gdb) info sharedlibrary
>>>>>>>   From        To          Syms Read   Shared Object Library
>>>>>>> 0xb6fcf800  0xb6feaf08  Yes         /tmp/p0382.img/lib/ld-linux-armhf.so.3
>>>>>>> 0xb6fa6fa8  0xb6fb2b40  Yes (*)     /tmp/p0382.img/lib/libtinfo.so.5
>>>>>>> 0xb6f6d210  0xb6f8c200  Yes         /tmp/p0382.img/usr/lib/libpng16.so.16
>>>>>>> 0xb6f488e8  0xb6f54a60  Yes         /tmp/p0382.img/lib/libz.so.1
>>>>>>> 0xb6f069f0  0xb6f34264  Yes         /tmp/p0382.img/usr/lib/libjpeg.so.8
>>>>>>> 0xb6edbaf0  0xb6eee29c  Yes         /tmp/p0382.img/usr/lib/libdvdread.so.4
>>>>>>> 0xb6eb6108  0xb6ec7ae8  Yes         /tmp/p0382.img/usr/lib/libass.so.4
>>>>>>> 0xb6e808b8  0xb6e95384  Yes         /tmp/p0382.img/usr/lib/libvorbis.so.0
>>>>>>> 0xb6e6b4b4  0xb6e6d7e4  Yes         /tmp/p0382.img/usr/lib/libogg.so.0
>>>>>>> 0xb6e48978  0xb6e55eb4  Yes         /tmp/p0382.img/usr/lib/libspeex.so.1
>>>>>>> 0xb6dfe818  0xb6e1b8b4  Yes (*)     /tmp/p0382.img/usr/lib/libfaad.so.2
>>>>>>> 0xb6d92df0  0xb6dd4e78  Yes (*)     /tmp/p0382.img/usr/lib/libavutil.so.54
>>>>>>> 0xb5de0640  0xb64a2e18  Yes (*)     /tmp/p0382.img/usr/lib/libavcodec.so.56
>>>>>>> 0xb5c17528  0xb5d65840  Yes (*)     /tmp/p0382.img/usr/lib/libavformat.so.56
>>>>>>> 0xb5b81688  0xb5be8db8  Yes (*)     /tmp/p0382.img/usr/lib/libswscale.so.3
>>>>>>> 0xb5b5f578  0xb5b6c718  Yes (*)     /tmp/p0382.img/usr/lib/libswresample.so.1
>>>>>>> 0xb5b44998  0xb5b4b490  Yes (*)     /tmp/p0382.img/usr/lib/libpostproc.so.53
>>>>>>> 0xb5b1f0e0  0xb5b2e194  Yes         /tmp/p0382.img/lib/libpthread.so.0
>>>>>>> 0xb5aa4c00  0xb5ad46d0  Yes         /tmp/p0382.img/lib/libm.so.6
>>>>>>> 0xb5a859ec  0xb5a8fc34  Yes         /tmp/p0382.img/usr/lib/libXext.so.6
>>>>>>> 0xb597b728  0xb59f92bc  Yes         /tmp/p0382.img/usr/lib/libX11.so.6
>>>>>>> 0xb5946fc8  0xb59573d0  Yes         /tmp/p0382.img/usr/lib/libtheoradec.so.1
>>>>>>> 0xb5887910  0xb591bbb8  Yes (*)     /tmp/p0382.img/usr/lib/libasound.so.2
>>>>>>> 0xb58579f8  0xb58586ac  Yes         /tmp/p0382.img/usr/lib/libXss.so.1
>>>>>>> 0xb5844ca0  0xb5846bac  Yes         /tmp/p0382.img/usr/lib/libXv.so.1
>>>>>>> 0xb57e7700  0xb58265e0  Yes         /tmp/p0382.img/usr/lib/libSDL-1.2.so.0
>>>>>>> 0xb56bae00  0xb57abb28  Yes         /tmp/p0382.img/lib/libc.so.6
>>>>>>> 0xb569292c  0xb5693724  Yes         /tmp/p0382.img/lib/libdl.so.2
>>>>>>> 0xb5650a70  0xb566e6a4  Yes         /tmp/p0382.img/usr/lib/libfontconfig.so.1
>>>>>>> 0xb561e324  0xb563951c  Yes         /tmp/p0382.img/usr/lib/libexpat.so.1
>>>>>>> 0xb559d36c  0xb55f5cb4  Yes         /tmp/p0382.img/usr/lib/libfreetype.so.6
>>>>>>> 0xb55622b0  0xb5567e84  Yes         /tmp/p0382.img/usr/lib/libenca.so.0
>>>>>>> 0xb541fbc0  0xb54b5a08  Yes (*)     /tmp/p0382.img/usr/lib/libx264.so.144
>>>>>>> 0xb53d4df0  0xb53fa0b0  Yes         /tmp/p0382.img/usr/lib/libtheoraenc.so.1
>>>>>>> 0xb53a72b0  0xb53bd258  Yes (*)     /tmp/p0382.img/usr/lib/liblzma.so.5
>>>>>>> 0xb5386050  0xb5392cc0  Yes (*)     /tmp/p0382.img/usr/lib/libbz2.so.0
>>>>>>> 0xb5367810  0xb5373b30  Yes         /tmp/p0382.img/usr/lib/libxcb.so.1
>>>>>>> 0xb534da00  0xb534e5a8  Yes         /tmp/p0382.img/usr/lib/libXau.so.6
>>>>>>> 0xb5339f80  0xb533b69c  Yes         /tmp/p0382.img/usr/lib/libXdmcp.so.6
>>>>>>> 0xb5323720  0xb5326ea0  Yes         /tmp/p0382.img/lib/librt.so.1
>>>>>>> 0xb530b6e0  0xb5311234  Yes         /tmp/p0382.img/usr/lib/libXrandr.so.2
>>>>>>> 0xb52f3530  0xb52f9060  Yes         /tmp/p0382.img/usr/lib/libXrender.so.1
>>>>>>> 0xb52d3160  0xb52e18a4  Yes         /tmp/p0382.img/lib/libgcc_s.so.1
>>>>>>> (*): Shared library is missing debugging information.
>>>>>>>
>>>>>>> Is this a function of how those libraries were built (by the recipe)
>>>>>>> or something else?  How can I get the symbolic debugging info enabled?
>>>>>>>
>>>>>>> Thanks for any pointers
>>>>>
>>>>>
>>>>> Usually it works well if you add
>>>>>
>>>>> EXTRA_IMAGE_FEATURES_append = “ dbg-pkgs”
>>>>>
>>>>> image size grows but you get good debug view on target.
>>>>>
>>>>> another option, I usually use is setup feeds
>>>>> and then
>>>>>
>>>>> opkg install <package>-dbg
>>>>>
>>>>> which pulls in a section of debug info needed to debug a given package.
>>>>>
>>>>
>>>> I've done all this already.  The problem is that for the libraries which
>>>> have no symbols there are no corresponding -dbg packages :-(  I looked
>>>> at the ffmpeg recipe (where the libswresample library I'm most interested
>>>> in comes from) and there is serious magic involved in the packaging.  I'm
>>>> pretty sure that's where the discrepancy lies...  Any help understanding
>>>> how to fix that would be appreciated.
>>>
>>> If the package is being built from source, I'd expect -dbg to be generated.. if
>>> it's not, we definitely should investigate.
>>
>> Definitely standard (OE-core) package, being built from sources.  No -dbg for
>> the libraries in question.
>>
>>>
>>> The intention has always been to generate -dbg for the core pieces..  External
>>> layers can disable it if they're packaging binaries or commercial, but that is
>>> different.
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9104
>>
>> As obvious from the list above, there are other packages with libraries that
>> have no -dbg as well.  This bug was filed against ffmpeg only, perhaps it should
>> be more generic…
>
>
> Can you check if the makery of this package is not respecting the CFLAGS passed from
> OE env ?

I gave the recipe a quick look and found the missing steps to build the -dbg packages.
I can now debug those libraries :-)

I'll send a patch to OE-core to fix this.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

