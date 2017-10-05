Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEC47E00D72; Wed,  4 Oct 2017 17:16:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E37EBE00D6A
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 17:16:21 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx2.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 05 Oct 2017 00:16:18 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 4 Oct 2017 17:16:15 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 4 Oct 2017 17:16:15 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Having trouble getting recipe to run in proper directory
Thread-Index: AQHTPWxb0oRn/yAKOUO4B9H0W4aZLQ==
Date: Thu, 5 Oct 2017 00:16:15 +0000
Message-ID: <2376f96acc0f4c3db9c3b40a3cfc98f3@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1507162578-298553-17130-61882-1
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185698
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: Having trouble getting recipe to run in proper directory
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
X-List-Received-Date: Thu, 05 Oct 2017 00:16:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2376f96acc0f4c3db9c3b40a3cfc98f3sakurauscom_"

--_000_2376f96acc0f4c3db9c3b40a3cfc98f3sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to create a new recipe for a package that has a version and non-=
numeric rev in its name (canfestival-3-asc). I've gotten bitbake to unpack =
the package into a tree that looks ok, but it keeps trying to run the compi=
le at least in the wrong directory. Here is the recipe:


SUMMARY =3D "Independent CANOpen=AE stack"
DESCRIPTION =3D "CanFestival focuses on providing an ANSI-C platform indepe=
ndent \
               CANOpen=AE stack that can be built as master or slave nodes =
on PCs, \
               Real-time IPCs, and Microcontrollers."

HOMEPAGE =3D "http://www.canfestival.org/"

SRCREV =3D "895:8973dd8be7e8"

SRC_URI =3D "hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestival=
-3-asc"
SRC_URI[md5sum] =3D ""
SRC_URI[sha256sum] =3D ""

PN =3D "canfestival"
PV =3D '3'
PR =3D 'asc'

LICENSE =3D "LGPL-2"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D \
                    file://LICENCE;md5=3D"

inherit autotools

# Specify any options you want to pass to the configure script using EXTRA_=
OECONF:
EXTRA_OECONF =3D "-can=3Dsocket -timers=3Dunix -SDO_MAX_SIMULTANEOUS_TRANSF=
ERS=3D25 \
                -SDO_MAX_LENGTH_TRANSFER=3D4096 -MAX_NB_TIMER=3D128 -SDO_TI=
MEOUT_MS=3D1000"

PROVIDES =3D "canfestival"

The directory structure that bitbake builds is:


canfestival

           3-asc

                   build

                   canfestival-3           # directory that bitbake is tryi=
ng to compile in

                   canfestival-3-asc       # directory that code was extrac=
ted to

                   temp


I'm not getting any errors from the configure task, but the log file looks =
like it is trying to run from the canfestival-3 directory, not the canfesti=
val-3-asc. What can I do to the recipe to get the build to run in the canfe=
stival-3-asc directory? Or, i guess, get bitbake to unpack the source into =
the canfestival-3, or a different directory that it will actually run the t=
asks in.


Regards,

Greg

--_000_2376f96acc0f4c3db9c3b40a3cfc98f3sakurauscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I'm trying to create a new recipe for a package that has a version and n=
on-numeric rev in its name (canfestival-3-asc). I've gotten bitbake to unpa=
ck the package into a tree that looks ok, but it keeps trying to run the co=
mpile at least in the wrong directory.
 Here is the recipe:</p>
<p><br>
</p>
<p></p>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">SUMMA=
RY =3D &quot;Independent CANOpen=AE stack&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">DESCR=
IPTION =3D &quot;CanFestival focuses on providing an ANSI-C platform indepe=
ndent \</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CANOpen=AE stack that can=
 be built as master or slave nodes on PCs, \</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Real-time IPCs, and Micro=
controllers.&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">HOMEP=
AGE =3D &quot;http://www.canfestival.org/&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">SRCRE=
V =3D &quot;895:8973dd8be7e8&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">SRC_U=
RI =3D &quot;hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestival=
-3-asc&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">SRC_U=
RI[md5sum] =3D &quot;&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">SRC_U=
RI[sha256sum] =3D &quot;&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">PN =
=3D &quot;canfestival&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">PV =
=3D '3'</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">PR =
=3D 'asc'</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">LICEN=
SE =3D &quot;LGPL-2&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">LIC_F=
ILES_CHKSUM =3D &quot;file://COPYING;md5=3D \</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file://LIC=
ENCE;md5=3D&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">inher=
it autotools</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># Spe=
cify any options you want to pass to the configure script using EXTRA_OECON=
F:</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">EXTRA=
_OECONF =3D &quot;&#8211;can=3Dsocket &#8211;timers=3Dunix &#8211;SDO_MAX_S=
IMULTANEOUS_TRANSFERS=3D25 \</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#8211;SDO_MAX_LENGTH_TR=
ANSFER=3D4096 &#8211;MAX_NB_TIMER=3D128 &#8211;SDO_TIMEOUT_MS=3D1000&quot;<=
/span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">PROVI=
DES =3D &quot;canfestival&quot;</span></div>
<div><br>
</div>
The directory structure that bitbake builds is:
<p></p>
<p><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">canfest=
ival</span><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3-asc</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;build</span><=
/p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;canfestival-3=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# directory that bitbake is trying=
 to compile in</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;canfestival-3=
-asc&nbsp; &nbsp; &nbsp; &nbsp;# directory that code was extracted to</span=
></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;temp</span></=
p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><br>
</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">I'm not gettin=
g any errors from the configure task, but the log file looks like it is try=
ing to run from the canfestival-3 directory, not
 the canfestival-3-asc.&nbsp;</span></span><span style=3D"font-family: Cali=
bri, Arial, Helvetica, sans-serif; font-size: 12pt;">What can I do to the r=
ecipe to get the build to run in the canfestival-3-asc directory? Or, i gue=
ss, get bitbake to unpack the source into&nbsp;</span><span style=3D"font-f=
amily: Calibri, Arial, Helvetica, sans-serif;">the
 canfestival-3, or&nbsp;</span><span style=3D"font-family: Calibri, Arial, =
Helvetica, sans-serif; font-size: 12pt;">a different directory that it will=
 actually run the tasks in.</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><br>
</span></span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">Regards,</span=
></span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">Greg</span></s=
pan></p>
</div>
</body>
</html>

--_000_2376f96acc0f4c3db9c3b40a3cfc98f3sakurauscom_--
