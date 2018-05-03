Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33450E00B58; Wed,  2 May 2018 20:29:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E6AEE00A6A
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 20:29:37 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id b131so12944176qkg.2
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 20:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6a7vKNvWc+LdjFje6fLJERKzpmCW0aVQW0+yZ0KNF/Y=;
	b=E29LuZ+geQy3aAk3nIZ8DqE/No0tr3VGMTi0Zvmf+okWev6+FXSQm3CpenefKBa/4z
	2IjAt4LGAoUeuSqcb19JL4Q4m1ntlVAiKhwH8LmZ5yYIyZw1uwpYUm+mSKnW0qeDDK1T
	Qjg/iCjJqOkOqNNHzQS3WFAHIRPU33a9STK+XtTnxnJ4/yEhGAYujdbAIurPKXoNCXCN
	hwawG1KG67K0LapGz/oBcoCrpoBkDh4BNKxQiUl4v86b3SnDFeGpAIBUGZJLQe03YqSV
	nM+y/UucwiBG6aMPgAHvIV4V2rZ/7S8rTK2fW1aIg2VIxfWpUijxYzeChflQK5XF57TC
	xACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6a7vKNvWc+LdjFje6fLJERKzpmCW0aVQW0+yZ0KNF/Y=;
	b=DF2Z77NpliKqtALGGz3sTzOKwVTBfyd5++OXJ0m0IQ63ZGYsZDnRYa6gwHbx5YGkNQ
	ZxwFfKS3VTDc4yqx1kGmJ1R43dwq2b4QNEav6ZXiSzNizpKL6hCYkEpoST6RCJpRNvJk
	/y4xjLHAySGklHlS9UaMlF3lnQWoW/qSfImlM5udyHVBIbJ9d6BE1kmOW8RY+J4xpN5M
	t5akRiXzmP7/xZ4hnYAlEwot7cRT9cYC8x/ql5RLIRpRkFjs+SqdXY8+jhIV9NXcQ4Gj
	eCmB8frlPOI5UH7t1rYivwDFZb+7Hx7n+iJ6eYLMtDEwk+JS7mT2s3lL8z+bW76WyI/8
	ahMg==
X-Gm-Message-State: ALQs6tCdDbDMK57YMo++YEBu9+aV43FZwwfTMkDIZ4zK7C1y4mkxF3kS
	ONitSnSJHeGrIrU0Xo1kTbjweApcVMlFTvcawDvxeA==
X-Google-Smtp-Source: AB8JxZonDIC++5AutjWo0bixAi0IO99fwqofFFHWkSDckJEUpdOem/KjUDmYM/pQ6MrtjS8ecqQNJ8pjh1fm/caj/XU=
X-Received: by 10.55.192.197 with SMTP id v66mr16893768qkv.343.1525318176447; 
	Wed, 02 May 2018 20:29:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Wed, 2 May 2018 20:29:36 -0700 (PDT)
In-Reply-To: <1525293379.1343784.1358733424.3328B6FF@webmail.messagingengine.com>
References: <20180425150333.GA9349@graute-opti>
	<CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
	<5ae0d8b5.3bb5500a.22ed7.1ad6@mx.google.com>
	<CAJTo0LZ5Cf5zqLVJf+Jjd60KLLKJ2q-01B3QdpuVDGx4tCxKAg@mail.gmail.com>
	<CAGAf8LziVYUN6ZK622JURBer5CUHGTKQvx9t53Ut7NX9JO9-wA@mail.gmail.com>
	<1525293379.1343784.1358733424.3328B6FF@webmail.messagingengine.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 3 May 2018 05:29:36 +0200
Message-ID: <CAGAf8Lz5ctB40u3EwD-4XLdTbAgRG0g8nkAK1BkDsjkhYAHB_w@mail.gmail.com>
To: Paul Barker <paul@betafive.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Thu, 03 May 2018 03:29:38 -0000
Content-Type: multipart/alternative; boundary="001a1147a26e13a02d056b44d072"

--001a1147a26e13a02d056b44d072
Content-Type: text/plain; charset="UTF-8"

Hello Paul,

Could you, please, read couple of times more my quoted comment (by you)?
Stress to word: *couple*! ;-)

> Now, I must admit, I have learned something new. Never gave any
> consideration to these releases: example: Pyro 17.0.3.
>
>* But now I understand: it has direct link with Ubuntu 17... Even, YOCTO*
> *Pyro, as given example, can be substituted with Ubuntu 17.04?! Wow... *

Thank you,
Zoran
_______

On Wed, May 2, 2018 at 10:36 PM, Paul Barker <paul@betafive.co.uk> wrote:

> On Wed, 25 Apr 2018, at 21:55, Zoran Stojsavljevic wrote:
> > > Jethro doesn't support Yocto 16.* because it is very old (released
> 2015...)...
> >
> > Now, I must admit, I have learned something new. Never gave any
> > consideration to these releases: example: Pyro 17.0.3.
> >
> > But now I understand: it has direct link with Ubuntu 17... Even, YOCTO
> > Pyro, as given example, can be substituted with Ubuntu 17.04?! Wow...
> >
> > Every day in every way, I'm progressing more and more! ;-)
> >
>
> You seem to be a bit confused here by the fact that the poky version
> number lined up with the year in 2017. See https://wiki.yoctoproject.org/
> wiki/Releases for some context.
>
> --
> Paul Barker
> Beta Five Ltd
>

--001a1147a26e13a02d056b44d072
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Paul,<div><br></div><div>Could you, please, read cou=
ple of times more my quoted comment (by you)? Stress to word: <i style=3D""=
><u style=3D"">couple</u></i>! ;-)</div><div><br></div><div>

<span style=3D"color:rgb(80,0,80);font-family:arial,sans-serif;font-size:12=
.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">&gt; Now, I must admit, I have learned something =
new. Never gave any</span><br style=3D"color:rgb(80,0,80);font-family:arial=
,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial"><span style=3D"color:rgb(80,0,80);font-family:arial=
,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline">&gt; consideration to the=
se releases: example: Pyro 17.0.3.</span><br style=3D"color:rgb(80,0,80);fo=
nt-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial"><span style=3D"color:rgb(80,0,80);fo=
nt-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline">&gt;<span>=
=C2=A0</span></span><br style=3D"color:rgb(80,0,80);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial"><span style=3D"color:rgb(80,0,80);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">&gt;</span><span style=3D"font-=
family:arial,sans-serif;font-size:12.8px;font-variant-ligatures:normal;font=
-variant-caps:normal;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline"><b style=3D""><i style=3D""><font color=3D"#ff0=
000"> But now I understand: it has direct link with Ubuntu 17... Even, YOCT=
O</font></i></b></span><br style=3D"color:rgb(80,0,80);font-family:arial,sa=
ns-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial"><span style=3D"color:rgb(80,0,80);font-family:arial,sa=
ns-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline">&gt; </span><b><i><font colo=
r=3D"#ff0000"><span style=3D"font-family:arial,sans-serif;font-size:12.8px;=
font-variant-ligatures:normal;font-variant-caps:normal;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline">Pyro, as give=
n example, can be substituted with Ubuntu 17.04?! Wow...</span>

</font></i></b><br></div><div><br></div><div>Thank you,</div><div>Zoran</di=
v><div>_______</div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Wed, May 2, 2018 at 10:36 PM, Paul Barker <span dir=3D"ltr">&lt=
;<a href=3D"mailto:paul@betafive.co.uk" target=3D"_blank">paul@betafive.co.=
uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""=
>On Wed, 25 Apr 2018, at 21:55, Zoran Stojsavljevic wrote:<br>
&gt; &gt; Jethro doesn&#39;t support Yocto 16.* because it is very old (rel=
eased 2015...)...<br>
&gt; <br>
&gt; Now, I must admit, I have learned something new. Never gave any<br>
&gt; consideration to these releases: example: Pyro 17.0.3.<br>
&gt; <br>
&gt; But now I understand: it has direct link with Ubuntu 17... Even, YOCTO=
<br>
&gt; Pyro, as given example, can be substituted with Ubuntu 17.04?! Wow...<=
br>
&gt; <br>
&gt; Every day in every way, I&#39;m progressing more and more! ;-)<br>
&gt; <br>
<br>
</span>You seem to be a bit confused here by the fact that the poky version=
 number lined up with the year in 2017. See <a href=3D"https://wiki.yoctopr=
oject.org/wiki/Releases" rel=3D"noreferrer" target=3D"_blank">https://wiki.=
yoctoproject.org/<wbr>wiki/Releases</a> for some context.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
Paul Barker<br>
Beta Five Ltd<br>
</font></span></blockquote></div><br></div>

--001a1147a26e13a02d056b44d072--
