Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67F6AE00948; Wed, 15 Aug 2018 13:28:12 -0700 (PDT)
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
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCE64E006D8
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 13:28:11 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id t79-v6so1742976qke.4
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 13:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lPA0VJ5sseYr/dpTbSwAjRAxGntlMsDPcs4vSbagoyM=;
	b=GdKLcspCIOBTD1GYi8j9kjIRf3dKySBNcv5rP0k7E8kJIAyF3R2iGObseGo4ssrI5E
	W7UU4seb3oQ6T+/h3/Xn3J1nLu+NaCx4h7oSn8tl7j4JHpW1pEXqraovPrrgqfsfCYsz
	eQF1CAVq/OuNb4K3UHOcvNanPANUNHfDA9JZFCgHS9byVBd/BjQjqP87QzHFNSEmkbEH
	bJ1qOkObQEnItJH8H0boF0/Z29N2KulekeDu9K4dKpMujxu5hZl4Oh7YLdizPY+as6Fa
	f7isXOoduWJsFp14AcYDGrArytbtOyxBgy6GxpmlbdNdhlVOD7M3Awx0YRwOQazTxT9V
	Yo5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lPA0VJ5sseYr/dpTbSwAjRAxGntlMsDPcs4vSbagoyM=;
	b=GJjm2mYgQjE8O8HtqvFAp72yZ89bE4CnTO2yZTzKjoZjeTmGBEP1gSTfRzRbEhBFyI
	oQBtGHG9wjntVpP2fIeG5SrOjdbeG6blxVJv7+Who5dRkBAdf+f86EjBxllboTnk9GwZ
	9Is9/1BqKYgvNVTFXVO+4mJ2U4UaHNfBnbFIjpW3ywyFZsi3S9MEpVlVshO3QD37Do60
	Pfq+crR/Tgq9VSfjWXL+Do3Dil7hFEqE+NtC2LyNdDe5WxSBxCwmt6GhfBiAATV+nejY
	EYw5blhfDMyPU399aVZouDDoPNrpmX3pukSu5jjnHKj9K+jdw7XvLbscXQr/RY0Uw+Co
	PcdQ==
X-Gm-Message-State: AOUpUlHB5/jrLP6bK0cOPcZS+zdcvwcD00YgCrPYfOOOAzyO7ERiOQCx
	zHbhGsQ2UXraBwUllg0hnyf/CJjEIlKvlg5/vEPvqw==
X-Google-Smtp-Source: AA+uWPy56Loz9KZY9akXEQLBeq80n0sW7WO7VZEoik1ceVn+ikqfwxrsciVko63iaFo21uFwOmmImE06h6kYHnV1o0U=
X-Received: by 2002:a37:417:: with SMTP id 23-v6mr24331216qke.12.1534364890795;
	Wed, 15 Aug 2018 13:28:10 -0700 (PDT)
MIME-Version: 1.0
References: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
	<CAMKF1srjCWwcAKziq=yKRF1tZmmUBBT8reAqpTF5SMyMb2giQg@mail.gmail.com>
	<96C9E43C-BDF8-4095-BDC8-09B4F59F6AF4@korgrd.com>
In-Reply-To: <96C9E43C-BDF8-4095-BDC8-09B4F59F6AF4@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Aug 2018 13:27:44 -0700
Message-ID: <CAMKF1srSZ4wkvdXfyKHo27aBLBx8vYWz3Ba2OP+aanr6BMZZOA@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] core-image-minimal for raspberrypi3-64 manifest/sdimg contains no kernel modules
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
X-List-Received-Date: Wed, 15 Aug 2018 20:28:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 15, 2018 at 1:25 PM Steve Pavao <stevep@korgrd.com> wrote:
>
> Hello,
>
> On Aug 15, 2018, at 11:54 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Tue, Aug 14, 2018 at 11:48 PM Steve Pavao <stevep@korgrd.com> wrote:
>
>
> There seems to be a problem with the core-image-minimal bitbake for raspb=
errypi3-64 target at head of sumo in all repos.  I wonder if it=E2=80=99s a=
lso a problem for the raspberrypi3 target.
>
> No kernel modules appear in the .manifest, and no kernel modules are put =
into the sdimg.  It=E2=80=99s hard to believe it=E2=80=99s true, but that=
=E2=80=99s what I'm seeing.
>
>
> please build core-image-base and see if that helps
>
>
> Khem - that does help.  It also provides some other packages that aren=E2=
=80=99t in the deprecated rpi-hwup-image, but that doesn=E2=80=99t seem to =
hurt.
>

good.

> Max - thanks for the explanation about adding that package to the image a=
s a possible solution.  In this case, I=E2=80=99m trying to avoid multiple =
manual steps and just use a single bitbake target to acheive the build I ne=
ed, though.
>
> Andre - I have since read about core-image-minimal since receiving the wa=
rning message that "rpi-hwup-image is deprecated - use core-image-minimal i=
nstead=E2=80=9D and having problems due to the missing modules.  You are te=
chnically correct.   I would like to state my opinion though that to uncond=
itionally warn the user to use core-image-minimal instead of rpi-hwup-image=
  (which definitely packages kernel modules if they are there) is not often=
 the best advice to give.

This should be fixed in meta-raspberrypi, care to submit a patch
to use core-image-base instead ?

>
> Thanks to you all for the useful replies.
>
> Steve Pavao
> Korg R&D
>
>
>

