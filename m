Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7067CE00B47; Tue, 20 Jun 2017 19:28:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C68E00B2F
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 19:28:39 -0700 (PDT)
Received: by mail-wr0-f169.google.com with SMTP id r103so115002979wrb.0
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 19:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0U2OJNE213haAwHPLgTtfmGlaU9I1pUB0D+8Kwf8buY=;
	b=MPfP+fgudFDh5uXqCLu8wdTanoiZC4hRy51mS8GrbtB/3vPOQpHTm8kZIHFCCxTiWv
	5goVU834J185Tx2wG/cSm51kLo8UhAQFsJJrFcYC5DibqVA4ESZ7VKHIQqs3MHZLU/eb
	HOsEMS85Cp7fdHxXAT72GsdYXjVx0AfH2pySr4gescVOaWTRqXojA/cB5sDHmz/P1Pmk
	GLWTKSY109R5Mqu2CYECvFhERjWCeFyUEpSCfX4Puy2IASA+G479WVxo5jL5A8V94s4N
	XmgHK18V5CYEPAcyav9GHscxNL5xzLy9/GVFKUW7pBMPWsyenlJLrSj/0zlBIa5M2bl3
	WHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0U2OJNE213haAwHPLgTtfmGlaU9I1pUB0D+8Kwf8buY=;
	b=mByBv3sf2E2B96J0q21M5Y/b4Ctf2BuXqbRRZP/vwDuIINUEesJ/ycYj27v5HOEtn/
	ku9n8O4rO77nnQz3wHXNx3PZqEiX935TK+jF6zZG/R5bnOvAfDJxbKrFpydgQSwtW1fT
	WigDl9S30uuLJoSiSJUvWtihy6njoGRk9sJR/Llsj0JbE7nnZ16H/8We2K154d+XW03/
	PCjVOwCZsQv57GSL0+tKq3jZEuoDUYmG6rzA1gP/me/zp1hFk5RFS+mLloQqQHYvbO12
	M+1WGh0Kx7q+wI+ZLYw6c3rsGaAQ6OM6mCwIUdwcDdnMXspn2KGFkozjCFZvFnDsp4LG
	qPmg==
X-Gm-Message-State: AKS2vOxjZRCOqXJZ/RqPbzdNYJsAY95XssfJuYaiSa9oIRzNuUFCBJJ2
	eF6QSkyzZ3EWsqVm/JJw1LCU7w/LPA==
X-Received: by 10.80.151.37 with SMTP id c34mr23907871edb.30.1498012118612;
	Tue, 20 Jun 2017 19:28:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Tue, 20 Jun 2017 19:28:08 -0700 (PDT)
In-Reply-To: <61e45e0b-1fda-ecf5-51eb-437284c94d02@gmail.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
	<CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
	<dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
	<CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com>
	<61e45e0b-1fda-ecf5-51eb-437284c94d02@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 20 Jun 2017 22:28:08 -0400
Message-ID: <CAMKF1soeiztrJEjDzLJ5k3t3QzyuK7qqJ-orW+1SPBR1b-oswg@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gunnar Andersson <gandersson@genivi.org>
Subject: Re: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Wed, 21 Jun 2017 02:28:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

add it to chromium recipe itself if you dont have a bbappend for it.

On Tue, Jun 20, 2017 at 9:53 PM, Riko Ho <antonius.riko@gmail.com> wrote:
> Ok, thanks a lot for the parameter idea, where will I put that ? local.co=
nf,
> bblayers.conf ?
>
>
> On 20/06/17 13:08, Khem Raj wrote:
>
> On Mon, Jun 19, 2017 at 8:32 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>
> My memory is 8Gb and swap 8Gb, 8 cores i7, may be a homemade cluster can
> help ?
>
> add something like
>
> EXTRA_OEGYP_prepend =3D " -Dcomponent=3Dshared_library
> -Dremove_webcore_debug_symbols=3D1 -Dfastbuild=3D1 "
>
> and see if that helps.
>
> I compiled firefox and it worked well, but still wondering why chromium
> didn't work.
>
>
> On 20/06/17 04:01, Khem Raj wrote:
>
> On Mon, Jun 19, 2017 at 7:21 AM, Jacobo Aragunde P=C3=A9rez
> <jaragunde@igalia.com> wrote:
>
> On 18/06/17 20:10, Gunnar Andersson wrote:
>
> Riko Ho <antonius.riko@gmail.com> wrote:
>
> Hello Everyone,
>
> I tried to compile chromium but never succeeded, took me already 12
> hours and stopped on 99%, I used bitbake for doing it,
>
> Not sure what would cause it to just stop and it could have been some
> temporary glitch?   Maybe you want to provide some logs of your build if
> Martin's reference does not help.
>
> Just a heads-up, if it stopped at 99% it probably was in the linking
> phase (you can check the logs under
> tmp/work/$arch/chromium-wayland/$version/temp/log.do_compile to be
> certain). This phase has a very high RAM demand, you could even need to
> temporarily increase your swap space to go past that point.
>
> linker takes a whole lot of memory here, if you have < 8G of RAM
> its likely to fail with out of memory errors. Can you check your dmesg
> and see if there were such errors in there
>
> Best,
> --
> Jacobo Aragunde
> Software Engineer at Igalia
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> =E8=B0=A2=E8=B0=A2,
> Regards,
> Riko Ho
> /*******/
>
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> =E8=B0=A2=E8=B0=A2,
> Regards,
> Riko Ho
> /*******/

