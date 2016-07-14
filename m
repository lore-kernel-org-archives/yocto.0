Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D28C5E00CC7; Thu, 14 Jul 2016 04:23:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A1DE00B52
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 04:23:35 -0700 (PDT)
In-Reply-To: <CAJTo0LY-aC=c_Ae=3KCTVkc9ST8hsZNHh75iAbYbtnECuNVufw@mail.gmail.com>
References: <OFD35E02B2.8525365B-ONC1257FF0.0037D0AB-C1257FF0.00390219@esa-grimma.de>
	<CAJTo0LY-aC=c_Ae=3KCTVkc9ST8hsZNHh75iAbYbtnECuNVufw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
X-KeepSent: 1FCAEB80:C6ECF7E1-C1257FF0:003E79FE;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF1FCAEB80.C6ECF7E1-ONC1257FF0.003E79FE-C1257FF0.003E948E@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 14 Jul 2016 13:23:32 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 14.07.2016 13:23:37,
	Serialize complete at 14.07.2016 13:23:37
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems finding python when using a cmake recipe
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
X-List-Received-Date: Thu, 14 Jul 2016 11:23:39 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003E948EC1257FF0_="

--=_alternative 003E948EC1257FF0_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

It works fine! Problem solved

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



Von:    "Burton, Ross" <ross.burton@intel.com>
An:     S.Jaritz@esa-grimma.de
Kopie:  "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Datum:  14.07.2016 13:05
Betreff:        Re: [yocto] Problems finding python when using a cmake=20
recipe




On 14 July 2016 at 11:22, <S.Jaritz@esa-grimma.de> wrote:
I want to create a recipe for an application. This application is=20
generated through cmake. In the cmake file "CMakeLists.txt" is the=20
passage:=20
##############=20
include(FindPythonInterp)=20
include(FindPythonLibs)=20
....=20
add=5Fcustom=5Fcommand(OUTPUT "${CMAKE=5FBINARY=5FDIR}/error.cpp"=20
"${CMAKE=5FBINARY=5FDIR}/error.hpp"non=5Fexistant=5Ffile=20
    COMMENT "create error.cpp"=20
    COMMAND ${PYTHON=5FEXECUTABLE} "${CMAKE=5FSOURCE=5FDIR}/mc2cpp.py"=20
"${CMAKE=5FSOURCE=5FDIR}/Common/ErrorCodes/Error=5FBuild/Errors.mc"=20
"${CMAKE=5FBINARY=5FDIR}/error"=20
)=20
##############=20

This generates a header and a cpp file, which contains some error codes.=20
When executing the cmake in my common environment it works fine. Under=20
Bitbake it fails. Python is not found.=20

This is because the cmake class stops cmake from finding binaries on the=20
host.  I'm not convinced this is the right thing to do but haven't had the =

time to research the problem.

Add OECMAKE=5FFIND=5FROOT=5FPATH=5FMODE=5FPROGRAM =3D "BOTH" to your recipe=
 after=20
inherit cmake and it will look for and find the Python interpretter in=20
/usr/bin.

Ross

--=_alternative 003E948EC1257FF0_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">It works fine! Problem solved</font>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;Burton, Ross&quot;
&lt;ross.burton@intel.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">S.Jaritz@esa-grimma.de</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;yocto@yoctoproject.or=
g&quot;
&lt;yocto@yoctoproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">14.07.2016 13:05</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
Problems finding python when using a cmake recipe</font>
<br>
<hr noshade>
<br>
<br>
<br>
<br><font size=3D3>On 14 July 2016 at 11:22, &lt;</font><a href=3D"mailto:S=
.Jaritz@esa-grimma.de" target=3D=5Fblank><font size=3D3 color=3Dblue><u>S.J=
aritz@esa-grimma.de</u></font></a><font size=3D3>&gt;
wrote:</font>
<br><font size=3D2 face=3D"sans-serif">I want to create a recipe for an app=
lication.
This application is generated through cmake. In the cmake file &quot;CMakeL=
ists.txt&quot;
is the passage:</font><font size=3D3> </font><font size=3D2 face=3D"sans-se=
rif"><br>
##############</font><font size=3D3> </font><font size=3D2 face=3D"sans-ser=
if"><br>
include(FindPythonInterp)</font><font size=3D3> </font><font size=3D2 face=
=3D"sans-serif"><br>
include(FindPythonLibs)</font><font size=3D3> </font><font size=3D2 face=3D=
"sans-serif"><br>
....</font><font size=3D3> </font><font size=3D2 face=3D"sans-serif"><br>
add=5Fcustom=5Fcommand(OUTPUT &quot;${CMAKE=5FBINARY=5FDIR}/error.cpp&quot;=
 &quot;${CMAKE=5FBINARY=5FDIR}/error.hpp&quot;non=5Fexistant=5Ffile</font><=
font size=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
&nbsp; &nbsp; COMMENT &quot;create error.cpp&quot;</font><font size=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
&nbsp; &nbsp; COMMAND ${PYTHON=5FEXECUTABLE} &quot;${CMAKE=5FSOURCE=5FDIR}/=
mc2cpp.py&quot;
&quot;${CMAKE=5FSOURCE=5FDIR}/Common/ErrorCodes/Error=5FBuild/Errors.mc&quo=
t;
&quot;${CMAKE=5FBINARY=5FDIR}/error&quot;</font><font size=3D3> </font><fon=
t size=3D2 face=3D"sans-serif"><br>
)</font><font size=3D3> </font><font size=3D2 face=3D"sans-serif"><br>
##############</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
This generates a header and a cpp file, which contains some error codes.
When executing the cmake in my common environment it works fine. Under
Bitbake it fails. Python is not found.</font><font size=3D3> </font>
<br><font size=3D3><br>
This is because the cmake class stops cmake from finding binaries on the
host.&nbsp; I'm not convinced this is the right thing to do but haven't
had the time to research the problem.</font>
<br>
<br><font size=3D3>Add&nbsp;OECMAKE=5FFIND=5FROOT=5FPATH=5FMODE=5FPROGRAM =
=3D &quot;BOTH&quot;
to your recipe after inherit cmake and it will look for and find the Python
interpretter in /usr/bin.</font>
<br>
<br><font size=3D3>Ross</font>
<br>

--=_alternative 003E948EC1257FF0_=--
