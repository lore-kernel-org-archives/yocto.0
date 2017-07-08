Return-Path: <so61pi.re@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55D30E00B67; Sat,  8 Jul 2017 08:12:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (so61pi.re[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.52 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1115EE0070F
	for <yocto@yoctoproject.org>; Sat,  8 Jul 2017 08:12:50 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id b207so38737062lfg.2
	for <yocto@yoctoproject.org>; Sat, 08 Jul 2017 08:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xJ33j170qOj888r2mA/guA0WVcM0TiMwIQnf2EaYJB4=;
	b=tndt8m6dhF8hprYwAEIMOeCwhkbObZ9vHZHiRPyETkiwHPZS7QxxyNXGf6JM42Ug7k
	7hmghAO84OSCmKTo4pgEhJBG9bYcsZ3mtZzkv9iWdZLl+tvKZBJD2O9ASy0L1mn377e5
	Rq5SY3gfYprP+xYrBPUUPGn1Ax22GZGcZiJpp+C2/YKkxYC4KhtsbeZlwient5xhxbz7
	FOwuaUCi93M+3eayKn73l9z1/I028La/xyHQUyfDUvlkQ9i+aXrrX93GA+ZCdE7+E2hD
	+HxPhFujEDz2y0aP0TWV7hpAu0ARHnYSsPduzONHzisRI+ZpC4hZPL0Wk0MrmKBgR0yt
	qc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xJ33j170qOj888r2mA/guA0WVcM0TiMwIQnf2EaYJB4=;
	b=YpFteqvtOPSxXAjaivb7vwKiUMMGM9DBu15EsyZ6x2Iil0w/d0qRf7+UeiQJbNVw98
	shu29wvTeeQGuUanicc4z/XF3eFMEl/0ojUtmrn/koG7Qs2CChWmthzwQ0Wz1NypF2y5
	HyDmRNeomFT6vOSmi7Ina8BT3HRh2nV+Zz86g1NH+7UFw+gsewQ62nytA6880f4Xcg2B
	jBStpLtPqhyDxNtqBJ1gJk6CvugCUFbUq5sSZuC6eAidSg+a4WaRxGZpqDRHSiHqiY7j
	GfFaAMTNKZ19CRGY5gZvTcGUTNrfqlDKnavhliWIQ7HjcddM9pxhfGfBpiHSVlgz3vxA
	Iajw==
X-Gm-Message-State: AKS2vOzyQ+se+4vtKcthtlOlpgBIenM2sdYw7f5fTVU7iuy7AKchG/81
	8YwN7WJpPatqqBcp1hHUmlQLenz+XBb757o=
X-Received: by 10.25.225.8 with SMTP id y8mr20681036lfg.34.1499526769645; Sat,
	08 Jul 2017 08:12:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.199.203 with HTTP; Sat, 8 Jul 2017 08:12:48 -0700 (PDT)
In-Reply-To: <e9196c4d-7dc8-3ad4-b7cd-57aa7b3a4f4f@denx.de>
References: <CAGnCEbuE7OVy=RrbD91WMtSiZ2nJ90eUONMEJ=ZrMfx2FC6LhA@mail.gmail.com>
	<ad7604a1-743e-89f3-b810-b80beeb3f5cc@denx.de>
	<CAGnCEbuAG01bPk0WR5HvTcPwAxqUPU_OA_JipRjmANwCyumAkQ@mail.gmail.com>
	<e9196c4d-7dc8-3ad4-b7cd-57aa7b3a4f4f@denx.de>
From: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>
Date: Sat, 8 Jul 2017 22:12:48 +0700
Message-ID: <CAGnCEbuOBM8rxhHv_nFNjZwQf+TVjc2hBjA5vjZL2cBZNAc5KA@mail.gmail.com>
To: Stefano Babic <sbabic@denx.de>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Update SRCREV doesn't work?
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
X-List-Received-Date: Sat, 08 Jul 2017 15:12:54 -0000
Content-Type: multipart/alternative; boundary="001a113c3bd06f9d130553cfc859"

--001a113c3bd06f9d130553cfc859
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Babic,

I think the problem is from

> meta-swupdate-boards/recipes-support/swupdate/swupdate_%.bbappend
>

The file contains

> SRCREV =3D "${AUTOREV}"
>

which overwrites SRCREV in

> meta-swupdate/recipes-support/swupdate/swupdate_2017.04.bb
>

After removing that line, everything is fine now.

Best Regards,
Thi Huynh

Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi
-so61pi

On Wed, Jul 5, 2017 at 1:43 PM, Stefano Babic <sbabic@denx.de> wrote:

> Hi Huynh,
>
> On 05/07/2017 04:09, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:
> > Hi,
> >
> > I guess I'll remove build/tmp directory and rebuild everything from
> scratch.
> > I'll post the result later then.
> >
>
> The recipe for beaglebone was dropped from meta-swupdate. I moved the
> examples for bbb and raspi into a separate layer (meta-swupdate-boards,
> -master).
>
> > BTW, thank you so much for writing swupdate.
>
> You're welcome.
>
> >
> Best regards,
> Stefano Babic
>
> > Best Regards,
> > Thi Huynh
> >
> > Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi
> > -so61pi
> >
> > On Wed, Jul 5, 2017 at 12:08 AM, Stefano Babic <sbabic@denx.de
> > <mailto:sbabic@denx.de>> wrote:
> >
> >     Hi,
> >
> >     On 04/07/2017 18:13, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:
> >     > Hi everyone,
> >     >
> >     > I'm using poky pyro to build a beaglebone image with swupdate.
> >     >
> >     > First time I built swupdate (by bitbake swupdate), it used the
> latest
> >     > git version and I encountered an make error which related to
> swupdate only.
> >     >
> >     > Then I changed swupdate version to 2017.04 (by using
> >     > PREFERRED_VERSION_swupdate =3D "2017.04") but the bitbake still u=
sed
> the
> >     > latest git version and I had the make error again.
> >     >
> >
> >     I cannot confirm this. I have built a custom board and setting
> >     PREFERRED_VERSION_swupdate works without issues.
> >
> >     > But when I used devshell and changed the git revision to 2017.04
> then
> >     > do_configure and do_compile, everything went fine.
> >     >
> >     > My question is, is there a simple way to solve this problem?
> >     >
> >     > /Note:/
> >     > The swupdate recipes for beaglebone that I'm using are from
> >     > https://github.com/sbabic/meta-swupdate
> >     <https://github.com/sbabic/meta-swupdate>
> >     >
> >     > Content of swupdate_2017.04.bb <http://swupdate_2017.04.bb>
> >     <http://swupdate_2017.04.bb>:
> >     >
> >     >     require swupdate.inc
> >     >
> >     >     SRCREV =3D "d344ec10b71293d2aaf96816266d4e6ed1d3bf6a"
> >     >
> >     >
> >     > Content of swupdate_git.bb <http://swupdate_git.bb>
> >     <http://swupdate_git.bb>
> >     >
> >     >     require swupdate.inc
> >     >
> >     >     DEFAULT_PREFERENCE =3D "-1"
> >     >
> >     >
> >     > A snippet of swupdate.inc
> >     >
> >     >     SRCREV =3D "${AUTOREV}"
> >     >
> >     >
> >
> >     Best regards,
> >     Stefano Babic
> >
> >
> >     --
> >     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D
> >     DENX Software Engineering GmbH,      Managing Director: Wolfgang De=
nk
> >     HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germa=
ny
> >     Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email:
> >     sbabic@denx.de <mailto:sbabic@denx.de>
> >     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> >
>

--001a113c3bd06f9d130553cfc859
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi Babic,<br><br></div>I think th=
e problem is from<br><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">meta=
-swupdate-boards/recipes-support/swupdate/swupdate_%.bbappend<br></blockquo=
te></div><br>The file contains<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">SRCREV =3D &quot;${AUTOREV}&quot;<br></blockquote><br></div>whic=
h overwrites SRCREV in<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>meta-swupdate/recipes-support/swupdate/<a href=3D"http://swupdate_2017.04.=
bb">swupdate_2017.04.bb</a><br></blockquote><br></div><div>After removing t=
hat line, everything is fine now.<br></div><div><br></div>Best Regards,<br>=
</div>Thi Huynh<br></div><div class=3D"gmail_extra"><br clear=3D"all"><div>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi<br><div>-so61pi<br></div></div></di=
v></div>
<br><div class=3D"gmail_quote">On Wed, Jul 5, 2017 at 1:43 PM, Stefano Babi=
c <span dir=3D"ltr">&lt;<a href=3D"mailto:sbabic@denx.de" target=3D"_blank"=
>sbabic@denx.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi =
Huynh,<br>
<span class=3D""><br>
On 05/07/2017 04:09, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I guess I&#39;ll remove build/tmp directory and rebuild everything fro=
m scratch.<br>
&gt; I&#39;ll post the result later then.<br>
&gt;<br>
<br>
</span>The recipe for beaglebone was dropped from meta-swupdate. I moved th=
e<br>
examples for bbb and raspi into a separate layer (meta-swupdate-boards,<br>
-master).<br>
<span class=3D""><br>
&gt; BTW, thank you so much for writing swupdate.<br>
<br>
</span>You&#39;re welcome.<br>
<br>
&gt;<br>
Best regards,<br>
Stefano Babic<br>
<span class=3D""><br>
&gt; Best Regards,<br>
&gt; Thi Huynh<br>
&gt;<br>
&gt; Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi<br>
&gt; -so61pi<br>
&gt;<br>
&gt; On Wed, Jul 5, 2017 at 12:08 AM, Stefano Babic &lt;<a href=3D"mailto:s=
babic@denx.de">sbabic@denx.de</a><br>
</span><div><div class=3D"h5">&gt; &lt;mailto:<a href=3D"mailto:sbabic@denx=
.de">sbabic@denx.de</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 04/07/2017 18:13, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh=
 wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi everyone,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I&#39;m using poky pyro to build a beaglebone =
image with swupdate.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; First time I built swupdate (by bitbake swupda=
te), it used the latest<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; git version and I encountered an make error wh=
ich related to swupdate only.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Then I changed swupdate version to 2017.04 (by=
 using<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; PREFERRED_VERSION_swupdate =3D &quot;2017.04&q=
uot;) but the bitbake still used the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; latest git version and I had the make error ag=
ain.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0I cannot confirm this. I have built a custom board =
and setting<br>
&gt;=C2=A0 =C2=A0 =C2=A0PREFERRED_VERSION_swupdate works without issues.<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; But when I used devshell and changed the git r=
evision to 2017.04 then<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; do_configure and do_compile, everything went f=
ine.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; My question is, is there a simple way to solve=
 this problem?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; /Note:/<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; The swupdate recipes for beaglebone that I&#39=
;m using are from<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"https://github.com/sbabic/meta-swup=
date" rel=3D"noreferrer" target=3D"_blank">https://github.com/sbabic/<wbr>m=
eta-swupdate</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://github.com/sbabic/meta-swupd=
ate" rel=3D"noreferrer" target=3D"_blank">https://github.com/sbabic/<wbr>me=
ta-swupdate</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Content of <a href=3D"http://swupdate_2017.04.=
bb" rel=3D"noreferrer" target=3D"_blank">swupdate_2017.04.bb</a> &lt;<a hre=
f=3D"http://swupdate_2017.04.bb" rel=3D"noreferrer" target=3D"_blank">http:=
//swupdate_2017.04.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://swupdate_2017.04.bb" rel=3D"n=
oreferrer" target=3D"_blank">http://swupdate_2017.04.bb</a>&gt;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0require swupdate.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0SRCREV =3D &quot;<wbr>d344e=
c10b71293d2aaf96816266d4e<wbr>6ed1d3bf6a&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Content of <a href=3D"http://swupdate_git.bb" =
rel=3D"noreferrer" target=3D"_blank">swupdate_git.bb</a> &lt;<a href=3D"htt=
p://swupdate_git.bb" rel=3D"noreferrer" target=3D"_blank">http://swupdate_g=
it.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://swupdate_git.bb" rel=3D"noref=
errer" target=3D"_blank">http://swupdate_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0require swupdate.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0DEFAULT_PREFERENCE =3D &quo=
t;-1&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; A snippet of swupdate.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0SRCREV =3D &quot;${AUTOREV}=
&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Stefano Babic<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0=
 Managing Director: Wolfgang Denk<br>
&gt;=C2=A0 =C2=A0 =C2=A0HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Gr=
oebenzell, Germany<br>
&gt;=C2=A0 =C2=A0 =C2=A0Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Ema=
il:<br>
</div></div>&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:sbabic@denx.de">sbabi=
c@denx.de</a> &lt;mailto:<a href=3D"mailto:sbabic@denx.de">sbabic@denx.de</=
a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt;<br>
</blockquote></div><br></div>

--001a113c3bd06f9d130553cfc859--
