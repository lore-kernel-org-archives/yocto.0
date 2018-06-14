Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEB3AE0153C; Thu, 14 Jun 2018 09:15:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tdhammer99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE8BBE0107C
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 09:15:00 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id 188-v6so6146295oid.12
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 09:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=trrL7J9RIR5f7mZvAwUCVGMTQLCvcVThH24VhkJhcoA=;
	b=UJdFdoHRzHXR7xeE3JqsEB2GW83ZqL/KPrT7DrmE8dj19ivNLL+D80BWjVaKmo1hkL
	a6egR5SDed1+Jv0q1RV+70D2NnTDgzL55jIh3dqolmwJR3ZEVNI/usDAmrOOEurzh6X9
	hBDzWZxE2bs4n7FfrLWI3Ml+QWsTYzxIxvY7wme3jGsHnThnHOwHbvPb7uFDbdBE4kA6
	MfEvAj4xIvD9BDiy6Aqt7d+TJ7k8DKO4Tgw5qXCkKzTtaG/imct+ZBvv2QfeGZywrzuX
	+p0GNntXipTt3EB7A3hRYXVB67qEFmYGTL5uh2//Llcvij4Tz1Ae/A7tY8j3PQVIeZp9
	mWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=trrL7J9RIR5f7mZvAwUCVGMTQLCvcVThH24VhkJhcoA=;
	b=TdtqAsL8VHiv6uo4MZCZ/FmElk4HGkfMRvf/dssy0DD7RoR9gz3iRqTXDt9vBvUxbT
	18QYVqDf0yOhqdREgNXENIlnB4D7uHVOKs2Ats/MSuHyjr5ChKRURoPqTklWHHVEV3Q9
	1/xRQNmVaQIPeTZtPUyOGMb72WM+/jks0WmCI4/82xCEteywcUZRwV/FgNg4+aj0UQxU
	s3IBlDVSACQAXr31niN9ugQ/YXGHwKEJFbzDKMB3yictLX1N8cx2fqERlcavFDtcAC2w
	BC6TFadwZaItZVNBdgEmuqLdPAD7hxC33brF8dJNGmNPFy8kO2/4eJrvi6pHuSL7ZgLu
	u8Ag==
X-Gm-Message-State: APt69E3hLvPXW0JQA6379Bl3gJHmzxr/7RJ+mocrSNArpSgkgbNPS8so
	RA3/bBxZ2bN/ir86O8wbK2lolkeJcesRigMHpJIyRDXs
X-Google-Smtp-Source: ADUXVKL4+EEISBSj7tL7KWXF+HakX4FnMhHX6LVlBnFMKnOty5iJatE9iXgNeQtjUkf+wzyO71OtfvF43IvG8YOeTog=
X-Received: by 2002:aca:e082:: with SMTP id
	x124-v6mr1419357oig.220.1528992899659; 
	Thu, 14 Jun 2018 09:14:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:39a2:0:0:0:0:0 with HTTP; Thu, 14 Jun 2018 09:14:58
	-0700 (PDT)
In-Reply-To: <20180614064052.z64dme5mzs56fs4z@jholzmayr.localdomain>
References: <CALh9vaWsyukbyqEz7Yr4Y5zH3PGsfgqFKYR3ofZ4CgtmAJbB1w@mail.gmail.com>
	<20180614064052.z64dme5mzs56fs4z@jholzmayr.localdomain>
From: Tim Hammer <tdhammer99@gmail.com>
Date: Thu, 14 Jun 2018 12:14:58 -0400
Message-ID: <CALh9vaX1q+W0F63GxWze7f9viVimEybWqYN6fTKvgKYiDegUCQ@mail.gmail.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: yocto@yoctoproject.org
Subject: Re: /boot/ content into root filesystem?
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
X-List-Received-Date: Thu, 14 Jun 2018 16:15:04 -0000
Content-Type: multipart/alternative; boundary="000000000000a5fe0f056e9c66d7"

--000000000000a5fe0f056e9c66d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 14, 2018 at 2:40 AM, Josef Holzmayr <
holzmayr@rsi-elektrotechnik.de> wrote:

> Hi Tim,
>
> On Wed, Jun 13, 2018 at 11:57:10PM -0400, Tim Hammer wrote:
> > I would like to include the kernel Image and DTB files in the /boot/
> > directory of the root filesystem that will be installed in flash memory=
 (
> > *vs.* a separate partition with the /boot/ content).
>
> IMAGE_INSTALL +=3D "kernel kernel-devicetree"
>
> should do that neatly. See also:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/
> classes/kernel.bbclass#n548
> and
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/
> classes/kernel-devicetree.bbclass#n6
>
>
Thanks for the pointers! To be honest, it was still a little confusing, but
after some experimentation I figured out a few things.

 - kernel is already included in the image
    (I believe in meta-openembedded/meta-oe/recipes-core/packagegroups/
packagegroup-boot.bb
     in the RRECOMMENDS_${PN} definition)
   thus, it is not needed in my IMAGE_INSTALL extensions

 - kernel-image gets me the Image-4.14.16+gdfe1b13 kernel binary into /boot=
/
   this is despite not finding any recipe file(s) that puts that file
        into the FILES_${KERNEL_PACKAGE_NAME}-image variable

 - kernel-dev will get me the additional files
      (System.map-..., config-..., Module.symvers-..., etc.)
    if I need them


> Greetz
> --
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Josef Holzmayr
> Software Developer Embedded Systems
>
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548
>
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>
>


--=20

.Tim

--000000000000a5fe0f056e9c66d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>On Thu, Jun 14, 2018 at 2:40 AM, Josef Holzmayr <=
span dir=3D"ltr">&lt;<a href=3D"mailto:holzmayr@rsi-elektrotechnik.de" targ=
et=3D"_blank">holzmayr@rsi-elektrotechnik.de</a>&gt;</span> wrote:<br></div=
><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hi Tim,<br>
<br>
On Wed, Jun 13, 2018 at 11:57:10PM -0400, Tim Hammer wrote:<br>
&gt; I would like to include the kernel Image and DTB files in the /boot/<b=
r>
&gt; directory of the root filesystem that will be installed in flash memor=
y (<br>
&gt; *vs.* a separate partition with the /boot/ content).<br>
<br>
IMAGE_INSTALL +=3D &quot;kernel kernel-devicetree&quot;<br>
<br>
should do that neatly. See also:<br>
<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classe=
s/kernel.bbclass#n548" rel=3D"noreferrer" target=3D"_blank">https://git.yoc=
toproject.org/<wbr>cgit/cgit.cgi/poky/tree/meta/<wbr>classes/kernel.bbclass=
#n548</a><br>
and<br>
<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classe=
s/kernel-devicetree.bbclass#n6" rel=3D"noreferrer" target=3D"_blank">https:=
//git.yoctoproject.org/<wbr>cgit/cgit.cgi/poky/tree/meta/<wbr>classes/kerne=
l-devicetree.<wbr>bbclass#n6</a><br>
<br></blockquote><div>

<div style=3D"font-size:small;text-decoration-style:initial;text-decoration=
-color:initial"><br></div><div style=3D"font-size:small;text-decoration-sty=
le:initial;text-decoration-color:initial">Thanks for the pointers! To be ho=
nest, it was still a little confusing, but after some experimentation I fig=
ured out a few things.</div><div style=3D"font-size:small;text-decoration-s=
tyle:initial;text-decoration-color:initial"><br></div><div style=3D"font-si=
ze:small;text-decoration-style:initial;text-decoration-color:initial">=C2=
=A0- kernel is already included in the image</div><div style=3D"font-size:s=
mall;text-decoration-style:initial;text-decoration-color:initial">=C2=A0 =
=C2=A0 (I believe in=C2=A0meta-openembedded/meta-oe/recipes-core/packagegro=
ups/<a href=3D"http://packagegroup-boot.bb">packagegroup-boot.bb</a></div><=
div style=3D"font-size:small;text-decoration-style:initial;text-decoration-=
color:initial">=C2=A0 =C2=A0 =C2=A0in the=C2=A0RRECOMMENDS_${PN} definition=
)<br></div><div style=3D"font-size:small;text-decoration-style:initial;text=
-decoration-color:initial">=C2=A0 =C2=A0thus, it is not needed in my IMAGE_=
INSTALL extensions</div><div style=3D"font-size:small;text-decoration-style=
:initial;text-decoration-color:initial"><br></div><div style=3D"font-size:s=
mall;text-decoration-style:initial;text-decoration-color:initial">=C2=A0- k=
ernel-image gets me the Image-4.14.16+gdfe1b13 kernel binary into /boot/</d=
iv><div style=3D"text-decoration-style:initial;text-decoration-color:initia=
l">=C2=A0 =C2=A0this is despite not finding any recipe file(s) that puts th=
at file</div><div style=3D"text-decoration-style:initial;text-decoration-co=
lor:initial">=C2=A0 =C2=A0 =C2=A0 =C2=A0 into the FILES_${KERNEL_PACKAGE_NA=
ME}-image variable<br></div><div style=3D"text-decoration-style:initial;tex=
t-decoration-color:initial"><br></div><div style=3D"text-decoration-style:i=
nitial;text-decoration-color:initial">=C2=A0- kernel-dev will get me the ad=
ditional files</div><div style=3D"text-decoration-style:initial;text-decora=
tion-color:initial">=C2=A0 =C2=A0 =C2=A0 (System.map-..., config-...,=C2=A0=
Module.symvers-..., etc.)</div><div style=3D"text-decoration-style:initial;=
text-decoration-color:initial">=C2=A0 =C2=A0 if I need them</div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
Greetz<br>
-- <br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Josef Holzmayr<br>
Software Developer Embedded Systems<br>
<br>
Tel: +49 8444 9204-48<br>
Fax: +49 8444 9204-50<br>
<br>
R-S-I Elektrotechnik GmbH &amp; Co. KG<br>
Woelkestrasse 11<br>
D-85301 Schweitenkirchen<br>
<a href=3D"http://www.rsi-elektrotechnik.de" rel=3D"noreferrer" target=3D"_=
blank">www.rsi-elektrotechnik.de</a><br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393<=
br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
Ust-IdNr: DE 128592548 <br>
<br>
______________________________<wbr>______________________________<wbr>_<br>
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
USt-IdNr.: DE 128592548<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr"><br><span style=3D"font-family:&quot;=
arial narrow&quot;,sans-serif">.Tim</span><br></div></div>
</div></div>

--000000000000a5fe0f056e9c66d7--
