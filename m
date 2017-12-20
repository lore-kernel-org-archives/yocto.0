Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FB9FE00D7F; Wed, 20 Dec 2017 01:20:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E463EE00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 01:20:32 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id o2so16593688ioe.8
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 01:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ClDZMwI3jMpPg2NLUrkmnFX1LMn8VAYQDj2ttC+MTro=;
	b=j7LGr6VmjsCY4PigRfWZKgNCEckZRkA1Tb7kt+Wcm8KKaZDIBdCk8pON06eBleMDu7
	Nb3kyWBNPGAw3nyPP49Ny7E2HiMahbprgcC3EYNrS0q8zlo2/HamHNVI/4c+QJ3qa/Q9
	Pfc21ImmwysoT2Cezlb6Z2LbgS3P6DWJW3lwIJ5oXvFulho3ZUtCmWm777/dUmrzEhSt
	n7eUJdXsdyELx56hTIbW+6GWUKN/8UDvB0H85ctEpCxVBm3gre3tIudMw6fpMCt8/L+q
	db4kh+o84Ldcr6B25TcdJpEhDustFNijV1H+LPelVj3tquLSFtBdKyWKtbvMNRKPB6ro
	PLIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ClDZMwI3jMpPg2NLUrkmnFX1LMn8VAYQDj2ttC+MTro=;
	b=pNGgwhwTie0Un1TKT3YFYMCiA3Ya+u6Z5i6yqhPOr5k7Z5GsR5sVrDS7QFTTlCKPX0
	Wm8AnssICWIbUg5E4Uo3yFkAjg8ka2ps4dkV0hVWoOiEf83Gg3hW5Z63myPul2PXLg9y
	a9B2jfoMMgTesSgElFco/8N6hiN/Wbvw7Hc6mqQUzzqF/35nRj60rkm4DkuUzzyOQBLK
	HGKmmBK4w94mY9aKkn7Xtm8C0b8bTu1e0gUmvgAXpZyXpChiDJdPQ2IvAeINnzZwkamK
	IBzd1OfW3MWC3KPClszZ3yNoDRPWLFj2L976BKxF+EX/nIsIdwI5MO6II9cwIF20S59f
	CGbw==
X-Gm-Message-State: AKGB3mLr9hOjOvgEAGAJ/IdYfJOy2+4v79ne2N/a+f//4tgy5fwcl8mT
	h1wiodm1sV1nsyKhipfXJCSjQEiOS9rBGAXtePEtFQ==
X-Google-Smtp-Source: ACJfBovZ1G9n6lDntMgykgucmAjO+KpFFoo37OhnySxZ9DiwJofe6JQ8CbeJJcuAlPcbPcsr9kD12ZR1A7ZF0zhwVZk=
X-Received: by 10.107.47.1 with SMTP id j1mr7504816ioo.217.1513761632324; Wed,
	20 Dec 2017 01:20:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.141.20 with HTTP; Wed, 20 Dec 2017 01:20:11 -0800 (PST)
In-Reply-To: <753da0b1-9a45-6ce7-3016-502689f2330a@vitheia.com>
References: <753da0b1-9a45-6ce7-3016-502689f2330a@vitheia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Dec 2017 09:20:11 +0000
Message-ID: <CAJTo0LZk7TGDC4_Dc8ofO2_HCs3nGfK7htV9TjWv72xVSXFsmw@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: call custom sh script in do_compile
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
X-List-Received-Date: Wed, 20 Dec 2017 09:20:33 -0000
Content-Type: multipart/alternative; boundary="001a11377fbc5ea9680560c21878"

--001a11377fbc5ea9680560c21878
Content-Type: text/plain; charset="UTF-8"

On 20 December 2017 at 09:08, Mircea Gliga <mircea.gliga@vitheia.com> wrote:

> Hello
>
> I have a build.sh script used to build outside yocto, after sourcing the
> build environment.
> I want to use the same build.sh script inside the recipe, in the
> do_compile task, something like:
>
> do_compile () {
>
>  ./build.sh ${MACHINE}
> }
>
> The build.sh script eventually calls make for several targets, release
> debug etc...
> The idea with this script is to be used both inside yocto and outside
> (after sourcing
> build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi), by
> reusing the code.
>
> What is the proper way to use a custom shell script to build things ?
> How to pass info from oe_runmake/EXTRA_OEMAKE ?
>

This depends on how build.sh expects to be given extra make arguments.

Ross

--001a11377fbc5ea9680560c21878
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 20 December 2017 at 09:08, Mircea Gliga <span dir=3D"lt=
r">&lt;<a href=3D"mailto:mircea.gliga@vitheia.com" target=3D"_blank">mircea=
.gliga@vitheia.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello<br>
<br>
I have a build.sh script used to build outside yocto, after sourcing the bu=
ild environment.<br>
I want to use the same build.sh script inside the recipe, in the do_compile=
 task, something like:<br>
<br>
do_compile () {<br>
<br>
=C2=A0./build.sh ${MACHINE}<br>
}<br>
<br>
The build.sh script eventually calls make for several targets, release debu=
g etc...<br>
The idea with this script is to be used both inside yocto and outside (afte=
r sourcing<br>
build/tmp/environment-setup-co<wbr>rtexa5hf-neon-poky-linux-gnuea<wbr>bi), =
by reusing the code.<br>
<br>
What is the proper way to use a custom shell script to build things ?<br>
How to pass info from oe_runmake/EXTRA_OEMAKE ?<br></blockquote><div><br></=
div><div>This depends on how build.sh expects to be given extra make argume=
nts.</div><div><br></div><div>Ross</div></div></div></div>

--001a11377fbc5ea9680560c21878--
