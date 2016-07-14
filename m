Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9FABE00C4F; Thu, 14 Jul 2016 03:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D787EE007E8
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 03:22:42 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: D35E02B2:8525365B-C1257FF0:0037D0AB;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFD35E02B2.8525365B-ONC1257FF0.0037D0AB-C1257FF0.00390219@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 14 Jul 2016 12:22:40 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 14.07.2016 12:22:47,
	Serialize complete at 14.07.2016 12:22:47
Subject: Problems finding python when using a cmake recipe
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
X-List-Received-Date: Thu, 14 Jul 2016 10:22:48 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00390218C1257FF0_="

--=_alternative 00390218C1257FF0_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I want to create a recipe for an application. This application is=20
generated through cmake. In the cmake file "CMakeLists.txt" is the=20
passage:
##############
include(FindPythonInterp)
include(FindPythonLibs)
....
add=5Fcustom=5Fcommand(OUTPUT "${CMAKE=5FBINARY=5FDIR}/error.cpp"=20
"${CMAKE=5FBINARY=5FDIR}/error.hpp"non=5Fexistant=5Ffile
    COMMENT "create error.cpp"
    COMMAND ${PYTHON=5FEXECUTABLE} "${CMAKE=5FSOURCE=5FDIR}/mc2cpp.py"=20
"${CMAKE=5FSOURCE=5FDIR}/Common/ErrorCodes/Error=5FBuild/Errors.mc"=20
"${CMAKE=5FBINARY=5FDIR}/error"
)
##############

This generates a header and a cpp file, which contains some error codes.=20
When executing the cmake in my common environment it works fine. Under=20
Bitbake it fails. Python is not found.

How to configure the recipe or the configuration to get it run?

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

--=_alternative 00390218C1257FF0_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I want to create a recipe for an app=
lication.
This application is generated through cmake. In the cmake file &quot;CMakeL=
ists.txt&quot;
is the passage:</font>
<br><font size=3D2 face=3D"sans-serif">##############</font>
<br><font size=3D2 face=3D"sans-serif">include(FindPythonInterp)</font>
<br><font size=3D2 face=3D"sans-serif">include(FindPythonLibs)</font>
<br><font size=3D2 face=3D"sans-serif">....</font>
<br><font size=3D2 face=3D"sans-serif">add=5Fcustom=5Fcommand(OUTPUT &quot;=
${CMAKE=5FBINARY=5FDIR}/error.cpp&quot;
&quot;${CMAKE=5FBINARY=5FDIR}/error.hpp&quot;non=5Fexistant=5Ffile</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; COMMENT &quot;create e=
rror.cpp&quot;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; COMMAND ${PYTHON=5FEXE=
CUTABLE}
&quot;${CMAKE=5FSOURCE=5FDIR}/mc2cpp.py&quot; &quot;${CMAKE=5FSOURCE=5FDIR}=
/Common/ErrorCodes/Error=5FBuild/Errors.mc&quot;
&quot;${CMAKE=5FBINARY=5FDIR}/error&quot;</font>
<br><font size=3D2 face=3D"sans-serif">)</font>
<br><font size=3D2 face=3D"sans-serif">##############</font>
<br>
<br><font size=3D2 face=3D"sans-serif">This generates a header and a cpp fi=
le,
which contains some error codes. When executing the cmake in my common
environment it works fine. Under Bitbake it fails. Python is not found.</fo=
nt>
<br>
<br><font size=3D2 face=3D"sans-serif">How to configure the recipe or the c=
onfiguration
to get it run?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!<br>
<br>
Stefan Jaritz<br>
<br>
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

--=_alternative 00390218C1257FF0_=--
