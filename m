Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2635E00DE3; Thu, 29 Aug 2019 09:02:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A75AAE00D33
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 09:02:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7TG1t8o021168
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 29 Aug 2019 09:01:55 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 29 Aug 2019 09:01:54 -0700
To: =?UTF-8?Q?Johannes_Wiesb=c3=b6ck?= <johannes.wiesboeck@tum.de>,
	<yocto@yoctoproject.org>
References: <20190829143056.cvo7vk7tpghfjnyh@asterix>
	<20190829144027.whr2vf5lwnhoh4vk@asterix>
	<20190829144815.62iqd6tnf6qot74m@asterix>
	<20190829150535.2w2nir4bia4ze6ez@asterix>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	mQENBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAG0JU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT6JATcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrrkBDQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABiQEfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <e1e60eae-0a78-dd61-b00d-de3ec0081f76@windriver.com>
Date: Thu, 29 Aug 2019 11:01:53 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829150535.2w2nir4bia4ze6ez@asterix>
Subject: Re: [help] Multiconfig - Depending on Recipe multiple times
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
X-List-Received-Date: Thu, 29 Aug 2019 16:02:14 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 8/29/19 10:05 AM, Johannes Wiesböck wrote:
> Hello Everyone,
> 
> i am using Yocto on the thud branch to build images for a real-time

This is not implemented in thud.  Thud had multiconfig supported, but didn't yet
allow for dependencies between configurations.

Master has support for multiconfig dependencies as well, but I'm not sure how
well tested they are.

--Mark

> operating system based on FreeRTOS. I would like to run multiple images
> on different CPU cores in an asynchronous multi-processing (AMP) configuration.
> Each image will contain the software for only one single core. For
> deployment, i would like to pack all images into one package.
> 
> Therefore, i would like to use multiconfig to build the same recipe four
> times for the same hardware but with different compiler options,
> determined by to core the image should run on. These builds are all based on
> the same source code but differ in compiler options used for building. After
> the images for all configurations are built, i would like to pack all images
> into a single package for deployment.
> 
> I have created two recipes, one called amp-image, that should be built
> once for every multiconfig. A second recipe called master-image,
> depends on amp-image for every configuration, i.e. i have the line
> 
> do_compile[mcdepends] = "multiconfig:amp-c0:amp-c0:amp-image:do_build multiconfig:amp-c0:amp-c1:amp-image:do_build"
> 
> in my master-image.bb file. I also have set up my multiconfigs according
> to [0].
> 
> When i try to build master-image with 
> 
> bitbake multiconfig:amp-c0:master-image
> 
> i get an error, which i have attached in [1].
> 
> My question is: Is it generally possible for a recipe to depend on one
> recipe multiple times but from a different multiconfig, like shown above?
> Also, if possible, are the sysroots of the dependencies automatically
> populated to the recipe depending on them, like with the usual DEPENDS
> variable.
> 
> 
> Thanks for any help!
> Johannes Wiesboeck
> 
> [0] https://www.yoctoproject.org/docs/2.6/dev-manual/dev-manual.html#dev-building-images-for-multiple-targets-using-multiple-configurations
> [1] https://home.in.tum.de/~wiesboec/bitbake.txt
> 


