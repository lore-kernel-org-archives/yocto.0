Return-Path: <joaohf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABAB2E0083A; Sun, 21 Dec 2014 14:57:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (joaohf[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0D72E004F2
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 14:57:45 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id hy4so1357868vcb.29
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 14:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=LZOl+X7vZurdGCcBghFLuIX73+Fq4G84BnrjpG0HvdY=;
	b=UzwCxs8yrbCgvz0Gqf2KARuMqOD/fMA4AXHC/fKP1Slj+sukjokQMykXpdvUKUmlqN
	9ogwLUMAbTSNSaO48D5VGlA6qEleXawm5wtMS9Zf8VfkMi+Qr6o6dl7itK0vxGIdkqDj
	JCw0Os3gPcEWrr4vIVQLetjVwI3WCAFlsKARZMYfytgZw5ayP7JI9fnvGY5QvOO7wpvm
	tv6U8II/L+hDWO3uTW3OnP4LGK/7wmyNmkCAYO9kbtFpHGZdYByKhviWjVdzPgkrFTUQ
	vkOHftIsJe0kzdWhG7O2BvuVR2ob4YCHwYNmyRLNX1fz/1T9MtOTuJVWo7JfBCFR6GEP
	145g==
X-Received: by 10.52.36.144 with SMTP id q16mr663186vdj.0.1419202665072;
	Sun, 21 Dec 2014 14:57:45 -0800 (PST)
Received: from [192.168.0.16] ([187.106.5.186])
	by mx.google.com with ESMTPSA id
	at12sm3558627vdc.15.2014.12.21.14.57.43 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 21 Dec 2014 14:57:44 -0800 (PST)
Message-ID: <54975065.1070704@gmail.com>
Date: Sun, 21 Dec 2014 20:57:41 -0200
From: =?windows-1252?Q?Jo=E3o_Henrique_Ferreira_de_Freitas?= <joaohf@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <8F90F944E50427428C60E12A34A309D239F6DB0EE8@carmd-exchmb01.sierrawireless.local>
	<CAAQYJAsgCWS+yoL7CusmKpPeVH5paAevOY8Jbo0JzzNgapFGJA@mail.gmail.com>
In-Reply-To: <CAAQYJAsgCWS+yoL7CusmKpPeVH5paAevOY8Jbo0JzzNgapFGJA@mail.gmail.com>
Subject: Re: Microcontroller Cross Compiler
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
X-List-Received-Date: Sun, 21 Dec 2014 22:57:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Hi,

I have the same requirement.

I will try it. But in my case I need to use this 
https://launchpad.net/gcc-arm-embedded.

There are some way to yocto creates the gcc-arm-embedded SDK? Instead of 
use the gcc-arm-embedded packages. Is it feasibly?

Thanks.


On 19/12/2014 11:21, Andrea Adami wrote:
> On Thu, Dec 18, 2014 at 8:09 PM, Darcy Watkins
> <dwatkins@sierrawireless.com> wrote:
>> Hello,
>>
>> In my target system I have a microcontroller (MCU) that handles some I/O, power supplies and system boot up to the point of taking the main CPU out of reset.  At present, we build the MCU firmware from source and then the binary file is packaged to be used as payload with an MCU firmware update utility.
>>
>> Now my main question...  does anyone have suggestions (or is there a 'yocto' way) to build such a cross compiler for the MCU so that it can be invoked to build MCU firmware from source as part of the bitbake build for the Linux target's image.  The idea would be to build MCU firmware image from source using the MCU cross compiler, but obviously to build drivers and utilities that run on the main CPU using the normal cross-compiler toolchains built under yocto.  Then I could package the payload firmware image along with utilities all as part of the same RPM package.
>>
>> The MCU cross compiler we use was originally generated using crosstool-ng, and is essentially a gcc cross compiler for 'bare metal' MCU target.
>>
>> Does anyone who has gone down this road have suggestions?
>>
>> Thanks in advance!
>>
>>
>> Regards,
>>
>> Darcy
>>
>> Darcy Watkins ::  Staff Engineer, Firmware
>>
>> SIERRA WIRELESS
>> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 1100
>> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>> [P2]
>> dwatkins@sierrawireless.com :: www.sierrawireless.com :: www.inmotiontechnology.com
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> Hi Darcy,
>
> if I understand correctly you use the standard toolchain for the
> target image and a custom $CC to build one custom binary.
>
> We use klcc for a couple of klibc-static-recipes thus we created a
> .bbclass to be inherited.
> See http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/classes/klibc.bbclass
>
> Regards
>
> Andrea


