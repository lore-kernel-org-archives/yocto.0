Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 914DDE00D03; Fri,  5 Aug 2016 01:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8437E00CFE
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 01:00:39 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id iw10so90719579pac.2
	for <yocto@yoctoproject.org>; Fri, 05 Aug 2016 01:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=yniM7QzGpfzm5cXJn+N/UUoPOcRGh0WmxBi3o0E/XnI=;
	b=mOuRlXW2uMgmPGTl40EQ1qsIQJIDQ8oMS4xFNzOkvUuDMjZ7P+vtJegPxV8KE/D+na
	Cqv0zZsu+8pJq3JuEplKQSj+Yn6LXVVBNvs9vzF6c5OX4DH11NSGYRS00f6wWz159b+O
	BQ5C9UhY3yz1TA9IWHG44IlV6yguosOIVFPVIxhS+1L2NVhYd5zm39l/5z1Hw0hBSP8p
	sPKmZy6MjGf+NKX5VSVAdsZuJpGBaqFae56q14o7PBVsVHcKHK9Tv7ZTtX5ILOhkIwz6
	+TbcvXqh47wkaHR1+mJLbNo9fuhUaHr5u3gabIkM4T3fK0/Pb3fpiRLhwOYt7rU6nCSv
	jrfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=yniM7QzGpfzm5cXJn+N/UUoPOcRGh0WmxBi3o0E/XnI=;
	b=UIvlZ8LyxZjC7Kk8381W8lhynFanclfC9X4CjBCGAJaQuIYwP85noYEorp/WEAOLt1
	eUeb6Bn0oboB9e0CQERlMMUhzL+zoC1fDOgoLMHiRm002hQTrQ+wH89dm98EIhESOCX/
	7IwyMuzGmsPmnWxtPH/n/s0atNo87Q18YBlGzGopEf7lxinFapq2zQOG4naSG0L/R4Lt
	XqEo7U7N5vJ0WyUNIIm3Y8GoMwwLranJJhQ2I0CXdHT+aELsoXOB9gLYnzlHALR+8h9g
	7Mp6hg50tpHDAh5n3IiUve47UoEgRS+gwvlLkRtFi/XcTQOudMDsd16MoMxzPHeoJ/Yb
	ZAXw==
X-Gm-Message-State: AEkooutB72qLbvntVV39QeKjj2DuUGiMQZ3SMbcIodLApJjOqiERCroBaYU3PoqtudQPKA==
X-Received: by 10.66.100.162 with SMTP id ez2mr108055918pab.123.1470384038174; 
	Fri, 05 Aug 2016 01:00:38 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:4ce8:4a2:83d6:3a55])
	by smtp.gmail.com with ESMTPSA id
	l191sm25563028pfc.91.2016.08.05.01.00.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Aug 2016 01:00:36 -0700 (PDT)
To: S.Jaritz@esa-grimma.de
References: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>
	<47ea7f13-1abc-f969-c928-1da2e0075b36@gmail.com>
	<OF66EF9F5A.E44F4404-ONC1258006.00282195-C1258006.0028AE4A@esa-grimma.de>
	<8bd3a89e-89c9-258e-1957-25373abb9e71@gmail.com>
	<OF857CF978.55289CE6-ONC1258006.002A1AD6-C1258006.002B4528@esa-grimma.de>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <d60ef8ed-fe99-2f06-ae97-754e2c4b563f@gmail.com>
Date: Fri, 5 Aug 2016 01:00:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <OF857CF978.55289CE6-ONC1258006.002A1AD6-C1258006.002B4528@esa-grimma.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: Antwort: Re: How to set the sysroot toolchain to hard float
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
X-List-Received-Date: Fri, 05 Aug 2016 08:00:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 8/5/16 12:52 AM, S.Jaritz@esa-grimma.de wrote:
> I read the printings like you and I am confused.
> let's take valgrind as example:
> 1.) the rootfs build goes to:
> /poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/valgrind/3.11.0-r0/deploy-debs/cortexa5hf-vfp/valgrind_3.11.0-r0_armhf.deb
> 
> 
> the extension of the deb package say it its hard float.
> 
> 2.) I transfer it to my device
> 
> 3.) console at the evalboard
> #############
> root@sama5d3xek:/tmp# dpkg -r valgrind
> (Reading database ... 14780 files and directories currently installed.)
> Removing valgrind:armhf (3.11.0-r0) ...
> root@sama5d3xek:/tmp# dpkg -i valgrind_3.11.0-r0_armhf.deb
> dpkg: error processing archive valgrind_3.11.0-r0_armhf.deb (--install):
>  package architecture (armhf) does not match system (armel)

can you force it using dpkg -i --force-architecture and see if the
installed package works ? if it does then its the dpkg package arches
which aren't correct.

> Errors were encountered while processing:
>  valgrind_3.11.0-r0_armhf.deb
> root@sama5d3xek:/tmp#
> #############
> 
> I got the information from here(hope it works):
> https://books.google.de/books?id=yNi6BwAAQBAJ&pg=PA148&lpg=PA148&dq=yocto+set+floating+point&source=bl&ots=HXh65nWpHc&sig=4UElzv4dz70xECsqw5lnCYuUZiI&hl=de&sa=X&ved=0ahUKEwjOhrib2KnOAhVB1RQKHbXkAPAQ6AEIQDAE#v=onepage&q=yocto%20set%20floating%20point&f=false
> 
> 
> Maybe the deb generation has a bug?
> 
> 
> Stefan Jaritz
> 
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
> 
> 
> Geschäftsführer:
> Dipl.-Ing. Jörg Gaitzsch
> Jörg Reinker
> 
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
> 
> 
> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrtümlich
> erhalten
> haben, informieren Sie bitte sofort den Absender und löschen Sie diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
> 
> This e-mail may contain confidential and/or privileged information. If
> you are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> 
> 
> 
> Von:        Khem Raj <raj.khem@gmail.com>
> An:        S.Jaritz@esa-grimma.de
> Kopie:        Yocto Project <yocto@yoctoproject.org>
> Datum:        05.08.2016 09:27
> Betreff:        Re: Antwort: Re: [yocto] How to set the sysroot
> toolchain to hard float
> ------------------------------------------------------------------------
> 
> 
> 
> 
> 
> On 8/5/16 12:24 AM, S.Jaritz@esa-grimma.de wrote:
>> hej
>>
>> @find out:
>> transfer a build package into the evalboard and try to install it. I am
>> using deb packages. dpkg gives me an error  because of architecture.
>>
>> @print configuration output:
>> ###########
>> Build Configuration:
>> BB_VERSION        = "1.30.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "universal"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "sama5d3xek"
>> DISTRO            = "poky-atmel"
>> DISTRO_VERSION    = "2.1.1"
>> TUNE_FEATURES     = "arm armv7a vfp thumb            callconvention-hard
> 
> here it is marking that your build is using hard-float. are you running
> image from same build on the target ? or is it some prebuilt image that
> you are trying to add on to ?
> 
>>            cortexa5"
>> TARGET_FPU        = "hard"
>> meta              
>> meta-poky        
>> meta-yocto-bsp    = "krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab"
>> meta-atmel        = "krogoth:784a6a7fe94e6939325f60f4dd2cc24987ff090d"
>> meta-skeleton     = "krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab"
>> meta-oe          
>> meta-networking  
>> meta-python       = "krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
>> ###########
>>
>> @TOOLCHAIN_OPTIONS: Where these are set in custom layers(like meta-atmel)?
>>
>> regards
>>
>> Stefan Jaritz
>>
>> ------------------------------------------------------------
>> ESA Elektroschaltanlagen Grimma GmbH
>> Broner Ring 30
>> 04668 Grimma
>> Telefon: +49 3437 9211 176
>> Telefax: +49 3437 9211 26
>> E-Mail: s.jaritz@esa-grimma.de
>> Internet: www.esa-grimma.de
>>
>>
>> Geschäftsführer:
>> Dipl.-Ing. Jörg Gaitzsch
>> Jörg Reinker
>>
>> Sitz der Gesellschaft: Grimma
>> Ust.-ID: DE 141784437
>> Amtsgericht: Leipzig, HRB 5159
>> Steuernummer: 238/108/00755
>>
>>
>> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
>> Informationen.
>> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrtümlich
>> erhalten
>> haben, informieren Sie bitte sofort den Absender und löschen Sie diese
>> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
>> Mail
>> ist nicht gestattet.
>>
>> This e-mail may contain confidential and/or privileged information. If
>> you are
>> not the intended recipient (or have received this e-mail in error) please
>> notify the sender immediately and destroy this e-mail. Any unauthorized
>> copying, disclosure or distribution of the material in this e-mail is
>> strictly
>> forbidden.
>>
>>
>>
>> Von:        Khem Raj <raj.khem@gmail.com>
>> An:        S.Jaritz@esa-grimma.de, Yocto Project <yocto@yoctoproject.org>
>> Datum:        05.08.2016 09:16
>> Betreff:        Re: [yocto] How to set the sysroot toolchain to hard float
>> ------------------------------------------------------------------------
>>
>>
>>
>>
>>
>> On 8/5/16 12:04 AM, S.Jaritz@esa-grimma.de wrote:
>>> Hej
>>>
>>> I am building for the Atmel Evalbaord SAMA5D3x a Yocto Image. It works
>>> fine, but sysroot toolchain is set to soft float instead of hard float.
>>> How can I set the sysroot toolchain to hard float?
>>>
>>> My actual configuration:
>>> 1.) use meta-atmel layer
>>> 2.) in /build/conf/layer.conf -> MACHINE ??= "sama5d3xek"
>>>
>>> @meta-atmel:
>>> /conf/machine/sama5d3xek.conf includes sama5d3.inc
>>> in this file:
>>> SOC_FAMILY = "sama5:sama5d3"
>>> DEFAULTTUNE = "cortexa5thf"
>>>
>>> I am not understanding why for the sysroot the default tune is not used.
>>> Any ideas are welcome.
>>
>> How did you find that out ? can you send your build configuration output
>> that bitbake prints when starting the build ?
>> secondly, TOOLCHAIN_OPTIONS is what decides this ABI
>> so when you use CC and CXX and friends, the right thing happens since it
>> will be appending TOOLCHAIN_OPTIONS to these vars. but if you use bare
>> cross compiler that will default to soft-float
>>
>>>
>>>
>>> Regards!
>>>
>>> Stefan Jaritz
>>> ------------------------------------------------------------
>>> ESA Elektroschaltanlagen Grimma GmbH
>>> Broner Ring 30
>>> 04668 Grimma
>>> Telefon: +49 3437 9211 176
>>> Telefax: +49 3437 9211 26
>>> E-Mail: s.jaritz@esa-grimma.de
>>> Internet: www.esa-grimma.de
>>>
>>>
>>> Geschäftsführer:
>>> Dipl.-Ing. Jörg Gaitzsch
>>> Jörg Reinker
>>>
>>> Sitz der Gesellschaft: Grimma
>>> Ust.-ID: DE 141784437
>>> Amtsgericht: Leipzig, HRB 5159
>>> Steuernummer: 238/108/00755
>>>
>>>
>>> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
>>> Informationen.
>>> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrtümlich
>>> erhalten
>>> haben, informieren Sie bitte sofort den Absender und löschen Sie diese
>>> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
>>> Mail
>>> ist nicht gestattet.
>>>
>>> This e-mail may contain confidential and/or privileged information. If
>>> you are
>>> not the intended recipient (or have received this e-mail in error) please
>>> notify the sender immediately and destroy this e-mail. Any unauthorized
>>> copying, disclosure or distribution of the material in this e-mail is
>>> strictly
>>> forbidden.
>>>
>>>
>>
> 

