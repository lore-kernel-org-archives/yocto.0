Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E95ADE00B58; Sun,  2 Jul 2017 23:49:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D920E00B2E
	for <yocto@yoctoproject.org>; Sun,  2 Jul 2017 23:49:25 -0700 (PDT)
In-Reply-To: <CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com>
References: <CAGAEfx5_j17h=PGTKC4WT_qi+gUEqQU9E_w_7vzRE_0OPasuow@mail.gmail.com>	<CAGAEfx4B_sEGMb-ie+Ti9JZzQ_COf8VF+9FdptsKNwvzLqscxQ@mail.gmail.com>
	<CAGAEfx7gZt_JSdmTwWi7H5C8_9Lu8y3MvHaFdW163VRveqdfZw@mail.gmail.com>	<CAGAEfx5M6tzcfFxhHy-gY52Bm-eu6=ExTc-h=b1D_epTD45Ozw@mail.gmail.com>
	<CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com>
To: Prasoon Kumar <prasoonkumar1295@gmail.com>
MIME-Version: 1.0
X-KeepSent: 1B082038:0592BE40-C1258152:0024744C;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF1B082038.0592BE40-ONC1258152.0024744C-C1258152.00257B15@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Mon, 3 Jul 2017 08:49:23 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 03.07.2017 08:49:26,
	Serialize complete at 03.07.2017 08:49:26
Cc: yocto@yoctoproject.org
Subject: Antwort: How to make changes and build u-boot source code in yocto
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
X-List-Received-Date: Mon, 03 Jul 2017 06:49:30 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00257B15C1258152_="

--=_alternative 00257B15C1258152_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej ho

my Workflow for adjusting uboot (u-boot-at91):

1.) build the original uboot
2.) apply changes
3.) create patch
3.1.) if you reconfigure it -> save/copy the config
3.2.) if you adding code -> use meld or something similar to create a=20
patch
4.) create u-boot-at91=5F%.bbappend
4.1) copy patch/config into that recipe dir
4.2) check u-boot-at91=5F%.bbappend paths etc.
5.) rebuild=20

I you mess to much around in /tmp/work*** you should use "-c clean"/"-c=20
cleanall" to reset it

regards

Stefan
------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 181
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



Von:    Prasoon Kumar <prasoonkumar1295@gmail.com>
An:     yocto@yoctoproject.org
Datum:  03.07.2017 08:34
Betreff:        [yocto] How to make changes and build u-boot source code=20
in yocto
Gesendet von:   yocto-bounces@yoctoproject.org



Hi,

I am trying to make some changes in u-boot code and using bitbake u-boot=20
to build. But it doesn't build.
I also tried bitbake u-boot -c compile and bitbake u-boot deploy. This=20
also didn't work.

Can I Get some help on how to change and build u-boot.=20

Thanks,
Prasoon--=20
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


--=_alternative 00257B15C1258152_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej ho</font>
<br>
<br><font size=3D2 face=3D"sans-serif">my Workflow for adjusting uboot (u-b=
oot-at91):</font>
<br>
<br><font size=3D2 face=3D"sans-serif">1.) build the original uboot</font>
<br><font size=3D2 face=3D"sans-serif">2.) apply changes</font>
<br><font size=3D2 face=3D"sans-serif">3.) create patch</font>
<br><font size=3D2 face=3D"sans-serif">3.1.) if you reconfigure it -&gt; sa=
ve/copy
the config</font>
<br><font size=3D2 face=3D"sans-serif">3.2.) if you adding code -&gt; use m=
eld
or something similar to create a patch</font>
<br><font size=3D2 face=3D"sans-serif">4.) create u-boot-at91=5F%.bbappend<=
/font>
<br><font size=3D2 face=3D"sans-serif">4.1) copy patch/config into that rec=
ipe
dir</font>
<br><font size=3D2 face=3D"sans-serif">4.2) check u-boot-at91=5F%.bbappend =
paths
etc.</font>
<br><font size=3D2 face=3D"sans-serif">5.) rebuild </font>
<br>
<br><font size=3D2 face=3D"sans-serif">I you mess to much around in /tmp/wo=
rk***
you should use &quot;-c clean&quot;/&quot;-c cleanall&quot; to reset it</fo=
nt>
<br>
<br><font size=3D2 face=3D"sans-serif">regards<br>
<br>
Stefan<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 181<br>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">Prasoon Kumar &lt;prasoonku=
mar1295@gmail.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">yocto@yoctoproject.org</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">03.07.2017 08:34</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">[yocto] How
to make changes and build u-boot source code in yocto</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Gesendet von: &nbsp;=
 &nbsp;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">yocto-bounces@yoctop=
roject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3>Hi,</font>
<br>
<br><font size=3D3>I am trying to make some changes in u-boot code and using
bitbake u-boot to build. But it doesn't build.</font>
<br><font size=3D3>I also tried bitbake u-boot -c compile and bitbake u-boot
deploy. This also didn't work.</font>
<br>
<br><font size=3D3>Can I Get some help on how to change and build u-boot.&n=
bsp;</font>
<br>
<br><font size=3D3>Thanks,</font>
<br><font size=3D3>Prasoon</font><tt><font size=3D2>-- <br>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
</font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><tt><fo=
nt size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><t=
t><font size=3D2><br>
</font></tt>
<br>

--=_alternative 00257B15C1258152_=--
