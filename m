Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D13BE006C7; Thu, 13 Sep 2018 02:25:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95741E0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:25:13 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id h26-v6so622907otl.9
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=33A5St3HI60yKHvwGJLRN64yt+2RBwYukG1rIKvKNPw=;
	b=rRTiZ+fDRvQtiDuATMZDynQ9rFXdrpbgy8M9kVTVS0wZXBC8uiGI4y9ywXOnjGbYZZ
	TdCiKuPz9MbnSSUzTSY34TXGlQV/APBOivGNwWaQZceo7/rfmvmJecdQenqS2TSPPoFg
	/6n3yWgcRcuxbfe6ofKqYmUFkY6kelJ1mlBsj4/4UDiRmEokdMlnfO1oQQHdPGD9VVoM
	uXLOvXx83OrB7PF9GqEQgyyZw172pI6a+OUVzQLawRpwZjhHWsgEChMo0YbVx96Rr0j9
	F+IaMJ+niE2qN5u17sMafjXjp6EtHvqNi2nwgMTEKLlQgLpbzdEGU3klKiZ8xXfE8WS4
	LTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=33A5St3HI60yKHvwGJLRN64yt+2RBwYukG1rIKvKNPw=;
	b=jmxsYlwjCC5idn8Ve12yxL9YoxgXoYiFDgDjH92E0+a+HJqDorBmTc/pVgcjrRctO7
	scABoplyMMJU73xcVKDwpTrdp4I1jzpmumJrj5+ukNFO1Bti5WOiMxU6r7KHPkQA+Nbf
	6+z0xlCot7x3vGcb1FcQVE5rMmUH7JIGc8zD0nleHzw0F5azKjDOV9FeFaFAjv9HjQc4
	kE305qbHhS3rtnTBnMCQcLbGw06gCMtm71MAd4P3PtmJRY2/mGGhxFD29WG/NIZFjB62
	QznawH9zBEi9HrYDd3E1vpCmhYj9+qJgGqh8u3abgHK/ftj4Y1UDKhf99RcAt2/o6EbA
	9v9A==
X-Gm-Message-State: APzg51BCfCoSvEetYlQuNxMR6TAWR69xC3zgH7owtVggzzeSOBgNt+rx
	pR9/BUYD0wOUYMM89P2XZbRzYwokJgu5NTuIgV3XIg==
X-Google-Smtp-Source: ANB0VdaMjvrAZA6/9G8nbXJtAep42l4lgIGykm1hBKClVn1tnfmfCw4dp5D8Jy3khbUlYQm+c8Jti0GNbnNK5k4npn8=
X-Received: by 2002:a9d:514a:: with SMTP id
	u10-v6mr626981oti.241.1536830712963; 
	Thu, 13 Sep 2018 02:25:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7ac:0:0:0:0:0 with HTTP;
	Thu, 13 Sep 2018 02:24:52 -0700 (PDT)
In-Reply-To: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Sep 2018 10:24:52 +0100
Message-ID: <CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inheriting native.bbclass explicitly
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
X-List-Received-Date: Thu, 13 Sep 2018 09:25:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 13 September 2018 at 10:17, Dudziak Krzysztof
<Krzysztof.Dudziak@gemalto.com> wrote:
> Is this rule=E2=80=99s scope literally each single recipe separately
>
> or rather the compound .bb file + set of matching .bbappends?

Compound.

> I am going to use that method for building autoconf-archive package
>
> as for device built here this package is needed only on build system and =
in
> no case on target system.

No need, the recipe already has BBCLASSEXTEND=3Dnative so you can just
depend on autoconf-archive-native.

Ross

