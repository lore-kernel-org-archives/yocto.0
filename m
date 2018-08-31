Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50203E009AA; Fri, 31 Aug 2018 06:19:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE001E007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 06:19:04 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id b15-v6so21544557oib.10
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 06:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=nmdFbqth8IIPFCRq/AShYA9imsPeg64e8ZcQ1H9gEkw=;
	b=KrsjispvBMOyhNE3gocc5dC4YMlcopAaIX4qT/2O0tbdhIvY6k8OmpQgzS+1M2xkF+
	prgKOtiuDYMamqSDmzMpSvXLaBJBmfjfDU2EQY+1DBPiMFqhdz2pyknSEVEpr55Tuzji
	/kWxsMX0bn5rWySI5vJeOMeYQYjvxwZNFvvXV+0097hOb/Gzs+Q1GIMMlQ/+jdcI6olo
	JLjKhxBmGa2Kq335Crwet6QTn2oxvaaHcuvBIsCmWJZAUKvJ2B7KSBN9jptQqFwlByS0
	IwldJtUijrr+Y5dHpYOtdmESAEvjor9Kb6eNa+IV/7KN1Gn7xpLLYmbFik3rchIFEEYC
	QSjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=nmdFbqth8IIPFCRq/AShYA9imsPeg64e8ZcQ1H9gEkw=;
	b=JDHF2N8ANGKZN8ORRmpgV9s+Cl0lwZaIGfZ93yHwVHA2HVtzaqVFVrZvmTMNDzUTcp
	/BHFItvlnFwLNutWAGhuecNUBFhoVnNANWojH2/AuWLB8q7+wjsyj8tePBUgEKLEL8om
	3IFde5Dm+3vlZdrbv05O3Y/we/nnezY0nSzic9lbTGOt4GEiwZhg6Mt3XxZldgK+Eg36
	l5urmz+Zr4zk75l3hTgWh5Ls2qS90GwWa3nilEkVlduVhqcadJAIyK//QkaducLsiATc
	obXWOTE6v/YlknUH4H7M36ZdBxGQj0UrVd6PsKtM9zkg+4Es3GrWGrjtFwsV8e14QDx1
	rL1Q==
X-Gm-Message-State: APzg51BkON2nhFTkrXVejdrJnSvX3d69dOtdYLSnYvVSLuvPyTjwLLHG
	AqctJDvfqCMFJwCmkuuvsvrejeEbfCnWyjH9Omy87g==
X-Google-Smtp-Source: ANB0Vda/k0Y0F1MQN4tkBgfQ7APN4YzECuZ6t37F0hJdWV3m7NKgkIk6JDLiSJEPrPVhq2q8aY+9e01mk3oGxUcCpoo=
X-Received: by 2002:aca:a04:: with SMTP id 4-v6mr7534917oik.203.1535721544296; 
	Fri, 31 Aug 2018 06:19:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7c0c:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 06:18:43
	-0700 (PDT)
In-Reply-To: <e941ec4d-4888-a7e3-fff1-89dcdcfb0831@luxoft.com>
References: <e941ec4d-4888-a7e3-fff1-89dcdcfb0831@luxoft.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Aug 2018 14:18:43 +0100
Message-ID: <CAJTo0Lb94GwaNeHJ6Nfoyu=AnJSb5i05ZExbK35TbZALoF2o0g@mail.gmail.com>
To: "Mardegan, Alberto" <AMardegan@luxoft.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disabling building PTESTs in a bbappend
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
X-List-Received-Date: Fri, 31 Aug 2018 13:19:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In a local.conf:

PTEST_ENABLE_pn-apparmor =3D "0"

(the overrides are prefixed with pn-)

In a bbappend just PTEST_ENABLE=3D"0" will work.

Ross

On 31 August 2018 at 14:09, Mardegan, Alberto <AMardegan@luxoft.com> wrote:
> Hi there!
>   the apparmor recipe from the meta-security layer fails to build in
> rocko due to an error when building the tests; I tried updating to the
> latest apparmor version, just to find out that the tests fail to build
> in some other place (the tests include sys/io.h -- which package should
> ship this file?)...
>
> At the end I think that the fastest way for me to get apparmor to build
> is to disable building the tests. But I cannot find any info on how it
> could be done in a .bbappend file.
>
> I tried
>
>     PTEST_ENABLED_apparmor =3D '0'
>
> but that doesn't seem to work. Suggestions?
>
> Meanwhile, where does one file bugs against the meta-security layer?
>
> Ciao,
>   Alberto
>
> ________________________________
>
> This e-mail and any attachment(s) are intended only for the recipient(s) =
named above and others who have been specifically authorized to receive the=
m. They may contain confidential information. If you are not the intended r=
ecipient, please do not read this email or its attachment(s). Furthermore, =
you are hereby notified that any dissemination, distribution or copying of =
this e-mail and any attachment(s) is strictly prohibited. If you have recei=
ved this e-mail in error, please immediately notify the sender by replying =
to this e-mail and then delete this e-mail and any attachment(s) or copies =
thereof from your system. Thank you.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

