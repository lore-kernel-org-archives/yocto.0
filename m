Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23C99E00E0B; Thu, 22 Feb 2018 08:11:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64AD5E00DC2
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 08:11:34 -0800 (PST)
Received: by mail-it0-f41.google.com with SMTP id l187so7067928ith.4
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 08:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yUccgPWd08hZHCFTN6pVeOOHG99bXzfPlBt86GcGP8Q=;
	b=X3gGkg+Z4XIYneUs8NwHXI5MrosvWzLLa0QhUft93+FT+hT33qBSleGraeTS+wFbaQ
	k2OYg3lzRJFuSn9Xspve+pB4Dot85GvT2c3Q7F3CMlbPtjFR4ilnA90kS/8/rMIBTXZD
	u4GLHMwIhnyepjfP9PBuvyiylIEVTRMfer7jM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yUccgPWd08hZHCFTN6pVeOOHG99bXzfPlBt86GcGP8Q=;
	b=ZE+lyFiKMtpsm2PO7JdsPYS6mEGe7cxbF0opCcRxUZC0xy7Lj+K6YGtm6eGenKHHOV
	5UUdywiCijU5Vue5xbMRZSJXS1YTX2Z6haiqbMa4P8kCPrTYryrOSkk2tl3ADhSC2+Bk
	N42i9zIHuk4IlGq42kbGq1FF5yQh/goNvkrx32tX80kWYVUWhj/jio476eSQelP2uMp4
	GgdKxLMVQyrfUIbNZn6k5YV8TiZ7sSxhGrhLzsX27rj0mYdpOxEqQeqIeqArylp0/jtC
	xFCx6DCjdB9u3PS+4+iy7vw6ps9NBQYtsBU2CipmhHxjJGn+PhWa8adFklT4SkYUwbI0
	1O3A==
X-Gm-Message-State: APf1xPBICBxUOUiD++cjjMkHUDjR0LWcBF/XZmVs3Kh5C1dX0r9pFj7N
	Ejl8zwrfiiN7wSnpAag7dYPooKYwy4GT9j/oNT2tOTkg
X-Google-Smtp-Source: AH8x227/QjQ/skk6G0samsEuGpvVO1DXmnHTk5Q9K4QFISOIOifREmWua2/HBZDz+ZLDk8KaELVhLfNIVZz3yQ9SR/4=
X-Received: by 10.36.31.67 with SMTP id d64mr8331271itd.127.1519315894181;
	Thu, 22 Feb 2018 08:11:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Thu, 22 Feb 2018 08:11:32 -0800 (PST)
In-Reply-To: <1519229855.26755.10.camel@gmail.com>
References: <CAALXFYwsMACwdPf+QQNTwROGeqXD_FiBo4o=9kw=bV4JKrJfaw@mail.gmail.com>
	<1519229855.26755.10.camel@gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Thu, 22 Feb 2018 17:11:32 +0100
Message-ID: <CAALXFYxwk1Oqy4LG0=bx0LocHMy7A=MVCyBfwh_SMchqUcYaQg@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 22 Feb 2018 16:11:36 -0000
Content-Type: multipart/alternative; boundary="001a1144990e2cd64c0565cf4c68"

--001a1144990e2cd64c0565cf4c68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2018-02-21 17:17 GMT+01:00 Joshua Watt <jpewhacker@gmail.com>:

> On Wed, 2018-02-21 at 16:50 +0100, Iv=C3=A1n Castell wrote:
>
> Hello forum.
>
> I have a question regarding the expansion of variables in a recipe.
> Suppose I have a recipe with this "do_install" task defined:
>
>     do_install() {
>         BBB =3D ${WORKDIR}
>     }
>
> Variable BBB expands to the proper working directory.
>
>     $ bitbake -e <myrecipe> | grep BBB
>     BBB =3D /path/to/working/directory
>
>
> However, suppose now I have a recipe with this "do_package_prepend" task
> defined:
>
>     do_package_prepend() {
>         AAA =3D ${WORKDIR}
>     }
>
> Variable AAA doesn't expand to the expected working directory. In fact, i=
t
> generates an error:
>
>     $ bitbake -e <myrecipe> | grep AAA
>     AAA =3D ${WORKDIR}
>           ^
>     SyntaxError: invalid syntax
>
>
> do_package is a python function, so you prepend code must also be python.
> You can do:
>
> AAA =3D d.getVar('WORKDIR')
>
>

Im sorry for asking an obvious question, but documentation is not very
clear. I wrongly assumed that each recipe was executed by the same
interpreter, and seems I was wrong. Then each task is executed by a
different interpreter. This has sense... Thank you very much for the
clarification and for your time! :-)



>
>
> It seems the expansion of variables is not working inside the
> do_package_prepend task.
> What is going wrong with that?
>
> Thank you in advance! :-)
>
>

--001a1144990e2cd64c0565cf4c68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2018-02-21 17:17 GMT+01:00 Joshua Watt <span dir=3D"ltr">&lt;<a href=3D=
"mailto:jpewhacker@gmail.com" target=3D"_blank">jpewhacker@gmail.com</a>&gt=
;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div><span class=3D""><div>On W=
ed, 2018-02-21 at 16:50 +0100, Iv=C3=A1n Castell wrote:</div><blockquote ty=
pe=3D"cite" style=3D"margin:0 0 0 .8ex;border-left:2px #729fcf solid;paddin=
g-left:1ex"><div dir=3D"ltr"><div>Hello forum.<br></div><div><br></div><div=
>I have a question regarding the expansion of variables in a recipe. Suppos=
e I have a recipe with this &quot;do_install&quot; task defined:</div><div>=
<br></div><div>=C2=A0 =C2=A0 do_install() {<br></div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 BBB =3D ${WORKDIR}</div><div>=C2=A0 =C2=A0 }</div><div><br></div=
><div><div>Variable BBB expands to the proper working directory.=C2=A0<br><=
/div></div><div><br></div><div>=C2=A0 =C2=A0 $ bitbake -e &lt;myrecipe&gt; =
| grep BBB</div><div>=C2=A0 =C2=A0 BBB =3D /path/to/working/directory</div>=
<div><br></div><div><br></div><div><span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">However, suppo=
se now I have a recipe with this &quot;do_package_prepend&quot; task define=
d:</span></div><div><br></div><div><span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline"><div style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;text-decoration-style:initial;text-=
decoration-color:initial"><div>=C2=A0 =C2=A0 do_package_prepend() {<br></di=
v></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font=
-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-ca=
ps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decorati=
on-style:initial;text-decoration-color:initial">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 AAA =3D ${WORKDIR}<br></div><div style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration-style:initial;text-decoration-color:initial">=C2=A0=
 =C2=A0 }<br></div><br class=3D"m_-9040224016508485711gmail-Apple-interchan=
ge-newline">Variable AAA doesn&#39;t expand to the expected working directo=
ry. In fact, it generates an error:<br></span></div><div><br></div><div><sp=
an style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline">=C2=A0 =C2=A0 $ bitbake -e &lt;myrecipe&gt; | grep A=
AA</span><br></div><div><div>=C2=A0 =C2=A0 AAA =3D ${WORKDIR}</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div>=C2=A0 =C2=A0 SyntaxError: inva=
lid syntax</div></div></div></blockquote><div><br></div></span><div>do_pack=
age is a python function, so you prepend code must also be python. You can =
do:</div><div><br></div><div> AAA =3D d.getVar(&#39;WORKDIR&#39;)</div><spa=
n class=3D""><div><br></div></span></div></blockquote><div><br></div><div><=
br></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline">Im sorry for asking an obvious que=
stion, but documentation is not very clear. I wrongly assumed that each rec=
ipe was executed by the same interpreter, and seems I was wrong. Then each =
task is executed by a different interpreter. This has sense...=C2=A0Thank y=
ou very much for the clarification and for your time! :-)</span><br></div><=
div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><span cl=
ass=3D""><div></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex;bo=
rder-left:2px #729fcf solid;padding-left:1ex"><div dir=3D"ltr"><div><br></d=
iv><div><br></div><div>It seems the expansion of variables is not working i=
nside the do_package_prepend task.=C2=A0</div><div>What is going wrong with=
 that?<br></div><div><br></div><div>Thank you in advance! :-)</div><div><br=
></div>
</div>
</blockquote></span></div></blockquote></div><br><br clear=3D"all"><div><br=
></div>
</div></div>

--001a1144990e2cd64c0565cf4c68--
