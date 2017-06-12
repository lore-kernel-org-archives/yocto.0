Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 530A8E00B67; Mon, 12 Jun 2017 12:14:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17D76E00A38
	for <yocto@lists.yoctoproject.org>;
	Mon, 12 Jun 2017 12:13:59 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id u19so139067801qta.3
	for <yocto@lists.yoctoproject.org>;
	Mon, 12 Jun 2017 12:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rjkT5gGkoZxmt0+8Ap4GgQenjvkD4wcENICt2Ajv7aw=;
	b=s7f/vqKYkBu/FzN9kWaZ2TZdtVctwN5+hGWAojsVJC6P1IaT/3/FuYQsK8HbAtXO7e
	2SILTEKmEXGE9/2f7o3yavp2FUo83JuNic9fOnBoqYAybLAmf+c2y018qbPoCW47Kinu
	f/+wMSw4IfeJCaPeEKk+RNLWKjgNcoE1lD9CfNGXbuGj0cuc9MpAKrpYOlwlGSIqCJPR
	rAYndPowS47GD6ZYAj5TdVYlMpzeJt/uuCvOV1u6n+POTnvmkjxetkTJPjnDCm5qlk+Q
	F3qS0mPRCcsERLmGjP/XCKYjOOvgx3aNjIEbYjtNNhekbLM1Nxr/OS301BB8Z+GF2joi
	1IYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rjkT5gGkoZxmt0+8Ap4GgQenjvkD4wcENICt2Ajv7aw=;
	b=ox1WmXdFYcq9g5h/i8o2GojyGqbR8vUNVRd1Lz6PaPC2xsHVsPkWp46P4YvPDvGPHY
	kFgVTuphdZoqt1yH/ZXHQD9/M/rPVAD+opCL24vqC3L4FAMNku7gXkyyG8ZC8fkrX0zH
	cQt1UaAgRHL0DIHs1r4iF2bceTaQkWYAiEWA9PJRN3Q3jqujGmLAC7kTM18wQa4WIY05
	6NKORhIanF3IyVkIHUEWE0To4EFgejapxgwFnKTp0Cf5V+3sEiqQa6z5UA7t64UG7d1C
	Ok8SpUaA8vJCj6DPaNfd4/NKxY3X4rRcThd9P+Y0vIeojJMQHvaM3hhfgldZNMJNddTy
	YKKQ==
X-Gm-Message-State: AODbwcDSU3/fUwdst3uf0dp7dKkP+xn+HRLsldQJGyte89ZWKyGipKU5
	lEupM0zeQCdrukgTboUpk4MWRARFBLyr
X-Received: by 10.200.43.99 with SMTP id 32mr71700436qtv.6.1497294838982; Mon,
	12 Jun 2017 12:13:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Mon, 12 Jun 2017 12:13:38 -0700 (PDT)
In-Reply-To: <CAJ86T=ULdJSPwcCzRGpLPAR0rzEPsFcx8YxFmBHqGO-XB4130g@mail.gmail.com>
References: <20170612162218.11449-1-Martin.Jansa@gmail.com>
	<CAJ86T=ULdJSPwcCzRGpLPAR0rzEPsFcx8YxFmBHqGO-XB4130g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Jun 2017 20:13:38 +0100
Message-ID: <CAJTo0LbD0BZ=kEKfGTqY+Ae=HsmDdVZj_4NJKhe8eW+NHrrVag@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-gplv2] gnutls: add use-pkg-config-to-locate-zlib.patch
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
X-List-Received-Date: Mon, 12 Jun 2017 19:14:03 -0000
Content-Type: multipart/alternative; boundary="001a1146fb46007eb40551c81fb1"

--001a1146fb46007eb40551c81fb1
Content-Type: text/plain; charset="UTF-8"

On 12 June 2017 at 20:04, Andre McCurdy <armccurdy@gmail.com> wrote:

> Would it be better to just make the meta-gplv2 gnutls recipe self
> contained and stop trying to share a .inc file and patches with
> oe-core?
>

Yes.

Ross

--001a1146fb46007eb40551c81fb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 June 2017 at 20:04, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":209" class=3D"a3s =
aXjCH m15c9db3ee673e7ac">Would it be better to just make the meta-gplv2 gnu=
tls recipe self<br>
contained and stop trying to share a .inc file and patches with<br>
oe-core?<br></div></blockquote><div><br></div><div>Yes.</div><div><br></div=
><div>Ross=C2=A0<br></div></div><br></div></div>

--001a1146fb46007eb40551c81fb1--
