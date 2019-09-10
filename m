Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D204FE00D89; Tue, 10 Sep 2019 06:26:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B8C6E00CD5
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 06:26:04 -0700 (PDT)
Received: by mail-qk1-f181.google.com with SMTP id x5so16967565qkh.5
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 06:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7fkOPiOnn8T1PiyGVnA5WcxCxLuwkhN+pFbXvQ+ScfA=;
	b=cdnm5I4e6Tw2C0Noz9J1/tFZzaJvHBBlnM18Sv/e7lZS5f4szNm0R0ztom6c0nCfT5
	wqyKoUdjRH94Vw4frw0HEg1N8Ns53gCfJWbvIEmwrGfSUiBNVnjTusT5uFJi2dPojkQX
	iTnVGZnQ0zy9qxSyMQPmZdDXUlItTMdUZAGLKyBbNNw6tEOjbm6C/gTDb5payJmwExJG
	QdpmM3WAhRQXIY6f/KK/LAh3RJI52pilKQPtNVm4xz6+VfxzI+FzGPUW1ZdvOpRWhcts
	xebZcwwjYy8/alQfGkuyCIKAmiUFEWbbLJVVD/7JK0TabfuH0d7idH4vqDy+QwIG4AUG
	ILhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7fkOPiOnn8T1PiyGVnA5WcxCxLuwkhN+pFbXvQ+ScfA=;
	b=Bng1ofNpIhUeRkTNJXockOUQ80UW7Fz54UW1d/Ea4hRhPcdbM/GI/t1ydXlrA48T3j
	94zB/DZ8EzJeJkxw/BckbHn5r+GKCLxAo/N655NhcncdeqHwf8HQrhgx8HQRtGDUeXT0
	JTdl91ZyhuouSVQFP9c2Guz/xk83jHbu8yTh+iVlADIWieM0tnwNYwiS94WsB73Tv16A
	iN+2v4iHX7VHjEsIf/o0r5hWmxlQu0wFAoWBnBO+4kxSaud0cOBXDMufUhsKSGRecuVN
	V3eX2J6PkQ7nZ+0g45t3jC45249mMhlbSL2q8NXuhqQutuwZkUufNjuZn4vbzWTBCYrI
	iLiw==
X-Gm-Message-State: APjAAAX4N4gSsSsXzDlI/Zx5shfC6pdtIGM+5kWf60OPxX+WtE+b8Z8Y
	GCINetW2u4bqKffaXf/RqAWCuKpRN/0v7/fZZsyoqhfB
X-Google-Smtp-Source: APXvYqxFe0+eQboLARf5WUS/B+EJJGgRRrjdAwXeZyniOU/X2RBHMSa6i95BhMYfwapQKO0hLUaQhMh/ZP3rdZo7C/8=
X-Received: by 2002:a37:6651:: with SMTP id a78mr16430591qkc.474.1568121963093;
	Tue, 10 Sep 2019 06:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR09MB4066613CAEC7FB9A7434EECFD7BA0@AM0PR09MB4066.eurprd09.prod.outlook.com>
	<AM0PR09MB4066729BBE9B88AE768A14E9D7B60@AM0PR09MB4066.eurprd09.prod.outlook.com>
In-Reply-To: <AM0PR09MB4066729BBE9B88AE768A14E9D7B60@AM0PR09MB4066.eurprd09.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 10 Sep 2019 06:25:52 -0700
Message-ID: <CAMKF1sqzgc0xK188z_SCtDGNDF18wzFuZ0iwQ_3JZvOZCn_01g@mail.gmail.com>
To: =?UTF-8?Q?Mar=C3=ADa_del_Mar_Velasco_AERTEC_Solutions_=E2=80=93_Aerospace_=26_A?=
	=?UTF-8?Q?viation?= <mvelasco@aertecsolutions.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: incohenrence between defconf, .config and /proc/config.gz
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
X-List-Received-Date: Tue, 10 Sep 2019 13:26:06 -0000
Content-Type: multipart/alternative; boundary="000000000000932314059232d8a5"

--000000000000932314059232d8a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 10, 2019 at 2:45 AM Mar=C3=ADa del Mar Velasco AERTEC Solutions=
 =E2=80=93
Aerospace & Aviation <mvelasco@aertecsolutions.com> wrote:

> Hello all,
>
>
>
> I have found that if I write the image using the created *.wic file,
> kernel config is correctly updated (/proc/config.gz and .config are
> coherent). However if I use the created *.ext4 file to write a rootfs
> partition of target, previous kernel config still remains (kernel config
> used when target was written for first time using *.wic file still remain=
s).
>
>
>
> Any idea about how to keep kernel config updates in *.ext4 file?
>
>
>

Ext4 is just rootfs without new kernel I think that=E2=80=99s why you see o=
ld
.config since it=E2=80=99s bundled into kernel  binary

With wic you write full disk along with new kernel

> Thanks in advance
>
>
>
> *De:* Mar=C3=ADa del Mar Velasco AERTEC Solutions =E2=80=93 Aerospace & A=
viation
> *Enviado el:* viernes, 6 de septiembre de 2019 10:50
> *Para:* 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
> *Asunto:* incohenrence between defconf, .config and /proc/config.gz
>
>
>
> Dear all,
>
>
>
> I have built an image after doing changes in kernel config by adding a
> layer that adds lines in .config file. This changes lead me to an undesir=
ed
> configuration, so I decided to undo the last kernel config. When I remove
> the layer that adds lines in .config file, I ensure that kernel is clean =
by
> doing bitbake -c cleanall linux-xxx. Then I build again the image. I can
> see .config file is exactly equal than defconf kernel file. However, when=
 I
> write image into the target, /proc/config.gz file is inconsistent with
> .config file and it preserves some lines that are missing in .config file=
.
>
>
>
> Could somebody give me an advice about this issue? Why /proc/config.gz is
> not equal than .config file?
>
>
>
> Thanks in advance
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000932314059232d8a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Sep 10, 2019 at 2:45 AM Mar=C3=ADa del Mar Velasco =
AERTEC Solutions =E2=80=93 Aerospace &amp; Aviation &lt;<a href=3D"mailto:m=
velasco@aertecsolutions.com">mvelasco@aertecsolutions.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_5550558017665677382WordSection1">
<p class=3D"MsoNormal">Hello all,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have found that if I write the image using the cre=
ated *.wic file, kernel config is correctly updated (/proc/config.gz and .c=
onfig are coherent). However if I use the created *.ext4 file to write a ro=
otfs partition of target, previous
 kernel config still remains (kernel config used when target was written fo=
r first time using *.wic file still remains).<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any idea about how to keep kernel config updates in =
*.ext4 file?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0</p></div></div></blockquote><div dir=
=3D"auto"><br></div><div dir=3D"auto">Ext4 is just rootfs without new kerne=
l I think that=E2=80=99s why you see old .config since it=E2=80=99s bundled=
 into kernel =C2=A0binary=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">With wic you write full disk along with new kernel=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#=
954F72"><div class=3D"m_5550558017665677382WordSection1"><p class=3D"MsoNor=
mal"><u></u></p>
<p class=3D"MsoNormal">Thanks in advance<u></u><u></u></p></div></div><div =
lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72"><div class=3D"m_555055801=
7665677382WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"ES">De:</span></b><span lang=3D"ES"=
> Mar=C3=ADa del Mar Velasco AERTEC Solutions =E2=80=93 Aerospace &amp; Avi=
ation
<br>
<b>Enviado el:</b> viernes, 6 de septiembre de 2019 10:50<br>
<b>Para:</b> &#39;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a>&#39; &lt;<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
<b>Asunto:</b> incohenrence between defconf, .config and /proc/config.gz<u>=
</u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Dear all,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have built an image after doing changes in kernel =
config by adding a layer that adds lines in .config file. This changes lead=
 me to an undesired configuration, so I decided to undo the last kernel con=
fig. When I remove the layer that
 adds lines in .config file, I ensure that kernel is clean by doing bitbake=
 -c cleanall linux-xxx. Then I build again the image. I can see .config fil=
e is exactly equal than defconf kernel file. However, when I write image in=
to the target, /proc/config.gz file
 is inconsistent with .config file and it preserves some lines that are mis=
sing in .config file.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Could somebody give me an advice about this issue? W=
hy /proc/config.gz is not equal than .config file?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks in advance<u></u><u></u></p>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000932314059232d8a5--
