Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AAC0E00AE4; Wed,  2 May 2018 23:29:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EAAEE007C2
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 23:29:39 -0700 (PDT)
Received: by mail-lf0-f44.google.com with SMTP id g12-v6so24270805lfb.10
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 23:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DdBQUA1Z2iRG9DJ+OBXSBpaWwQlrDjqhMAfj0yOPqag=;
	b=uaIZg9rhHhAUR6+1KFlmzGhijZg27PJB0tbx2odTcSyU7j+8gLqFnqwNcMJfFPL54J
	0K9Ixh2hxpUVAu5PuStBeDTIaCQ7rjvrK/btqR7uwy8PyseFAGR8njSrYN9PpsEI6UbA
	aYjGs8bbJk5k/Y/REyYcoqgzQ+wD8FMiJoZNIVatqwGbB9553osnxLMCcD+sJbXI6AGr
	SHgqNsIIqA7KcV6Rtw173PUVx1yRz+lEYpEdMqTccPIsIqeuOqv20P85tj+eIXDkCv/6
	Fv+Z7mHM9ndc2/KpJ2Smuq0p90ITO3d2QNB77xj3I+/zPqo+8SNP8PA0e/JsO4ncfM6q
	6tCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DdBQUA1Z2iRG9DJ+OBXSBpaWwQlrDjqhMAfj0yOPqag=;
	b=j9qrFe9xuU8YFSqpAByiXA9rSMSPO0JkZI0F8KL2292/b681y/qiCV6UdV9ht6Dr98
	gIZ2+PA1c09H0OfDLnQLHjbesWKdIL7dqdB1OVYE/oZYpEj6NRu9rBA+mhbus7o21eLt
	YVMs9Apg2Dq5IhCKMuS1TZY3MXD/dZd8HFlKs/rYj4/jDolebKE31RIv/3xqgC2hDkv1
	a5r5Srh5dPyZMQ9wIC06mxDqqcilKaQauudlAMoC4W2pBGaLqk4X1ovR1F8o/K70rd0U
	W2BtyCplwFmciMhaRUfoT3nKbmvRuAFhJZnRaaAgxdOgeTXCyipyod+LYXysPfIAV/Va
	tbmg==
X-Gm-Message-State: ALQs6tAUXR77nhcTL9oahNnsuGGAvoHBBovxemITLG5wPjme/x50eDon
	MdG4yy33RMCyoG6CkkXqZKDoKga8br0sI5Z5X0mdsA==
X-Google-Smtp-Source: AB8JxZpbZMm50GFbIGGz3x/virr+38eeb7iibEqjQEOjLE9aU2ascPRvNQjKhtm4K1Me8fWRFXjk4aatUteDYqdTM1M=
X-Received: by 2002:a19:690e:: with SMTP id
	e14-v6mr13072452lfc.44.1525328978742; 
	Wed, 02 May 2018 23:29:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7309:0:0:0:0:0 with HTTP;
	Wed, 2 May 2018 23:29:38 -0700 (PDT)
In-Reply-To: <CADkTA4N_3gt_bpiijNdcPVy-HLYsa-fJy92xw4XY9Zp0yQ9DuA@mail.gmail.com>
References: <CABatt_wvpD240n7FZpr6Q+fCVqSii84XN+swdhs6Gjd2jLAogQ@mail.gmail.com>
	<CADkTA4N_3gt_bpiijNdcPVy-HLYsa-fJy92xw4XY9Zp0yQ9DuA@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Thu, 3 May 2018 07:29:38 +0100
Message-ID: <CABatt_xcd3YMqi-LfXwrU03LbAkjziXCYgnWvz+UbT099cHv-w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Can't compile out of tree kernel module when CONFIG_SYSTEM_TRUSTED_KEYRING is set in the kernel configuration
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
X-List-Received-Date: Thu, 03 May 2018 06:29:41 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Bruce,

On Thu, May 3, 2018 at 3:27 AM, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
>
> On Wed, May 2, 2018 at 5:05 PM, Martin Townsend <mtownsend1973@gmail.com>
> wrote:
>>
>> Hi,
>>
>> I get the following error when compiling a kernel module using the
>> latest version of Rocko (The kernel is not linux-yocto but NXP's
>> freescale linux-imx, maybe this could be a factor) :
>>
>> ERROR: kernel-module-driver-0.1-r0 do_make_scripts: Function failed:
>> do_make_scripts (log file is located at
>>
>> /ws/yocto-rocko/build/tmp/work/mach_1717-linux-gnueabi/kernel-module-driver/0.1-r0/temp/log.do_make_scripts.23703)
>> ERROR: Logfile of failure stored in:
>>
>> /ws/yocto-rocko/build/tmp/work/mach_1717-cwr-linux-gnueabi/kernel-module-driver/0.1-r0/temp/log.do_make_scripts.23703
>> Log data follows:
>> | DEBUG: Executing shell function do_make_scripts
>> | make: Entering directory
>> '/ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-source'
>> | make[1]: Entering directory
>>
>> '/ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-build-artifacts'
>> |   HOSTCC  scripts/extract-cert
>> |
>> /ws/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-source/scripts/extract-cert.c:21:25:
>> fatal error: openssl/bio.h: No such file or directory
>> | compilation terminated.
>> | scripts/Makefile.host:107: recipe for target 'scripts/extract-cert'
>> failed
>> | make[2]: *** [scripts/extract-cert] Error 1
>> |
>> /ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-source/Makefile:560:
>> recipe for target 'scripts' failed
>> |
>>
>> I checked the makefile and extract-cert is only compiled if
>> CONFIG_SYSTEM_TRUSTED_KEYRING is set which we have.
>>
>>  I could install libssl-dev but it doesn't feel right installing this
>> and it's not in the system requirements plus the file openssl/bio.h is
>> in the recipe-sysroot-native directory of the kernel module WORK_DIR.
>
>
> I've run into this plenty of times with newer kernels (4.14+), which is why
> all the linux-yocto recipes have:
>
> DEPENDS += "${@bb.utils.contains('ARCH', 'x86', 'elfutils-native', '', d)}"
> DEPENDS += "openssl-native util-linux-native"
>
> As does my re-worked kernel-devsrc.
>
> So yah, you can just add the dependency to fix the problem.
>
> Bruce
>

Thanks for the swift reply and I tried the suggestions but I'm afraid
the end result is still the same.

The actual kernel builds fine so I'll take a look at this to see if
there are any clues.  I'm guessing do_make_scripts needs tweaking for
an out of tree kernel module recipe to use the recipe_sysroot_native
directory somehow.

Cheers, Martin

>>
>>
>>
>> Any help would be greatly appreciated,
>> Marin.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at
> its end"

