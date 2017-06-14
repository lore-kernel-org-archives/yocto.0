Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACF5DE00B53; Tue, 13 Jun 2017 22:39:29 -0700 (PDT)
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
	*      [209.85.128.181 listed in list.dnswl.org]
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DBA6E00B18
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 22:39:25 -0700 (PDT)
Received: by mail-wr0-f181.google.com with SMTP id 77so24804169wrb.1
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 22:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Gco62nCX2/COYyAdeKC2gPUwyWH2iWJ8vtCzzdbvM8k=;
	b=p0wsN4KdYyw2wPV6G/5G78TNFMRwAba8RXiRx1O4h7iFfCc/F+TjL9lRrHsooiZWyd
	3AIyUyy/HVSJC8kFp3LMmXZUZPH1AC8IW+q+BPy+ogEDrGY0Q4KwA4OTHOxJYZ+Sm5UY
	LHKg616DiRMGwV/zuAkfqiLEVSwIfO8AfX3QvLAlpsFhH77YIOL5YIp6Y+wEr/rRARFJ
	CxS7CqQ5h/G5scEcJzGWbSSYnojYwqoq9DJwG+wP2G7hjnA3vlg6gsCcuOT+p3k2Crg7
	aXG1mrcJlg/DFquHBN8hfgB7Y+hejz3uCJoNjIl3wJr7hfh8Sr6Ga6GGWlZHF6zdSZ9K
	4/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Gco62nCX2/COYyAdeKC2gPUwyWH2iWJ8vtCzzdbvM8k=;
	b=hG03C6jfWAXHLtbN55DNS6Iw7yAGVv13nd+8GdQnzK7SMOG6hEg60Tt67Fi8e+hDkp
	G76tcn9bSofD7R5UidxILie8g7Kimqzsfb1m+Akr2ALawcqU4gSRAD4kFQWeDMZ3f6JJ
	BktoLXK1Uq2DrelVxKlaqbz8G5mXafFLXFoutUKZ4pIO5zBad7vQCzT1ia6nmY6yUebB
	QzsLX6R2yrSOARmeZLqAMOH2ChxB4HAF/lJAYoTibs94FJKiyf3+IyZP+ZX2imN+kFW6
	5/cNXfRiMATgxEb/TLWpuyaX7TemJa19ZaUlj42crI8NYBNbyZAb+BNRies549iy2zl5
	sG/A==
X-Gm-Message-State: AKS2vOwEqP4N7GT4bF/sBDn1BtVgjCx/mxFzvutv6PcfAYIoLRsWcYXG
	UnhIDSe2oDA8zUxwMTDaBj7IYl6Owg==
X-Received: by 10.80.151.37 with SMTP id c34mr2579297edb.30.1497418764756;
	Tue, 13 Jun 2017 22:39:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Tue, 13 Jun 2017 22:38:54 -0700 (PDT)
In-Reply-To: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 13 Jun 2017 22:38:54 -0700
Message-ID: <CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake core-image-web-kiosk question ?
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
X-List-Received-Date: Wed, 14 Jun 2017 05:39:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 13, 2017 at 9:10 PM, Riko Ho <antonius.riko@gmail.com> wrote:
> Hello Everyone,
>
> I tried doing "bitbake core-image-web-kiosk"
>
> And I got this :
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Loading cache: 100%
> |########################################################################=
#############################################################|
> Time: 0:00:00
> Loaded 1310 entries from dependency cache.
> ERROR: ExpansionError during parsing
> /home/bianchi77/poky/meta-web-kiosk/recipes-browser/vala/vala_0.16.0.bb
> | ETA:  --:--:--
> Traceback (most recent call last):
>   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 412, in
> DataSmart.expandWithRefs(s=3D'http://ftp.gnome.org/pub/GNOME/sources/${BP=
N}/${SHRT_VER}/${BP}.tar.xz
> http://ftp.gnome.org/pub/GNOME/sources/vala/0.36/vala-0.36.0.tar.xz',
> varname=3D'SRC_URI'):
>                  try:
>     >                s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
>                      try:
>   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 111, in
> VariableParse.var_sub(match=3D<_sre.SRE_Match object; span=3D(46, 57),
> match=3D'${SHRT_VER}'>):
>                  else:
>     >                var =3D self.d.getVarFlag(key, "_content")
>                  self.references.add(key)
>   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 794, in
> DataSmart.getVarFlag(var=3D'SHRT_VER', flag=3D'_content', expand=3DTrue,
> noweakdefault=3DFalse, parsing=3DFalse):
>                      cachename =3D var + "[" + flag + "]"
>     >            value =3D self.expand(value, cachename)
>
>   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 436, in
> DataSmart.expand(s=3D"${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.da=
ta.getVar('PV',d,1).split('.')[1]}",
> varname=3D'SHRT_VER'):
>          def expand(self, s, varname =3D None):
>     >        return self.expandWithRefs(s, varname).value
>
>   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 426, in
> DataSmart.expandWithRefs(s=3D"${@bb.data.getVar('PV',d,1).split('.')[0]}.=
${@bb.data.getVar('PV',d,1).split('.')[1]}",
> varname=3D'SHRT_VER'):
>                  except Exception as exc:
>     >                raise ExpansionError(varname, s, exc) from exc
>
> bb.data_smart.ExpansionError: Failure expanding variable SHRT_VER,
> expression was
> ${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).sp=
lit('.')[1]}
> which triggered exception AttributeError: module 'bb.data' has no attribu=
te
> 'getVar'
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Does anyone know how to fix it ?
>
> I used poky with pyro release,
>

Looking at the layer, this strikes clear Last commit: 3 years, 8
months ago (master branch)
so this layer is rusted. Pyro is less than a month old release.

So this layer would need work to bring it forward. To begin with
delete the vala/ directory so
it can use the vala from core layer instead of a pinned version.

> Thanks
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
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

