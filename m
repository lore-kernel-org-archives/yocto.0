Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 882B8E00D14; Thu, 11 Apr 2019 04:12:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC153E00D14
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 04:12:40 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id e80so4854504ote.5
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 04:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IqZmQleJaQ5+UlRkIJVSjSpTa4gTNtUXefF6SMZ3T4U=;
	b=ueLj9/icX6YMxKo2/52VUvfCcViKMt2Tf06xbP31Aa/iIwqqom9HJvOS4ruqmBW/9F
	bE19/MOvuP1mgn/2HiDKWXjIoA0yCGj0STwgiOCBe0MgD0vt6Ew7MZZDycWcIVRXy0As
	ynQrRvrAtsssQL/Z+8IK6lWKcICRZJbeaDADWnEHMKv+NOSbeTu8yptsnr6D4CpRYMF6
	dKbBKIqVpG1dShfHpcceGy9PCeGgaN6BFemnbg0zImzOVKtayhZV39Hb9NXWFMyqZIVg
	5xfTFWJWwhFZJu7SOKqfOJN7AOr8aBwd3iZtH78TQCUpllf7NyKv2V+Bu6DTWVpAC0No
	3PRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IqZmQleJaQ5+UlRkIJVSjSpTa4gTNtUXefF6SMZ3T4U=;
	b=Z9lZ2wPJvUn4lv72gHR0WPxmlLyww4gHZID2h6apZCjFCm42nITfC6uPotM7GIiCGe
	mnXxEMIbE+OJdXxD/n6MV5UEwWOzjN3OMhyse/XyXXYXSgAONm4xYBxfEorSGEbHEG9r
	6TGGZ47QiHlCG5TYyBH6beD/6J8Jzp1w9GHTRZJWDvgUpEo4YkaqCVzvWa7v8wtsKnRK
	NuYFCaqQCKmIw9eCi+FEzzv63cilMoikh9SsISan7vCqV8cJfSqBD2mcAtuoMmEkldke
	wiF9cjj9G0q5blWEYecL8rmthXw5zIcJ4cUH9/Smm32vDAua3L+x6rBFNrLHajJSghlS
	fOSA==
X-Gm-Message-State: APjAAAUPbAhkDgFNcAkmynnsCH4jieS9saMeU1Okc3yWNXA56XBtMS2P
	AuH2XLkn+agMt1fYhSAUKZFlfM8ot+xsOBrzpW4=
X-Google-Smtp-Source: APXvYqz2MGPFLwt8TglTqL4DrTBOy91HxtVzcVBknl0JiNKymuiIV2hRVH0qfadZSWYoXNBMZVDAIqwexSfLpzCpKsw=
X-Received: by 2002:a05:6830:1497:: with SMTP id
	s23mr28496029otq.236.1554981160109; 
	Thu, 11 Apr 2019 04:12:40 -0700 (PDT)
MIME-Version: 1.0
References: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
	<72b7a5a1-3297-9011-67e8-f2a5a943f086@faresoftware.it>
	<20190410095919.GQ20077@hiutale>
	<73bd83bf-9fc0-f30a-501f-c3858dab5841@faresoftware.it>
In-Reply-To: <73bd83bf-9fc0-f30a-501f-c3858dab5841@faresoftware.it>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 11 Apr 2019 13:12:29 +0200
Message-ID: <CANNYZj_BVQ0CdwfTtMPHbNiAvY-o+H=uc9UOoenGc-X=VBM=zw@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
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
X-List-Received-Date: Thu, 11 Apr 2019 11:12:41 -0000
Content-Type: text/plain; charset="UTF-8"

You need to use vardepsexclude (read in the bitbake manual how to).

Generally I am not a fan of putting timestamps into anything
yocto-built, it's prone to issues like this, breaks reproducibility,
and also subverts sstate if not managed carefully. I'd almost suggest
you build the image with a default name, and then rename it after the
fact when deploying to some artefact storage.

Alex

On Thu, 11 Apr 2019 at 11:30, Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Thanks
>
> It was a typing error.
>
> In my recipe I set the value as you told me.
>
> But the ERROR keep on show
>
>
> Il 10/04/19 11:59, Mikko.Rapeli@bmw.de ha scritto:
> > On Wed, Apr 10, 2019 at 11:47:42AM +0200, Mauro Ziliani wrote:
> >> Hi all.
> >>
> >> I need to change the default IMAGE_NAME of my image recipe.
> >>
> >> I make my image recipe as mysystem-image_1.0.bb and I'd like to produce
> >> and image (tar) with the name
> >>
> >> mysystem-image-1.0-<datetime>.tar
> >>
> >>
> >> So I setup
> >>
> >> IMAGE_NAME := "{IMAGE_BASENAME}-${PV}-${DATETIME}"
> > Should be:
> >
> > IMAGE_NAME := "${IMAGE_BASENAME}-${PV}-${DATETIME}"
> >
> > note the added $. I guess that's the bit which confuses bitbake. Been there, done that
> > too :)
> >
> > Hope this helps,
> >
> > -Mikko
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

