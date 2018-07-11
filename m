Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98D40E00A48; Wed, 11 Jul 2018 13:46:48 -0700 (PDT)
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
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3376E009B2
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 13:46:47 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id i4-v6so10180355uak.0
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 13:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7XwwmflXAdKsAh/4YSkBG9vZ1k7JhsKVylR2uammY8E=;
	b=JSoqFR4sIuX1SGXOWGn+5jHuuI7E5UROjV2GLsVKlJfC2HVnCesvMu1ijhg+bcJZCv
	KKWiLCmZPjIv34zEx+hojtxjO5KipyAoXPMz0J32FGzilCsAj71Q9XKnFSm1WFkRcAEm
	hQfXMVq6fHTxxUPoCyRN1fnXye9zSoD7lGtuIrb033+rDqJk4MowWt9ZFcMwO+YWp0kC
	G2Z7/2QKPEZ+Pv7u678oQsRo3SjFt9uh01F6U6MKsEXke5NLz383UWhC43tM/SnXsN5e
	a8MjTRCuV6+MySnqYu/Yj2drCSBkB5A8p1d5P1z9/0q+mMSQpgJc4BFo0jIdGKB1KGce
	lMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7XwwmflXAdKsAh/4YSkBG9vZ1k7JhsKVylR2uammY8E=;
	b=UIzXx71o5eY6FkTPR4BpkiFQZSG5tHxDwXY+3HipIDKNZlkp87VMyCcA0P10yv5Z3j
	eRAN0YjKXB66py4zJkNqUwpy0iP0HsGUtD1Gs78Q0NN4guvN8GW4IAx/kabklrvBL4pP
	iwNEE2jUqNKXse4MpuVSXi/mIwLLy0lK6ARDC97SEPYiEQes54og0Tr3Tyk9po3xTP+W
	YUKzdpxy2UR0LiGBqDuGW2AKtnCO/O7Qb1LLJcVe9H9cALvxlIdbuVEGIkVItp7VUhAJ
	2eQBSsAGJfiiQz6ItWL8dcx0YfQ2x4Xh5B7/2VVs/nMMboewCBl+mAG5MIh423FRaOMR
	nUew==
X-Gm-Message-State: AOUpUlGMErbZWtaf1rBP/cJs3FzXemCII06/vBFGBnj6MWcxaosrHIr3
	+mj8yVaN5G2FyzGS5j+RKDl7elg+FOM2Xpp+O5I=
X-Google-Smtp-Source: AAOMgpeitTxD0TmBQqFoinPcbuVa+xSkA7SixelwxQ6Ped1D5Ia7XZigmskMUNDC+skId4M52K/U5Ah1HbwyWlIanwU=
X-Received: by 2002:ab0:50cd:: with SMTP id d13-v6mr127637uaa.45.1531342006743;
	Wed, 11 Jul 2018 13:46:46 -0700 (PDT)
MIME-Version: 1.0
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
	<c9cf4aad-d222-a12d-6167-0d9f7e6106f7@windriver.com>
	<1909416.gzoZmKSdQq@localhost.localdomain>
	<77623ed2-1163-2412-7cda-6bfe74d5bbfa@windriver.com>
	<CANmTPBZWm-o5BD7X=fR1w9CoOxqZd7O0gz15E9fHqEix9JUyAg@mail.gmail.com>
In-Reply-To: <CANmTPBZWm-o5BD7X=fR1w9CoOxqZd7O0gz15E9fHqEix9JUyAg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Jul 2018 14:46:20 -0600
Message-ID: <CAMKF1sqgdGiZypFUFX6MQrZ8sh2UYkNRYtBMHn5=CxMkeP0ivg@mail.gmail.com>
To: simon.chamlian@mpbc.ca
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Wed, 11 Jul 2018 20:46:48 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 11, 2018 at 9:28 AM Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
>
> I am getting the following error using devtool:
>
> $ devtool add help
> ERROR: Layer directory '/home/jay/sources/poky/meta' does not exist! Please check BBLAYERS in /home/jay/build/conf/bblayers.conf
>
> $ whereis devtool
> devtool: /opt/PHYTEC_BSPs/yocto_imx7/sources/poky/scripts/devtool
>
> The paths are completely wrong.
>
> Any hints?

may be there are two different workspaces being mixed here. Probably
you should start a fresh shell and setup
environment to run bitbake and then be able to run devtool in that
shell as well.

>
> Thanks,
> S
>
>
>
>
>
>
> On Tue, Jul 10, 2018 at 4:27 AM, ChenQi <Qi.Chen@windriver.com> wrote:
>>
>> On 07/10/2018 02:18 PM, Paul Eggleton wrote:
>>>
>>> On Tuesday, 10 July 2018 3:32:56 AM CEST ChenQi wrote:
>>>>
>>>> I usually use the following steps when I need to modify source for some
>>>> purpose.
>>>>
>>>> 1. bitbake A (or at least bitbake A -c configure)
>>>> *2. cd tmp/work/xxxxx/A/<source dir>**
>>>> **3. make the modification*
>>>> 4. bitbake A -c compile -f
>>>> 5. bitbake A
>>>>
>>>> If you find the modification useful, make a patch from it.
>>>
>>> This is the old way of doing it which can under some circumstances result in
>>> you losing your changes to the source tree, since the sources under tmp/work/
>>> are only ever intended to be there temporarily. Devtool (as recommend by
>>> others on this thread) is designed to enable this workflow in a much safer
>>> manner.
>>>
>>> Cheers,
>>> Paul
>>>
>> Thanks Paul. I'll turn to use devtool.
>>
>> Best Regards,
>>
>> Chen Qi
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

