Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF48BE009A1; Tue,  9 Jun 2015 09:10:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 440D6E00982
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 09:10:25 -0700 (PDT)
Received: by lbcmx3 with SMTP id mx3so13898346lbc.1
	for <yocto@yoctoproject.org>; Tue, 09 Jun 2015 09:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=zkByxVLsxw+SBn9zr74si7JxrY6AWAMNhgHJ1wLplYw=;
	b=cFpI2RCuFzgH42pC4bfUxCMhbPbuI3darY5cOxQpzhOapTPrciJsKHEB53qsiIZ7fN
	sNm8JMUILR60+90m8halptNd2+4G5MOtVORcekv+QGs3Z1S59MYqBhHc1MMN6z+Es4qN
	fLpYhwywNL4cpp5BXpJ7xu3vY4K+VPBmkLnOizo6i5IVeqinJoWwWj6ilq2VdOJRRDy3
	2PsiqC9qE9YQjJW/lKiHqL7jATbQgQli3PoG1sIhpuzCqTVHFlAoncjsYd3f+M/PO0nL
	W84yARTzkXZqcixg+LWnn4GxKvX/w6nqU7SfVC8eyibiFgIrRSG9iCzaPAWJJHId4Sxl
	3FEg==
MIME-Version: 1.0
X-Received: by 10.112.170.167 with SMTP id an7mr23447561lbc.103.1433866224396; 
	Tue, 09 Jun 2015 09:10:24 -0700 (PDT)
Received: by 10.114.211.72 with HTTP; Tue, 9 Jun 2015 09:10:24 -0700 (PDT)
In-Reply-To: <CAGMdoFk5-8efJDZ17i_Oj6TQSTR9nOTPRqGqT1AB=kM_qepp8A@mail.gmail.com>
References: <CAGMdoFnO-ikosPoL8ZRn6QDYxp=re3Mp6CxpEKOVQAR8Hqn_4Q@mail.gmail.com>
	<CA+aJhH0RO8MTvXOt-F1x_YCTVmaPnsv6gf7hKU0Oqfoi4WVWjQ@mail.gmail.com>
	<CAGMdoFk5-8efJDZ17i_Oj6TQSTR9nOTPRqGqT1AB=kM_qepp8A@mail.gmail.com>
Date: Tue, 9 Jun 2015 09:10:24 -0700
Message-ID: <CAGMdoFkRy6GmnJ-BaXBPQzyQhy1t109hBwhyDmwM9Qum2-ZfLg@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Limit RAM for Linux
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
X-List-Received-Date: Tue, 09 Jun 2015 16:10:29 -0000
Content-Type: text/plain; charset=UTF-8

Typo in last email, I used "mem=256M", not "mem=256MB"

On Tue, Jun 9, 2015 at 9:03 AM, Edward Wingate <edwingate8@gmail.com> wrote:
> Thanks, Nathan, for your help. It worked, with a little oddity I don't
> understand.
>
> In my uEnv.txt, I set both fdt_high and initrd_high to 0x10000000 and
> fdt/initrd are now loaded to 1st 256 MB:
>    Loading Kernel Image ... OK
>    Loading Ramdisk to 0f44c000, end 0ffff2f2 ... OK
>    Loading Device Tree to 0f443000, end 0f44bf40 ... OK
>
> However, with bootarg "mem=256MB", the kernel doesn't boot.
> With "mem=257M", it does:
>
> /proc/iomem:
> 00000000-100fffff : System RAM
>    00008000-00584b03 : Kernel code
>    005b6000-0061d5df : Kernel data
>
> I'd be OK with this, but just want to understand why I can't specify
> mem=256M?  I could probably also lower initrd_high and fdt_high a bit
> more to make mem=256M work, but why would that be necessary?
>
> Also, in the device tree entry for memory, should I leave "reg = <0x0
> 0x20000000>" or change that to reflect 256MB?  Changing it to "reg =
> <0x0 0x10000000>" didn't seem to have any effect.  The mem bootarg
> seems to be the thing that actually works to limit the amount of
> memory Linux sees.
>
>
> On Mon, Jun 8, 2015 at 9:45 PM, Nathan Rossi <nathan@nathanrossi.com> wrote:
>> On Tue, Jun 9, 2015 at 4:06 AM, Edward Wingate <edwingate8@gmail.com> wrote:
>>
>> Those values are generated via u-boot based on the value of fdt_high
>> and initrd_high which are set in the u-boot environment. (At least for
>> Zynq)
>>
>> If you have a look at the default environment you will see them set to
>> 0x20000000:
>> http://git.denx.de/?p=u-boot.git;a=blob;f=include/configs/zynq-common.h;h=1a52e7d538261a9d36b078d61e00e60bf8918227;hb=HEAD#l217
>>
>> You can override those environment variables with your uEnv.txt file,
>> setting it to 0x10000000 will make sure they fdt/initrd is loaded into
>> the first 256M.
>>
>> Regards,
>> Nathan
>>

