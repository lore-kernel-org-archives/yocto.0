Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AA82E00ADB; Thu, 29 Mar 2018 14:34:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f193.google.com (mail-yb0-f193.google.com
	[209.85.213.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07306E00A1E
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 14:34:09 -0700 (PDT)
Received: by mail-yb0-f193.google.com with SMTP id a12-v6so2457052ybn.13
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 14:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=l+espca8rs0RuIkuxu6vg0Lq1yVnrc+v0NEGvPk+WjQ=;
	b=fkr9VZcNydWd+mOJwTsHEXcY8QbQwYopq9y4Qm10pqbkOm2yGag4u/dsGszRu+WNEM
	oolkQb1hdZAE0aBro7bisSWGW4N6+8NCLYiz0if63WpkXKfP0fDxsT/X2tylZgLam1LL
	2hVaPhRzUmTnKH+diZXdshnhHG2aiQ5WPdkPsZJrf08VaizdnvjIkIn27Xdk9PvDs/Mn
	x1/yLlfFf+MCwDliNQSgQ+DcWT/mSr2O0VMkBeE9N0xvCAQe2pLzPc1ArRBdpODYpuHD
	0/gsKvGwzfqooPx3ujqTIkm7dTS9u46YVOEFxis8fNvLSEOpOA1Hl48wW5P3szaess/E
	Pm8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=l+espca8rs0RuIkuxu6vg0Lq1yVnrc+v0NEGvPk+WjQ=;
	b=A8nq1o2hq+kBViHN4poGKtETSXuz7sr0zYftlzKJsTpj5XRrn8PbzIEu0tJUfjyrAe
	2oaQola+KcgqlEoCrbjkmjNksV3/pR3bc9AdwngSlqXWRCo6D7/6ZuiYgtK5nAeI2SCM
	Nx7VjwBZ64mNj1GRBCPnEoUyxWoKb8myrWF++QCQRge7s/OlHr0l5WkjkN4ol2nDinAn
	HymVxNGNZNpsPEYAZv4Eo4WLIihlN5bedhHlBB+LsitdbpGvTufX/DHoSQJMVe/DNiNx
	2ALkDPV8a7w7zb0eOQjK6z+lKsBfGvdcjBlEB1pTcByvVB9hO2NUJC9gd6VnKK9nIrzF
	YVRQ==
X-Gm-Message-State: AElRT7GKwP/Qq3IhfaUYEE2/gYUpybaSwjBm0mGr2xRcyUIEdLuJPX75
	640EHz0K2dWApUA6wKLT7Fo/kCfex7rMe278F14=
X-Google-Smtp-Source: AIpwx4/oZs/C7frfSKZz9m94mvnto7LvBGVU7Qe7IXcKQf+JEWhOn5Xpm7qRhueO3ehsfGRmIwLt3Gy31tUh36/i0Ak=
X-Received: by 2002:a25:8c3:: with SMTP id
	186-v6mr5971583ybi.145.1522359249112; 
	Thu, 29 Mar 2018 14:34:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP; Thu, 29 Mar 2018 14:34:08
	-0700 (PDT)
In-Reply-To: <CALbNGRTifa4-1SW2+zNCB_1a6+wHAjAYigMA1chrNMFiDb15Kg@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
	<CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
	<CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
	<CAHUNapQP=2OYu6qjf5QLmMbcurXRFo_O1fWg0_oiqCXDZykccA@mail.gmail.com>
	<CALbNGRTifa4-1SW2+zNCB_1a6+wHAjAYigMA1chrNMFiDb15Kg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 29 Mar 2018 23:34:08 +0200
Message-ID: <CALbNGRRR2z6bZFtU=aRBrY8FqAxU1YLtJaD+TGAw3yA-Vr+6AA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 21:34:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 29, 2018 at 11:23 PM, Andreas M=C3=BCller
<schnitzeltony@gmail.com> wrote:
> On Thu, Mar 29, 2018 at 11:05 PM, Trevor Woerner <twoerner@gmail.com> wro=
te:
>> I've seen the 'Modifier 0x0 vs. tiling(0x7000000000000001) mismatch' err=
or
>> and blank screen hundreds of times while working on getting chromium-x11
>> accelerated. It would happen if chromium was trying to use the system
>> gl/gles libraries instead of the ones it builds.
> Then you should give that patch a try - change is in mesa-megadriver
> package (building images after mesa changes takes LONG...)
>
> Some appetizer: glmark on mesa 17.1.7 reports 110 / glmark on mesa
> 17.1.7 reports 145!
glmark-es2
>
> As said: will post this to mesa mailing list but for today I'll just
> dance on fast-nude-horse-party :)
>
> Have fun
>
> Andreas

