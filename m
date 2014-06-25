Return-Path: <maxim.radugin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B0BFE00509; Wed, 25 Jun 2014 14:07:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxim.radugin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3BCCE003D8
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 14:07:19 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id b13so2642407wgh.14
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 14:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=e0m9bxn1ggFz9ymn3VS3NwPuRW73pkE57n58/Jpepio=;
	b=hiKAJXUo3jMoIYdLO+PNDtGMtFUvA6WjnagCKAugG7h3oCWdQ9qTbCAx6rrEDWsRCr
	9d1k7+SGVExlQ0Yo3363B0CmaUve00K1dB+7HE2sncwxkmoTdSeXqUVjS6nHAyA5kl2v
	la2muVCayF/3VYR651SVmfcI3aD6wNNPWge004NU6v20BkdWYSKYEQLH840E/q2PeW2N
	yfVx8YN0flhcmz6FHaXI4NgfyRIS3BvojBuMbsaLHQuleL2RE0+3rN8k5eS0bZBLGibd
	AzgNzJsnlXTO0QIHqhNO70ES3Q/h87sR40NYDA2xeEV3ZLxFZC6W5ve8bhhNC6JaFfax
	1BPQ==
MIME-Version: 1.0
X-Received: by 10.180.211.106 with SMTP id nb10mr45029277wic.9.1403730438350; 
	Wed, 25 Jun 2014 14:07:18 -0700 (PDT)
Received: by 10.194.17.193 with HTTP; Wed, 25 Jun 2014 14:07:18 -0700 (PDT)
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E66886162A9F@kihagwinex01.int.kistler.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E66886162A9F@kihagwinex01.int.kistler.com>
Date: Thu, 26 Jun 2014 00:07:18 +0300
Message-ID: <CABWuD8fG74cBdxzMN_k6D78_97z9WwVJe75MrO33scnDyE_2xw@mail.gmail.com>
From: Maxim Radugin <maxim.radugin@gmail.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Create own image type
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
X-List-Received-Date: Wed, 25 Jun 2014 21:07:22 -0000
Content-Type: multipart/alternative; boundary=001a11c2669c2371df04fcaf766d

--001a11c2669c2371df04fcaf766d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Isak,

You are no the right way.

You have to add
IMAGE_CLASSES +=3D "myImage"
somewhere in your conf files. I prefer distro.conf for my own distro, but
perhaps you can add it to local.conf as well.

BR,
Maxim.




On Wed, Jun 25, 2014 at 5:04 PM, Isak Lichtenstein <
Isak.Lichtenstein@kistler.com> wrote:

>  Hi all,
>
>
>
> I=E2=80=99m trying to create my own image type. I thought that it would b=
e enough
> to create a myImage.bbclass file implementing IMAGE_CMD_myImage and
> extending IMAGE_TYPES +=3D =E2=80=9C myImage=E2=80=9D.
>
>
>
> But this isn=E2=80=99t working and I didn=E2=80=99t find anything in the =
manual.
>
>
>
> It this possible at all ( can=E2=80=99t imagine that it isn=E2=80=99t) ?
>
>
>
> Would appreciate any hint possible.
>
>
>
> Best regards
>
>
>
> Isak
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c2669c2371df04fcaf766d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Isak,<div><br></div><div>You are no the right way.<b=
r></div><div><br></div><div>You have to add</div><div>IMAGE_CLASSES +=3D &q=
uot;myImage&quot;=C2=A0</div><div>somewhere in your conf files. I prefer di=
stro.conf for my own distro, but perhaps you can add it to local.conf as we=
ll.</div>
<div><br></div><div>BR,</div><div>Maxim.</div><div><br></div><div><br></div=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed=
, Jun 25, 2014 at 5:04 PM, Isak Lichtenstein <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Isak.Lichtenstein@kistler.com" target=3D"_blank">Isak.Lichtenste=
in@kistler.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"DE-CH" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Hi all,<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">I=E2=80=99m trying to crea=
te my own image type. I thought that it would be enough to create a myImage=
.bbclass file implementing IMAGE_CMD_myImage and extending IMAGE_TYPES
 +=3D =E2=80=9C myImage=E2=80=9D.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">But this isn=E2=80=99t wor=
king and I didn=E2=80=99t find anything in the manual.<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">It this possible at all ( =
can=E2=80=99t imagine that it isn=E2=80=99t) ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Would appreciate any hint =
possible.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Best regards<span class=3D=
"HOEnZb"><font color=3D"#888888"><u></u><u></u></font></span></span></p><sp=
an class=3D"HOEnZb"><font color=3D"#888888">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Isak<u></u><u></u></span><=
/p>
</font></span></div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c2669c2371df04fcaf766d--
