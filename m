Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA6FCE00D2E; Thu, 11 Apr 2019 05:55:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.156.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEC42E00C14
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 05:55:42 -0700 (PDT)
Received: from [10.0.3.121] ([78.6.3.122])
	by smtpcmd15.ad.aruba.it with bizsmtp
	id z0vh1z0042dwwGE010vhhh; Thu, 11 Apr 2019 14:55:41 +0200
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
	<72b7a5a1-3297-9011-67e8-f2a5a943f086@faresoftware.it>
	<20190410095919.GQ20077@hiutale>
	<73bd83bf-9fc0-f30a-501f-c3858dab5841@faresoftware.it>
	<CANNYZj_BVQ0CdwfTtMPHbNiAvY-o+H=uc9UOoenGc-X=VBM=zw@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <a39ed41e-71a1-47d3-ece5-28be081972e9@faresoftware.it>
Date: Thu, 11 Apr 2019 14:55:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANNYZj_BVQ0CdwfTtMPHbNiAvY-o+H=uc9UOoenGc-X=VBM=zw@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1554987341; bh=bISGjpN3FboI585f22MKJ5T2DID+GXjPFL5mEQUFJ48=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=g9hgIfmrWoRaJ+EIsZDnWJu4Pglrt/SREoZL32Bf1Y8W9OlC70j6S35jcZYYLX261
	3ZnBbUGPWz32zJkId9KRP0nGkm2pA9bsyf3Us0K5PvvERyZF0fk60IvjbgEMHaK8QY
	+eLRbdZeLg2l5qEukDbYBmZUekYMFaowVyBGc0cSML5/flSmkAfPJM+9G/8yuZ6ex7
	1u9AHOSccQ5uG3n4q5B65Z5mzzjuTCOeOHCWxTTlpaqmfHpU2KrowvFd8Ymz7DypmW
	3ZeUx5ZdYK3Z9OZuVWlh8cGov1Vx6TvVm2OI1aAgCbLZ5JvoSuBNagypYsShLMxKNZ
	fCotTGUuOtHsA==
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing IMAGE_NAME [yocto krogoth]
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
X-List-Received-Date: Thu, 11 Apr 2019 12:55:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: it

Thanks

I'll try your suggestion

Il 11/04/19 13:12, Alexander Kanavin ha scritto:
> You need to use vardepsexclude (read in the bitbake manual how to).
>
> Generally I am not a fan of putting timestamps into anything
> yocto-built, it's prone to issues like this, breaks reproducibility,
> and also subverts sstate if not managed carefully. I'd almost suggest
> you build the image with a default name, and then rename it after the
> fact when deploying to some artefact storage.
>
> Alex
>
> On Thu, 11 Apr 2019 at 11:30, Mauro Ziliani <mauro@faresoftware.it> wrote:
>> Thanks
>>
>> It was a typing error.
>>
>> In my recipe I set the value as you told me.
>>
>> But the ERROR keep on show
>>
>>
>> Il 10/04/19 11:59, Mikko.Rapeli@bmw.de ha scritto:
>>> On Wed, Apr 10, 2019 at 11:47:42AM +0200, Mauro Ziliani wrote:
>>>> Hi all.
>>>>
>>>> I need to change the default IMAGE_NAME of my image recipe.
>>>>
>>>> I make my image recipe as mysystem-image_1.0.bb and I'd like to produce
>>>> and image (tar) with the name
>>>>
>>>> mysystem-image-1.0-<datetime>.tar
>>>>
>>>>
>>>> So I setup
>>>>
>>>> IMAGE_NAME := "{IMAGE_BASENAME}-${PV}-${DATETIME}"
>>> Should be:
>>>
>>> IMAGE_NAME := "${IMAGE_BASENAME}-${PV}-${DATETIME}"
>>>
>>> note the added $. I guess that's the bit which confuses bitbake. Been there, done that
>>> too :)
>>>
>>> Hope this helps,
>>>
>>> -Mikko
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

