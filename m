Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C9A7E00EC3; Wed, 21 Feb 2018 08:17:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE615E00B1A
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 08:17:37 -0800 (PST)
Received: by mail-oi0-f46.google.com with SMTP id t185so1501707oif.6
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 08:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version; 
	bh=CdZQbFoKUrkZ47FrjvAWgt3X+/5WjdeHTKvR8/6OG8w=;
	b=Ve9cALAVwR0m6mcV21TI2nIxspsobYwXxDqxW3khED/iUKJCjEkBGWSrfOEmuBchIy
	UvX7cTsU6iEv3gehskmt2qcDg8FKD53u4RYLXFC3PXZYU0zEDgn02oi3cdhQQVj+gIge
	iPEzEJDUY7dsXKuWKemRkBVuaGUj6+5nGEht31F+y8v6opXm7ea5FwkrPOvzRZv91Qrz
	C6pVEELQs3685hhc87bYRFxJCwu43DOVzQrvqaV8fGARv4PuRu9+lrZxhRHLpbvOIclJ
	u4LYiHist+NkAdbgDFRWUewE973TlYdZPpx3/dVgTVqhpffrxD7Mv7922Ph4vo/Sj5Ck
	TuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version;
	bh=CdZQbFoKUrkZ47FrjvAWgt3X+/5WjdeHTKvR8/6OG8w=;
	b=lqswIr1UF53w18MDNs1pBPtL1JTRM9Ro4lQdYwYAHQF2CfrEkg2HpUqRlkKFdAzG3C
	4vK4cXE/cTsI+8bnT/Rlzp37Znnhoux5YeV05YBAUzv8CqEZwxIQJESLL0na0AwOD01L
	baG33nas4TNwVbQt8V61xlbl4kawWdh2py33vLcY4lESeDEOvx8HFXA/+z49JXT5hgTL
	O1F4r6gU7PwVpLCpw5FP3gpTh47trfQ3oFKSVtymNDf+zxTBP3/bYTs6M0wSSGCeYOgI
	10fnzIxPy7xvSdwKopbc2lACrXs3RIqZdzed5Vq13P+bYuTcGsenYi1YbqN8u/BKpmTy
	jkFg==
X-Gm-Message-State: APf1xPAWCtU+Y1NnjV2tndw1n5SjX9JrHolayTpkaLMVQmI4s31aS/vs
	q//s60q3e1+7TVXO7U2O69I=
X-Google-Smtp-Source: AH8x2267APZnx4BgLyreL063G9gwzHZDX/kSBVphoUf9MBvbcANLa0lCg46lH17iQAdXcok4pk7kGQ==
X-Received: by 10.202.74.15 with SMTP id x15mr2579573oia.312.1519229856847;
	Wed, 21 Feb 2018 08:17:36 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	m91sm7060255otc.45.2018.02.21.08.17.36
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 21 Feb 2018 08:17:36 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1519229855.26755.10.camel@gmail.com>
To: =?ISO-8859-1?Q?Iv=E1n?= Castell <icastell@nayarsystems.com>, Yocto
	Project <yocto@yoctoproject.org>
Date: Wed, 21 Feb 2018 10:17:35 -0600
In-Reply-To: <CAALXFYwsMACwdPf+QQNTwROGeqXD_FiBo4o=9kw=bV4JKrJfaw@mail.gmail.com>
References: <CAALXFYwsMACwdPf+QQNTwROGeqXD_FiBo4o=9kw=bV4JKrJfaw@mail.gmail.com>
X-Mailer: Evolution 3.26.5 (3.26.5-1.fc27) 
Mime-Version: 1.0
Subject: Re: Expansion of variables inside do_package_prepend task
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
X-List-Received-Date: Wed, 21 Feb 2018 16:17:40 -0000
Content-Type: multipart/alternative; boundary="=-Np/I74vEEmbb9yuR13Eo"

--=-Np/I74vEEmbb9yuR13Eo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2018-02-21 at 16:50 +0100, Iván Castell wrote:
> Hello forum.
> 
> I have a question regarding the expansion of variables in a recipe.
> Suppose I have a recipe with this "do_install" task defined:
> 
>     do_install() {
>         BBB = ${WORKDIR}
>     }
> 
> Variable BBB expands to the proper working directory. 
> 
> 
>     $ bitbake -e <myrecipe> | grep BBB
>     BBB = /path/to/working/directory
> 
> 
> However, suppose now I have a recipe with this "do_package_prepend"
> task defined:
> 
>     do_package_prepend() {
>         AAA = ${WORKDIR}
>     }
> 
> Variable AAA doesn't expand to the expected working directory. In
> fact, it generates an error:
> 
> 
>     $ bitbake -e <myrecipe> | grep AAA
>     AAA = ${WORKDIR}
>           ^
>     SyntaxError: invalid syntax

do_package is a python function, so you prepend code must also be
python. You can do:
 AAA = d.getVar('WORKDIR')
> It seems the expansion of variables is not working inside the
> do_package_prepend task. What is going wrong with that?
> 
> Thank you in advance! :-)
> 
> 

--=-Np/I74vEEmbb9yuR13Eo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>On Wed, 2018-02-21 at 16:50 +0100, Iv=C3=A1n =
Castell wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; b=
order-left:2px #729fcf solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello =
forum.<br></div><div><br></div><div>I have a question regarding the expansi=
on of variables in a recipe. Suppose I have a recipe with this "do_install"=
 task defined:</div><div><br></div><div>&nbsp; &nbsp; do_install() {<br></d=
iv><div>&nbsp; &nbsp; &nbsp; &nbsp; BBB =3D ${WORKDIR}</div><div>&nbsp; &nb=
sp; }</div><div><br></div><div><div>Variable BBB expands to the proper work=
ing directory.&nbsp;<br></div></div><div><br></div><div>&nbsp; &nbsp; $ bit=
bake -e &lt;myrecipe&gt; | grep BBB</div><div>&nbsp; &nbsp; BBB =3D /path/t=
o/working/directory</div><div><br></div><div><br></div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">However, suppose now I have a recipe with this "do_package_prepe=
nd" task defined:</span></div><div><br></div><div><span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;text-decoration-styl=
e:initial;text-decoration-color:initial"><div>&nbsp; &nbsp; do_package_prep=
end() {<br></div></div><div style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;text-decoration-style:initial;text-decoration-color:initial">&nbsp; &nbsp=
; &nbsp; &nbsp; AAA =3D ${WORKDIR}<br></div><div style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:=
initial">&nbsp; &nbsp; }<br></div><br class=3D"gmail-Apple-interchange-newl=
ine">Variable AAA doesn't expand to the expected working directory. In fact=
, it generates an error:<br></span></div><div><br></div><div><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">&nbsp; &nbsp; $ bitbake -e &lt;myrecipe&gt; | grep AAA</span><b=
r></div><div><div>&nbsp; &nbsp; AAA =3D ${WORKDIR}</div><div>&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; ^</div><div>&nbsp; &nbsp; SyntaxError: invalid syntax<=
/div></div></div></blockquote><div><br></div><div>do_package is a python fu=
nction, so you prepend code must also be python. You can do:</div><div><br>=
</div><div> AAA =3D d.getVar('WORKDIR')</div><div><br></div><blockquote typ=
e=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;paddin=
g-left:1ex"><div dir=3D"ltr"><div><br></div><div><br></div><div>It seems th=
e expansion of variables is not working inside the do_package_prepend task.=
&nbsp;</div><div>What is going wrong with that?<br></div><div><br></div><di=
v>Thank you in advance! :-)</div><div><br></div>
</div>
</blockquote></body></html>

--=-Np/I74vEEmbb9yuR13Eo--
