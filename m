Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23A21E0095C; Wed, 10 Oct 2018 02:13:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED46AE006AF
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 02:13:09 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id w67so4615063ota.7
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 02:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zNelJTIo47HEX4G3Jr/2uP3IEBWNc5U/TGvxJcueNJs=;
	b=grjsVpj9CmjaubRLOPjGDMtInDoDNJOwBuHeR1EDuefs9hUtFFfQpRJ9yuC693fVgJ
	178b0lWtfjnx3wrH2jpjeMTtDsqLeosVfB1G2yxBTBNOIdYnrwDW9GFPV79hqdM2oqPk
	mqVVN4tpfM2pDLUEFTWfDHsSTEXxVvWea/Kb+Ft7Z8O2FkSWXCDpEjiDdICU3nszrcJv
	V1DMNLm7W/HTb6crev6bDzxgkAE+eKVHqQlhZw60gT2JB3/KQP7ytBfEW+vy5QQkBLwX
	N3s4+tjxMPXSR8BzAL0dv2m4240r9kj5ti2xMMd8QmIGks4xm6mwD8odDXm14ZTDysT9
	nUYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zNelJTIo47HEX4G3Jr/2uP3IEBWNc5U/TGvxJcueNJs=;
	b=bnQvZrOEdj03tUD0iCHZIIcq/yV/ZLqF3dSEFBE69jXvxQ1IhnSQ8iSVYRKQED3OgK
	YFMUr+FidFo0PRCpJfiHaj9x6Fj22UdES87GrLxmzJ2pkzhghLoVt4rCLbYRPt2kTfbf
	WDH4DoA5wDpCTkuV/XOqjs/sKj2Xl3wAESbATj6FZ8foM43TEZls0QNLxLEF/81PrRwX
	u7kJ6zLzpnk8ZpW9g7Fj6boGe5riDAQuzeTTacvjFx7lCYtncrG1ZHcFJbI3dwhqnMpu
	iYUN/lRF8bFeFW1PawEdHxOhrlHb0020N2BKugvXOI6jFN3NABvVyFJtGZzVA/Ic+l6f
	/Ugg==
X-Gm-Message-State: ABuFfoiFdNOYLd/hJXbffFxGBXfZrPaolcSJ/IOUvGWd/xT2K0myBYIm
	12jBbwaL8cRznDr4XIYGuZjIecQYGQioeh8Np0TxLA==
X-Google-Smtp-Source: ACcGV63fHr/mTQPid8gxl8sGTHD6dAPhAPpnVanNj11ggGeoRbjaYrinGUUB6bU5RarNLlO2KxxMz4CHe5yOCWiJH9I=
X-Received: by 2002:a9d:30ae:: with SMTP id s46mr16982495otc.132.1539162789141;
	Wed, 10 Oct 2018 02:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <6e68dfa9ccbd4e569c5ed30ec5fb84a1@BN1PR68MB021.017d.mgd.msft.net>
In-Reply-To: <6e68dfa9ccbd4e569c5ed30ec5fb84a1@BN1PR68MB021.017d.mgd.msft.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 Oct 2018 10:12:57 +0100
Message-ID: <CAJTo0LZi_=OXujjXyPBTs1AqKZa4Lu51SQKY6MG-ZOz2rs6M6Q@mail.gmail.com>
To: Pascal.Mues@aptiv.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: if for SRCREV
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
X-List-Received-Date: Wed, 10 Oct 2018 09:13:11 -0000
Content-Type: multipart/alternative; boundary="0000000000004c73150577dc4380"

--0000000000004c73150577dc4380
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A fairly standard way of doing this is to have an include file that
overrides SRCREV for the recipes that you'd like to build from HEAD.  See,
for example, the poky-bleeding.conf distro which includes
poky-floating-revisions.inc.

You could have an include file which does the same so you toggle
"development build" in once place (eg by including that file in local.conf)
and everything which needs to switch to HEAD does.

Ross
Ross

On Wed, 10 Oct 2018 at 09:51, Mues, Pascal <Pascal.Mues@aptiv.com> wrote:

> Hello,
>
>
>
> on my recipe I would like to distinguish between release and other build.
>
> The release shall just stay on a fixed =E2=80=9Cstable=E2=80=9D version =
=E2=80=93 where the other
> stuff shall just build latest greatest.
>
> The easiest idea was have an environment variable set and check on recipe
> if this exist to switch the srcrev for Git.
>
> As a pseudo code:
>
>
>
> if env(Release)
>
>    SRCREV =3D "613b64e3ba8e796e27e86560020d39d9dfd0407d"
>
> else
>
>    SRCREV =3D "autorev"
>
>
>
> Unfortunately, I wasn=E2=80=99t able to find anything how this could be d=
one.
>
> Someone can help?
>
>
>
> BR
>
> Pascal
> *************************************************************************=
***************
> Note: If the reader of this message is not the intended recipient, or an
> employee or agent responsible for delivering this message to the intended
> recipient, you are hereby notified that any dissemination, distribution o=
r
> copying of this communication is strictly prohibited. If you have receive=
d
> this communication in error, please notify us immediately by replying to
> the message and deleting it from your computer. Thank you.
> *************************************************************************=
***************
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000004c73150577dc4380
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A fairly standard way of doing this is to have an include =
file that overrides SRCREV for the recipes that you&#39;d like to build fro=
m HEAD.=C2=A0 See, for example, the poky-bleeding.conf distro which include=
s poky-floating-revisions.inc.<div><br></div><div>You could have an include=
 file which does the same so you toggle &quot;development build&quot; in on=
ce place (eg by including that file in local.conf) and everything which nee=
ds to switch to HEAD does.</div><div><br></div><div>Ross</div><div>Ross</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, 10 Oct 2018=
 at 09:51, Mues, Pascal &lt;<a href=3D"mailto:Pascal.Mues@aptiv.com">Pascal=
.Mues@aptiv.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_4242844129550882828WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">on my recipe I would like to distinguish between rel=
ease and other build.<u></u><u></u></p>
<p class=3D"MsoNormal">The release shall just stay on a fixed =E2=80=9Cstab=
le=E2=80=9D version =E2=80=93 where the other stuff shall just build latest=
 greatest.<u></u><u></u></p>
<p class=3D"MsoNormal">The easiest idea was have an environment variable se=
t and check on recipe if this exist to switch the srcrev for Git.<u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR">As a pseudo code: <u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">if env(Release)<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 =C2=A0<span lang=3D"PT-BR">SRCREV =3D &quot;6=
13b64e3ba8e796e27e86560020d39d9dfd0407d&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR">else<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR">=C2=A0=C2=A0 SRCREV =3D &quot;a=
utorev&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">Unfortunately, I wasn=E2=80=99t able to find anythin=
g how this could be done.<u></u><u></u></p>
<p class=3D"MsoNormal">Someone can help?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">BR<u></u><u></u></p>
<p class=3D"MsoNormal">Pascal<u></u><u></u></p>
</div>
***************************************************************************=
************* Note: If the reader of this message is not the intended recip=
ient, or an employee or agent responsible for delivering this message to th=
e intended recipient, you are hereby
 notified that any dissemination, distribution or copying of this communica=
tion is strictly prohibited. If you have received this communication in err=
or, please notify us immediately by replying to the message and deleting it=
 from your computer. Thank you.
 **************************************************************************=
**************
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000004c73150577dc4380--
