Return-Path: <alvaromartineztovar@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 809D8E00895; Mon, 13 Jul 2015 22:59:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alvaromartineztovar[at]yahoo.es)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.121.128 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm49-vm0.bullet.mail.ne1.yahoo.com
	(nm49-vm0.bullet.mail.ne1.yahoo.com [98.138.121.128])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4FE2E008CE
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 22:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1436853562; bh=kWB9XqOzU9A4JxWdGoYh5UBVpqLdKnmoEU9nzgBFUnU=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=kn4JO9K33658/jDOEDhIpmGgYKlG2BD52SYejBbLWI527AIve+/o6Gyuh7E8FTWlUKylRZlYkBUx3XGQedEdRcInfrhZS0OrqELpc2PlMTWamInniu1pyC6UPfVGQVZRFYi1ihPn8mmEg9KhNPYmnYwznhIF9iVMmnEj0RwTsNNqREhplQzYi/L8SQQdnCSOfXOvoxj1DIsgmd7UDh+isolVmNfaS3rTtlyJoK6WNIUQLCNNJ65g3SvhJdnvCFh+irisG0NarCQIayHvPj/ZQeqbnu38ZE+LX+RQC2oZbhs4t8IVhl39q84Xj4qTvIcirez3RPo6BvxgI6yQT/t8Lg==
Received: from [127.0.0.1] by nm49.bullet.mail.ne1.yahoo.com with NNFMP;
	14 Jul 2015 05:59:22 -0000
Received: from [98.138.100.113] by nm49.bullet.mail.ne1.yahoo.com with NNFMP;
	14 Jul 2015 05:56:21 -0000
Received: from [212.82.98.125] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	14 Jul 2015 05:56:21 -0000
Received: from [212.82.98.78] by tm18.bullet.mail.ir2.yahoo.com with NNFMP;
	14 Jul 2015 05:56:21 -0000
Received: from [127.0.0.1] by omp1015.mail.ir2.yahoo.com with NNFMP;
	14 Jul 2015 05:56:21 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 380238.7083.bm@omp1015.mail.ir2.yahoo.com
X-YMail-OSG: .j3sg_MVM1kuahS0KSdjEopxiSZARHt8xUCgVSTZAKDy3zYyvqDB3RUFBTHRn1l
	mxBMJzSRAKZlkSaae8CPIno1Gzb0UKv1LF4iH6y538EugDS2yMJCtZV1Ku5LAT5p2qrHAJrRn7dM
	T7hHCwv5c2AjoN82L9tG8g.jYKXWJtHoOgSQjPTUiFvVVlg3tDiQGtqA1fXlnqgpu4Ul2Adm9As8
	05_zaM3.jGTN0IbCUueCBRVnZkMx2HR3F2oNjzGf2twAh_iPIOvcDdKpdOu4jUSep8OnzEKOdT6Q
	ehLcD_Njpzu93HJ6FJX622rI07lRN.7zbX_UDqvW1.3HVSZOvmwqDp578NcEZYQ1T8FGb4_Qe8Wa
	5XVx.q.os_WvWLYVvxQYzsGWIetPg7WhF0VEBvn6VCWxmlsXOi59wIidy5wjNzNcjitQczJIBWJ8
	Jp1zKfv2fDe13USdMl4WGBlCf4sI4t1Eie0XN_kX8WIthMp9FvIBt3k3CJx6rgzzSnRCUEGws4iR
	bWhvpe4RP9iGcOkotpYWctw0yjx7ObQ--
Received: by 212.82.98.121; Tue, 14 Jul 2015 05:56:20 +0000 
Date: Tue, 14 Jul 2015 05:56:20 +0000 (UTC)
From: Alvaro Martinez Tovar <alvaromartineztovar@yahoo.es>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1908027641.2329580.1436853380447.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: (No subject)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alvaro Martinez Tovar <alvaromartineztovar@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Jul 2015 05:59:29 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2329579_1470089339.1436853380441"

------=_Part_2329579_1470089339.1436853380441
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear all,I am working with Qt5.5.0 and QtCreator 3.4.2 open source. On the =
hardware side I work with a i.MX6 sabre platform for smart devices.As a fir=
st aproach, after having created the image fsl-image-qt5 correctly (I think=
), I would like to run different examples by cross compiling and executing =
them on the SABRE platform. On my PC I run Ubuntu 14.04 LTS.When I compile =
all the examples to run on the Ubuntu PC, they all work properly (bluetooth=
, qtquick ...)However, when I try to cross-compile and run them on the SABR=
E platform, I get execution errors with some of them.When I try to run a bl=
uetooth scanner, I get:./btscanner: error while loading shared libraries: l=
ibQt5Bluetooth.so.5: cannot open shared object file: No such file or direct=
ory When I try to run a Qtquick example (dasboard), I get:Qt Warning: Could=
 not find a location of the system's Compose files. Consider setting the QT=
COMPOSE environment variable.Qt Warning: Could not find a location of the s=
ystem's Compose files. Consider setting the QTCOMPOSE environment variable.=
QQmlApplicationEngine failed to load componentqrc:/qml/dashboard.qml:45 mod=
ule "QtQuick.Extras" is not installedqrc:/qml/dashboard.qml:43 module "QtQu=
ick.Controls" is not installedqrc:/qml/dashboard.qml:44 module "QtQuick.Con=
trols.Styles" is not installedqrc:/qml/dashboard.qml:45 module "QtQuick.Ext=
ras" is not installedqrc:/qml/dashboard.qml:43 module "QtQuick.Controls" is=
 not installedqrc:/qml/dashboard.qml:44 module "QtQuick.Controls.Styles" is=
 not installedqrc:/qml/dashboard.qml:45 module "QtQuick.Extras" is not inst=
alledqrc:/qml/dashboard.qml:43 module "QtQuick.Controls" is not installedqr=
c:/qml/dashboard.qml:44 module "QtQuick.Controls.Styles" is not installed=
=C2=A0Can you please give me any advice on what to do? I am stuck at this p=
oint.=C2=A0thank you in advance!Regards

------=_Part_2329579_1470089339.1436853380441
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1436852497586_9975" class=3D""><div i=
d=3D"yui_3_16_0_1_1436852497586_9978" class=3D"">Dear all,</div><div id=3D"=
yui_3_16_0_1_1436852497586_9977" class=3D"">I am working with=20
Qt5.5.0 and QtCreator 3.4.2 open source. On the hardware side I work=20
with a i.MX6 sabre platform for smart devices.</div><div id=3D"yui_3_16_0_1=
_1436852497586_9976" class=3D"">As a first aproach,
 after having created the image fsl-image-qt5 correctly (I think), I=20
would like to run different examples by cross compiling and executing=20
them on the SABRE platform. On my PC I run Ubuntu 14.04 LTS.</div><div id=
=3D"yui_3_16_0_1_1436852497586_9974" class=3D"">When I compile all the exam=
ples to run on the Ubuntu PC, they all work properly (bluetooth, qtquick ..=
.)</div><div id=3D"yui_3_16_0_1_1436852497586_9979" class=3D"">However, whe=
n I try to cross-compile and run them on the SABRE platform, I get executio=
n errors with some of them.</div><div id=3D"yui_3_16_0_1_1436852497586_9980=
" class=3D"">When I try to run a bluetooth scanner, I get:</div><div id=3D"=
yui_3_16_0_1_1436852497586_9981" class=3D"">./btscanner:
 error while loading shared libraries: libQt5Bluetooth.so.5: cannot open
 shared object file: No such file or directory </div><div id=3D"yui_3_16_0_=
1_1436852497586_9982" class=3D"">When I try to run a Qtquick example (dasbo=
ard), I get:</div><div id=3D"yui_3_16_0_1_1436852497586_9983" class=3D"">Qt=
 Warning: Could not find a location of the system's Compose files. Consider=
 setting the QTCOMPOSE environment variable.</div><div id=3D"yui_3_16_0_1_1=
436852497586_9984" class=3D"">Qt Warning: Could not find a location of the =
system's Compose files. Consider setting the QTCOMPOSE environment variable=
.</div><div id=3D"yui_3_16_0_1_1436852497586_9985" class=3D"">QQmlApplicati=
onEngine failed to load component</div><div id=3D"yui_3_16_0_1_143685249758=
6_9998" class=3D"">qrc:/qml/dashboard.qml:45 module "QtQuick.Extras" is not=
 installed</div><div id=3D"yui_3_16_0_1_1436852497586_9999" class=3D"">qrc:=
/qml/dashboard.qml:43 module "QtQuick.Controls" is not installed</div><div =
id=3D"yui_3_16_0_1_1436852497586_10000" class=3D"">qrc:/qml/dashboard.qml:4=
4 module "QtQuick.Controls.Styles" is not installed</div><div id=3D"yui_3_1=
6_0_1_1436852497586_10001" class=3D"">qrc:/qml/dashboard.qml:45 module "QtQ=
uick.Extras" is not installed</div><div id=3D"yui_3_16_0_1_1436852497586_10=
002" class=3D"">qrc:/qml/dashboard.qml:43 module "QtQuick.Controls" is not =
installed</div><div id=3D"yui_3_16_0_1_1436852497586_10003" class=3D"">qrc:=
/qml/dashboard.qml:44 module "QtQuick.Controls.Styles" is not installed</di=
v><div id=3D"yui_3_16_0_1_1436852497586_10004" class=3D"">qrc:/qml/dashboar=
d.qml:45 module "QtQuick.Extras" is not installed</div><div id=3D"yui_3_16_=
0_1_1436852497586_10005" class=3D"">qrc:/qml/dashboard.qml:43 module "QtQui=
ck.Controls" is not installed</div><div id=3D"yui_3_16_0_1_1436852497586_10=
006" class=3D"">qrc:/qml/dashboard.qml:44 module "QtQuick.Controls.Styles" =
is not installed</div><div id=3D"yui_3_16_0_1_1436852497586_10007" class=3D=
"" style=3D"min-height: 8pt; padding: 0px;">&nbsp;</div><div id=3D"yui_3_16=
_0_1_1436852497586_10008" class=3D"">Can you please give me any advice on w=
hat to do? I am stuck at this point.</div><div id=3D"yui_3_16_0_1_143685249=
7586_10009" class=3D"" style=3D"min-height: 8pt; padding: 0px;">&nbsp;</div=
><div id=3D"yui_3_16_0_1_1436852497586_10010" class=3D"">thank you in advan=
ce!</div><div id=3D"yui_3_16_0_1_1436852497586_10011" class=3D"" dir=3D"ltr=
">Regards</div></div></div></body></html>

------=_Part_2329579_1470089339.1436853380441--
