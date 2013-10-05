Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35832E01661
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 21:45:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r954j6Lj003474
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 Oct 2013 21:45:06 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.91) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Fri, 4 Oct 2013 21:45:06 -0700
Message-ID: <524F9951.5010806@windriver.com>
Date: Sat, 5 Oct 2013 00:45:05 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Parker Mackenzie <wparkermackenzie@live.com>
References: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>
	<524DD3BC.7080505@windriver.com>
	<BLU169-W86EB6DD276E984A3F87FAFB2100@phx.gbl>
	<524E1183.6020907@windriver.com>
	<CAFyqS9odzK7gxJOffd_+R6e+581Ha4O+ZBKLSiboxZYoKSOn9g@mail.gmail.com>
	<BLU401-EAS22816E1B185692DCDEC3926B2100@phx.gbl>,
	<524EB77C.9090703@windriver.com>
	<BLU169-W12FA95B48C2052097CC9A1B2100@phx.gbl>
In-Reply-To: <BLU169-W12FA95B48C2052097CC9A1B2100@phx.gbl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cross Compile Kernel Modules
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
X-List-Received-Date: Sat, 05 Oct 2013 04:45:11 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-10-04 5:06 PM, Parker Mackenzie wrote:
> Bruce, No problem... you got me on the right path.
>
> Bitbake now completes successfully after adding python-core and bash to IMAGE_INSTALL_append.
>
>
>
> Looking again at the presentation it indicated I also needed to do the following:
> make oldconfig ARCH=arm
>   - This completed successfully
>
> make scripts ARCH=arm
>   - This fails with the following errors:
>
> [parker@jasper kernel]$ make scripts ARCH=arm
> scripts/kconfig/conf --silentoldconfig Kconfig
>    CC      scripts/mod/empty.o
> gcc: error: unrecognized command line option ‘-mlittle-endian’
> gcc: error: unrecognized command line option ‘-mapcs’
> gcc: error: unrecognized command line option ‘-mno-sched-prolog’
> gcc: error: unrecognized argument in option ‘-mabi=aapcs-linux’
> gcc: note: valid arguments to ‘-mabi=’ are: ms sysv
> gcc: error: unrecognized command line option ‘-mno-thumb-interwork’
> make[2]: *** [scripts/mod/empty.o] Error 1
> make[1]: *** [scripts/mod] Error 2
> make: *** [scripts] Error 2
>
> The cross compiler seems to be correct...:
> [parker@jasper kernel]$ echo $CC
> arm-poky-linux-gnueabi-gcc -march=armv7-a -mthumb-interwork -mfloat-abi=softfp -mfpu=neon --sysroot=/home/parker/Projects/beagleboard/yocto/poky-dylan-9.0.2/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
>

But for the scripts, you won't be using the cross compiler, they are
native to your arch.

Check your environment, are CC and CFLAGS set ? How exactly are you
invoking that command (i.e. from where, just a shell in the kernel
source directory?). If non native flags and compiler is leaking into
the build, you'll get exactly the error that you are seeing.

 From the error, looks like the native gcc was used, and it was fed
the ARM flags. Not what it'll like :)

Cheers,

Bruce

>
> Trying to build this on:
> Linux jasper 3.9.10-100.fc17.x86_64 #1 SMP Sun Jul 14 01:31:27 UTC 2013 x86_64 x86_64 x86_64 GNU/Linux
>
>
>
>
>
>
>>
>> Right! I typed in "python" from memory :) In fact, what I typically have is
>> a full set of python dependencies, including python-dev, which picks
>> up what I need.
>>
>> Cheers,
>>
>> Bruce
>> 		 	   		
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


