Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CCC0E00B6F; Sat, 26 Aug 2017 16:22:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46E32E009F5
	for <yocto@yoctoproject.org>; Sat, 26 Aug 2017 16:22:06 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id h75so5571481pfh.1
	for <yocto@yoctoproject.org>; Sat, 26 Aug 2017 16:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=sJPFpeVtmzmMBtCVBXmkGpgr9jjZYz8vF2FK605oLuM=;
	b=DBEqjZiZ5yyNS23eLisTDNzOM8vlqx/56acePbyJcgL3GQ6hlGkRX+J07eJ353KQ3Y
	dznGN1YANf//NGlFeoK9qwhJHP7PyAiQVCrO49eCdLreF5Dna75/OkzXXQZhNe03uI0S
	ueh7d+1oxiKrv47yoAMGlBwj1Wv4SioHNh8PxZMpUMDsDVHRQcr+o9i2aDbrwgUk1qr6
	ewuCoEy3ALA0p8VqncZxGHD3j0y40gyx2JKmMx5uNhTwgUNkAXILaaIGKPHTsuRFGBBN
	yefhDrt5yR0cm9ENfH5rCJ7nB0qN3v0s7gWGh/KJOKb/G9WzSKZUYi7HDn82VJC+rhdt
	+cYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=sJPFpeVtmzmMBtCVBXmkGpgr9jjZYz8vF2FK605oLuM=;
	b=XoULEAme93tuoDZlf74UJOU/hInN84B7xuiVtnviPRR5OoZkbrv9yQwzwmJKmAvZF6
	AH/4RLVq5xQSDuM+QHb7mEdygg8B5TFpgphqZmYWQo3myrO553ImupheFusYfpeeYoYf
	PCUBMIAGFeKFfXbcG88AAajS7hBk1ZN1OyCYdIILWQXtFPzBIZaxkXgKb9374sgg4aew
	oYEc2IbELRNFvSJzeaDxBVqCh4YVAm5x0dxolRBFKNLN3qkWCgVSS49+OCGA8+vnqeWR
	BBgPHEw6a4UvSzAL6FrvuaGlhx65O0x4yGOkpv5GEEDrRPR3Y50ZX348uzBN2n3Z8OW0
	P5pg==
X-Gm-Message-State: AHYfb5j0f6WuspcXDrwmiJ0wYRjjK22eyzFxCDuFG9Fxh5FqJsnIhnRT
	D4QndO2Yqi4ngg3P/TLLOw==
X-Received: by 10.98.38.1 with SMTP id m1mr2893774pfm.27.1503789726213;
	Sat, 26 Aug 2017 16:22:06 -0700 (PDT)
Received: from ?IPv6:2601:644:8780:2b00:edcf:9ab3:5832:ba33?
	([2601:644:8780:2b00:edcf:9ab3:5832:ba33])
	by smtp.gmail.com with ESMTPSA id
	w66sm17037517pfi.63.2017.08.26.16.22.05
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 26 Aug 2017 16:22:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Bill Jenkins <bill@korgrd.com>
In-Reply-To: <001201d31e3e$12964540$37c2cfc0$@neuf.fr>
Date: Sat, 26 Aug 2017 16:22:03 -0700
Message-Id: <C1092D3D-2393-4240-BB9E-09C36F32135D@korgrd.com>
References: <001201d31e3e$12964540$37c2cfc0$@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: raspberrypi3-64 target not booting
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
X-List-Received-Date: Sat, 26 Aug 2017 23:22:08 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


> On Aug 26, 2017, at 12:36 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> Hi,
>=20
> Are you using vc4 as graphics, or are you using the default userland?
> If you want graphics with 64 bits, you need to use vc4.
>=20

The raspberrypi3-64.conf file has the line:

MACHINE_FEATURES_append =3D " vc4graphics"

I assume this means it is using vc4? There is no use of "userland" in my =
build/conf
directory. I am fairly new to Yocto, so I am wondering if there is a =
definitive way to=20
tell whether the vc4 graphics were used to build the image.

>> Any ideas on how to get the HDMI port to function the same way as it=20=

>> does for the 32-bit case?
>>=20
>=20
> Readding the mailing list.
>=20
> what you have is exactly what I had when I submitted the port to
> meta-raspberrypi. Haven;t had a chance to revisit it. but this could
> be related to device tree files we are using here. I have had reports
> from other devs of having been able to boot into graphics using older
> kernels but I never got
> that far myself.
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20


