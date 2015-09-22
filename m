Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6974EE00F0F; Tue, 22 Sep 2015 16:09:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB9ECE009F3
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 16:09:22 -0700 (PDT)
Received: by iofh134 with SMTP id h134so29481806iof.0
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 16:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=rCAIkbIrej3H18cYZF3CQuWKNaeYE+gpaifpuRbXz9g=;
	b=ikBIR/FNWZg+3JE/npjl1b77S1l88FRUhEz50mjF8YgS3myn6McRegDv7lk5ZOdCoF
	Onqpb3CPteaJNQJ4iy2MLtlUmv8E7kZ7XQkG65+OvyH53fH4a0s630jzC6bJ1b6viPzm
	c+mgj/2Kj0UbzuKE8rb9ohVl2m5eifxrVLLW9eUsnFIuUEKQEiUFuzE9F95LYy+zrfcS
	vncgnyOCxScGQNJ6noEGeyHzl/2uRcg4rQvdrfPcR2B/Z2V0o9Us0eUUejm3bdDsmE3B
	NxgmCjyNuw8KPf5d+ReWV1VzfL2cVSwGI8EiLrbvXNuXFuNRBZ9TbmrzUQFceyDCF5mo
	KodQ==
X-Received: by 10.107.137.106 with SMTP id l103mr34107421iod.112.1442963362074;
	Tue, 22 Sep 2015 16:09:22 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	q10sm2064938igh.4.2015.09.22.16.09.20
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Sep 2015 16:09:21 -0700 (PDT)
To: Nicolas Aguirre <aguirre.nicolas@gmail.com>
References: <56018F9D.8060709@gmail.com>
	<CAHTvVMfHyTajGt5wuoQByjBnCGbTuJdQDkmbHpFXd=dWMzw8FA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <5601DF9D.4070108@gmail.com>
Date: Tue, 22 Sep 2015 19:09:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CAHTvVMfHyTajGt5wuoQByjBnCGbTuJdQDkmbHpFXd=dWMzw8FA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Enrico Butera <ebutera@users.sourceforge.net>
Subject: Re: sunxi mali binary driver
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
X-List-Received-Date: Tue, 22 Sep 2015 23:09:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Nicolas,

On 09/22/15 14:34, Nicolas Aguirre wrote:
> 2015-09-22 19:27 GMT+02:00 Trevor Woerner <twoerner@gmail.com>:
>> Hello,
>>
>  Hi Trevor,
>
>> I'm trying to build an image for my cubietruck that uses the binary
>> accelerated mali driver (sunxi-mali) and have a couple questions.
>>
>> It was my impression that the binary user-space libraries (sunxi-mali?)
>> only work with specific versions of the kernel.
>>
> sunxi-mali binary driver build by this recipe
> (https://github.com/linux-sunxi/meta-sunxi/blob/master/recipes-graphics/libgles/sunxi-mali_git.bb)
> only works with 3.4 kernel.
> You can find some informations about sunxi-mali here :
> http://linux-sunxi.org/Mali_binary_driver
>
> The problem is that linux-sunxi 3.4.x kernel contains mali r3p0 driver
> (https://github.com/linux-sunxi/linux-sunxi/tree/sunxi-3.4/drivers/gpu/mali)
> where linux mainline doesn't.

Thank you for the clarification! That's what I thought, but the fact the
binary was being included with the mainline had me confused :-)

>> By default the cubietruck machine definition will try to build the
>> upstream kernel, but by default it also sets the preferred providers of
>> egl, gles1, and gles2 to sunxi-mali. Wouldn't that cause problems? If I
>> want to use the accelerated, binary mali driver, don't I have to stick
>> with the sunxi kernel (3.4.90) too?
>>
> We could maybe avoid the build of sunxi-mali recipe when a mainline
> kernel is built.

Ok, I could take a look at that too.

Best regards,
    Trevor

