Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47E15E00D19; Thu,  2 May 2019 04:25:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B86DFE00CDF
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 04:25:44 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id h126so1600294lfh.4
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 04:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Kc81FAKF3Fz9mhN9rwq/6MC3n6w2BdiKpgLm/Urtakg=;
	b=OgRyXT8T2BFtl55BaM4b8mGAIYwrWyWzUQBsiBGI7Vk3g12Uxta06ArqT2UcDQCPgD
	lAHVtxLdYxm6zUuz2m3gKRNQ3aAnUGaINgVvocmbZzmJy/5JVDIrczuJV4QuPFhS9cdJ
	nedRct/gSI2dzrKOWF3h4M1l+dLU7ox0P2ibWvyBHOz+NjypBUhLwVji9JG+ejVkC2zy
	7eX7Vygwvmyx2vCdBUeAOHonNNUOu/OZsXjbIIZY3noBJ5imXdeoJKqRKl1YGI1J1yp+
	q7MTt50wQua7cVlk2Pb/JORkDC9+grOfJ6pl90q7ux34akhNle0E7jLBIO4bW+r/WKMS
	DsBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Kc81FAKF3Fz9mhN9rwq/6MC3n6w2BdiKpgLm/Urtakg=;
	b=aLwjejuosKT7/oiR0cyTGSti9jZVhltGoOPo/KLg2Ymg6Tj+TrsG0qOmnP75RNXDJs
	TuNHF3o5A9VW3FHX7DAIAJUFf3C3b+erlABu3XyzrZZn2yL9se9kPstD4rhdwoceGP3W
	KBKOCBF9JN5WoFpW7vHaCXxkLkG0iSG2RxyEZ0zNU3t+llBkmJL4AsNr7DqasaKrDt0H
	3KaBhX2GV56DoDylR0pgfngRSM/JPNYMuS31EwtvIZL3sHeYguqzKO01nS9BX2jf6ruQ
	KVoXXiy930BS9oUsSH36QkKiw/anPfDgm6RrH0aXI5TkbxigkYMBuzNBX27sNnvfs0Bz
	Gvbg==
X-Gm-Message-State: APjAAAVpMn87v2IcZtFDoqFWxuCMAZC8jfrk+qu1KNdkAZwSwcZ7WyCI
	bqI9i/6pjk4zmCvshJHiCVwHm7pX08tfyvaeTVyPm01K
X-Google-Smtp-Source: APXvYqyuAyMhJ2W6+yYHpD3cwTENzAb2IGCHbjIckFqIrnlNMkWvm1htGZV8Wz7cgFsqx2BuTDTuwcms7SekqzFizpQ=
X-Received: by 2002:ac2:533c:: with SMTP id f28mr1672335lfh.73.1556796343592; 
	Thu, 02 May 2019 04:25:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
	<6rh8ceu2rn.fsf@pengutronix.de>
	<CAAx3WaDQKbNg0tXZd07s8i_5PTDVctuOcScDMDbXFMmotjoJpw@mail.gmail.com>
	<CAAx3WaCL2XBSarSVpDN+KdwwYoUDEd3cLT1MfecFWriUB=OT-Q@mail.gmail.com>
	<6rbm0vbl2s.fsf@pengutronix.de>
In-Reply-To: <6rbm0vbl2s.fsf@pengutronix.de>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Thu, 2 May 2019 13:25:32 +0200
Message-ID: <CAAx3WaA+KFX67Pzapkc67PTges-SbhRpooRyUxcvDxtzgqOWvQ@mail.gmail.com>
To: =?UTF-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Thu, 02 May 2019 11:25:46 -0000
Content-Type: multipart/alternative; boundary="0000000000000c2c120587e5e595"

--0000000000000c2c120587e5e595
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ulrich,

ok, I guess I miss-understand how that class works. I thought that I had to
add the customization on my own image recipe.
So the correct way is to write a 'customization recipe' and install via
IMAGE_INSTALL? Can you provide an example?

Thanks,
Gabriele

Il giorno mer 24 apr 2019 alle ore 15:15 Ulrich =C3=96lmann <
u.oelmann@pengutronix.de> ha scritto:

> Hi Gabriele,
>
> On Wed, Apr 24 2019 at 14:06 +0200, Gabriele Zampieri <
> gabbla.malist@gmail.com> wrote:
> > I'm now testing genimage via meta-ptx in my Yocto workflow, but I found=
 a
> > problem: I cannot set a SRC_URI in my custom image recipe (that inherit
> > from core-image which in turn inherit from image) because do_fetch and
> > do_unpack tasks have noexec set to 1. If I specify the SRC_URI with my
> > genimage.config, bitbake exits, complaining about LIC_FILE_CHECKSUM (th=
at
> > is correctly specified). If I hack image.bbclass and comment out
> >
> > #do_fetch[noexec] =3D "1"
> >
> >
> > #do_unpack[noexec] =3D "1"
> >
> > The process start correctly. Is there a way to avoid touching
> image.bbclass
> > and install my configuration from the image recipe?
> >
> > Thanks,
> > Gabriele
>
> you need one or more recipe(s) that construct(s) your filesystem(s) and
> a separate one that makes a flashable image out of that (see the
> introductory documentation in 'genimage.bbclass'). In the former you
> inherit 'core-image' and only in the latter which inherits 'genimage'
> you have to set the SRC_URI to point to your 'genimage.config'.
>
> Best regards
> Ulrich
>
>
> > Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Zampieri <
> > gabbla.malist@gmail.com> ha scritto:
> >
> >> Hi all,
> >>
> >> thank you very much for the suggestion, I will check genimage and test
> it.
> >>
> >> Gabriele
> >>
> >> Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lmann <
> >> u.oelmann@pengutronix.de> ha scritto:
> >>
> >>> Hi there,
> >>>
> >>> On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten <
> >>> Carsten.Stelling2@goerlitz.com> wrote:
> >>> > Have you seen https://github.com/pengutronix/genimage?
> >>>
> >>> you can find it included within
> https://github.com/pengutronix/meta-ptx
> >>> with an accompanying genimage.bbclass.
> >>>
> >>> Best regards
> >>> Ulrich
> >>>
> >>> > Regards,
> >>> >
> >>> > Carsten
> >>> >
> >>> > Von: yocto-bounces@yoctoproject.org [mailto:
> >>> yocto-bounces@yoctoproject.org] Im Auftrag von Gabriele Zampieri
> >>> > Gesendet: Montag, 4. M=C3=A4rz 2019 12:17
> >>> > An: yocto@yoctoproject.org
> >>> > Betreff: [yocto] Multiple ubifs partition
> >>> >
> >>> > Hi all,
> >>> >
> >>> > I'm trying to build a distribution that has multiple partitions. Th=
e
> >>> desiderata is something like:
> >>> >
> >>> > - rootfs.ubifs mounted on /
> >>> > - data.ubifs mounted on /data
> >>> > - opt.ubifs mounted on /opt
> >>> >
> >>> > I was wondering if there is a standard way to achieve the goal. I s=
ee
> >>> that there is a tool called wic, but it does not seems to support
> ubifs. I
> >>> could post process the tarball image and doing stuff with my scripts,
> but
> >>> I'd prefer doing this in a single bitbake run. Can you suggest
> something?
> >>> >
> >>> > Thanks,
> >>> > Gabriele
> >>>
> >>>
> >>> --
> >>> Pengutronix e.K.                           | Ulrich =C3=96lmann
>    |
> >>> Industrial Linux Solutions                 |
> http://www.pengutronix.de/
> >>> |
> >>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
>   |
> >>> Amtsgericht Hildesheim, HRA 2686           | Fax:
>  +49-5121-206917-5555 |
> >>>
> >>
>
>
> --
> Pengutronix e.K.                           | Ulrich =C3=96lmann          =
     |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>

--0000000000000c2c120587e5e595
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ulrich,</div><div><br></div><div>ok, I guess I mis=
s-understand how that class works. I thought that I had to add the customiz=
ation on my own image recipe. <br></div><div>So the correct way is to write=
 a &#39;customization recipe&#39; and install via IMAGE_INSTALL? Can you pr=
ovide an example?</div><div><br></div><div>Thanks, <br></div><div>Gabriele<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">Il giorno mer 24 apr 2019 alle ore 15:15 Ulrich =C3=96lmann &lt;<a hre=
f=3D"mailto:u.oelmann@pengutronix.de">u.oelmann@pengutronix.de</a>&gt; ha s=
critto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Gabri=
ele,<br>
<br>
On Wed, Apr 24 2019 at 14:06 +0200, Gabriele Zampieri &lt;<a href=3D"mailto=
:gabbla.malist@gmail.com" target=3D"_blank">gabbla.malist@gmail.com</a>&gt;=
 wrote:<br>
&gt; I&#39;m now testing genimage via meta-ptx in my Yocto workflow, but I =
found a<br>
&gt; problem: I cannot set a SRC_URI in my custom image recipe (that inheri=
t<br>
&gt; from core-image which in turn inherit from image) because do_fetch and=
<br>
&gt; do_unpack tasks have noexec set to 1. If I specify the SRC_URI with my=
<br>
&gt; genimage.config, bitbake exits, complaining about LIC_FILE_CHECKSUM (t=
hat<br>
&gt; is correctly specified). If I hack image.bbclass and comment out<br>
&gt;<br>
&gt; #do_fetch[noexec] =3D &quot;1&quot;<br>
&gt;<br>
&gt;<br>
&gt; #do_unpack[noexec] =3D &quot;1&quot;<br>
&gt;<br>
&gt; The process start correctly. Is there a way to avoid touching image.bb=
class<br>
&gt; and install my configuration from the image recipe?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Gabriele<br>
<br>
you need one or more recipe(s) that construct(s) your filesystem(s) and<br>
a separate one that makes a flashable image out of that (see the<br>
introductory documentation in &#39;genimage.bbclass&#39;). In the former yo=
u<br>
inherit &#39;core-image&#39; and only in the latter which inherits &#39;gen=
image&#39;<br>
you have to set the SRC_URI to point to your &#39;genimage.config&#39;.<br>
<br>
Best regards<br>
Ulrich<br>
<br>
<br>
&gt; Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Zampieri &lt;<br>
&gt; <a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbla.ma=
list@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; thank you very much for the suggestion, I will check genimage and =
test it.<br>
&gt;&gt;<br>
&gt;&gt; Gabriele<br>
&gt;&gt;<br>
&gt;&gt; Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lmann &lt;<br=
>
&gt;&gt; <a href=3D"mailto:u.oelmann@pengutronix.de" target=3D"_blank">u.oe=
lmann@pengutronix.de</a>&gt; ha scritto:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Hi there,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten &lt;<br>
&gt;&gt;&gt; <a href=3D"mailto:Carsten.Stelling2@goerlitz.com" target=3D"_b=
lank">Carsten.Stelling2@goerlitz.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt; Have you seen <a href=3D"https://github.com/pengutronix/g=
enimage" rel=3D"noreferrer" target=3D"_blank">https://github.com/pengutroni=
x/genimage</a>?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; you can find it included within <a href=3D"https://github.com/=
pengutronix/meta-ptx" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/pengutronix/meta-ptx</a><br>
&gt;&gt;&gt; with an accompanying genimage.bbclass.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Best regards<br>
&gt;&gt;&gt; Ulrich<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt; Regards,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Carsten<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Von: <a href=3D"mailto:yocto-bounces@yoctoproject.org" ta=
rget=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_b=
lank">yocto-bounces@yoctoproject.org</a>] Im Auftrag von Gabriele Zampieri<=
br>
&gt;&gt;&gt; &gt; Gesendet: Montag, 4. M=C3=A4rz 2019 12:17<br>
&gt;&gt;&gt; &gt; An: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt; &gt; Betreff: [yocto] Multiple ubifs partition<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Hi all,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I&#39;m trying to build a distribution that has multiple =
partitions. The<br>
&gt;&gt;&gt; desiderata is something like:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; - rootfs.ubifs mounted on /<br>
&gt;&gt;&gt; &gt; - data.ubifs mounted on /data<br>
&gt;&gt;&gt; &gt; - opt.ubifs mounted on /opt<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I was wondering if there is a standard way to achieve the=
 goal. I see<br>
&gt;&gt;&gt; that there is a tool called wic, but it does not seems to supp=
ort ubifs. I<br>
&gt;&gt;&gt; could post process the tarball image and doing stuff with my s=
cripts, but<br>
&gt;&gt;&gt; I&#39;d prefer doing this in a single bitbake run. Can you sug=
gest something?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Thanks,<br>
&gt;&gt;&gt; &gt; Gabriele<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulrich =C3=96lmann=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt;&gt;&gt; Industrial Linux Solutions=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| <a href=3D"http://www.pengutronix.de/" rel=3D"=
noreferrer" target=3D"_blank">http://www.pengutronix.de/</a><br>
&gt;&gt;&gt; |<br>
&gt;&gt;&gt; Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-2=
06917-0=C2=A0 =C2=A0 |<br>
&gt;&gt;&gt; Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| Fax:=C2=A0 =C2=A0+49-5121-206917-5555 |<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
<br>
<br>
--<br>
Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulrich =C3=96lmann=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
Industrial Linux Solutions=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| <a href=3D"http://www.pengutronix.de/" rel=3D"noreferrer" ta=
rget=3D"_blank">http://www.pengutronix.de/</a>=C2=A0 |<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0=C2=A0=
 =C2=A0 |<br>
Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =
Fax:=C2=A0 =C2=A0+49-5121-206917-5555 |<br>
</blockquote></div>

--0000000000000c2c120587e5e595--
