Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DEE1E00CA6; Wed, 23 Aug 2017 14:51:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1C7DE00C01
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 14:51:58 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id 83so5886207pgb.3
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 14:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=lJNUFAXEV4nwfRuRgqK7WeTVdxlIv2cQUJTLw8p7pz0=;
	b=roMgXXJ0xsatdTGYV/u8GYnlbRV9euHHfS7aI74NNqqejPlSTjnbpOLGsQCk/oagDH
	QKa3G7vxNX/pnKFRChkesPxzOI84/HfSG9qonW8KCsfZrGCc783RZUH5MBd6dYCC8uNt
	YNgppJVSDRk8rsVogtQusRRNYT7xS97C5CfpHNfAKPyaqNjGgIB0ACpFlmy16QEehMKf
	KGZrLrHRj81hDu+JPeMyfOdJoEsf8elAjS2z0wI99Qwlc+ql0EWMegC4IWBOKmcM/VU4
	E+5aV9xt3XtEiDa+9iylSv6lnrAsA+dWqqrSWspD/tQmUa3P7BN2ujjP8wA0Kuprn5e0
	Tl2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=lJNUFAXEV4nwfRuRgqK7WeTVdxlIv2cQUJTLw8p7pz0=;
	b=t/c7GNjCx/b468R3G3g1pn7HYqxTZnFtMftLfpdPGiPJuSXaqXopZm5qG26xY3dGta
	bANBam+o0qBc+ggQAR1uJhaNSsufQBWde+GifNnlfQ7B0ehQ1uJUrql/NJeZ3R8DHi5N
	nkB+Fn+Ei+j53+PF8HkGBs+69Blel6u87yjehMRCEMI6wWBuf3wJIFrLcfkq6UEL+4ir
	ZTlN18eKBB7+7Q23KLSjBI4I5KQ89FGIYu3SJetyQsdP61rvq6zMVxjf1KqzLHRXiTOu
	itYV2dcdDjZxuKdGpgAkG6BC+IqAeF6N4M04BDjgnAyxDRJLRwKvLXxBH2SwUHnNhPcC
	x1BQ==
X-Gm-Message-State: AHYfb5jzEIy9WCW2sFeuTHGQ0Mr0ol9QwbaM4ZgiNBOlhdekfSw04l+V
	uRNbU6aYZVVlbVHazPk=
X-Received: by 10.84.232.66 with SMTP id f2mr4559034pln.441.1503525117268;
	Wed, 23 Aug 2017 14:51:57 -0700 (PDT)
Received: from Khems-MacBook-Pro.local ([2601:646:8882:b8c:45b0:e88:81ba:c994])
	by smtp.gmail.com with ESMTPSA id
	h192sm3731600pgc.20.2017.08.23.14.51.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Aug 2017 14:51:56 -0700 (PDT)
To: Ferry Toth <ftoth@telfort.nl>, yocto@yoctoproject.org
References: <onj82v$64m$1@blaine.gmane.org>
	<7b1dbafb-9cdb-c64b-aed7-37f6b26d8b50@gmail.com>
	<onkni5$c4n$1@blaine.gmane.org> <onks4d$r7b$1@blaine.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e516cd1c-786a-18f5-7ea6-09da77514d7c@gmail.com>
Date: Wed, 23 Aug 2017 14:51:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:56.0)
	Gecko/20100101 Thunderbird/56.0
MIME-Version: 1.0
In-Reply-To: <onks4d$r7b$1@blaine.gmane.org>
Subject: Re: Problems building U-Boot for x86_64
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
X-List-Received-Date: Wed, 23 Aug 2017 21:51:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 8/23/17 2:29 PM, Ferry Toth wrote:
> Ferry Toth wrote:
> 
>> Khem Raj wrote:
>>
>>> On 8/22/17 11:41 PM, Ferry Toth wrote:
>>>> I am having trouble building a specific U-Boot version with Yocto.
>>>> Outside of Yocto on 64 bit Ubuntu 17.04 with multilib it builds fine.
>>>>
>>>> I am extending meta-intel-edison to build a 64 bit Poke Morty, with a
>>>> vanilla 64-bit kernel (4.12). This is working quite well.
>>>>
>>>> My host is x86_64, the target is core2 with tune=core-64.
>>>>
>>>> Without 64bit tune I can build U-Boot fine. With 64bit it can not link,
>>>> appearently because it needs lbgcc.a
>>>
>>> what is exact error message ? is it while compiling host bits or target
>>> bits ?
>>
>> The failing line is:
>> x86_64-poky-linux-ld.bfd -Bsymbolic -Bsymbolic-functions -m elf_i386
>> --emit- relocs --wrap=__divdi3 --wrap=__udivdi3 --wrap=__moddi3
>> --wrap=__umoddi3 -- gc-sections -pie -Bstatic --no-dynamic-linker -Ttext
>> 0x01101000 -o u-boot -T u-boot.lds arch/x86/cpu/start.o --start-group
>> arch/x86/cpu/built-in.o arch/x86/lib/built-in.o
>> board/intel/edison/built-in.o cmd/built-in.o common/built-in.o
>> disk/built-in.o drivers/built-in.o drivers/dma/built-in.o
>> drivers/gpio/built-in.o drivers/i2c/built-in.o drivers/mmc/built-in.o
>> drivers/mtd/built-in.o drivers/mtd/onenand/built-in.o
>> drivers/mtd/spi/built- in.o drivers/net/built-in.o
>> drivers/net/phy/built-in.o drivers/pci/built- in.o
>> drivers/power/built-in.o drivers/power/battery/built-in.o
>> drivers/power/domain/built-in.o drivers/power/fuel_gauge/built-in.o
>> drivers/power/mfd/built-in.o drivers/power/pmic/built-in.o
>> drivers/power/regulator/built-in.o drivers/serial/built-in.o
>> drivers/spi/built-in.o drivers/usb/common/built-in.o
>> drivers/usb/dwc3/built- in.o drivers/usb/emul/built-in.o
>> drivers/usb/eth/built-in.o drivers/usb/gadget/built-in.o
>> drivers/usb/gadget/udc/built-in.o drivers/usb/host/built-in.o
>> drivers/usb/musb-new/built-in.o drivers/usb/musb/built-in.o
>> drivers/usb/phy/built-in.o drivers/usb/ulpi/built-in.o dts/built-in.o
>> fs/built-in.o lib/built-in.o net/built-in.o test/built-in.o
>> test/dm/built-in.o --end-group arch/x86/lib/lib.a -Map u-boot.map ERROR:
>> oe_runmake failed arch/x86/lib/built-in.o: In function `__wrap___udivdi3':
>> /home/ferry/tmp/edison-intel/my/edison-
>> morty/out/linux64/build/tmp/work/edison-poky-linux/u-boot/edison-v2017.03-
>> r0/git/arch/x86/lib/gcc.c:25: undefined reference to `__normal___udivdi3'
> 
> I as believe the missing lib is libgcc.a I just my sysroot and found it 
> here:

the linker cmdline above does not link with libgcc and there might be a
good reason for that, many standalone applications dont link with libgcc
intentionally. You could look into the code and see if it can be written
differently such that gcc does not have to invoke a helper function from
gcc runtime. Another option is to link with libgcc explicitly

> sysroots/lib32-edison/usr/lib/i686-pokymllib32-linux/6.2.0/
> sysroots/lib32-edison-tcbootstrap/usr/lib/i686-pokymllib32-linux/6.2.0/
> sysroots/edison/usr/lib64/x86_64-poky-linux/6.2.0/
> sysroots/edison-tcbootstrap/usr/lib64/x86_64-poky-linux/6.2.0/
> 
> How compile log shows:
> NOTE: make 
> -j8 CROSS_COMPILE=x86_64-poky-linux- CC=x86_64-poky-linux-gcc  
> --sysroot=/..../sysroots/edison 
> V=1 
> HOSTCC=gcc  
> -isystem/..../sysroots/x86_64-linux/usr/include 
> -O2 -pipe 
> -L/..../sysroots/x86_64-linux/usr/lib 
> -L/..../sysroots/x86_64-linux/lib 
> -Wl,-rpath-link,/..../sysroots/x86_64-linux/usr/lib 
> -Wl,-rpath-link,/..../sysroots/x86_64-linux/lib 
> -Wl,-rpath,/..../sysroots/x86_64-linux/usr/lib 
> -Wl,-rpath,/..../sysroots/x86_64-linux/lib 
> -Wl,-O1 
> -C /..../out/linux64/build/tmp/work/edison-poky-linux/u-boot/edison-
> v2017.03-r0/git O=/..../out/linux64/build/tmp/work/edison-poky-linux/u-
> boot/edison-v2017.03-r0/build edison_defconfig
> 
> (.... my edits to shorten the uninteresting part of the path)
> 
> I would think: --sysroot points to /edison dir which actually contains 
> libgcc.a, but -i, _l and -W1 options point to host dirs that don't have the 
> lib.
> 
>>>>
>>>> I attempted to add multilib, but although that immediately exposed bugs
>>>> in other recipes but actually adds libgcc.a, it does that for the target
>>>> sysroot only.
>>>>
>>>> And for some reason, U-Boot is built with the native gcc (x86_64-linux),
>>>> and multilib does not add libgcc.a to that sysroot.
>>>>
>>>> So, how do I add multilib to -native sysroot, preferably only to -native
>>>> and not to the target, as the target has not further use for it?
>>>>
>>>> Strangest thing is in u-boot.inc there is:
>>>> EXTRA_OEMAKE = 'CROSS_COMPILE=${TARGET_PREFIX} CC="${TARGET_PREFIX}gcc
>>>> ${TOOLCHAIN_OPTIONS}" V=1'
>>>> EXTRA_OEMAKE += 'HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}"'
>>>>
>>>> But when I check my log file:
>>>> NOTE: make -j8 CROSS_COMPILE=x86_64-poky-linux- CC=x86_64-poky-linux-
>>>> gcc  ......
>>>>
>>>> So TARGET_PREFIX resolves to x86_64-poky-linux, but I think my target is
>>>> core2_64 (or something like that). Is that normal for U-Boot?
>>>
>>> thats ok.
>>>
>>>>
>>>> I am a little lost, so any help would be greatly appreciated!
>>>>
>>>> Ferry
>>>>
>>>
>>> --
>>
>>
>> --

