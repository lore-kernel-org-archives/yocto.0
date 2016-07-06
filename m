Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2178CE00E08; Wed,  6 Jul 2016 12:45:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95782E00E02
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 12:45:37 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id e3so122841393qkd.0
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 12:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=enJKoWiecxiGYovrdo270aLGCgznwoigpLaRUClC3+w=;
	b=hVg/fza11j3o9KN5LaNjZ5trwt74Ec//7RUTCLjCL/fAnGSR0mhCYIf8G7pREpvgCy
	Lrs32kz+e3j/D8Sw9zDrfR/yf3kardLmrG0+OBBvWH9zFXwBzVJyKkf1z0jUNY7hiCO8
	z/xYjYXxnBREen+3a3P9yV3Dx7q91RCKBqlYODEY485Ga/mp9YSmYwMCNPpPDuSgo+PU
	aUFgZ4EsJ72+/1QLkpq1dyZ5yVFnVMK7O8R6QOvcv5fkc6afwb4VaLs/u/62F9ACUBvw
	DLuyA6ShgYGyZVEY521RyjP2auE6cATiXjAPMrQ/LuHpXW0ssw18z0zQW+4jZCXSS8ls
	IzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=enJKoWiecxiGYovrdo270aLGCgznwoigpLaRUClC3+w=;
	b=ZjX0C0IFWMTX61h6Ijn23o1Yte44c4LiCbjW7YfSGQD8CRsJXCGrn2tqxOy/xM+6MY
	PhT83r8C72urZcK6DNMoxyy0Jojn1JedOLUK5QqcvLSMPaTA4n0dyAqJLyetaU3Fe27O
	7ZfSpKy0Mbxcn0Bha6fKNH7KI6wyoJxg4p0DNPICF21oqcp7s8VQRZtpeajEQLMv+nCa
	R/QJxr6vKKgEzd1oigB3xV/eJx/IydG0yq85jL1KClpdG5eorNSYXbFMaPMFa4Tc8Hlr
	BLwfXlm1AjsUeB9fK7ByIl1E0ojXNvfiSUwJ6wvW3dGdzz6sr2+0Tzu/bsqlYELD7K3q
	GvYQ==
X-Gm-Message-State: ALyK8tK1+779IP+8qB0Y80h8T83eas4uyKc6q4ulTvIKbpafIlKVESrTWSrtgAqsL06LCHh+3FqkoBnbzxpUvA==
MIME-Version: 1.0
X-Received: by 10.55.16.232 with SMTP id 101mr33956652qkq.151.1467834336863;
	Wed, 06 Jul 2016 12:45:36 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Wed, 6 Jul 2016 12:45:36 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Wed, 6 Jul 2016 12:45:36 -0700 (PDT)
In-Reply-To: <CAF3SDA4m2c0YrqaxBAzpROwbKeOdBPCMVekpkUQ7x02ScPo4yg@mail.gmail.com>
References: <OF927BD932.09AFBA11-ONC1257FE8.00500F45-C1257FE8.005101E1@esa-grimma.de>
	<CAF3SDA4m2c0YrqaxBAzpROwbKeOdBPCMVekpkUQ7x02ScPo4yg@mail.gmail.com>
Date: Wed, 6 Jul 2016 12:45:36 -0700
Message-ID: <CAMKF1soYV3eoqpSVWprL1V_MuLQHJ=m82noyEWzDrpDeWc94vQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to create a directory for an SD-Card mount?
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
X-List-Received-Date: Wed, 06 Jul 2016 19:45:41 -0000
Content-Type: multipart/alternative; boundary=001a113fe3783cedd70536fcd047

--001a113fe3783cedd70536fcd047
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

You also need to package it with FILES

On Jul 6, 2016 11:09 AM, "Daniel." <danielhilst@gmail.com> wrote:
>
> install -d ${D}/media/sd1
> ???
>
> 2016-07-06 11:44 GMT-03:00  <S.Jaritz@esa-grimma.de>:
> > Hej
> >
> > I managed to create and install a rule that should mount a sd card to
> > "/media/sd1".  To finish it, I need to create the directory "sd1" in
media.
> > My recipe for the rule looks like:
> > ###################
> > SUMMARY =3D "the udev rules for the board"
> > SECTION =3D "rules"
> > LICENSE =3D "CLOSED"
> >
> > SRC_URI =3D "file://50-mmc.rules \
> >         "
> > S =3D "${WORKDIR}"
> >
> > do_install () {
> >         install -d ${D}${sysconfdir}/udev/rules.d
> >         install -m 0644 ${WORKDIR}/50-mmc.rules
> > ${D}${sysconfdir}/udev/rules.d/
> > }
> > ###################
> > How to create a dir in do_install which goes to the package?
> >
> > By the way:
> > I was also appending fstab after this article
> >
> > https://communities.intel.com/thread/49251
> >
> > Is there an better way to uncomment/modify that one line in fstab?
> >
> > Regards!
> >
> > Stefan Jaritz
> >
> > ------------------------------------------------------------
> > ESA Elektroschaltanlagen Grimma GmbH
> > Broner Ring 30
> > 04668 Grimma
> > Telefon: +49 3437 9211 176
> > Telefax: +49 3437 9211 26
> > E-Mail: s.jaritz@esa-grimma.de
> > Internet: www.esa-grimma.de
> >
> >
> > Gesch=C3=A4ftsf=C3=BChrer:
> > Dipl.-Ing. J=C3=B6rg Gaitzsch
> > J=C3=B6rg Reinker
> >
> > Sitz der Gesellschaft: Grimma
> > Ust.-ID: DE 141784437
> > Amtsgericht: Leipzig, HRB 5159
> > Steuernummer: 238/108/00755
> >
> >
> > Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtz=
te
> > Informationen.
> > Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCm=
lich
> > erhalten
> > haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie d=
iese
> > Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe diese=
r
> > Mail
> > ist nicht gestattet.
> >
> > This e-mail may contain confidential and/or privileged information. If
you
> > are
> > not the intended recipient (or have received this e-mail in error)
please
> > notify the sender immediately and destroy this e-mail. Any unauthorized
> > copying, disclosure or distribution of the material in this e-mail is
> > strictly
> > forbidden.
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a113fe3783cedd70536fcd047
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">You also need to package it with FILES</p>
<p dir=3D"ltr">On Jul 6, 2016 11:09 AM, &quot;Daniel.&quot; &lt;<a href=3D"=
mailto:danielhilst@gmail.com">danielhilst@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; install -d ${D}/media/sd1<br>
&gt; ???<br>
&gt;<br>
&gt; 2016-07-06 11:44 GMT-03:00=C2=A0 &lt;<a href=3D"mailto:S.Jaritz@esa-gr=
imma.de">S.Jaritz@esa-grimma.de</a>&gt;:<br>
&gt; &gt; Hej<br>
&gt; &gt;<br>
&gt; &gt; I managed to create and install a rule that should mount a sd car=
d to<br>
&gt; &gt; &quot;/media/sd1&quot;.=C2=A0 To finish it, I need to create the =
directory &quot;sd1&quot; in media.<br>
&gt; &gt; My recipe for the rule looks like:<br>
&gt; &gt; ###################<br>
&gt; &gt; SUMMARY =3D &quot;the udev rules for the board&quot;<br>
&gt; &gt; SECTION =3D &quot;rules&quot;<br>
&gt; &gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt; &gt;<br>
&gt; &gt; SRC_URI =3D &quot;file://50-mmc.rules \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt; &gt; S =3D &quot;${WORKDIR}&quot;<br>
&gt; &gt;<br>
&gt; &gt; do_install () {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${sysconfdir}/ude=
v/rules.d<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/50-mm=
c.rules<br>
&gt; &gt; ${D}${sysconfdir}/udev/rules.d/<br>
&gt; &gt; }<br>
&gt; &gt; ###################<br>
&gt; &gt; How to create a dir in do_install which goes to the package?<br>
&gt; &gt;<br>
&gt; &gt; By the way:<br>
&gt; &gt; I was also appending fstab after this article<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://communities.intel.com/thread/49251">https://co=
mmunities.intel.com/thread/49251</a><br>
&gt; &gt;<br>
&gt; &gt; Is there an better way to uncomment/modify that one line in fstab=
?<br>
&gt; &gt;<br>
&gt; &gt; Regards!<br>
&gt; &gt;<br>
&gt; &gt; Stefan Jaritz<br>
&gt; &gt;<br>
&gt; &gt; ------------------------------------------------------------<br>
&gt; &gt; ESA Elektroschaltanlagen Grimma GmbH<br>
&gt; &gt; Broner Ring 30<br>
&gt; &gt; 04668 Grimma<br>
&gt; &gt; Telefon: +49 3437 9211 176<br>
&gt; &gt; Telefax: +49 3437 9211 26<br>
&gt; &gt; E-Mail: <a href=3D"mailto:s.jaritz@esa-grimma.de">s.jaritz@esa-gr=
imma.de</a><br>
&gt; &gt; Internet: <a href=3D"http://www.esa-grimma.de">www.esa-grimma.de<=
/a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Gesch=C3=A4ftsf=C3=BChrer:<br>
&gt; &gt; Dipl.-Ing. J=C3=B6rg Gaitzsch<br>
&gt; &gt; J=C3=B6rg Reinker<br>
&gt; &gt;<br>
&gt; &gt; Sitz der Gesellschaft: Grimma<br>
&gt; &gt; Ust.-ID: DE 141784437<br>
&gt; &gt; Amtsgericht: Leipzig, HRB 5159<br>
&gt; &gt; Steuernummer: 238/108/00755<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=
=C3=BCtzte<br>
&gt; &gt; Informationen.<br>
&gt; &gt; Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=
=C3=BCmlich<br>
&gt; &gt; erhalten<br>
&gt; &gt; haben, informieren Sie bitte sofort den Absender und l=C3=B6schen=
 Sie diese<br>
&gt; &gt; Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe=
 dieser<br>
&gt; &gt; Mail<br>
&gt; &gt; ist nicht gestattet.<br>
&gt; &gt;<br>
&gt; &gt; This e-mail may contain confidential and/or privileged informatio=
n. If you<br>
&gt; &gt; are<br>
&gt; &gt; not the intended recipient (or have received this e-mail in error=
) please<br>
&gt; &gt; notify the sender immediately and destroy this e-mail. Any unauth=
orized<br>
&gt; &gt; copying, disclosure or distribution of the material in this e-mai=
l is<br>
&gt; &gt; strictly<br>
&gt; &gt; forbidden.<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:/=
/lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; &quot;Do or do not. There is no try&quot;<br>
&gt; =C2=A0 Yoda Master<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br></p>

--001a113fe3783cedd70536fcd047--
