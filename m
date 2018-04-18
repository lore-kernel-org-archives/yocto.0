Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A29EAE00A6A; Wed, 18 Apr 2018 14:44:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0EFEE0073D
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 14:44:15 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id j18so2131629uae.12
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 14:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=auCLMjit34uenNoARETvm9EciCrElg+c5i058KKYnu4=;
	b=Zldxd/xPu5gO8vB4hIvGTB997N4caZsmFslBEsMh3ZODPylVbKTVO8cxPRG6tEN4Qg
	6ieh3A4dGxvR23w0vgeg2nsR0PJv2Hd1i4fV2SFgSEc4xgtF7Eoi0SgFymnf5/4KeCJj
	+WzO5xFEfrkaC/6zgkV/TZPD2hEnwSD1LuffswqvODsaEexYP1SgBC486OOC5SZKjcxC
	Lq31Yux11xRSJ6pMncVLikgNqrMjnCUCTfuRL3A3fSorPgQoNeP23iJAb72EjwF0ThoK
	/+Z+U4vlaUr2ntzmnmEsqBovVrLIqe05p7BCU/hWM+vh9VO67+O26xZu2tVHBxcQXbGm
	nAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=auCLMjit34uenNoARETvm9EciCrElg+c5i058KKYnu4=;
	b=cRP8GPz6COIR3nBPj9ebqtJ7lLWqZBZHL/hWBJJRlJLvUm0XBQIFG7qP4va2Tg7eLn
	6uP/eHXXciRFck0KpKKL/xQYH5JOYC1zS2ufIYxFPJ9bs4HNiFe4PWKjXf7vt/OSweti
	aXNXHE0RybMBX6xfGBq+x2IguRZ2zhv6xQGTY9gf2lpp35QgUBAlQH2hEKBLElVdVYpK
	u9pDzcpcpknWhNpW5rm9ALstB9fdRgcQqSMgejCCpxjm+3sFTwy5PT+ETBls+rxDooAl
	Ictdl9P/Hsk5bwL/XEIISbHMI7RLutX9QQ98NIZVksFkmIeN7QDCUSYp+QX+psnB/IFC
	40mA==
X-Gm-Message-State: ALQs6tB2L26zu+bDLYFhCQl6CYP0v5myBYSeVmqgFh4QdEdQCHcOXHPh
	kq3HAycYQp5p8rIfOZwgM5p/mBtTSjSCYYhE2vC0eV5f
X-Google-Smtp-Source: AIpwx4/mJxN7RJ2t0KH8lt/7cC6l1RQ40HasBxvF6S/efgBYu1stFmDa9kksYnQ1mrCjeCjXhh3EpQ20vgLIMdJnZK0=
X-Received: by 10.176.21.103 with SMTP id p36mr2691112uae.129.1524087854633;
	Wed, 18 Apr 2018 14:44:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.70.130 with HTTP; Wed, 18 Apr 2018 14:43:54 -0700 (PDT)
In-Reply-To: <AM5PR0402MB2721E721141756999BAAF315C4B60@AM5PR0402MB2721.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721E721141756999BAAF315C4B60@AM5PR0402MB2721.eurprd04.prod.outlook.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 18 Apr 2018 23:43:54 +0200
Message-ID: <CAC+thW2z+yjv8wn+BnUKh0-a0Mp=utWDYRYBX723dSqAW3B=dA@mail.gmail.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Extensible SDK and DEFAULT_PREFERENCE
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
X-List-Received-Date: Wed, 18 Apr 2018 21:44:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 18, 2018 at 2:41 PM, Martin Siegumfeldt <mns@gomspace.com> wrot=
e:
> Hi,
>
> I am having a number of recipes residing in two versions, some (developme=
nt versions) being down-prioritized using:
>
> DEFAULT_PREFERENCE =3D "-1"
>
>
> The source code is hosted at a private git repository, and the git versio=
n is selected using 'AUTOREV'. The extensible SDK renders successfully, how=
ever the installation (by third party) fails:
>
> Traceback (most recent call last):
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 412, in DataSmart.expandWithRefs(s=3D'dev+git${SRCPV}', varname=3D=
'PV'):
>                  try:
>     >                s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
>                      try:
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 111, in VariableParse.var_sub(match=3D<_sre.SRE_Match object; span=
=3D(7, 15), match=3D'${SRCPV}'>):
>                  else:
>     >                var =3D self.d.getVarFlag(key, "_content")
>                  self.references.add(key)
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 794, in DataSmart.getVarFlag(var=3D'SRCPV', flag=3D'_content', exp=
and=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):
>                      cachename =3D var + "[" + flag + "]"
>     >            value =3D self.expand(value, cachename)
>
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 436, in DataSmart.expand(s=3D'${@bb.fetch2.get_srcrev(d)}', varnam=
e=3D'SRCPV'):
>          def expand(self, s, varname =3D None):
>     >        return self.expandWithRefs(s, varname).value
>
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 426, in DataSmart.expandWithRefs(s=3D'${@bb.fetch2.get_srcrev(d)}'=
, varname=3D'SRCPV'):
>                  except Exception as exc:
>     >                raise ExpansionError(varname, s, exc) from exc
>
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressio=
n was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fet=
cher failure: Fetch command export GIT_SSL_CAINFO=3D"/home
> /martin/gomspace_sdk/buildtools/sysroots/x86_64-gomspacesdk-linux/etc/ssl=
/certs/ca-certificates.crt"; export PATH=3D"/home/martin/gomspace_sdk/tmp/w=
ork/aarch64-gomspace-linux/libgsisl/fetcheravoidrecurse-r0
> /recipe-sysroot-native/usr/bin/python-native:/home/martin/gomspace_sdk/la=
yers/poky/scripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux=
/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/u
> sr/bin/aarch64-gomspace-linux:/home/martin/gomspace_sdk/tmp/work/aarch64-=
gomspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot/usr/bin/cross=
scripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomsp
> ace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/sbin:=
/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetchera=
voidrecurse-r0/recipe-sysroot-native/usr/bin:/home/marti
> n/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetcheravoidrecur=
se-r0/recipe-sysroot-native/sbin:/home/martin/gomspace_sdk/tmp/work/aarch64=
-gomspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-s
> ysroot-native/bin:/home/martin/gomspace_sdk/layers/poky/bitbake/bin:/home=
/martin/gomspace_sdk/tmp/hosttools"; export HOME=3D"/home/martin"; git -c c=
ore.fsyncobjectfiles=3D0 ls-remote ssh://git@github.com/GomS
> pace/libisl  failed with exit code 128, output:
> Host key verification failed.
> fatal: Could not read from remote repository.
>
>
> Please make sure you have the correct access rights
> and the repository exists.
>
> It is not the intention that third party will ever need access to the dev=
elopment version, and I don't see why the version information is fetched gi=
ven the reduced priority. Have I encountered an 'undocumented bug' or is th=
ere an alternate approach to achieve this?

eSDK and recipes doing AUTOREV are known to not play well (yet). There
is a bug open to address it at
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11350

>
> Thanks,
> Martin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

