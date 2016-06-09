Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EABB3E00D29; Thu,  9 Jun 2016 02:43:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09871E00C1F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 02:43:51 -0700 (PDT)
In-Reply-To: <CAEeWubL6S_8QHHyzEOm5TfPEpwXqbYYQ1X5xOPMcmAnUwvEvGw@mail.gmail.com>
References: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
	<CAEeWubL6S_8QHHyzEOm5TfPEpwXqbYYQ1X5xOPMcmAnUwvEvGw@mail.gmail.com>
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
MIME-Version: 1.0
X-KeepSent: 93D05D71:B86D3C8F-C1257FCD:0035371A;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF93D05D71.B86D3C8F-ONC1257FCD.0035371A-C1257FCD.003572F4@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 9 Jun 2016 11:43:48 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 09.06.2016 11:43:53,
	Serialize complete at 09.06.2016 11:43:53
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: Problems with do_rootfs when changing the user password
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
X-List-Received-Date: Thu, 09 Jun 2016 09:43:56 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003572F4C1257FCD_="

--=_alternative 003572F4C1257FCD_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks & done in that way

but the bitbake error "core-image-minimal-1.0-r0 do=5Frootfs:=20
myNewPassword.bb not found in the base feeds" still remains

Stefan Jaritz

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.=20
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=20
erhalten=20
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese=20
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser=20
Mail=20
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =

are=20
not the intended recipient (or have received this e-mail in error) please=20
notify the sender immediately and destroy this e-mail. Any unauthorized=20
copying, disclosure or distribution of the material in this e-mail is=20
strictly=20
forbidden.



Von:    Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
An:     S.Jaritz@esa-grimma.de
Kopie:  yocto@yoctoproject.org
Datum:  09.06.2016 11:13
Betreff:        Re: [yocto] Problems with do=5Frootfs when changing the use=
r=20
password



Hi,
Its better to change root passwd within ROOTFS=5FPOSTPROCESS=5FCOMMAND

Something like that:

set=5Froot=5Fpasswd() {
    .....change passwd here
}

ROOTFS=5FPOSTPROCESS=5FCOMMAND +=3D " set=5Froot=5Fpasswd;"

Thanks,
Oleksandr Poznyak!

On Thu, Jun 9, 2016 at 12:00 PM, <S.Jaritz@esa-grimma.de> wrote:
Hej=20

I want to change the root password. For that I create the recipe=20
"myNewPassword.bb" with:=20
################=20
SUMMARY =3D "my new password"=20
SECTION =3D "new"=20
LICENSE =3D "CLOSED"=20

inherit extrausers=20

EXTRA=5FUSERS=5FPARAMS =3D "\=20
        usermod -P xyz root; \=20
"=20
################=20

compiling and packaging works fine.=20

In my layer I add at the layer.conf:=20
################=20
IMAGE=5FINSTALL=5Fappend=3D" myNewPassword"=20
################=20

When do=5Frootfs (core-image-minimal) the package could not be found. A=20
deb(ug) Package was created.=20

Regards!

Stefan Jaritz

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.=20
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=20
erhalten=20
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese=20
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser=20
Mail=20
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =

are=20
not the intended recipient (or have received this e-mail in error) please=20
notify the sender immediately and destroy this e-mail. Any unauthorized=20
copying, disclosure or distribution of the material in this e-mail is=20
strictly=20
forbidden.
--
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto



--=_alternative 003572F4C1257FCD_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Thanks &amp; done in that way</font>
<br>
<br><font size=3D2 face=3D"sans-serif">but the bitbake error &quot;core-ima=
ge-minimal-1.0-r0
do=5Frootfs: myNewPassword.bb not found in the base feeds&quot; still remai=
ns</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Stefan Jaritz<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 176<br>
Telefax: +49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D2 face=3D"sans-=
serif">www.esa-grimma.de</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
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
forbidden.</font>
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Oleksandr Poznyak &lt;oleks=
andr.poznyak@gmail.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">S.Jaritz@esa-grimma.de</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">yocto@yoctoproject.org</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">09.06.2016 11:13</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
Problems with do=5Frootfs when changing the user password</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3>Hi,</font>
<br><font size=3D3>Its better to change root passwd within ROOTFS=5FPOSTPRO=
CESS=5FCOMMAND<br>
</font>
<br><font size=3D3>Something like that:<br>
<br>
set=5Froot=5Fpasswd() {</font>
<br><font size=3D3>&nbsp;&nbsp;&nbsp; .....change passwd here</font>
<br><font size=3D3>}<br>
<br>
ROOTFS=5FPOSTPROCESS=5FCOMMAND +=3D &quot; set=5Froot=5Fpasswd;&quot;<br>
</font>
<br><font size=3D3>Thanks,</font>
<br><font size=3D3>Oleksandr Poznyak!</font>
<br>
<br><font size=3D3>On Thu, Jun 9, 2016 at 12:00 PM, &lt;</font><a href=3D"m=
ailto:S.Jaritz@esa-grimma.de" target=3D=5Fblank><font size=3D3 color=3Dblue=
><u>S.Jaritz@esa-grimma.de</u></font></a><font size=3D3>&gt;
wrote:</font>
<br><font size=3D2 face=3D"sans-serif">Hej</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
I want to change the root password. For that I create the recipe &quot;myNe=
wPassword.bb&quot;
with:</font><font size=3D3> </font><font size=3D2 face=3D"sans-serif"><br>
################</font><font size=3D3> </font><font size=3D2 face=3D"sans-s=
erif"><br>
SUMMARY =3D &quot;my new password&quot;</font><font size=3D3> </font><font =
size=3D2 face=3D"sans-serif"><br>
SECTION =3D &quot;new&quot;</font><font size=3D3> </font><font size=3D2 fac=
e=3D"sans-serif"><br>
LICENSE =3D &quot;CLOSED&quot;</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
inherit extrausers</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
EXTRA=5FUSERS=5FPARAMS =3D &quot;\</font><font size=3D3> </font><font size=
=3D2 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp; &nbsp; usermod -P xyz root; \</font><font size=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
&quot;</font><font size=3D3> </font><font size=3D2 face=3D"sans-serif"><br>
################</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
compiling and packaging works fine.</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
In my layer I add at the layer.conf:</font><font size=3D3> </font><font siz=
e=3D2 face=3D"sans-serif"><br>
################</font><font size=3D3> </font><font size=3D2 face=3D"sans-s=
erif"><br>
IMAGE=5FINSTALL=5Fappend=3D&quot; myNewPassword&quot;</font><font size=3D3>=
 </font><font size=3D2 face=3D"sans-serif"><br>
################</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
When do=5Frootfs (core-image-minimal) the package could not be found. A deb=
(ug)
Package was created.</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
Regards!<br>
<br>
Stefan Jaritz<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: </font><a href=3Dtel:%2B49%203437%209211%20176 target=3D=5Fblank><=
font size=3D2 color=3Dblue face=3D"sans-serif"><u>+49
3437 9211 176</u></font></a><font size=3D2 face=3D"sans-serif"><br>
Telefax: </font><a href=3Dtel:%2B49%203437%209211%2026 target=3D=5Fblank><f=
ont size=3D2 color=3Dblue face=3D"sans-serif"><u>+49
3437 9211 26</u></font></a><font size=3D2 face=3D"sans-serif"><br>
E-Mail: </font><a href=3D"mailto:s.jaritz@esa-grimma.de" target=3D=5Fblank>=
<font size=3D2 color=3Dblue face=3D"sans-serif"><u>s.jaritz@esa-grimma.de</=
u></font></a><font size=3D2 face=3D"sans-serif"><br>
Internet: </font><a href=3D"http://www.esa-grimma.de/" target=3D=5Fblank><f=
ont size=3D2 color=3Dblue face=3D"sans-serif"><u>www.esa-grimma.de</u></fon=
t></a><font size=3D2 face=3D"sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
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
forbidden.</font><font size=3D3><br>
--<br>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
yocto mailing list</font><font size=3D3 color=3Dblue><u><br>
</u></font><a href=3Dmailto:yocto@yoctoproject.org><font size=3D3 color=3Db=
lue><u>yocto@yoctoproject.org</u></font></a><font size=3D3 color=3Dblue><u>=
<br>
</u></font><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto target=
=3D=5Fblank><font size=3D3 color=3Dblue><u>https://lists.yoctoproject.org/l=
istinfo/yocto</u></font></a><font size=3D3><br>
</font>
<br>
<br>

--=_alternative 003572F4C1257FCD_=--
