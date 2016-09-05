Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B0E3E00E2C; Mon,  5 Sep 2016 06:00:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB08BE00E1D
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 06:00:21 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bgtVW-00031e-Fo
	for yocto@yoctoproject.org; Mon, 05 Sep 2016 15:00:14 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Pietro <pulsarpietro@posteo.net>
Date: Mon, 05 Sep 2016 13:00:32 +0000
Message-ID: <87wpiq8psf.fsf@posteo.net>
References: <871t0ya6co.fsf@posteo.net>
	<CAF3SDA44veF1YgepzyN0L-ntKGTr9Z4NwwMFGb4yw9XW_RNokw@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:mQnBOYYOSrn9WwU70s7t43uVdog=
Subject: Re: arm-*-linux-gnueabi : unrecognized option -Wl, -soname
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
X-List-Received-Date: Mon, 05 Sep 2016 13:00:26 -0000
Content-Type: text/plain

Well,

I am cross-compiling the gRPC using the Yocto build system, I have
created a recipe for a new package which generates the gRPC
library(ies).

The error comes from here *guess* :
ifeq ($(SYSTEM),Darwin)
     $(Q) $(LD) $(LDFLAGS) -L$(LIBDIR)/$(CONFIG) -install_name
     $(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT) -dynamiclib -o
     $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).$(SHARED_EXT)
     $(LIBGPR_OBJS) $(LDLIBS) $(ZLIB_MERGE_LIBS)
     else
        $(Q) $(LD) $(LDFLAGS) -L$(LIBDIR)/$(CONFIG) -shared
        -Wl,-soname,libgpr.so.1 -o
        $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).$(SHARED_EXT)
        $(LIBGPR_OBJS) $(LDLIBS) $(ZLIB_MERGE_LIBS)
                       $(Q) ln -sf
                       $(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT)
                       $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).so.1
                        $(Q) ln -sf
                        $(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT)
                        $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).so
                        endif

What's puzzles me is that the same source code builds without problem on
my machine (not cross compiled).

It might be a question for gRPC developers though

"Daniel." <danielhilst@gmail.com> writes:

> I *guess* that it should be -Wl,-soname=libgpr.so.1 intead of
> -Wl,-soname,libgpr.so.1. Now from where this flags are comming is a
> good question..
>
> 2016-09-05 9:17 GMT-03:00 Pietro <pulsarpietro@posteo.net>:
>>
>> Hi all,
>>
>> I want to cross compile the gRPC library for ARM and I am using the
>> Yocto build system.
>>
>> The build fails for the following error, which I am suspicious has
>> something to do with the compiler being used:
>>
>>
>> [LD]      Linking
>> /export/arm/xxx/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git/libs/opt/libgpr.so.1.0.0-pre1
>>
>> arm-phytec-linux-gnueabi-ld
>> : unrecognized option '
>> -Wl,-soname,libgpr.so.1
>>
>>
>> arm-phytec-linux-gnueabi-ld
>> : use the --help option for usage information
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> -- 
> "Do or do not. There is no try"
>   Yoda Master


