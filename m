Return-Path: <t_dufff@yahoo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C089E00C4F; Wed, 19 Jul 2017 11:37:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (t_dufff[at]yahoo.ca)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.132.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic322-29.consmr.mail.bf2.yahoo.com
	(sonic322-29.consmr.mail.bf2.yahoo.com [74.6.132.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0912AE00C49
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 11:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.ca; s=s2048;
	t=1500489433; bh=whaXPACBJds3+3fE/m26zFUEOOq/keJZNcCFHBPSI6Q=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=AerrhgUiS/UPMCLr/zZzk7cJsGdOTM1vgcnD5aRG13svOI1aN22EqxFHhqUz8Bxg4VDo242BDmyNG/E6+phOoh6/AVYBkTId/tc8YawcdlTHPrU2OzAydZfg5+CAJzUgSqyGljewJRQ+H4UEApN4JHH3Xs9jmFgs7XKnlwcNcULHXs1HN+mbnjTzWEM1PfQPsZRrkFTPWkzrGS9aItEAJkgXL67K18LM2Pz7h7Ac/DMlrqOHsZBj3WOeddHBQpwBLHvoKlrZ6W+ADMKVW9kMaid1BJIgQ7nIcfKKYZn+IjyKGWrs6ogn932OEoSk/FcIcsRwbzzq+NXuhr7rScDYlg==
X-YMail-OSG: mH5CM2gVM1n1HKoXjtiCOFy5whQMDpLPnf4rpX5AGjIqya06IAlW1A0FfM4iHtJ
	7fb6rvORiAA7D1gAhoxCh.JaRLvDGts77SsoCC5KJRaPb10MGCX77Iezi53eZJ_ffeniRkOsfAbE
	jHGIS.RFVUKCr30SijhzZLOVX4wHfypS3ZJJMSeLRbAzkgY4u.MOh5ZQxFzuiwYzciVjeDwVW34l
	9_CbfkyAJJ69yh7ncB3b3fwwU1tDXMU.hdODP.O_jjv81ZpanmtbXFHuENGD415sooAQ_rWSkBsX
	AvFmOJ4HLzeIGDFToiRwAnrkOv7hNQefTuxsz4MywreXVacmnWhUEj0gnViBEZalJSCC.x4LKL6c
	H1uQ3dtO3msRTYxVwuRQuCl_KslsLFIbLzh34LmnKiYNfiRBVKbvXh936JJoJViT0eR7Rk2EFPPP
	52bWf3Sd.elDMH_0h93bWOfz2hCxcmZFiveM6AJtZDWKDXXCtjwIKPgvmny2c7t72E_mEc8ctgbP
	AFkSVweplLZpSmZLQbg--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic322.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 19 Jul 2017 18:37:13 +0000
Date: Wed, 19 Jul 2017 18:37:13 +0000 (UTC)
From: kris duff <t_dufff@yahoo.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1954548235.650907.1500489433358@mail.yahoo.com>
MIME-Version: 1.0
References: <1954548235.650907.1500489433358.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10121 YahooMailNeo Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115
	Safari/537.36
Subject: [dizzy] php 5.4.36 compilation with postgresql 9.3.4
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kris duff <t_dufff@yahoo.ca>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Jul 2017 18:37:15 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_650906_1677724989.1500489433356"

------=_Part_650906_1677724989.1500489433356
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
For a few weeks (part time) I am trying to add to my image php support (und=
er lighttpd/fastcgi) with postgresql support.
The php module can get compiled and used without pgsql support.
I have created a php_5.4.36.bbappend file that contains this :
-----------------------------------------------------------------FILES_${PN=
} +=3D "/usr/lib"
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

export LPQLIBDIR =3D "${STAGING_LIBDIR}"
export LPQINCLUDEDIR =3D "${STAGING_INCDIR}"=C2=A0=C2=A0DEPENDS =3D "postgr=
esql postgresql-native pg-config-custom"
EXTRA_OECONF +=3D " --with-pgsql=3D${STAGING_DIR_TARGET}${EXEC_PREFIX} --wi=
th-pdo-pgsql=3D${D}${bindir}"
-----------------------------------------------------------------

I know, I should have used PACKAGECONFIG[pgsql] but in my case I prefer not=
 touching local.conf.
when I bitbake my image, I see the following message :
ERROR: This autoconf log indicates errors, it looked at host include and/or=
 library paths while determining system capabilities.Rerun configure task a=
fter fixing this. The path was '/home/yocto/build/tmp/work/core2-64-poky-li=
nux/php/5.4.36-r0/build'ERROR: Function failed: do_qa_configure
from my reading, the problem could be here :checking for pkg-config... /hom=
e/yocto/build/tmp/sysroots/x86_64-linux/usr/bin/pkg-configconfigure: WARNIN=
G: using cross tools not prefixed with host triplet
other than that, looked in the compile log file to find "'CROSS COMPILE Bad=
ness:' or 'is unsafe for cross-compilation'"... as seen in insane.bbclass. =
and found nothing.
How to solve this issue ? Anyone has been able to connect php with pgsql ?
Thank you
Regards
Kris


------=_Part_650906_1677724989.1500489433356
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:16px"><div id=3D"yui_3_16_0_ym19_1_1500487316159_31191">Hello,</div><=
div id=3D"yui_3_16_0_ym19_1_1500487316159_31192"><br></div><div id=3D"yui_3=
_16_0_ym19_1_1500487316159_31193">For a few weeks (part time) I am trying t=
o add to my image php support (under lighttpd/fastcgi) with postgresql supp=
ort.</div><div id=3D"yui_3_16_0_ym19_1_1500487316159_31194"><br></div><div =
id=3D"yui_3_16_0_ym19_1_1500487316159_31195">The php module can get compile=
d and used without pgsql support.</div><div id=3D"yui_3_16_0_ym19_1_1500487=
316159_31196"><br></div><div id=3D"yui_3_16_0_ym19_1_1500487316159_27942">I=
 have created a php_5.4.36.bbappend file that contains this :</div><div id=
=3D"yui_3_16_0_ym19_1_1500487316159_27941"><br></div><div id=3D"yui_3_16_0_=
ym19_1_1500487316159_27941">-----------------------------------------------=
------------------</div><div id=3D"yui_3_16_0_ym19_1_1500487316159_27941">F=
ILES_${PN} +=3D "/usr/lib"<br></div><div id=3D"yui_3_16_0_ym19_1_1500487316=
159_28027">FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"<br></div><div i=
d=3D"yui_3_16_0_ym19_1_1500487316159_28030"><br></div><div id=3D"yui_3_16_0=
_ym19_1_1500487316159_28030">export LPQLIBDIR =3D "${STAGING_LIBDIR}"<br></=
div><div id=3D"yui_3_16_0_ym19_1_1500487316159_28042">export LPQINCLUDEDIR =
=3D "${STAGING_INCDIR}"</div><div id=3D"yui_3_16_0_ym19_1_1500487316159_280=
43">&nbsp;&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_1500487316159_28045">DEP=
ENDS =3D "postgresql postgresql-native pg-config-custom"</div><div id=3D"yu=
i_3_16_0_ym19_1_1500487316159_28045"><br></div><div id=3D"yui_3_16_0_ym19_1=
_1500487316159_28046">EXTRA_OECONF +=3D " --with-pgsql=3D${STAGING_DIR_TARG=
ET}${EXEC_PREFIX} --with-pdo-pgsql=3D${D}${bindir}"<br></div><div id=3D"yui=
_3_16_0_ym19_1_1500487316159_28052" dir=3D"ltr">---------------------------=
--------------------------------------<br></div><div id=3D"yui_3_16_0_ym19_=
1_1500487316159_28052" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1=
500487316159_28052" dir=3D"ltr">I know, I should have used PACKAGECONFIG[pg=
sql] but in my case I prefer not touching local.conf.</div><div id=3D"yui_3=
_16_0_ym19_1_1500487316159_28052" dir=3D"ltr"><br></div><div id=3D"yui_3_16=
_0_ym19_1_1500487316159_28052" dir=3D"ltr">when I bitbake my image, I see t=
he following message :</div><div id=3D"yui_3_16_0_ym19_1_1500487316159_2805=
2" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1500487316159_32785">=
ERROR: This autoconf log indicates errors, it looked at host include and/or=
 library paths while determining system capabilities.</div><div id=3D"yui_3=
_16_0_ym19_1_1500487316159_32786">Rerun configure task after fixing this. T=
he path was '/home/yocto/build/tmp/work/core2-64-poky-linux/php/5.4.36-r0/b=
uild'</div><div id=3D"yui_3_16_0_ym19_1_1500487316159_32787">ERROR: Functio=
n failed: do_qa_configure</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_150=
0487316159_32788"><br id=3D"yui_3_16_0_ym19_1_1500487316159_32789"></div><d=
iv dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_32788">from my reading=
, the problem could be here :</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1=
_1500487316159_32788"><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_150048731615=
9_35921">checking for pkg-config... /home/yocto/build/tmp/sysroots/x86_64-l=
inux/usr/bin/pkg-config</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_15004=
87316159_35922">configure: WARNING: using cross tools not prefixed with hos=
t triplet</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922=
"><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922">o=
ther than that, looked in the compile log file to find "'CROSS COMPILE Badn=
ess:' or 'is unsafe for cross-compilation'"... as seen in insane.bbclass. a=
nd found nothing.</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_15004873161=
59_35922"><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_=
35922">How to solve this issue ? Anyone has been able to connect php with p=
gsql ?</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922"><=
br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922">Than=
k you</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922"><b=
r></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922">Regar=
ds</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922"><br><=
/div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922">Kris</di=
v><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922"><br></div><=
div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500487316159_35922"><br></div></di=
v></div></body></html>

------=_Part_650906_1677724989.1500489433356--
