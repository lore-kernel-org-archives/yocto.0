Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FAF1E00C74; Sat, 28 Sep 2019 00:59:16 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42A83E00C4F
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 00:59:15 -0700 (PDT)
Received: by mail-io1-f66.google.com with SMTP id u8so23349010iom.5
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 00:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Sk19o3R0IC2ngdnd0zFf/cyy9QmnBLYQjHNNA6qAIEo=;
	b=Lxl7Ytkh2LCRVe0QgYi8MQeH3TylmaWhJir6LGbBVEhLviGDMr62LKn0nMpM8vFbNJ
	6yhfIJNA9s6xLYeuvj++xdsgGM8VeuJ+/QYkc+nxB7qtTHvXEbfc6LoqpeIhMDsbDRfq
	PS759f2OXqNnVJgf8OAcPOcCM9R8FJDOKNPyubAZsuelZxGqIkE8vWSsiD5ExOVkuisc
	+y3M3DRxbdwbfZUD4js5i2d3ChPJAoxpvpcLz7mYuUsk+IHqOdbdm+SDEVOIGRaeUSC2
	mnoWrX9wvrjaAMyvotuRJDu3zyS44oUiwp1V5H6dw/+wH0zwEGLUOFh6Wm/FGQ5q69Pm
	dfhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Sk19o3R0IC2ngdnd0zFf/cyy9QmnBLYQjHNNA6qAIEo=;
	b=BxtEqEGmDPF18HISGZ8Tu5eXpErMih2Vjp0ESql3PRn7UzMu4OLJ+CwnpZswiqNGbx
	BVyRrtyH2rq5IapKBs58qCtXuyh3W1OfHrAr1tK3O9ebB9FdCNZSyrA8xNUUos9wb2NY
	l19y+/wZGCskFsFRyLShp8Eg7JmHmdtaIaC6LKBbG1xElbR7HWkdnNWRLRItkf3eEMVe
	YcIsutSQJFNHrS7Ai0BJK6ritZVr3FXTD+0IDUHrbCvmxVXIh2+uX5n8do4619YOPXKQ
	V2o4PsibGOLwHnVSl19KzJS2X0w7WCdMcS4Amtnp3GgS6s+Ayyp/LZBWxWOC/Qz40MrB
	S/Wg==
X-Gm-Message-State: APjAAAXHlpITAS8Z7Uui38uh8mBv3cii7321u4RSEWPj/UJEyoOy88AK
	nR3Yf63EfOk/XavHCZd7eLW25TP4EDnTbTbawOI=
X-Google-Smtp-Source: APXvYqxSLtvMs8PU0jPtaPQf9MOZvOfqVuDj9DhzrAbnrwQjJUPCXS51y8zhvcOqGx1/lkD+hvXUBPsNriO0x9fM1ms=
X-Received: by 2002:a5d:9354:: with SMTP id i20mr15563ioo.306.1569657554601;
	Sat, 28 Sep 2019 00:59:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP; Sat, 28 Sep 2019 00:59:14
	-0700 (PDT)
In-Reply-To: <CAA=hcWRCqya18U9L8QxQj502n=ybDwC4CGpN0-kQBFPy52RMbA@mail.gmail.com>
References: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>
	<b125be44-41fe-d1a0-374f-c005770734bb@3mdeb.com>
	<CAA=hcWRCqya18U9L8QxQj502n=ybDwC4CGpN0-kQBFPy52RMbA@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 28 Sep 2019 17:59:14 +1000
Message-ID: <CAA=hcWSiQc3Qtss06ALR8KyYeyzSNYomcaoB5m7ZkH425U2EzA@mail.gmail.com>
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
X-List-Received-Date: Sat, 28 Sep 2019 07:59:16 -0000
Content-Type: text/plain; charset="UTF-8"

On 9/28/19, JH <jupiter.hce@gmail.com> wrote:
> On 9/27/19, Maciej Pijanowski <maciej.pijanowski@3mdeb.com> wrote:
>>
>> On 27.09.2019 14:01, JH wrote:
>>> Hi,
>>>
>>> I included emmy-w1-driver-sdiosdio in packagegroup.bb, but all drivers
>>> and kernel modules in emmy-w1-driver-sdiosdio are missing in the
>>> deploy image, any clues why, how to debug it, how to fix it?
>> It is not clear to me what do you mean by including it in packagegroup.bb
>> and what stuff are you installing into the image.
>
> The packagegroup.bb is the one defined in image FEATURE_PACKAGES, that
> is usually all package in packagegroup.bb would be included in the
> image.
>
>> If you wish to install all modules which were built, simply add
>> kernel-modules to your image via IMAGE_INSTALL variable.
>
> I added IMAGE_INSTALL += " emmy-w1-driver-sdiosdio" to my image.bb,
> but did not work unfortunately.
>
> Let me clarify it, I can see emmy-w1-driver-sdiosdio and all its
> kernel modules are in my build directory, but just could not be added
> to the image. How should I add package to the image?

Tried to add IMAGE_INSTALL_append = " emmy-w1-driver-sdiosdio" in
local.conf, did not work either :-(.

