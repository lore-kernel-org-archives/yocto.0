Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D04BE006EE; Mon, 10 Aug 2015 04:13:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FC4E00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:13:33 -0700 (PDT)
Received: by qkbm65 with SMTP id m65so56638822qkb.2
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YNASRK+CoBFXJAMGDX72cBZBNi8Ev5cd8AdBOE8Zc+Y=;
	b=nf2MGAKlTWpoMoKW0yeIqzF8UKNHgVKXheB7/GmschvZTcBD7K9g8RbSPzLyv8Lh++
	POdb/R3nnnT1wKoF3TVjTHWAuzvO1gSZSyPQKTRG6A3F95wb6v6/L4Zjij41qe0LgmsR
	zACzpJOh+hlnT3NQ7JxtYKrVLvmpPxcQ/84WjHASI7Zi1XMzOz3pKAx9GOKPC5Cj/PSJ
	wmJetz107pDgAnrkx8s1m0YITf5fl6O5kJn+dBFPJ7JRReVBuSZ+8cpLsllEGosj79Cj
	IEODmHm5bH1uLa5025kecW29YxYICxjklFlrzkx/RFs8nWfmJTh7v5NrjTT0aQkXWv+8
	l+qA==
MIME-Version: 1.0
X-Received: by 10.55.40.89 with SMTP id o86mr24193269qkh.41.1439205212634;
	Mon, 10 Aug 2015 04:13:32 -0700 (PDT)
Received: by 10.140.39.148 with HTTP; Mon, 10 Aug 2015 04:13:32 -0700 (PDT)
Date: Mon, 10 Aug 2015 13:13:32 +0200
Message-ID: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: yocto@yoctoproject.org
Subject: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Mon, 10 Aug 2015 11:13:37 -0000
Content-Type: multipart/alternative; boundary=001a11441c2a754216051cf3138a

--001a11441c2a754216051cf3138a
Content-Type: text/plain; charset=UTF-8

Good day,

I am using the "soci" recipe:

https://github.com/openembedded/meta-openembedded/tree/9a5d25f2a717814f948b492b9c01c1ff0edb678d/meta-oe/recipes-support/soci

soci is successfully being built when using the following dependency in my
own recipe which relies on soci:

DEPENDS = "soci"

soci produces the following output:

soci/3.2.2-r0/image/usr/include/soci/    (Contains the header-files needed
by my recipe)
soci/3.2.2-r0/image/usr/lib

Furthermore the following *.ipk are being created by soci:

soci/3.2.2-r0/deploy-ipks/core2-32/soci_3.2.2-r0_core2-32.ipk
soci/3.2.2-r0/deploy-ipks/core2-32/soci-dev_3.2.2-r0_core2-32.ipk
soci/3.2.2-r0/deploy-ipks/core2-32/soci-dbg_3.2.2-r0_core2-32.ipk
soci/3.2.2-r0/deploy-ipks/core2-32/soci-staticdev_3.2.2-r0_core2-32.ipk

The package soci-dev seems to contain the header-files as well as the
libraries that my recipe needs.

However, when compiling my own recipe I get compiling errors ("soci.h not
found"). I am 100% sure that I specified the correct paths.

What might be wrong here? I thought using DEPENDS = "soci" should handle
this?

DEPENDS = "soci-dev" results in:

 "ERROR: Nothing PROVIDES 'soci-dev' (but my-recipe.bb DEPENDS on or
otherwise requires it)"

--001a11441c2a754216051cf3138a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day,<div><br></div><div>I am using the &quot;soci&quo=
t; recipe:</div><div><br></div><div><a href=3D"https://github.com/openembed=
ded/meta-openembedded/tree/9a5d25f2a717814f948b492b9c01c1ff0edb678d/meta-oe=
/recipes-support/soci">https://github.com/openembedded/meta-openembedded/tr=
ee/9a5d25f2a717814f948b492b9c01c1ff0edb678d/meta-oe/recipes-support/soci</a=
><br></div><div><br></div><div>soci is successfully being built when using =
the following dependency in my own recipe which relies on soci:</div><div><=
br></div><div>DEPENDS =3D &quot;soci&quot;<br></div><div><br></div><div>soc=
i produces the following output:</div><div><br></div><div>soci/3.2.2-r0/ima=
ge/usr/include/soci/ =C2=A0 =C2=A0(Contains the header-files needed by my r=
ecipe)</div><div>soci/3.2.2-r0/image/usr/lib =C2=A0<br></div><div><br></div=
><div>Furthermore the following *.ipk are being created by soci:</div><div>=
<br></div><div>soci/3.2.2-r0/deploy-ipks/core2-32/soci_3.2.2-r0_core2-32.ip=
k<br></div><div>soci/3.2.2-r0/deploy-ipks/core2-32/soci-dev_3.2.2-r0_core2-=
32.ipk<br></div><div>soci/3.2.2-r0/deploy-ipks/core2-32/soci-dbg_3.2.2-r0_c=
ore2-32.ipk<br></div><div>soci/3.2.2-r0/deploy-ipks/core2-32/soci-staticdev=
_3.2.2-r0_core2-32.ipk<br></div><div><br></div><div>The package soci-dev se=
ems to contain the header-files as well as the libraries that my recipe nee=
ds.</div><div><br></div><div>However, when compiling my own recipe I get co=
mpiling errors (&quot;soci.h not found&quot;). I am 100% sure that I specif=
ied the correct paths.</div><div><br></div><div>What might be wrong here? I=
 thought using DEPENDS =3D &quot;soci&quot; should handle this?=C2=A0</div>=
<div><br></div><div>DEPENDS =3D &quot;soci-dev&quot; results in:</div><div>=
<br></div><div>=C2=A0&quot;ERROR: Nothing PROVIDES &#39;soci-dev&#39; (but =
<a href=3D"http://my-recipe.bb">my-recipe.bb</a> DEPENDS on or otherwise re=
quires it)&quot;</div><div><br></div><div><br></div><div><br></div><div><br=
></div><div><br></div></div>

--001a11441c2a754216051cf3138a--
