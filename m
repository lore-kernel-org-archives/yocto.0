Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30A0DE00957; Wed, 15 Apr 2015 08:22:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0431BE0092E
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 08:22:54 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id A1D106001DFE;
	Wed, 15 Apr 2015 18:22:52 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1429111372; bh=02AIo3/CKhSkfU6N5AsPgVcByJ1VvBeqOrVUqkcQBYU=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=1iGaA/DMUnm6ytK7Ib50ABBC6TmbgFOtBEZBd+jBaxcyBv17huv+KlzgQd/uu34lR
	aKXseZynDSbT84ISSWxca4VOddQ0yCAusrrr/n8qwkxsc0cAZ4G4dAMVxwRM2lIheS
	N9jRAZKE7e95nJI5R6O0GWVCXUDuCguRqTiOAMeU=
Message-ID: <552E824C.5080603@mail.bg>
Date: Wed, 15 Apr 2015 18:22:52 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <355BE46A91031048906B695426A8D8E616B7BE37@DEFTHW99EH4MSX.ww902.siemens.net>
	<552E63F1.9090406@windriver.com>
In-Reply-To: <552E63F1.9090406@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<Openembedded-core@lists.openembedded.org>
Subject: Re: Move device tree generation from include file to bbclass
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
X-List-Received-Date: Wed, 15 Apr 2015 15:22:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bruce,

On 04/15/2015 04:13 PM, Bruce Ashfield wrote:
> On 2015-04-15 08:33 AM, Bach, Pascal wrote:
>> Hi
>>
>
> Adding oe-core, since that's the right place to have a discussion
> like this.
>
>> As ARM now also moved to device tree it look like in future we will
>>  have more kernels that are using device tree then ones that are
>> not.
>
> True, but it has been like this for quite some time now :)
>
>> As far as I understand currently the generation of device trees is
>>  controlled via KERNEL_DEVICETREE and is handled in via an include
>> file recipes-kernel/linux/linux-dtb.inc.
>>
>> I was thinking about moving this include into a class so it becomes
>>  easier to use. Before I dive into implementing something I would
>> like some feedback from the community.
>
> The big trick with changing anything like this is compatibility with
> existing recipes. Whatever we do, existing recipes and layers
> shouldn't be broken .. or if they are broken, there should be a
> compelling technical reason to do so.
>
>>
>> I have the following variant in mind.
>>
>> Add the device tree generation to the current kernel.bbclass (or
>> let kernel.bblcass inherit from a kernel-dtb.bbclass). This way all
>> kernels would automatically be DT enabled. The class would check if
>> KERNEL_DEVICETREE is set and generate device trees based on this
>> information. For boards that don't have KERNEL_DEVICETREE set the
>> class would do nothing and the behavior is like before. The
>> advantage I see with this approach is that the only thing a user
>> needs to do is to set KERNEL_DEVICETREE in the board and make sure
>> the device trees are available in the kernel they like to build.
>
> That's pretty much the experience that most users have now, since
> there's nearly always a kernel recipe created, that recipe includes
> linux-dtb.inc, and sets KERNEL_DEVICETREE.

As far as I understood, Pascal's idea is to remove the need for user
recipes to include linux-dtb.inc, and provide this functionality via
inheritance.

> Everything else happens to build and package the device tree.
>
> Was there something specifically that was causing issues with the
> current way of building them ?
>
> Cheers,
>
> Bruce
>
>>
>> I appreciate your feedback?
>>
>> Regards Pascal
>>
>

Regards,
Nikolay

