Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A123E00DD7; Sun,  8 Jul 2018 01:07:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC3AE00C50
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 01:07:13 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id w126-v6so30670772oie.7
	for <yocto@yoctoproject.org>; Sun, 08 Jul 2018 01:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c3K7gLx7Ml5Twx+mD4bPouk/3V46jyLWGtNYX/XRwDY=;
	b=WS4Ax/Cdv56qAYG4AI/hLboX9O2df0u3STYgrk97dyCpy82JhtGDmhlKI7EVxxIizb
	MG4U2V2w14g6XWnSPu2QLbuXkzgAqafi6oFchDvnXH0pV/0f1jFZl9Uj9FAJIF2fNbIq
	+2D9qTvBT8r/bLg7UdngL/1OJWOQBKD8LrP1oAquZ6+eGrJNFjioAp2N6xTvI0JzzWly
	gGIcb2nR7elWX+2kLtPH2uC1anuuC2e9GmCQMMlUwdpxnJ+f/2+7DVt10TF1v1l+BWOB
	xyRhi+OiKkmZDf49XB/A0ZZfp1iHpwnobXxDbH2dPXzAPItlK1XaYDF9RD0nw+c3z9Zo
	SnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c3K7gLx7Ml5Twx+mD4bPouk/3V46jyLWGtNYX/XRwDY=;
	b=YYbV/K+jKEzf68LDF0UIvmuFHrNkqFuzMx6JOMUcQlLr6ltcE8ZjQp4teTEuZSezwp
	hN5JghC5h6/vo12FTH9nQd0AMylVMlEHBoHheuM6TU3FJEjjQyRo3j+3QKdg5boowMf7
	viFgEkdXLxBlEPChs7nz/rwWOYrzVwAR2/u9208jPlJAfMs/Va8WQKJNPUluvskAF24P
	NwhkwOFi+c6wlOybC0/lXLAheWrPO7+FysYiwQCJrbeQWZ+CEE5p37AdqU/agQti2dwJ
	sjQ1JREpSultZjJfDfZ6x0AqcQ4dHbdbIQpnN2oX25H217CpMXX0pGQHOEXYKM4PSnAE
	488g==
X-Gm-Message-State: APt69E0IF5hBLpuGdm35GOJAYVkOpk3m/jkrmrutEsd3YJt1OKbVnrbG
	DI8CqPgIOjyl71c9nu46kGh5dLHHls26enJ1kxI=
X-Google-Smtp-Source: AAOMgpdwNAtlAYsxIh+vrbIecxWbfw7gxOtVwrsMrok3ysOD73KvmF9orMQaxh6HZWXQOBYjIHZKRJjOdqIXjxSX1RY=
X-Received: by 2002:aca:4fcf:: with SMTP id
	d198-v6mr16547339oib.51.1531037233181; 
	Sun, 08 Jul 2018 01:07:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP;
	Sun, 8 Jul 2018 01:07:12 -0700 (PDT)
In-Reply-To: <CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 8 Jul 2018 10:07:12 +0200
Message-ID: <CANNYZj9bHGF1bGRAV4Sx_=WvdTyh3e=6X+418Yd+dDF7EqEJNw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Raymond Yeung <rksyeung@hotmail.com>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Sun, 08 Jul 2018 08:07:22 -0000
Content-Type: text/plain; charset="UTF-8"

If the issue is that openssl is 'out of date', then oe-core already
provides a 1.1 version that can be selected via PREFERRED_VERSION as
well.

What is the specific need for the 3rd party version?

Alex

2018-07-08 0:41 GMT+02:00 Burton, Ross <ross.burton@intel.com>:
> Presumably you've a recipe for the vendor openssl.  If it has the same
> name but is a different version then just set PREFERRED_VERSION.  If
> it has a different name too, it should PROVIDE openssl and you can
> just set PREFERRED_PROVIDER.
>
> If it doesn't do either of those things, then it is broken.
>
> Ross
>
> On 6 July 2018 at 23:06, Raymond Yeung <rksyeung@hotmail.com> wrote:
>> I've changed the subject heading to make it more specific to our problem.
>> Hopefully this generates some responses.
>>
>>
>> It has been blocking us for close to one week now.  We want to use our 3rd
>> party vendor openssl, not the one that comes with the source.  Apparently,
>> even with "minimal" instead of "base" or "sato" cannot exclude it.
>>
>>
>> Any idea [e.g. how do we systematically find out how it's included now, and
>> possibly what other packages/recipes we may also need to remove due to
>> dependency]?
>>
>>
>> Thanks,
>>
>> Raymond
>>
>>
>>
>> ________________________________
>> From: Raymond Yeung <rksyeung@hotmail.com>
>> Sent: Monday, July 2, 2018 11:05 PM
>> To: yocto@yoctoproject.org
>> Subject: How to remove a package from a build
>>
>>
>> We've our own non-yocto openssl that we want to use.  At the moment, we're
>> using "sato" image, rather than "minimal" and includes its openssl that is
>> out-of-date.  What is the best way to exclude it from our image (and from
>> sysroots)?
>>
>>
>> We have thought about two ideas -
>>
>>
>> Use smaller image like core-image-base, or core-image-full-cmdline (but not
>> -minimal that may remove too much functionality).
>> Use INSTALL_IMAGE_remove += " openssl"
>>
>>
>> Would either one work?  Also, how do I follow the .bb files etc (e.g.
>> starting from the one for sato) to trace down which sub-package includes
>> openssl?
>>
>>
>> Thanks,
>>
>> Raymond
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

