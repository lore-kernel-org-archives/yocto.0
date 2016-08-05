Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9596DE00DD1; Fri,  5 Aug 2016 00:27:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9F1AE00CFE
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 00:27:26 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id h186so19633327pfg.2
	for <yocto@yoctoproject.org>; Fri, 05 Aug 2016 00:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=+6e9Hn68D/WaovJyylAm0PteEfjqVear5VgUoysGIu0=;
	b=X52bYg1hbBn32kl37flQ1FvGNGzNP3wpPPGprKAF0kOihvKaveLfap38NHfKx2gwUt
	OQYVBLwEmid23qkrHJi1g/4wSvq2e2pLYQZleGFRrjsxSN6+u7AUIAqjEDzOodHzL5HT
	s5N/wJMKpYbRYyPwGO2y43ZN20P+SIgSsPNuZ0ZFO3AomvDGP5hly2Xz2t48cm5Y43/8
	RTlR9L9fBVJcn624v2mWDRRDZqqDeAfG/O6qDXdkrTdmHzu21VwlVc0FbRY1wmA5VKZx
	vw/WrXIfHW2TUkXF8gXceUtVV/xFj65GCF6+ZfmGs9res5QZjHDyjhu/9POr7LLFgFPy
	YOQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=+6e9Hn68D/WaovJyylAm0PteEfjqVear5VgUoysGIu0=;
	b=FwYxTF14sNcgjasvmEWNNk3HoWFYvAMg8lthzPIvavet+1Sr0DAprBkZt4Ydg7JE7r
	KU2PnEZupcvqYaqfUgcLPmULk51Auj++Ut6zPjsKLm/MK2nb4QyKjxKev7512l+h+pQs
	dkR1Mv517ipx1MrunQN7CYLl9wPSTqMaN96ABe1k80O8x7HpCvqPCSiq4YsrFe/fZW/B
	GnGgWVKCwsAES96Z9e8vUxIbMlqICB/SaRAmwmwwTYX0QmjehoaGTx578GMhWcjItHKE
	N1344ZQzQcSRN7rFnlTSlyPcKgj+lyq/TEKassvJBuWUdQr/GeZ2aD/FJyePKge4Kf4I
	NWXA==
X-Gm-Message-State: AEkoouv5VxHJRfbqklIyaInYR/vRpUWJ426ExLpO6g49r/OncFRsRF1cdRW7n2IUArNt4Q==
X-Received: by 10.98.159.73 with SMTP id g70mr58662730pfe.121.1470382044441;
	Fri, 05 Aug 2016 00:27:24 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:4ce8:4a2:83d6:3a55])
	by smtp.gmail.com with ESMTPSA id
	k29sm25312169pfb.2.2016.08.05.00.27.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Aug 2016 00:27:23 -0700 (PDT)
To: S.Jaritz@esa-grimma.de
References: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>
	<47ea7f13-1abc-f969-c928-1da2e0075b36@gmail.com>
	<OF66EF9F5A.E44F4404-ONC1258006.00282195-C1258006.0028AE4A@esa-grimma.de>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <8bd3a89e-89c9-258e-1957-25373abb9e71@gmail.com>
Date: Fri, 5 Aug 2016 00:27:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <OF66EF9F5A.E44F4404-ONC1258006.00282195-C1258006.0028AE4A@esa-grimma.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: How to set the sysroot toolchain to hard float
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
X-List-Received-Date: Fri, 05 Aug 2016 07:27:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 8/5/16 12:24 AM, S.Jaritz@esa-grimma.de wrote:
> hej
> 
> @find out:
> transfer a build package into the evalboard and try to install it. I am
> using deb packages. dpkg gives me an error  because of architecture.
> 
> @print configuration output:
> ###########
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "sama5d3xek"
> DISTRO            = "poky-atmel"
> DISTRO_VERSION    = "2.1.1"
> TUNE_FEATURES     = "arm armv7a vfp thumb            callconvention-hard

here it is marking that your build is using hard-float. are you running
image from same build on the target ? or is it some prebuilt image that
you are trying to add on to ?

>            cortexa5"
> TARGET_FPU        = "hard"
> meta              
> meta-poky        
> meta-yocto-bsp    = "krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab"
> meta-atmel        = "krogoth:784a6a7fe94e6939325f60f4dd2cc24987ff090d"
> meta-skeleton     = "krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab"
> meta-oe          
> meta-networking  
> meta-python       = "krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
> ###########
> 
> @TOOLCHAIN_OPTIONS: Where these are set in custom layers(like meta-atmel)?
> 
> regards
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
> An:        S.Jaritz@esa-grimma.de, Yocto Project <yocto@yoctoproject.org>
> Datum:        05.08.2016 09:16
> Betreff:        Re: [yocto] How to set the sysroot toolchain to hard float
> ------------------------------------------------------------------------
> 
> 
> 
> 
> 
> On 8/5/16 12:04 AM, S.Jaritz@esa-grimma.de wrote:
>> Hej
>>
>> I am building for the Atmel Evalbaord SAMA5D3x a Yocto Image. It works
>> fine, but sysroot toolchain is set to soft float instead of hard float.
>> How can I set the sysroot toolchain to hard float?
>>
>> My actual configuration:
>> 1.) use meta-atmel layer
>> 2.) in /build/conf/layer.conf -> MACHINE ??= "sama5d3xek"
>>
>> @meta-atmel:
>> /conf/machine/sama5d3xek.conf includes sama5d3.inc
>> in this file:
>> SOC_FAMILY = "sama5:sama5d3"
>> DEFAULTTUNE = "cortexa5thf"
>>
>> I am not understanding why for the sysroot the default tune is not used.
>> Any ideas are welcome.
> 
> How did you find that out ? can you send your build configuration output
> that bitbake prints when starting the build ?
> secondly, TOOLCHAIN_OPTIONS is what decides this ABI
> so when you use CC and CXX and friends, the right thing happens since it
> will be appending TOOLCHAIN_OPTIONS to these vars. but if you use bare
> cross compiler that will default to soft-float
> 
>>
>>
>> Regards!
>>
>> Stefan Jaritz
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
> 

