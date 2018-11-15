Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74E1CE0095C; Thu, 15 Nov 2018 06:48:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D094DE008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:48:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wAFElWp6030745
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 15 Nov 2018 06:47:42 -0800
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 15 Nov 2018 06:47:21 -0800
To: Khem Raj <raj.khem@gmail.com>, Joshua Watt <jpewhacker@gmail.com>
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
	<377de133-4849-78e0-e8dc-69a79c487069@windriver.com>
	<4fd5b99a-9d4a-629f-8d65-20786f984a38@windriver.com>
	<CAJdd5GZJ7SakYHNL3HgbPS3ZkmHvweicr6mU75ui8HA4kK3qog@mail.gmail.com>
	<CAMKF1sqvJpYzPRHJv3qQfWCkzA0pc5X5GAkOrcBJ=53-Y6kFVA@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	xsBNBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAHNJU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT7CwHcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrs7ATQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABwsBfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <13c4de38-d986-db19-8cd5-39f903afb8a3@windriver.com>
Date: Thu, 15 Nov 2018 08:47:20 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqvJpYzPRHJv3qQfWCkzA0pc5X5GAkOrcBJ=53-Y6kFVA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Thu, 15 Nov 2018 14:48:13 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/14/18 11:01 PM, Khem Raj wrote:
> On Wed, Nov 14, 2018 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> wrote:
>>
>> On Wed, Nov 14, 2018 at 8:41 PM Mark Hatle <mark.hatle@windriver.com> wrote:
>>>
>>> On 11/14/18 9:54 AM, Mark Hatle wrote:
>>>> On 11/13/18 3:56 AM, Samuli Piippo wrote:
>>>>> Hi,
>>>>>
>>>>> I've just upgraded poky and meta-mingw layers from sumo to thud and as a result
>>>>> a lot of the executables in the toolchain no longer run correctly on Windows.
>>>>
>>>> Which version of windows?
>>>>
>>>>> I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++ work
>>>>> fine on Windows 10, but ar, as, objdumb, and others hang for ~30 seconds and
>>>>> exit without any output.
>>>>>
>>>>> Has anyone else seen this?
>>>>
>>>> I've run a toolchain made on mingw after sumo, but before thud's release.  I'll
>>>> see if I can find a VM and give it a try later today.
>>>
>>> I'm running on Windows 7 for my testing (ya, I know old.. but it's what I got.)
>>>
>>> Can you try adding the following to your conf/local.conf: GCCPIE_mingw32 = ""
> 
> this will be effective just for SDK and native versions I hope, but in
> cases if we
> have this override also applicable for target then this fix is not
> correct. We have
> to keep using it for target builds.

The mingw32 override is only present when building -nativesdk- mingw32 software.
 -Not- cross candian and similar.

--Mark

>>>
>>> I found that the SDK was not working properly here as well, but only binutils.
>>> The above seems to fix the issue.  (You do have to rebuild your SDK.)
>>
>> I also saw this issue on Windows 7, and your described fix corrected
>> it (Thanks!). On the plus side, the automated SDK testing that I'm
>> working on discovered it as well (e.g. the tests failed because of
>> it), which means that the tests are working and should help prevent
>> issues like this in the future once I get it merged.
>>
>>>
>>>> --Mark
>>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


