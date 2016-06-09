Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F13B0E00D29; Thu,  9 Jun 2016 02:13:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f68.google.com (mail-qg0-f68.google.com
	[209.85.192.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A636E00C1F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 02:13:46 -0700 (PDT)
Received: by mail-qg0-f68.google.com with SMTP id p34so2461817qgp.0
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 02:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cg8X+uGY4JlPlf1h0wjIBfmm56I3PtfelqoO+jl1Kdw=;
	b=Sj7mJLeXtgf+nkjph1L7eQ9r/4G2IfKhtT0eNFg2LhHjbm9qtQYSJtbhp6JF6xLIw7
	Flr6V6Hplv/oxLTZdouQcLi6Uim1XNpEtCbUKy0mXa390GvI02BkL9rBCCJPXaENlEzY
	GqiAUr3ZDNZUfwVx3I7+kHGAsTycdFnaLU63pyW+wE0p+p6HIc8s2SgJjPaQXm3Hvr7o
	h15akZrvOue2lnuI6/9KGtGdrqNx77zgQ0mxnPlqHnn2PdHhmrkqYvpgeMk3qkjqKDbN
	/v2RdvQRyMkKsAbddAYdhfW3QfxQ/9SqQlJf9eY/Zs7cIaw46HabO9T3VeNgKKXw/hC9
	DfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cg8X+uGY4JlPlf1h0wjIBfmm56I3PtfelqoO+jl1Kdw=;
	b=bBj7cNeqOI1UDzbCHydT4y53oRCV27uq+OKuSa7gsTBkmitzR8gagX6KYCpMaVfc0o
	X8nU4szcGyC0+mXISIjArR/SVUoATjmkxopHpFPQoKnFfItsNXdHQ5Erw3DpAYoZldWA
	v5IPPMSZPTDMVolTd4LzfwPyCVqhkSRbE7UROiKFaOP4FZ1SgiwCYYw0dr9FDcQxVDEL
	bDL5OIpjlvpRWF2GKwQ/YzrvrZPsxEdy7wmoZP3DOknOCpcQjfPYHfqOudkiaiXTD++3
	Q1EbPuNoteUGHfZWqoQYswlrXTJh/v4YwnIfz0o4J1G7lxzKdqmSJE5ZDm2qmmSAAQ7o
	ta4A==
X-Gm-Message-State: ALyK8tICrMZnEbJFFhfyEbmnTAYNboSqL0NzuBJS8DQODTjQcO9jaUvXtKBFCcpiIo3fG0kenxzS+rUYS02ANw==
X-Received: by 10.140.181.70 with SMTP id c67mr9134503qha.20.1465463626068;
	Thu, 09 Jun 2016 02:13:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.36 with HTTP; Thu, 9 Jun 2016 02:13:45 -0700 (PDT)
In-Reply-To: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
References: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Date: Thu, 9 Jun 2016 12:13:45 +0300
Message-ID: <CAEeWubL6S_8QHHyzEOm5TfPEpwXqbYYQ1X5xOPMcmAnUwvEvGw@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 09 Jun 2016 09:13:52 -0000
Content-Type: multipart/alternative; boundary=001a113a9c6cdcf9a70534d4d6fe

--001a113a9c6cdcf9a70534d4d6fe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
Its better to change root passwd within ROOTFS_POSTPROCESS_COMMAND

Something like that:

set_root_passwd() {
    .....change passwd here
}

ROOTFS_POSTPROCESS_COMMAND +=3D " set_root_passwd;"

Thanks,
Oleksandr Poznyak!

On Thu, Jun 9, 2016 at 12:00 PM, <S.Jaritz@esa-grimma.de> wrote:

> Hej
>
> I want to change the root password. For that I create the recipe
> "myNewPassword.bb" with:
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
> deb(ug) Package was created.
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

--001a113a9c6cdcf9a70534d4d6fe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br></div>Its better to change root pass=
wd within ROOTFS_POSTPROCESS_COMMAND<br><br></div>Something like that:<br><=
br>set_root_passwd() {<br></div>=C2=A0=C2=A0=C2=A0 .....change passwd here<=
br><div>}<br><br>ROOTFS_POSTPROCESS_COMMAND +=3D &quot; set_root_passwd;&qu=
ot;<br><br></div><div>Thanks,<br></div><div>Oleksandr Poznyak!<br></div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jun 9,=
 2016 at 12:00 PM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz@esa-gr=
imma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><font face=3D"sans-serif" size=3D"2">Hej</fo=
nt>
<br>
<br><font face=3D"sans-serif" size=3D"2">I want to change the root password=
.
For that I create the recipe &quot;myNewPassword.bb&quot; with:</font>
<br><font face=3D"sans-serif" size=3D"2">################</font>
<br><font face=3D"sans-serif" size=3D"2">SUMMARY =3D &quot;my new password&=
quot;</font>
<br><font face=3D"sans-serif" size=3D"2">SECTION =3D &quot;new&quot;</font>
<br><font face=3D"sans-serif" size=3D"2">LICENSE =3D &quot;CLOSED&quot;</fo=
nt>
<br>
<br><font face=3D"sans-serif" size=3D"2">inherit extrausers</font>
<br>
<br><font face=3D"sans-serif" size=3D"2">EXTRA_USERS_PARAMS =3D &quot;\</fo=
nt>
<br><font face=3D"sans-serif" size=3D"2">=C2=A0 =C2=A0 =C2=A0 =C2=A0 usermo=
d
-P xyz root; \</font>
<br><font face=3D"sans-serif" size=3D"2">&quot;</font>
<br><font face=3D"sans-serif" size=3D"2">################</font>
<br>
<br><font face=3D"sans-serif" size=3D"2">compiling and packaging works fine=
.</font>
<br>
<br><font face=3D"sans-serif" size=3D"2">In my layer I add at the layer.con=
f:</font>
<br><font face=3D"sans-serif" size=3D"2">################</font>
<br><font face=3D"sans-serif" size=3D"2">IMAGE_INSTALL_append=3D&quot; myNe=
wPassword&quot;</font>
<br><font face=3D"sans-serif" size=3D"2">################</font>
<br>
<br><font face=3D"sans-serif" size=3D"2">When do_rootfs (core-image-minimal=
)
the package could not be found. A deb(ug) Package was created.</font>
<br>
<br><font face=3D"sans-serif" size=3D"2">Regards!<br>
<br>
Stefan Jaritz<br>
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
nt face=3D"sans-serif" size=3D"2">www.esa-grimma.de</font></a><font face=3D=
"sans-serif" size=3D"2"><br>
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
<br></blockquote></div><br></div>

--001a113a9c6cdcf9a70534d4d6fe--
