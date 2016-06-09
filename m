Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 834D2E00D33; Thu,  9 Jun 2016 03:00:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E937E00C1F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 03:00:48 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id e72so55316684oib.1
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 03:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Z+wkf0KPglNse9+bMEYmnjmyUyY4Owva/Vd0DEJeSDc=;
	b=W1YPKlqDlhzfP9kuxCtBM95ZaPoXmQdV9Dt2zGNjLtC4BHSKuOCcAVEklL4zs7kcGl
	PDQZSVbAANQxW0hdgS1nljb6WsoLQUEcMI89/uyHa1MgjCd3jDliZEjsajg/JFtNs52C
	lb2Lz+A6LAbIwwKhH21xRLj90UvgUxQAq9yEJfp87ubWprEKiM/DlhaXpquIHw73BevS
	0oh32+KiPGYHwbfFKjNREaltCxmO8VLCHwkQw7rJFbk78de8695M3kjJf9ZaS5bFzDZR
	FJUDrMjuoYkmPVjjfEdlJgIDw+Wa+StywKqdPgdyxzNlnadDlNb5BaOWY8EsGCEoSUJL
	D9Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Z+wkf0KPglNse9+bMEYmnjmyUyY4Owva/Vd0DEJeSDc=;
	b=QvyB6LRPjzhwLM2Th9HdkDxAcXRzmtpcoraEaMLJqTvHv8koWLzNC8gQKbd/lweKN+
	+/Hhxjs96nM2iLRh9aI2tvPpk/L5/73J/kuboYqLQktYhsxYt5e17ELKcPTF2dWJOTmp
	HVLyXc4K5k9U5hx3cdp91fE2BXcp2uLVz8G6Uj3C/NlPQjZXN93hpFYIAc7a5OXiVtEt
	9NPurKed0Nql8BUVbsAAgyYd7FiOiMl5Xf09tQfaTcL0zmi8wE053gAz2aTle/SElfA2
	5Tef4Utm6R2NZgPuLTCBqcNdTh8JIkvN+BVMPAxi9LlIpv71mDZlt/y5o6fJwx7t5bYW
	EuRA==
X-Gm-Message-State: ALyK8tJcy98Dxr2UAMRUXy+sSAB2kqhbJUpmoD3ZH+dm2ygV4GucYr+UQiAf9JSvsRmXA4hlubxyvHL6H51xhg+D
X-Received: by 10.202.197.214 with SMTP id v205mr2453059oif.63.1465466447997; 
	Thu, 09 Jun 2016 03:00:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.61.5 with HTTP; Thu, 9 Jun 2016 03:00:18 -0700 (PDT)
In-Reply-To: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
References: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 9 Jun 2016 13:00:18 +0300
Message-ID: <CAHiDW_HFdwtg+eQDVzvwPKKA18ruRisYyiqbUZ5W0WDW6HqhCg@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Problems with do_rootfs when changing the user password
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
X-List-Received-Date: Thu, 09 Jun 2016 10:00:52 -0000
Content-Type: multipart/alternative; boundary=001a113e388c1043100534d57fa6

--001a113e388c1043100534d57fa6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 9 June 2016 at 12:00, <S.Jaritz@esa-grimma.de> wrote:
>
> Hej
>
> I want to change the root password. For that I create the recipe
"myNewPassword.bb" with:
> ################
> SUMMARY =3D "my new password"
> SECTION =3D "new"
> LICENSE =3D "CLOSED"
>
> inherit extrausers
>
> EXTRA_USERS_PARAMS =3D "\
>         usermod -P xyz root; \
> "
> ################
>
> compiling and packaging works fine.
>
> In my layer I add at the layer.conf:
> ################
> IMAGE_INSTALL_append=3D" myNewPassword"
> ################
>
> When do_rootfs (core-image-minimal) the package could not be found. A
deb(ug) Package was created.

If your package would contain no files, bitbake will not produce it at all.
You should be able to override this with:
    ALLOW_EMPTY_${PN} =3D "1"

 - Jussi


>
> Regards!
>
> Stefan Jaritz
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Gesch=C3=A4ftsf=C3=BChrer:
> Dipl.-Ing. J=C3=B6rg Gaitzsch
> J=C3=B6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmli=
ch
erhalten
> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie die=
se
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If
you are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
strictly
> forbidden.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113e388c1043100534d57fa6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 9 June 2016 at 12:00, &lt;<a href=3D"mailto:S.Jaritz@es=
a-grimma.de">S.Jaritz@esa-grimma.de</a>&gt; wrote:<br>&gt;<br>&gt; Hej<br>&=
gt;<br>&gt; I want to change the root password. For that I create the recip=
e &quot;myNewPassword.bb&quot; with:<br>&gt; ################<br>&gt; SUMMA=
RY =3D &quot;my new password&quot;<br>&gt; SECTION =3D &quot;new&quot;<br>&=
gt; LICENSE =3D &quot;CLOSED&quot;<br>&gt;<br>&gt; inherit extrausers<br>&g=
t;<br>&gt; EXTRA_USERS_PARAMS =3D &quot;\<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 usermod -P xyz root; \<br>&gt; &quot;<br>&gt; ################<br>&gt;<=
br>&gt; compiling and packaging works fine.<br>&gt;<br>&gt; In my layer I a=
dd at the layer.conf:<br>&gt; ################<br>&gt; IMAGE_INSTALL_append=
=3D&quot; myNewPassword&quot;<br>&gt; ################<br>&gt;<br>&gt; When=
 do_rootfs (core-image-minimal) the package could not be found. A deb(ug) P=
ackage was created.<br><br>If your package would contain no files, bitbake =
will not produce it at all. You should be able to override this with: <br>=
=C2=A0 =C2=A0 ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br><br>=C2=A0- Jussi<br><=
br>=C2=A0<br>&gt;<br>&gt; Regards!<br>&gt;<br>&gt; Stefan Jaritz<br>&gt;<br=
>&gt; ------------------------------------------------------------<br>&gt; =
ESA Elektroschaltanlagen Grimma GmbH<br>&gt; Broner Ring 30<br>&gt; 04668 G=
rimma<br>&gt; Telefon: +49 3437 9211 176<br>&gt; Telefax: +49 3437 9211 26<=
br>&gt; E-Mail: <a href=3D"mailto:s.jaritz@esa-grimma.de">s.jaritz@esa-grim=
ma.de</a><br>&gt; Internet: <a href=3D"http://www.esa-grimma.de">www.esa-gr=
imma.de</a><br>&gt;<br>&gt;<br>&gt; Gesch=C3=A4ftsf=C3=BChrer:<br>&gt; Dipl=
.-Ing. J=C3=B6rg Gaitzsch<br>&gt; J=C3=B6rg Reinker<br>&gt;<br>&gt; Sitz de=
r Gesellschaft: Grimma<br>&gt; Ust.-ID: DE 141784437<br>&gt; Amtsgericht: L=
eipzig, HRB 5159<br>&gt; Steuernummer: 238/108/00755<br>&gt;<br>&gt;<br>&gt=
; Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte=
 Informationen.<br>&gt; Wenn Sie nicht der richtige Adressat sind oder dies=
e E-Mail irrt=C3=BCmlich erhalten<br>&gt; haben, informieren Sie bitte sofo=
rt den Absender und l=C3=B6schen Sie diese<br>&gt; Nachricht. Das unerlaubt=
e Kopieren sowie die unbefugte Weitergabe dieser Mail<br>&gt; ist nicht ges=
tattet.<br>&gt;<br>&gt; This e-mail may contain confidential and/or privile=
ged information. If you are<br>&gt; not the intended recipient (or have rec=
eived this e-mail in error) please<br>&gt; notify the sender immediately an=
d destroy this e-mail. Any unauthorized<br>&gt; copying, disclosure or dist=
ribution of the material in this e-mail is strictly<br>&gt; forbidden.<br>&=
gt; --<br>&gt; _______________________________________________<br>&gt; yoct=
o mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoct=
oproject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/listinfo=
/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;<br></div>

--001a113e388c1043100534d57fa6--
