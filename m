Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BA38E00A54; Thu, 18 Oct 2018 11:30:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7E21E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 11:30:22 -0700 (PDT)
Received: by mail-ed1-f68.google.com with SMTP id y19-v6so29158590edd.2
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 11:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=0sYR1SPVABNrWoG821rdD3bxGVrH8JQFOWk5yi0lOWc=;
	b=laiWtlmpIHt/HxnoIBGKy5RJDW9EgeBRgr5UY25MEx51N1lozrq7nBbLi+teV5+hkz
	LoRXCH+/7434j8v8T83PgV/z1Dy5XK/EK44wQfPb2mKn8NP9FaX511mqxzwWlnuJFwSZ
	pLwYzKQSj4aFQDWY1Kqx2CQ/6WZ6Zisc24y1qCvMft+d2y49GRpdp1+HBoKFsMBtkhTf
	WUlwH+XCQtCJlgSvQUW0KYTtspsMshWSOKouU1tafs3Nbr9eJC78fg5cQDo4ovuwZW5y
	7abBX3vwhY+ipNaFQH09Bn4wM81cj/AXbFSjKOaJNrJRliC3ePD1c641NdkZMFB/65fK
	0uxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=0sYR1SPVABNrWoG821rdD3bxGVrH8JQFOWk5yi0lOWc=;
	b=cFPJ0oHTCn0t29tQUhaoE0Usl1URP+Oyjah6Q80D8nnXJyfF16VblKDB6GKnB2DJ4y
	Z4PYCH/+t3LgTtzedQRrkLstsSm+jLF/H7dHwhJSIsFiIcgpVJ/JLmhwPICAILJepzvZ
	QEUsB6qEKkIE2GCdyQQz2PUhNDarP8bsjV9VnBSrpMlIKXsluTTmzLIEPlq8xLEMLfWx
	09NVFUbFsMtIjrKEnoLcnxerQ9G7/wLKq9faHpoiuWYCcM685grrIwy/Ep7dxT5SRII0
	FlJm+A2XXZfT6WFCjvSVnCzPjLnxLXRYvoSwKgyzHNo6ea9e7aK1T8UarE/T1Cg9DQr7
	Di/A==
X-Gm-Message-State: ABuFfoh1bPeDQSIY/9ZN0jhZeoE9hyEx7RinmCW6gAjPYYxEazSbkR4x
	Nq8/hi00NdbpCAXRrhRYwm1eFEYw
X-Google-Smtp-Source: ACcGV63/tJNs5lUDtv7I70EGFklYqD8+3WKiPdsU02DA9v3dllvkb2lMMKmK42E9FqGXPDIZZIW17Q==
X-Received: by 2002:a17:906:4747:: with SMTP id
	j7-v6mr29366639ejs.216.1539887421795; 
	Thu, 18 Oct 2018 11:30:21 -0700 (PDT)
Received: from ?IPv6:2a01:598:8085:7679:d16f:32d6:504c:f8c1?
	([2a01:598:8085:7679:d16f:32d6:504c:f8c1])
	by smtp.gmail.com with ESMTPSA id
	g11-v6sm8193829eda.28.2018.10.18.11.30.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 18 Oct 2018 11:30:20 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16A404)
In-Reply-To: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
Date: Thu, 18 Oct 2018 20:30:17 +0200
Message-Id: <57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
References: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
To: Aaron_Wright@selinc.com
Cc: yocto@yoctoproject.org
Subject: Re: Working on Dependent Recipes in eSDK
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
X-List-Received-Date: Thu, 18 Oct 2018 18:30:23 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t think esdk is designed for this kind of =E2=80=98full stack=E2=
=80=99 development. You can go back to working directly with yocto layers, a=
nd skip the esdk altogether. Devtool will work exactly same (minus the sdk s=
pecific commands).

Alex

> On 18 Oct 2018, at 19.37, Aaron_Wright@selinc.com wrote:
>=20
> My team recently started using the eSDK for day-to-day development.=20
> Previously, they were using the bitbake command to build, which works, but=
=20
> has overhead. Yesterday three different people came up to me a question=20=

> about workflow with the eSDK, and they all had to do with dependent=20
> recipes in the eSDK.
>=20
> For example, a developer would sit down to make something new that relies=20=

> on a library provided by a recipe in the eSDK. So they "devtool=20
> sdk-install needed-library", and get to work. While working, they=20
> discover, I need to add something to this library I depend on so that it=20=

> does what I want in the way I want. So they "devtool modify=20
> needed-library" and change the source of that library to do what they=20
> want, and build that library using its build system (CMake or Autotools).=20=

> Then they return to working on the new something and find that none of=20
> their changes to the library they depend on are available.=20
>=20
> At this point, they are lost. They just start trying things to make it=20
> work, like "devtool build needed-library", which successfully completes,=20=

> but doesn't help. Some people also try to use the build system of the=20
> library they modified to install it into the machine sysroot of the eSDK=20=

> with a command like, "make install=20
> DESTDIR=3D<ESDK_PATH>/tmp/sysroots/<MACHINE>", and that actually does help=
.=20
> They can now use the changes they made to the library in the new something=
=20
> they are working on. However, when they use the "devtool sdk-install"=20
> command again, their changes to the needed library that they installed=20
> into the machine sysroot are reverted.
>=20
> So--what is the workflow they are supposed to use?=20
>=20
> Pushing the changes to the library upstream, updating the recipe, and=20
> waiting for a new eSDK is not practical given that the developers may have=
=20
> to iterate on the changes to the library quite a bit before they get it=20=

> just right for their new something.
>=20
> Is there a way to update the eSDK sysroots with recipes that are in the=20=

> workspace? Could "devtool build" also update the eSDK sysroots? Or is=20
> there a different way to get this done?
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

