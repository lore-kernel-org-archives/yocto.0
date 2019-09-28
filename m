Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4713E00D1C; Sat, 28 Sep 2019 01:14:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC9BE00C5C
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 01:14:06 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id r26so23385096ioh.8
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 01:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=J6F9/j2SAYot1+UqgiKwYI6geEzzWerlyiMEGsRqFXk=;
	b=at04rFLmeibXFoGC8BSOzgmI+uwo4j55fT6O+tjDFs409YhhCFABUmTYYBAKfwNwPl
	/wXyNHcU787j4yP/WSeUDZ24mK+M2WpGkey8t5QtaUYMG+bLyMgtVC9a2HXN/7iJmTs1
	BFr76UxSy1h5en5Hku64UDqF7PaAWyG8RSuNg/YNTVaT18RkTQMIA0BpYkghy/rOlfaA
	H8qlCGomr29ben+wFU3jDH4IegmQmnHgtScSpUOTMPK3uNHcsYwj43XmJBjvL20ScMb1
	rWt/7+C6p1zR5oRoLnxexFFs9fcPNDFRfTBwBl6Ih1MT6gZLH8Mv2HZsAwrdPOb7cLTC
	5TqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=J6F9/j2SAYot1+UqgiKwYI6geEzzWerlyiMEGsRqFXk=;
	b=IKwDw4MR9iCmn7RrGIqcqfS67LPp8QoC6lcrnD2i6RjfwZPRfxYuJgigHGrnfacMdh
	nwhWhzJmkrtpPhJ10Qtoh4IeWTUmClfPxew6Spzl7Hvpn0pou30sgP1U2nv2Es6kHL8E
	POYrQscP/KwTUwheC6/lZVCT+gWZf7WxCBlieIp5767X5Nk12J1hSbNAgY3R0Siyf+E4
	A8xWYi20kOG2GhAIFSnMQ3bGBplUs5gGQVmLAKyuEIKpLE/hzVPZ8DXICLALaMkhpiFV
	8qBlC3oPUf493zigzTU+Z/sinZ/cGasx2BABx84tM1ptAXNXuajxi9wtqFbFVeMFYW6U
	P00w==
X-Gm-Message-State: APjAAAW6v+NR9AvAnNxWS8R+hpjcZNN76/JghlBc10agUNsFHQLj/Lnl
	q/KxlMyTlozWj9ixTTnfGG++ZlTF36qoKBEgO66Hjqbn
X-Google-Smtp-Source: APXvYqxcKxATHEuRl1Qe0Wvmxi3RbLBl2XvtJG66ZMxUxiDEylljPewrS19ekuFUfPMN1ubXCQGqcp6SVRin3RMpeo4=
X-Received: by 2002:a5d:9354:: with SMTP id i20mr49904ioo.306.1569658444627;
	Sat, 28 Sep 2019 01:14:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP; Sat, 28 Sep 2019 01:14:04
	-0700 (PDT)
In-Reply-To: <CAA=hcWSt1B23h31K75yNX9cE=fAG8_7oMAQNpPJbo=g-_JhBfg@mail.gmail.com>
References: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>
	<b125be44-41fe-d1a0-374f-c005770734bb@3mdeb.com>
	<CAA=hcWRCqya18U9L8QxQj502n=ybDwC4CGpN0-kQBFPy52RMbA@mail.gmail.com>
	<CAA=hcWSiQc3Qtss06ALR8KyYeyzSNYomcaoB5m7ZkH425U2EzA@mail.gmail.com>
	<CAA=hcWSt1B23h31K75yNX9cE=fAG8_7oMAQNpPJbo=g-_JhBfg@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 28 Sep 2019 18:14:04 +1000
Message-ID: <CAA=hcWT8_fA9n_mALQcL4N5eHCuS8xU1x+nX9JdNPeApx-6GJA@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel module and drivers missing in final image
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
X-List-Received-Date: Sat, 28 Sep 2019 08:14:07 -0000
Content-Type: text/plain; charset="UTF-8"

On 9/28/19, JH <jupiter.hce@gmail.com> wrote:
> On 9/28/19, JH <jupiter.hce@gmail.com> wrote:
>> On 9/28/19, JH <jupiter.hce@gmail.com> wrote:
>>> On 9/27/19, Maciej Pijanowski <maciej.pijanowski@3mdeb.com> wrote:
>>>>
>>>> On 27.09.2019 14:01, JH wrote:
>>>>> Hi,
>>>>>
>>>>> I included emmy-w1-driver-sdiosdio in packagegroup.bb, but all drivers
>>>>> and kernel modules in emmy-w1-driver-sdiosdio are missing in the
>>>>> deploy image, any clues why, how to debug it, how to fix it?
>>>> It is not clear to me what do you mean by including it in
>>>> packagegroup.bb
>>>> and what stuff are you installing into the image.
>>>
>>> The packagegroup.bb is the one defined in image FEATURE_PACKAGES, that
>>> is usually all package in packagegroup.bb would be included in the
>>> image.
>>>
>>>> If you wish to install all modules which were built, simply add
>>>> kernel-modules to your image via IMAGE_INSTALL variable.
>>>
>>> I added IMAGE_INSTALL += " emmy-w1-driver-sdiosdio" to my image.bb,
>>> but did not work unfortunately.
>>>
>>> Let me clarify it, I can see emmy-w1-driver-sdiosdio and all its
>>> kernel modules are in my build directory, but just could not be added
>>> to the image. How should I add package to the image?
>>
>> Tried to add IMAGE_INSTALL_append = " emmy-w1-driver-sdiosdio" in
>> local.conf, did not work either :-(.
>
> Sorry IMAGE_INSTALL_append += " emmy-w1-driver-sdiosdio" did not work
> either.

That package emmy-w1-driver-sdiosdio is in a different layer, all
packages from my image layer work fine, it is the first time to add
packages from another layer, how could make it work?

Thank you.

