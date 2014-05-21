Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D72A1E00B85; Wed, 21 May 2014 11:56:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.chez-thomas.org (unknown [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 970D6E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 11:56:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 4D43FF811EF; Wed, 21 May 2014 12:56:50 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AC398F8119A;
	Wed, 21 May 2014 12:56:48 -0600 (MDT)
Message-ID: <537CF707.4060506@mlbassoc.com>
Date: Wed, 21 May 2014 12:57:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>
In-Reply-To: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>
Subject: Re: meta-mono core-image-mono failing
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
X-List-Received-Date: Wed, 21 May 2014 18:56:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-21 12:25, Chris Morgan wrote:
> Hello.
>
> I'm trying to build core-image-mono for the bbb. Layers configuration:
>
> Build Configuration:
> BB_VERSION        = "1.23.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-20"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beaglebone"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.6+snapshot-20140521"
> TUNE_FEATURES     = "arm armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta              = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
> meta-bbb          = "master:8318556523a747b7e9c97326bef14922a154e8a2"
> common-bsp        =
> "(detachedfrome7dc54e):e7dc54e66f4b5c2982a30bef5c67d734e9c759f5"
> meta-yocto
> meta-yocto-bsp    = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
> meta-mono         = "master:e2d2b8a518403a255822022c9e15f116c91b5dd1"
>
> This is basically master of Poky and meta-mono.
>
>
> | DEBUG: Executing shell function do_configure
> | grep: configure.in: No such file or directory
> | /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
> line 125: mono/mini/Makefile.am: No such file or directory
> | /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
> line 126: mono/metadata/Makefile.am: No such file or directory
> | Running aclocal -I m4 -I .  ...
> | aclocal: error: 'configure.ac' is required
> |
> | **Error**: aclocal failed. This may mean that you have not
> | installed all of the packages you need, or you may need to
> | set ACLOCAL_FLAGS to include "-I $prefix/share/aclocal"
> | for the prefix where you installed the packages whose
> | macros were not found
> | NOTE: mono-native failed to autogen.sh
> | sed: can't read acinclude.m4: No such file or directory
> | WARNING: /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/run.do_configure.24402:1
> exit 2 from
> |   sed -e "s|slash\}libtool|slash\}x86_64-linux-libtool|" -i acinclude.m4
> | ERROR: Function failed: do_configure (log file is located at
> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/log.do_configure.24402)
> ERROR: Task 687
> (/home/cmorgan/projects/yocto_poky/meta-mono/recipes-mono/mono/mono-native_3.4.0.bb,
> do_configure) failed with exit code '1'
>
>
> It looks like the issue is due to autogen.sh assuming several files
> are located in the current working directory, for instance on lines
> 102, 129 and 130 of autogen.sh there is no use of the $srcdir variable
> before files like configure.in or mono/metadata/Makefile.am.in etc.
>
> Not sure if something has changed on the yocto side to change this
> assumption about where autogen.sh is being run from.

Look at your recipe(s).  The simple way to fix this is to change
'inherit autotools' to 'inherit autotools-brokensep'

You could also look at the recipe more deeply and figure out
where it assumes that ${S} == ${B} because of a recent change
in OE-core, this is no longer true when you inherit autotools.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

