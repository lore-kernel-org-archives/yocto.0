Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 582ECE00BC2; Thu, 18 Oct 2018 09:01:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DBA3E0097C
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 09:01:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w9IG0xQB014037
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Oct 2018 09:00:59 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 18 Oct 2018 09:00:59 -0700
To: Sinan Kaya <okaya@kernel.org>, <sscott@san.rr.com>, "'Stefano Cappa'"
	<stefano.cappa.ks89@gmail.com>
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
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
Message-ID: <9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
Date: Thu, 18 Oct 2018 11:00:58 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Thu, 18 Oct 2018 16:01:19 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/18/18 9:49 AM, Sinan Kaya wrote:
> CC'ing the selinux maintainers:
> 
> I was told that using the master branch and reverting the e2fs change
> (http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?id=78eca8242ea5397c4dc0654d62244453b4260151) 
> works on sumo.
> 
> Stefano's suggestion unfortunately didn't work.
> 
> Maybe, it is time to create the sumo branch?

Sorry, I thought it had been created.  I'm going to be traveling the next few
days to ELC-E, but I will try to get to it if someone else does not first.

--Mark

> On 10/18/2018 9:48 AM, Steve Scott wrote:
>> I did not try it on sumo.
>>
>>   
>>
>> From: Stefano Cappa [mailto:stefano.cappa.ks89@gmail.com]
>> Sent: Wednesday, October 17, 2018 11:15 PM
>> To: sscott@san.rr.com
>> Cc: Sinan Kaya <okaya@kernel.org>; yocto@yoctoproject.org
>> Subject: Re: [yocto] [selinux] sumo compilation
>>
>>   
>>
>> Exactly the same issue since September.
>>
>>   
>>
>> Here is my discussion https://lists.yoctoproject.org/pipermail/yocto/2018-September/042711.html. With that trick did you find a solution also on sumo?
>>
>>   
>>
>> Il gio 18 ott 2018, 01:42 <sscott@san.rr.com <mailto:sscott@san.rr.com> > ha scritto:
>>
>>
>> It was broken in rocko too. I added this to local.conf to workaround the problem:
>>
>> PREFERRED_VERSION_refpolicy-standard = "2.20170204"
>>
>> -steve
>>
>> ---- Sinan Kaya <okaya@kernel.org <mailto:okaya@kernel.org> > wrote:
>>> Hi,
>>>
>>> We realized today that SELinux does not compile on sumo branch.
>>>
>>> Is it possible for someone to branch the last working version to a sumo branch?
>>>
>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/
>>>
>>> NOTE: Running task 352 of 2707
>>> (virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb <http://e2fsprogs_1.43.8.bb> :do_patch)
>>> NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started
>>> NOTE: Running task 1413 of 2707
>>> (/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch)
>>> NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started
>>> ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt --quiltrc
>>> Applying patch misc_create_inode.c-label_rootfs.patch
>>> patching file misc/create_inode.c
>>> Hunk #1 FAILED at 979.
>>> Hunk #2 FAILED at 987.
>>>
>>> Sinan
>>> -- 
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
> 


