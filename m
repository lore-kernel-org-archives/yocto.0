Return-Path: <o_o@ieee.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8223E0187E; Sun, 10 Jun 2018 19:06:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1723DE010BF
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2018 19:06:49 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id k17-v6so10058382ita.0
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2018 19:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ieee-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=qKYI4ZAMODukNDUJNWqDAcPWx7RaQ8r7qnR1Vn+CNj8=;
	b=fQfLg48McfWSxVlnPoqnOAWMSkEUvulvvk6upSr28Sqfm01pUwXJfnx6ivq/RwNzzV
	IH7DcyTjEA/sBL3bZi3yEUn70UavAZDnKcY0KRp7w5QcvPxYvo1Ojri/7TaDVv21MWAD
	1wPSunnym8WWmigUhtgwsg26IGOFDxlBr54/wCRuSv3SsYdWMsFPdL/gfJSnHrf6j3Uk
	JkMiXS+nE23o4Tdg24W4F4iAkDv9YYMlAhLPdjSQPxmPgxOpwAz9J0IkgiQ5azEIj7Be
	P+OJCOeNg0eDtBuul+JeUI/1X7yD1ISdQBnK85Bpdqbea6nz/0tIMXA3zcULSn3PS8OK
	WNMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=qKYI4ZAMODukNDUJNWqDAcPWx7RaQ8r7qnR1Vn+CNj8=;
	b=QLjOO0+dUvV4dPRipmhZ0RBW1ODD1dqKK+f4rYBqaGFeThiURxRhC/rLx0vAtWi66b
	xfCUNuyZ25JvDbJcQS1dV2KEPLhS/Z4oEwuEn27LjCp/r3H733CdEHtoYSfCJWxHm5Uz
	Sp2PyaCdAT9xRjGyDg57wM5+MLQ2pnhoejpk4Wyqi5TmUVcQaJkCPDNB5QLMjzVbsKX0
	dAbdF3CGIgU6mImV792ofnP3Da5Hqqk2/Z5MTdxlKZhMy41pinViTnDkgjhCC+AjZDpN
	W2G0baD/7/mc/mLNssFKuc8DAi9UfrLP624yYbuPkR1r0A6LWuGYzabiFESjXnkeSplQ
	PTmw==
X-Gm-Message-State: APt69E15BUWM6yL+8t1Cj52A97ly+wV+PVrkZops/4xeKA7DGthvuNZf
	uSdSDQODzbcgNQXE8k09ekRFlYkn91xtE100FmfxGhV5
X-Google-Smtp-Source: ADUXVKKqAzrANWgwIAUrgeIQwgxXrD92tntthqyt1++PWwTW8pE6A1qWD+jMdQZRJmay5qV/dQud/q6L+4dpNqgVLIQ=
X-Received: by 2002:a24:3a87:: with SMTP id
	m129-v6mr298579itm.90.1528682809468; 
	Sun, 10 Jun 2018 19:06:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:850b:0:0:0:0:0 with HTTP; Sun, 10 Jun 2018 19:06:49
	-0700 (PDT)
In-Reply-To: <5E53D14CE4667A45B9A06760DE5D13D0F38E9788@ALA-MBC.corp.ad.wrs.com>
References: <CAMXie8EtM6FOs4Qf3XHW-5EGTy_+xc7Cen-U_UB3ZpO8b4PcjA@mail.gmail.com>
	<5E53D14CE4667A45B9A06760DE5D13D0F38E9788@ALA-MBC.corp.ad.wrs.com>
From: Ricardo Ramirez <o_o@ieee.org>
Date: Sun, 10 Jun 2018 21:06:49 -0500
Message-ID: <CAMXie8EYUhONeuve=oF3hs9fe9Jz_rTP2QWFh0AKZdyyGj=J8Q@mail.gmail.com>
To: "Reyna, David" <david.reyna@windriver.com>, yocto@yoctoproject.org
Subject: Re: Target CPU architectures that Yocto Project Support
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
X-List-Received-Date: Mon, 11 Jun 2018 02:06:50 -0000
Content-Type: multipart/alternative; boundary="000000000000d551f3056e5433a6"

--000000000000d551f3056e5433a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

Thanks for the prompt reply!

My question was a follow up of Khem's inquire (posted on 2014-05-02)

https://lists.yoctoproject.org/pipermail/yocto/2014-May/019387.html

Using the links you sent me, I found that the old OE-Classic branch
supports sparc32 but didn't see any sparc64

http://layers.openembedded.org/layerindex/oe-classic/recipes/

As such, I'd like to know what steps I need to follow in order to enable a
SPARCv9 machine in Yocto.

I appreciate your answer.

-R


On Sun, Jun 10, 2018 at 7:17 PM, Reyna, David <david.reyna@windriver.com>
wrote:

> Hi Ricardo,
>
>
>
> If you are asking about the list of MACHINE types that Yocto Project
> supports, then the best place to look is in the Layer Index:
>
>
>
>    https://layers.openembedded.org/layerindex/branch/master/layers/
>
>
>
> Click on the =E2=80=9CMachines=E2=80=9D tab, click on the =E2=80=9CSearch=
=E2=80=9D tab with or without a
> search value, and see the glorious list.
>
>
>
> The same goes for supported layers, recipes, classes, and distro values.
>
>
>
> You can change the =E2=80=9CBranch=E2=80=9D value to see the MACHINE=E2=
=80=99s per release.
>
>
>
> - David Reyna
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:yocto-bounces@
> yoctoproject.org] *On Behalf Of *Ricardo Ramirez
> *Sent:* Sunday, June 10, 2018 5:07 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Target CPU architectures that Yocto Project Suppor=
t
>
>
>
> Hi,
>
>
>
> Naive question from a newbie. How can this be achieved? I'd appreciate if
> you could please shed some light on what steps need to be followed?
>
>
>
> Thanks in advance,
>
>
>
> -R
>

--000000000000d551f3056e5433a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi David,<div><br></div><div>Thanks for the prompt reply!=
=C2=A0</div><div><br></div><div>My question was a follow up of Khem&#39;s i=
nquire (posted on 2014-05-02)</div><div><br></div><div><a href=3D"https://l=
ists.yoctoproject.org/pipermail/yocto/2014-May/019387.html">https://lists.y=
octoproject.org/pipermail/yocto/2014-May/019387.html</a><br></div><div><br>=
</div><div>Using the links you sent me, I found that the old OE-Classic bra=
nch supports sparc32 but didn&#39;t see any sparc64<br></div><div><br></div=
><div><a href=3D"http://layers.openembedded.org/layerindex/oe-classic/recip=
es/">http://layers.openembedded.org/layerindex/oe-classic/recipes/</a><br><=
/div><div><br></div><div>As such, I&#39;d like to know what steps I need to=
 follow in order to enable a SPARCv9 machine in Yocto.</div><div><br></div>=
<div>I appreciate=C2=A0your answer.</div><div><br></div><div>-R</div><div><=
br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Sun, Jun 10, 2018 at 7:17 PM, Reyna, David <span dir=3D"ltr">&lt;<a href=
=3D"mailto:david.reyna@windriver.com" target=3D"_blank">david.reyna@windriv=
er.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-7623447277888117760WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Ricardo,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">If you are asking about t=
he list of MACHINE types that Yocto Project supports, then the best place t=
o look is in the Layer Index:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0 <a href=3D"h=
ttps://layers.openembedded.org/layerindex/branch/master/layers/" target=3D"=
_blank">https://layers.openembedded.<wbr>org/layerindex/branch/master/<wbr>=
layers/</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Click on the =E2=80=9CMac=
hines=E2=80=9D tab, click on the =E2=80=9CSearch=E2=80=9D tab with or witho=
ut a search value, and see the glorious list.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">The same goes for support=
ed layers, recipes, classes, and distro values.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">You can change the =E2=80=
=9CBranch=E2=80=9D value to see the MACHINE=E2=80=99s per release.<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">- David Reyna<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@<wbr>yoctoproject.org</a>]
<b>On Behalf Of </b>Ricardo Ramirez<br>
<b>Sent:</b> Sunday, June 10, 2018 5:07 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Target CPU architectures that Yocto Project Sup=
port<u></u><u></u></span></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Naive question from a newbie. How can this be achiev=
ed? I&#39;d appreciate if you could please shed some light on what steps ne=
ed to be followed?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks in advance,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">-R<u></u><u></u></p>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--000000000000d551f3056e5433a6--
