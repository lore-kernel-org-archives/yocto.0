Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B232E009A0; Fri,  8 Jul 2016 12:18:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C764EE0098A
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 12:18:50 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id s66so71832663oif.1
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 12:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EnLmS225eMzfHIFx5UEzjQdxcXnLbDby00VgxdzMaek=;
	b=Xgk/DsdkCsgTKvg61KE3m4vQr0bDuvXmOH5ismdDCK982O41QbrnbCyy6bxVEMa3ob
	lEfs2jBjPmNsvslA9UKssTEEdElvlGscuM/pwfejfAa1w6BazrInYoayJoxQHoib7cPK
	9bAfU1d8vI2QIlN+n2WMlJmqJpj1S7t0/QSirIcSBbHUXwNSNs4eBRIq9rt1CcxwtXGT
	HbjBRSfYT9bLWTIPoik2MhuPvMn6hMwAkikmBwAFjuQwcs6mYq/S/fn8nWcsU64cYgP4
	RPnXQjHBZHXgsDVQfaVDvZ8C7lbXE6NPxhSB30VInWAOSY7CQ13UG+DtPkT7qT4vXL96
	1dZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EnLmS225eMzfHIFx5UEzjQdxcXnLbDby00VgxdzMaek=;
	b=kqgXKFCSUUoAL04Uu1ZfaQ/TphuKdddm97qHJMFdhrvzDVT4TcwdSD0wTFCgzazAWY
	Y2+mK4AfSM9tLKOu1RXDXYxi125Yl3VEFYs6c8Mg69ocN/aMyGnOQ0zct3m0Ts8yM5NR
	g/Zj+zmRX2YImsE4RSnD1n8SQbXA3fbbqdfp+XpuiJ0T+8iK/HmAuhikpniPi7HPfgtD
	UeE4sGfQCnAMxGpg5Rxou9QO2DMUGAKBImqOvMtBSOizbyfj1N7Lq1Lnsiaf3uf/ZCvY
	44ty1laNXD0LdCIuiHJwUbjIAa3H4g72qDY3QPfRL7Xyj0PJQI+a5zqOfGa1DfierFcI
	/wcQ==
X-Gm-Message-State: ALyK8tKVz/ZkHLy/KZx68s78uPNUt/tP67+q7ZrcyGZA6Mil7oEyHm9HKyXKsZyj9OHyLC/ZO0V5Jrz4VK6yDDVh
X-Received: by 10.202.81.65 with SMTP id f62mr4093516oib.51.1468005529458;
	Fri, 08 Jul 2016 12:18:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.79.83 with HTTP; Fri, 8 Jul 2016 12:18:20 -0700 (PDT)
In-Reply-To: <OF52B3F086.41107611-ONC1257FEA.004BD493-C1257FEA.004CAF71@esa-grimma.de>
References: <OF52B3F086.41107611-ONC1257FEA.004BD493-C1257FEA.004CAF71@esa-grimma.de>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 8 Jul 2016 22:18:20 +0300
Message-ID: <CAHiDW_HS_Esr_=EX0TH5XeXffjeWY+yqnH+KR3nwB2zLh8__9w@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to install 2 or more initscrips out form one recipe?
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
X-List-Received-Date: Fri, 08 Jul 2016 19:18:52 -0000
Content-Type: multipart/alternative; boundary=001a113d6a3a1ccdc0053724ac2f

--001a113d6a3a1ccdc0053724ac2f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8 July 2016 at 16:57, <S.Jaritz@esa-grimma.de> wrote:

> Hej
>
> I run into a problem when I tried to install 3 initscrips out of one
> recipe. My recipe looks like:
> #############
> SUMMARY =3D "demo cfg"
> SECTION =3D "demo"
> LICENSE =3D "CLOSED"
>
> inherit update-rc.d
>
> RDEPENDS_${PN} =3D "bash initscripts"
>
> SRC_URI =3D "file://startA \
>         file://startB \
>         file://startC \
>         "
>
> S =3D "${WORKDIR}"
>
> do_install () {
>         install -d ${D}${sysconfdir}/
>         install -d ${D}${sysconfdir}/init.d/
>         install -m 0644 ${S}/startA ${D}${sysconfdir}/init.d/startA
>         install -m 0644 ${S}/startB ${D}${sysconfdir}/init.d/startB
>         install -m 0644 ${S}/startC ${D}${sysconfdir}/init.d/startC
>
>         chmod a+x ${D}${sysconfdir}/init.d/startA
>         chmod a+x ${D}${sysconfdir}/init.d/startB
>         chmod a+x ${D}${sysconfdir}/init.d/startC
> }
>
> INITSCRIPT_PACKAGES =3D "${PN} ${PN}_B ${PN}_C"

INITSCRIPT_NAME_${PN} =3D "startA"
> INITSCRIPT_PARAMS_${PN} =3D "start 90 10"
> INITSCRIPT_NAME_${PN}_B   =3D "startB"
> INITSCRIPT_PARAMS_${PN}_B =3D "start 90 10"
> INITSCRIPT_NAME_${PN}_C   =3D "startC"
> INITSCRIPT_PARAMS_${PN}_C =3D "start 90 10"
>
> CONFFILES_${PN} +=3D "${sysconfdir}/init.d/startA"
> CONFFILES_${PN} +=3D "${sysconfdir}/init.d/startB"
> CONFFILES_${PN} +=3D "${sysconfdir}/init.d/startC"
>
> FILES_${PN} +=3D "${sysconfdir}/*"
>

This puts all the init scripts in ${PN} when each should go into their own
package. You'll also probably need to make sure the extra packages are
created:
    PACKAGES =3D+ "${PN}_B ${PN}_C"
Check packages-split/-directory in WORKDIR to make sure all the files went
to the right place.

As a style comment: Underscore probably works in a package name but hyphen
("${PN}-B") is the common choice.

Jussi


#############
>
> The do_install works but initscript does not generates the link. I build
> that after this document
> http://docs.openembedded.ru/update-rc-d_class.html.
>
> Any ideas?
>
> Regards!
>
> Stefan Jaritz
>
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
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmli=
ch
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie die=
se
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113d6a3a1ccdc0053724ac2f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 8=
 July 2016 at 16:57,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz@esa-=
grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204)=
;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">I run into a problem when I tried =
to
install 3 initscrips out of one recipe. My recipe looks like:</font>
<br><font size=3D"2" face=3D"sans-serif">#############</font>
<br><font size=3D"2" face=3D"sans-serif">SUMMARY =3D &quot;demo cfg&quot;</=
font>
<br><font size=3D"2" face=3D"sans-serif">SECTION =3D &quot;demo&quot;</font=
>
<br><font size=3D"2" face=3D"sans-serif">LICENSE =3D &quot;CLOSED&quot;</fo=
nt>
<br>
<br><font size=3D"2" face=3D"sans-serif">inherit update-rc.d</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">RDEPENDS_${PN} =3D &quot;bash init=
scripts&quot;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">SRC_URI =3D &quot;</font><a><font =
size=3D"2" face=3D"sans-serif">file://startA</font></a><font size=3D"2" fac=
e=3D"sans-serif">
\</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 </font=
><a><font size=3D"2" face=3D"sans-serif">file://startB</font></a><font size=
=3D"2" face=3D"sans-serif">
\</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 </font=
><a><font size=3D"2" face=3D"sans-serif">file://startC</font></a><font size=
=3D"2" face=3D"sans-serif">
\</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">S =3D &quot;${WORKDIR}&quot;</font=
>
<br>
<br><font size=3D"2" face=3D"sans-serif">do_install () {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 instal=
l
-d ${D}${sysconfdir}/</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 instal=
l
-d ${D}${sysconfdir}/init.d/</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 instal=
l
-m 0644 ${S}/startA ${D}${sysconfdir}/init.d/startA</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 instal=
l
-m 0644 ${S}/startB ${D}${sysconfdir}/init.d/startB</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 instal=
l
-m 0644 ${S}/startC ${D}${sysconfdir}/init.d/startC</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod
a+x ${D}${sysconfdir}/init.d/startA</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod
a+x ${D}${sysconfdir}/init.d/startB</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod
a+x ${D}${sysconfdir}/init.d/startC</font>
<br><font size=3D"2" face=3D"sans-serif">}</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">INITSCRIPT_PACKAGES =3D &quot;${PN=
} ${PN}_B
${PN}_C&quot;</font>=C2=A0</blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;border-left-color:rgb(204,204,204);padding-left:1ex"><font size=3D"2" fa=
ce=3D"sans-serif">INITSCRIPT_NAME_${PN} =3D &quot;startA&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">INITSCRIPT_PARAMS_${PN} =3D &quot;=
start
90 10&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">INITSCRIPT_NAME_${PN}_B =C2=A0 =3D=
 &quot;startB&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">INITSCRIPT_PARAMS_${PN}_B =3D &quo=
t;start
90 10&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">INITSCRIPT_NAME_${PN}_C =C2=A0 =3D=
 &quot;startC&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">INITSCRIPT_PARAMS_${PN}_C =3D &quo=
t;start
90 10&quot;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">CONFFILES_${PN} +=3D &quot;${sysco=
nfdir}/init.d/startA&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">CONFFILES_${PN} +=3D &quot;${sysco=
nfdir}/init.d/startB&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">CONFFILES_${PN} +=3D &quot;${sysco=
nfdir}/init.d/startC&quot;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">FILES_${PN} +=3D &quot;${sysconfdi=
r}/*&quot;</font>
<br></blockquote><div><br></div><div>This puts all the init scripts in=C2=
=A0<span style=3D"font-family:sans-serif">${PN} when each should go into th=
eir own package. You&#39;ll also probably need to make sure the extra packa=
ges are created:</span></div><div>=C2=A0 =C2=A0 PACKAGES =3D+ &quot;${PN}_B=
 ${PN}_C&quot;<br></div><div>Check packages-split/-directory in WORKDIR to =
make sure all the files went to the right place.<br></div><div><br></div><d=
iv>As a style comment: Underscore probably works in a package name but hyph=
en (&quot;${PN}-B&quot;) is the common choice.</div><div><br></div><div>Jus=
si</div><div><br></div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:soli=
d;border-left-color:rgb(204,204,204);padding-left:1ex"><font size=3D"2" fac=
e=3D"sans-serif">#############</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">The do_install works but initscrip=
t
does not generates the link. I build that after this document </font><a hre=
f=3D"http://docs.openembedded.ru/update-rc-d_class.html" target=3D"_blank">=
<font size=3D"2" color=3D"blue" face=3D"sans-serif">http://docs.openembedde=
d.ru/update-rc-d_class.html</font></a><font size=3D"2" face=3D"sans-serif">=
.</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">Any ideas?<br>
</font>
<br><font size=3D"2" face=3D"sans-serif">Regards!</font>
<br><font size=3D"2" face=3D"sans-serif"><br>
Stefan Jaritz<br>
<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: <a href=3D"tel:%2B49%203437%209211%20176" value=3D"+4934379211176"=
 target=3D"_blank">+49 3437 9211 176</a><br>
Telefax: <a href=3D"tel:%2B49%203437%209211%2026" value=3D"+493437921126" t=
arget=3D"_blank">+49 3437 9211 26</a><br>
E-Mail: <a href=3D"mailto:s.jaritz@esa-grimma.de" target=3D"_blank">s.jarit=
z@esa-grimma.de</a><br>
Internet: </font><a href=3D"http://www.esa-grimma.de" target=3D"_blank"><fo=
nt size=3D"2" face=3D"sans-serif">www.esa-grimma.de</font></a><font size=3D=
"2" face=3D"sans-serif"><br>
<br>
<br>
Gesch=C3=A4ftsf=C3=BChrer:<br>
Dipl.-Ing. J=C3=B6rg Gaitzsch<br>
J=C3=B6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte I=
nformationen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie diese
<br>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If
you are <br>
not the intended recipient (or have received this e-mail in error) please
<br>
notify the sender immediately and destroy this e-mail. Any unauthorized
<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly
<br>
forbidden.</font><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a113d6a3a1ccdc0053724ac2f--
