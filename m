Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC41AE00C31; Thu, 22 Nov 2018 07:49:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ajlennon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4EE2E00C15
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 07:49:55 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id v13so6242006wrw.5
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 07:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=6ICYQ/mTVQrspsYzn2M8GTuMw+0UtcCC+AKXsudvFic=;
	b=shOapFmyaS/6tlw3C1X7+0iMj9bQxrolmXXCWKFPG8BPB4JR/Mm2yUsaEVhKyiTgI5
	DTYebpAd1Nsc9GyZVwTwogpU7zU6zjatOD2gSDzFG9vhTWbK0j2IskKoLpW3HknqbZef
	U+NTTD51fPPGwkHe/xc49t1z6+jxm00vcZ0knOHyV9vG4YJuC59FCOSRdxH3Bv5Kl3IC
	jJXYN0NGF0nViM6koNgBeCHLVFNncw4WZUwAH26AtEWIwCq54u33E5twiXWZt2GER2Mx
	EtAbUxUlOgLZCIlHXW31IIwT5Kdwq5OKaG1X9iyVZHT78J7TpBIrTXsbvrvlu70rLu+p
	EBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6ICYQ/mTVQrspsYzn2M8GTuMw+0UtcCC+AKXsudvFic=;
	b=CY8bORsRV1l67j6IXXCzKbhSi7C43iy1Y0Oky3G2sBxx7rel4RqwBo10LBEJ1FFyhL
	9u85IXfjDDaR9SsHQmTcYHUNvwgOMmYPsUVgae0FdwsNil7IyawPDjtZ4qT7c0mSpY76
	jkbxEzwurkcIMWrzr47PqvgS1NKfZ4670wctrfZvWjRMNikLlhhdaTQgj933yPUnxFh6
	gIGdUa9gQIiSeuzTGoVeF7Ia/Ps+oBDuJaKctsbVuNdDKtGEgx3l2qQQK1mLP/aBezu1
	7BAum8dbEigkcHsPIYjVe9glBSQZ80TZCU8NSkPw+iT5ZaAo43AeQ7AFawMEZUeL8E4e
	WmLQ==
X-Gm-Message-State: AA+aEWZCxP/0/GdYaxbVxu+njnm9mnV7OKCAJVipfmIauil9dZ0/yz7M
	IHuGWKE79qQlR6F1hrtPjfjUhfdmvMA=
X-Google-Smtp-Source: AFSGD/UyHJHtyyCQu7u98y6pzYLssIsdtyiJK0qYNO4K5Cqq6fxk2xHRJKY/+NzQ/rIowqm88jXYaQ==
X-Received: by 2002:adf:f28d:: with SMTP id k13mr10653313wro.78.1542901794123; 
	Thu, 22 Nov 2018 07:49:54 -0800 (PST)
Received: from [172.16.1.177] ([195.59.199.221])
	by smtp.gmail.com with ESMTPSA id
	o81-v6sm3751367wmo.38.2018.11.22.07.49.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Nov 2018 07:49:53 -0800 (PST)
To: Martin Townsend <mtownsend1973@gmail.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
References: <CABatt_xbvyTXSAuExyo+oA4UDqfm3pA9nh4cyga6Yoi9BDnahQ@mail.gmail.com>
From: Alex J Lennon <ajlennon@gmail.com>
Message-ID: <aa68bde4-1427-860d-1cff-c8bd84b2b3eb@gmail.com>
Date: Thu, 22 Nov 2018 15:49:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CABatt_xbvyTXSAuExyo+oA4UDqfm3pA9nh4cyga6Yoi9BDnahQ@mail.gmail.com>
Subject: Re: meta-mono: QA Error building mono-5.12.0.226
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
X-List-Received-Date: Thu, 22 Nov 2018 15:49:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 22/11/2018 15:46, Martin Townsend wrote:
> Hi,
>
> This one is probably for the meta-mono maintainer
>
> I was getting quite a few file-rdeps QA errors.
> I managed to get rid of them all except 1 using
> RDEPENDS_${PN}-libs-2.0 += "mono"
> RDEPENDS_${PN}-libs-3.5 += "mono"
> RDEPENDS_${PN}-libs-4.0 += "mono"
> RDEPENDS_${PN}-libs-4.5 += "mono"
> RDEPENDS_${PN}-gac += "mono"
> RDEPENDS_${PN}-configuration-crypto += "mono"
> RDEPENDS_${PN}-xbuild += "mono"
> RDEPENDS_${PN}-api-4.5.1 += "mono"
> RDEPENDS_${PN}-api-4.5.2 += "mono"
> RDEPENDS_${PN}-api-4.6 += "mono"
> RDEPENDS_${PN}-api-4.6.1 += "mono"
> RDEPENDS_${PN}-api-4.6.2 += "mono"
> RDEPENDS_${PN}-api-4.7 += "mono"
>
> The one remaining is
>
> ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
> /usr/lib/mono/4.5/Microsoft.CodeAnalysis.Scripting.dll contained in
> package mono-libs-4.5 requires mono(System.Runtime.Loader), but no
> providers found in RDEPENDS_mono-libs-4.5? [file-rdeps]
> ERROR: mono-5.12.0.226-r0 do_package_qa: QA run found fatal errors.
> Please consider fixing them.
> ERROR: mono-5.12.0.226-r0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /ws/rufilla/oina/tools-oina-build-local/build_oxinst/tmp/work/armv7ahf-neon-poky-linux-gnueabi/mono/5.12.0.226-r0/temp/log.do_package_qa.15001
> ERROR: Task (/ws/rufilla/oina/tools-oina-build-local/build_oxinst/../meta-mono/recipes-mono/mono/mono_5.12.0.226.bb:do_package_qa)
> failed with exit code '1'
>
> It looks like the 4.5 lib package requires the System.Runtime.Loader
> library but I'm not sure how to get it to build this or I see there is
> an external directory which looks like it contains all the 4.5 libs so
> maybe it hasn't been included in here?
>
> Any Help appreciated,
> Martin.

Hi Martin,

I've been doing some recent work here which might help

https://github.com/dynamicdevices/meta-mono/tree/master

Cheers,

Alex



