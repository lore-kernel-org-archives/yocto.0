Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB7E8E00790; Thu, 24 Jul 2014 01:31:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70AD7E006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 01:31:11 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id i50so2845546qgf.6
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 01:31:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=wg2XYBrQq6/YuvTT/1sCb3PaMr+u6+LCh2ap4wMBfLc=;
	b=FC9R6Z7BHh4ZB1RT51+IwEHz1zzfFMiID6jUJGlqk2Xk48oQfTsm1DfqfLQ7BS/DFv
	MrO2vmPuLlwYDbsLKjTf5/sDHoLAmIve1D5BIbgAYRxjA5NThU9TgKznRV7IDIsUfPVk
	iJu6slpiav8qzmchqFbPgVkHB3pOwQYgPXnmmrQEaOOYcJY0+Yhno0UitF4vrmQXwQUh
	xeZU76U0NirnUif48lvZdHTpvdIze7qLOwYCRbsnAmBrZpG6vrB8Zf6G+NS0Z6xr0E+B
	IcZqmFf4csuc+efArbwQGoWGENEweuSs2HAFj6kpvAvurMtuloIZt4xrFwq4FYL17nFX
	sM5w==
X-Gm-Message-State: ALoCoQkrEA1xlqyuX6vI4LIxtJaEpVIqu3VNufFmBeZxDMWW4evrGF/foDIAIZc67QDobJjtz6iX
X-Received: by 10.224.43.77 with SMTP id v13mr12139670qae.34.1406190671035;
	Thu, 24 Jul 2014 01:31:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Thu, 24 Jul 2014 01:30:50 -0700 (PDT)
In-Reply-To: <CAJrRHk6Ygt8Z2Nfr6r5B6WAhKU_ne8H-KcAG5mvV8R=FhgCevw@mail.gmail.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
	<CALkREYBOB8sO2SorLLshZZGtk6f=PJpEtUi=sJnHtkGHerm7wA@mail.gmail.com>
	<CAJrRHk6kFWpzUc+r4pd9xmZo+pn=f1a5R5oVtW1yLtqHurFMKg@mail.gmail.com>
	<CAJTo0LaOV7EJDuAnhzjbE+-e1R-75hCmrxB3FVm=yRWzwRLhMw@mail.gmail.com>
	<CAJrRHk6Ygt8Z2Nfr6r5B6WAhKU_ne8H-KcAG5mvV8R=FhgCevw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Jul 2014 09:30:50 +0100
Message-ID: <CAJTo0Lap-VyZ0Z=+mqc1hj=6mjhasSLYmzY3bwn3QgRBLXuOZg@mail.gmail.com>
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Thu, 24 Jul 2014 08:31:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 24 July 2014 08:30, Joseph Andrew de la Pe=C3=B1a <jdelapena@lexmark.com=
> wrote:
> I've mimic'd the bitbake.conf way of adding -staticdev. Apparently I got =
a
> QA error stating that there are already multiple definitions of -staticde=
v
> for my unit.

Your package will already have them due to the default values in
bitbake.conf, I meant you'll need to add those packages to your SDK.

> BTW, what's the purpose of ALLOW_EMPTY_${PN} =3D "1" and ALLOW_EMPTY_${PN=
}-dev
> =3D "1"?

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-ALLO=
W_EMPTY

Ross

