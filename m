Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08EA2E00C43; Fri,  7 Jun 2019 03:10:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64835E008F2
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2019 03:10:01 -0700 (PDT)
Received: by mail-io1-f66.google.com with SMTP id e5so974613iok.4
	for <yocto@yoctoproject.org>; Fri, 07 Jun 2019 03:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=YGGu6ElwD/guuPim46L2ZPne+J5wqSiuV8ozga4dsek=;
	b=bIi2rvsaUpoAGJw3MTg4x3QOOHOPp38GJ+JwZy6xOue/MlJOWxyfAMjwxSjlGG3Kwt
	pqzYbxl9eHnsodEmRTLwUonSsU9GGDEYaSehoL2WbCeiWVi9C4Sd02COCEZTeI9FcEwH
	n0pzEPfLiT4ygDZFY21/3AxBcD2dmgeiKCYqAxd97miyEM7Y0FjtBm9WyD9pxn3/Cru+
	eEH+NmRjJHzph13J+3mpOksBf5aznDffmZpjKyjCHA305sKD6rATp8/mPDHISaJIXhy4
	JIQg6nVEdZzlogpyM/SEd+tp2cQukiJd4OPPDnARWqtAEpkGdYn7S6vQeNysLWxD6uyi
	dXZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=YGGu6ElwD/guuPim46L2ZPne+J5wqSiuV8ozga4dsek=;
	b=J6O0raRGV8seZ61az/KCTdopenTHZQmRIqW4OMOAhNgp8s3p24uEakdimboYAtaA21
	Nvs9/iNI/ClYyKNKG2V827Z2Qtiofe3vO4eOjSdlDAPvGeJwjx12Z+5KzjCvPO1fs8kM
	Wy8FUjR5nHVnfjBqw7HB1LtqUTR9uQCoQXjvp9JrqHnF3YA8gOiOELiNsF5IRbwKqp07
	P/SeFUOFMt7gmTqk2A3596eVp/JZFV5k43B5TgkypT9kz5RVYQpfAdHR2GLk/6/HEbFY
	dv1Gouse7zE6dhpX3mOO6jFof9ZyxWVXX9IG06/Zh9TS+jGLrJ2HLy/cb9pvhOxkkE7l
	ABlA==
X-Gm-Message-State: APjAAAVenO/VtEBxQIaIAiYa7flHQpSlYrUX5qafquEh05km8gVunnxo
	V277BKKX0zQEDE415nOaD0KVVJL6/e+U/JO0v+w3E4IxfYc=
X-Google-Smtp-Source: APXvYqwN93cTrsLvLFlYzMXXqCxU9Aog5d56hgLarVwY5cHgxWc3x5O+xDfcgQHdzqfVP1p6qQlD/j3+qns1UCsLdXc=
X-Received: by 2002:a6b:38c3:: with SMTP id
	f186mr31926508ioa.187.1559902200947; 
	Fri, 07 Jun 2019 03:10:00 -0700 (PDT)
MIME-Version: 1.0
References: <VI1P101MB01576372CF3A49D74933DBC3DE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
In-Reply-To: <VI1P101MB01576372CF3A49D74933DBC3DE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 7 Jun 2019 11:09:49 +0100
Message-ID: <CAJTo0LY4BHK4zSLZCyaH_0nwG9MPcmgFaTbkOuWXZ6+NGN2AJA@mail.gmail.com>
To: "Smith, Peter1 (GE Renewable Energy)" <peter.t.smith@ge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security] AppArmor 2.11 no longer available on Ubuntu archive (sumo branch)
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
X-List-Received-Date: Fri, 07 Jun 2019 10:10:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That is deliberate and by design, recipes shouldn't fetch from
Debian/Ubuntu archives for this reason.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=3D462d76=
700a3c2748067d4685db8985c511b1b46c
is a patch to master that needs to be backported to warrior/thud/sumo.

Ross

On Fri, 7 Jun 2019 at 11:07, Smith, Peter1 (GE Renewable Energy)
<peter.t.smith@ge.com> wrote:
>
> We are building with meta-security (from sumo branch) which currently use=
s v2.11 of AppArmor, it seems overnight that the source archive has been re=
moved from the Ubuntu archives. Does anyone know if this is a deliberate ac=
tion, or if not who to contact to get it put back.
>
>
>
> Peter Smith
>
>
>
> Senior Emerging Technologies Engineer
>
> Grid Solutions
>
> GE Renewable Energy
>
>
>
> -NON PUBLIC-
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

