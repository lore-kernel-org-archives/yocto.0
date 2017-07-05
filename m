Return-Path: <so61pi.re@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17161E00BE8; Tue,  4 Jul 2017 19:09:49 -0700 (PDT)
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
	*      [209.85.215.48 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A37C1E00BD0
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 19:09:45 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id b207so126092398lfg.2
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 19:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EP5o+4nVAco40Jl9jZrdtFSwB8c4T3Z5QqyMiobcUaY=;
	b=dXfHue2HUGMfOgQgY0F8EjBB2+OPHo/s/w+77IIQM1ZLmC1RrDl/JTFqjTkQzyyYXR
	zTCVM9cqR6jsvc7hti33TN31TiJppULVUtpWJ1lSgXHFkpGazyVS5vuGiaU7/ZBGFA25
	RNXtyM9rcAnPu7aLo37v6wKUUcIeBHmoWFlrWYFp+xomf/Z1x9gW9Zeq++vP+z/HOf7L
	bkiX9tPouhPBpqMy6UNUKqrXXXt48nA5+McNVLmRKSFl+DCXzYNgKqXBb3yPF0LUFTje
	eHBhykceAjQ7bpffjbvS1jo4bAVh8pvpjFT2f2jFUB1ck3QrHGvE84J9VOhucD6rG2Ec
	Cjkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EP5o+4nVAco40Jl9jZrdtFSwB8c4T3Z5QqyMiobcUaY=;
	b=aPhCRaa/lVVUdrpyJg9+Ih6ctghv0L9SjpT1IaKGAdt6B5yZf3bdlHbBBT0MkxfVi5
	Kp/7jdIWGbVyBYiKwJhVvnjq4+bFdF8SLvW1mx8RK5PILL0MUrj+kf2QHwor3pZ0+sCT
	9sXPxYwq1e96nCmkQ8rKPAFL78D/iYBV7iSOnlD8Ag7RnfstfREHBfSDOI5SarVYKiWm
	z5a9EGwJYjNVKyfXKXDCk+Kz1TtU4CtfWoatn7LSBt/r7+EHWw54/oB0v9TL0AMepmkn
	Z6zQML701Yd0/ox3AxNMHWzM57yJAyrX5wccfDmTUTfrmqjhQk1ZOhTvHjAv/gWb2tIT
	BUxw==
X-Gm-Message-State: AKS2vOx2jMbP1jEBxpxBukluAv27bpCv2YluLrJ9zAHoxu1vXLR9oCKK
	rabH+5wzqy9VOqefYlWFtj0Fa7ZUq6Alhbk=
X-Received: by 10.46.9.140 with SMTP id 134mr10039360ljj.42.1499220584464;
	Tue, 04 Jul 2017 19:09:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.199.203 with HTTP; Tue, 4 Jul 2017 19:09:43 -0700 (PDT)
In-Reply-To: <ad7604a1-743e-89f3-b810-b80beeb3f5cc@denx.de>
References: <CAGnCEbuE7OVy=RrbD91WMtSiZ2nJ90eUONMEJ=ZrMfx2FC6LhA@mail.gmail.com>
	<ad7604a1-743e-89f3-b810-b80beeb3f5cc@denx.de>
From: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>
Date: Wed, 5 Jul 2017 09:09:43 +0700
Message-ID: <CAGnCEbuAG01bPk0WR5HvTcPwAxqUPU_OA_JipRjmANwCyumAkQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Jul 2017 02:09:49 -0000
Content-Type: multipart/alternative; boundary="001a114b0a7660866e0553887e84"

--001a114b0a7660866e0553887e84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I guess I'll remove build/tmp directory and rebuild everything from scratch=
.
I'll post the result later then.

BTW, thank you so much for writing swupdate.

Best Regards,
Thi Huynh

Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi
-so61pi

On Wed, Jul 5, 2017 at 12:08 AM, Stefano Babic <sbabic@denx.de> wrote:

> Hi,
>
> On 04/07/2017 18:13, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:
> > Hi everyone,
> >
> > I'm using poky pyro to build a beaglebone image with swupdate.
> >
> > First time I built swupdate (by bitbake swupdate), it used the latest
> > git version and I encountered an make error which related to swupdate
> only.
> >
> > Then I changed swupdate version to 2017.04 (by using
> > PREFERRED_VERSION_swupdate =3D "2017.04") but the bitbake still used th=
e
> > latest git version and I had the make error again.
> >
>
> I cannot confirm this. I have built a custom board and setting
> PREFERRED_VERSION_swupdate works without issues.
>
> > But when I used devshell and changed the git revision to 2017.04 then
> > do_configure and do_compile, everything went fine.
> >
> > My question is, is there a simple way to solve this problem?
> >
> > /Note:/
> > The swupdate recipes for beaglebone that I'm using are from
> > https://github.com/sbabic/meta-swupdate
> >
> > Content of swupdate_2017.04.bb <http://swupdate_2017.04.bb>:
> >
> >     require swupdate.inc
> >
> >     SRCREV =3D "d344ec10b71293d2aaf96816266d4e6ed1d3bf6a"
> >
> >
> > Content of swupdate_git.bb <http://swupdate_git.bb>
> >
> >     require swupdate.inc
> >
> >     DEFAULT_PREFERENCE =3D "-1"
> >
> >
> > A snippet of swupdate.inc
> >
> >     SRCREV =3D "${AUTOREV}"
> >
> >
>
> Best regards,
> Stefano Babic
>
>
> --
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>

--001a114b0a7660866e0553887e84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I guess I&#39;ll=
 remove build/tmp directory and rebuild everything from scratch.<br></div>I=
&#39;ll post the result later then.<br><br></div>BTW, thank you so much for=
 writing swupdate.<br><br></div>Best Regards,<br></div>Thi Huynh<br></div><=
div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Hu=E1=BB=B3nh Ng=
=E1=BB=8Dc Thi<br><div>-so61pi<br></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Jul 5, 2017 at 12:08 AM, Stefano Bab=
ic <span dir=3D"ltr">&lt;<a href=3D"mailto:sbabic@denx.de" target=3D"_blank=
">sbabic@denx.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi=
,<br>
<span class=3D""><br>
On 04/07/2017 18:13, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:<br>
&gt; Hi everyone,<br>
&gt;<br>
&gt; I&#39;m using poky pyro to build a beaglebone image with swupdate.<br>
&gt;<br>
&gt; First time I built swupdate (by bitbake swupdate), it used the latest<=
br>
&gt; git version and I encountered an make error which related to swupdate =
only.<br>
&gt;<br>
&gt; Then I changed swupdate version to 2017.04 (by using<br>
&gt; PREFERRED_VERSION_swupdate =3D &quot;2017.04&quot;) but the bitbake st=
ill used the<br>
&gt; latest git version and I had the make error again.<br>
&gt;<br>
<br>
</span>I cannot confirm this. I have built a custom board and setting<br>
PREFERRED_VERSION_swupdate works without issues.<br>
<span class=3D""><br>
&gt; But when I used devshell and changed the git revision to 2017.04 then<=
br>
&gt; do_configure and do_compile, everything went fine.<br>
&gt;<br>
&gt; My question is, is there a simple way to solve this problem?<br>
&gt;<br>
</span>&gt; /Note:/<br>
<span class=3D"">&gt; The swupdate recipes for beaglebone that I&#39;m usin=
g are from<br>
&gt; <a href=3D"https://github.com/sbabic/meta-swupdate" rel=3D"noreferrer"=
 target=3D"_blank">https://github.com/sbabic/<wbr>meta-swupdate</a><br>
&gt;<br>
</span>&gt; Content of <a href=3D"http://swupdate_2017.04.bb" rel=3D"norefe=
rrer" target=3D"_blank">swupdate_2017.04.bb</a> &lt;<a href=3D"http://swupd=
ate_2017.04.bb" rel=3D"noreferrer" target=3D"_blank">http://swupdate_2017.0=
4.bb</a>&gt;:<br>
<span class=3D"">&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0require swupdate.inc<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0SRCREV =3D &quot;<wbr>d344ec10b71293d2aaf96816266d4=
e<wbr>6ed1d3bf6a&quot;<br>
&gt;<br>
&gt;<br>
</span>&gt; Content of <a href=3D"http://swupdate_git.bb" rel=3D"noreferrer=
" target=3D"_blank">swupdate_git.bb</a> &lt;<a href=3D"http://swupdate_git.=
bb" rel=3D"noreferrer" target=3D"_blank">http://swupdate_git.bb</a>&gt;<br>
<span class=3D"">&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0require swupdate.inc<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0DEFAULT_PREFERENCE =3D &quot;-1&quot;<br>
&gt;<br>
&gt;<br>
&gt; A snippet of swupdate.inc<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt;<br>
&gt;<br>
<br>
</span>Best regards,<br>
Stefano Babic<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director: Wolf=
gang Denk<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: <a href=3D"mailto:sb=
abic@denx.de">sbabic@denx.de</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</font></span></blockquote></div><br></div>

--001a114b0a7660866e0553887e84--
