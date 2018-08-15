Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79F51E0049F; Wed, 15 Aug 2018 08:55:03 -0700 (PDT)
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
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6845FE0043F
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 08:55:02 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id t5-v6so1685563qtn.3
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 08:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=XBmysOLb/Esa2MJP1h3mNhh7Iu9Jx9uDQhkORCckpBo=;
	b=i6rc9cHTVwShCEA+f4HGBSBIbLy11kfb9rKK5aD8K8aHmLX5+oOD6Y056kK/s/UleJ
	iPSURp0o+ULX2pX2juR9gA7m4a1fXfvuG/R1UZsqi8QJQWvrbtZ9rYeJoa9dO9MeIhlW
	GBXLP1HUVl5UEVuSwOKUngenVIELWEd/uW71uA2COL85dMWXKjr9fhc4uFpSzsEL2ohq
	SGoAG96S2MpB0fRZw9qstqei7HXUG08UeJObP5GlGhYA+8aSAqWk82cMYAiasDm5JZhb
	4QkYzlA+BaiOToTOjBMRD5Rf4eD/9W/RnAtdbEOjPXa8VYCI57XZie+UxQGmZsOQhUE+
	XoJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=XBmysOLb/Esa2MJP1h3mNhh7Iu9Jx9uDQhkORCckpBo=;
	b=o+M07sT0sKnM9ca18WcKQ/Gb0+fDVeHCYLpABH1G4M8Au/weN2E675RzUVyxp0ZsUo
	grVq7PLMvBCSYPSBH66gKrnVhdAxob5Wi9V2mCSXv5461t42LBHdRanstHgW3EFUGOVc
	dqDkT4HnqtCHazsdHiA/vyFdEEjyGjhJ2hBzvcsIok8z4nlZVC3Y/sDb/4/edlYh8/1o
	VcgFN6Zuwzl4q5uP1SzG9SevPlzV8OD82bckJwAAtqe9AIJEmgmcVcJwyfJnVb48NH5n
	uCBROPXHv9x6BN8M9CY+ueXUtzdZSFBy9ws58zE9PBrLTfjm45y5fhEEMmm7sV+czvRx
	d+Yg==
X-Gm-Message-State: AOUpUlGUpDxIBz4VHFgqhwFPnWp1WpmLkT18yILxEURKmXh2cBwEkK7n
	AG/Cp+BfvskdQ+GJoqbKuB+W1Qi3cLs8ISJVkzY=
X-Google-Smtp-Source: AA+uWPzi9+4M6mKz1USln+fxhn4BoWRrdb7Kq8/75FNFVDft9DpKrPTbAq74UZjS0nY+kauiL3q8ZSJeTp4B6s6Mi8g=
X-Received: by 2002:ac8:2ad8:: with SMTP id
	c24-v6mr26105301qta.117.1534348501399; 
	Wed, 15 Aug 2018 08:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
In-Reply-To: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Aug 2018 08:54:35 -0700
Message-ID: <CAMKF1srjCWwcAKziq=yKRF1tZmmUBBT8reAqpTF5SMyMb2giQg@mail.gmail.com>
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
X-List-Received-Date: Wed, 15 Aug 2018 15:55:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 14, 2018 at 11:48 PM Steve Pavao <stevep@korgrd.com> wrote:
>
> There seems to be a problem with the core-image-minimal bitbake for raspb=
errypi3-64 target at head of sumo in all repos.  I wonder if it=E2=80=99s a=
lso a problem for the raspberrypi3 target.
>
> No kernel modules appear in the .manifest, and no kernel modules are put =
into the sdimg.  It=E2=80=99s hard to believe it=E2=80=99s true, but that=
=E2=80=99s what I'm seeing.
>
> The problem does NOT occur for the rpi-hwup-image bitbake, which is actua=
lly deprecated in poky 2.5/sumo.
>
> Before you retire the rpi-hwup-image bitbake target, will you please make=
 sure that the kernel modules from the core-image-minimal build make it int=
o the .manifest and therefore into the sdimg?
>
> Please let me know where to log this issue, so I can send you the .manife=
st diffs, some ls command output showing the large size difference between =
the core-image-minimal and rpi-hwup-image sdimg files for identical builds,=
 and perhaps some file listings to show that one of the builds contains ker=
nel modules (rpi-hwup-image) and the other does not (core-image-minimal).
>

please build core-image-base and see if that helps

> Steve Pavao
> Korg R&D
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

