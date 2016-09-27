Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 232D0E00C22; Tue, 27 Sep 2016 04:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B6AE00C1A
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2016 04:04:26 -0700 (PDT)
In-Reply-To: <9687790f-574a-ded9-15cd-ea2c4b6b5ed1@reliableembeddedsystems.com>
References: <OF6E96DAB3.CA00D82C-ONC125803B.002B3077-C125803B.002C3D79@esa-grimma.de>
	<9687790f-574a-ded9-15cd-ea2c4b6b5ed1@reliableembeddedsystems.com>
To: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
MIME-Version: 1.0
X-KeepSent: B87E199D:94D4E7B6-C125803B:003C3083;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFB87E199D.94D4E7B6-ONC125803B.003C3083-C125803B.003CD456@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Tue, 27 Sep 2016 13:04:25 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 27.09.2016 13:04:28,
	Serialize complete at 27.09.2016 13:04:28
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: "bitbake virtual/kernel -c menuconfig" seems to be	broken
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
X-List-Received-Date: Tue, 27 Sep 2016 11:04:32 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003CD453C125803B_="

--=_alternative 003CD453C125803B_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

When I run 'bitbake core-image-minimal' before it works. Think Roberts=20
work arround points at the right spot(because the populate sysroot is=20
called through core-image-minimal build). Maybe add this trick to the=20
documentation.

Stefan
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



Von:    "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
An:     yocto@yoctoproject.org
Datum:  27.09.2016 12:50
Betreff:        Re: [yocto] "bitbake virtual/kernel -c menuconfig" seems=20
to be   broken
Gesendet von:   yocto-bounces@yoctoproject.org



Hi,

On 2016-09-27 11:03, S.Jaritz@esa-grimma.de wrote:
> Hej
>
> Some error occurred. I give a print (sorry for that German text - but
> the error should be clear):
> ##########
>   GEN     ./Makefile
>   HOSTLD  scripts/kconfig/mconf
> scripts/kconfig/mconf.o: In Funktion `show=5Fhelp':
> mconf.c:(.text+0x914): Nicht definierter Verweis auf `stdscr'
> scripts/kconfig/lxdialog/checklist.o: In Funktion `print=5Farrows':

Did you try something like this [1] (I know it is strange)

bitbake ncurses -c populate=5Fsysroot -f

[1]=20
http://lists.openembedded.org/pipermail/openembedded-core/2015-May/105374.h=
tml


You might want to post those kind of bugs to bugzilla[2]

[2] https://bugzilla.yoctoproject.org/show=5Fbug.cgi?id=3D7609


Regards,

Robert

--=20
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


--=_alternative 003CD453C125803B_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">When I run 'bitbake core-image-minimal'
before it works. Think Roberts work arround points at the right spot(because
the populate sysroot is called through core-image-minimal build). Maybe
add this trick to the documentation.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Stefan<br>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;robert.berger@gmane&q=
uot;
&lt;gmane@reliableembeddedsystems.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">yocto@yoctoproject.org</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">27.09.2016 12:50</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
&quot;bitbake virtual/kernel -c menuconfig&quot; seems to be &nbsp; &nbsp;
&nbsp; &nbsp;broken</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Gesendet von: &nbsp;=
 &nbsp;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">yocto-bounces@yoctop=
roject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2>Hi,<br>
<br>
On 2016-09-27 11:03, S.Jaritz@esa-grimma.de wrote:<br>
&gt; Hej<br>
&gt;<br>
&gt; Some error occurred. I give a print (sorry for that German text -
but<br>
&gt; the error should be clear):<br>
&gt; ##########<br>
&gt; &nbsp; GEN &nbsp; &nbsp; ./Makefile<br>
&gt; &nbsp; HOSTLD &nbsp;scripts/kconfig/mconf<br>
&gt; scripts/kconfig/mconf.o: In Funktion `show=5Fhelp':<br>
&gt; mconf.c:(.text+0x914): Nicht definierter Verweis auf `stdscr'<br>
&gt; scripts/kconfig/lxdialog/checklist.o: In Funktion `print=5Farrows':<br>
<br>
Did you try something like this [1] (I know it is strange)<br>
<br>
bitbake ncurses -c populate=5Fsysroot -f<br>
<br>
[1] <br>
</font></tt><a href=3D"http://lists.openembedded.org/pipermail/openembedded=
-core/2015-May/105374.html"><tt><font size=3D2>http://lists.openembedded.or=
g/pipermail/openembedded-core/2015-May/105374.html</font></tt></a><tt><font=
 size=3D2><br>
<br>
You might want to post those kind of bugs to bugzilla[2]<br>
<br>
[2] </font></tt><a href=3D"https://bugzilla.yoctoproject.org/show=5Fbug.cgi=
?id=3D7609"><tt><font size=3D2>https://bugzilla.yoctoproject.org/show=5Fbug=
.cgi?id=3D7609</font></tt></a><tt><font size=3D2><br>
<br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
-- <br>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
</font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><tt><fo=
nt size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><t=
t><font size=3D2><br>
</font></tt>
<br>

--=_alternative 003CD453C125803B_=--
