Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B26F8E00E23; Wed, 14 Mar 2018 12:21:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MANY_SPAN_IN_TEXT,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
X-Greylist: delayed 923 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Mar 2018 12:21:10 PDT
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F12B1E009D7
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 12:21:09 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 14 Mar 2018 19:21:00 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 14 Mar 2018 12:05:37 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 14 Mar 2018 12:05:37 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: trouble getting systemd oneshot to run
Thread-Index: AQHTu8SR04VV/wWOvUyTMDytB670GQ==
Date: Wed, 14 Mar 2018 19:05:36 +0000
Message-ID: <e551e6fd13914d8a9b95c2e31d5af60d@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1521055255-321457-5943-6033-2
X-BESS-VER: 2018.2-r1803082101
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191060
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: trouble getting systemd oneshot to run
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
X-List-Received-Date: Wed, 14 Mar 2018 19:21:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e551e6fd13914d8a9b95c2e31d5af60dsakurauscom_"

--_000_e551e6fd13914d8a9b95c2e31d5af60dsakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm building yocto for a raspberry pi3 from Qt's b2qt version.


I'm running into two problems, I've got all of the files copying to the cor=
rect locations but the .service is not running at startup. I used connman-c=
onf.bb as the template for my .bb file:


SUMMARY=3D"recipe to create CAN bus startup service"

LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D ""

inherit systemd

SRC_URI =3D "file://can_start.sh \
           file://canstart.service \
"

S =3D "${WORKDIR}"

PACKAGE_ARCH =3D "${MACHINE_ARCH}"

FILES_${PN} =3D "${datadir}/*"

do_install () {
    if test -e ${WORKDIR}/can_start.sh &&
       test -e ${WORKDIR}/canstart.service; then
        install -d ${D}${datadir}/canstart
        install -m 0755 ${WORKDIR}/can_start.sh ${D}${datadir}/canstart
        install -d ${D}${systemd_system_unitdir}
        install -m 0644 ${WORKDIR}/canstart.service ${D}${systemd_system_un=
itdir}
        sed -i -e 's|@SCRIPTDIR@|${datadir}/canstart|g' ${D}${systemd_syste=
m_unitdir}/canstart.service
    fi
}

SYSTEMD_SERVICE_${PN} =3D "canstart.service"



Service file:




[Unit]
Description=3DStartup CAN bus interface

[Service]
Type=3Doneshot
ExecStart=3D@SCRIPTDIR@/can_start.sh

[Install]
WantedBy=3Dnetwork.target



From looking at the connman-conf sample I'm setting everything up correctly=
 and the service should default to running on startup but it is not.

The second 'problem' is really just perplexing, if I dump the variables S c=
ontains a path to a directory in my root not "${WORKDIR}".


Any and all help with this would be greatly appreciated.


Regards,

Greg Wilson-Lindberg

--_000_e551e6fd13914d8a9b95c2e31d5af60dsakurauscom_
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
<p>I'm building yocto for a raspberry pi3 from Qt's b2qt version.</p>
<p><br>
</p>
<p>I'm running into two problems, I've got all of the files copying to the =
correct locations but the .service is not running at startup. I used connma=
n-conf.bb as the template for my .bb file:</p>
<p><br>
</p>
<p></p>
<div style=3D"color: #000000;background-color: #ffffff; font-style: normal;=
 font-weight: normal; text-decoration: none;">
<pre>SUMMARY<span style=3D"color:#800000;">=3D</span><span style=3D"color:#=
008080;">&quot;recipe to create CAN bus startup service&quot;</span>=0A=
=0A=
LICENSE <span style=3D"color:#800000;">=3D</span> <span style=3D"color:#008=
080;">&quot;CLOSED&quot;</span>=0A=
LIC_FILES_CHKSUM <span style=3D"color:#800000;">=3D</span> <span style=3D"c=
olor:#008080;">&quot;&quot;</span>=0A=
=0A=
inherit systemd=0A=
=0A=
SRC_URI <span style=3D"color:#800000;">=3D</span> <span style=3D"color:#008=
080;">&quot;file://can_start.sh \</span>=0A=
<span style=3D"color:#008080;">           file://canstart.service \</span>=
=0A=
<span style=3D"color:#008080;">&quot;</span>=0A=
=0A=
S <span style=3D"color:#800000;">=3D</span> <span style=3D"color:#008080;">=
&quot;${WORKDIR}&quot;</span>=0A=
=0A=
PACKAGE_ARCH <span style=3D"color:#800000;">=3D</span> <span style=3D"color=
:#008080;">&quot;${MACHINE_ARCH}&quot;</span>=0A=
=0A=
FILES_$<span style=3D"color:#800000;">{</span>PN<span style=3D"color:#80000=
0;">}</span> <span style=3D"color:#800000;">=3D</span> <span style=3D"color=
:#008080;">&quot;${datadir}/*&quot;</span>=0A=
=0A=
<span style=3D"font-weight: bolder;">do_install</span> <span style=3D"color=
:#800000;">()</span> <span style=3D"color:#800000;">{</span>=0A=
    <span style=3D"color:#800080;">if</span> test -e $<span style=3D"color:=
#800000;">{</span>WORKDIR<span style=3D"color:#800000;">}</span>/can_start<=
span style=3D"color:#800000;">.</span>sh &amp;&amp;=0A=
       test -e $<span style=3D"color:#800000;">{</span>WORKDIR<span style=
=3D"color:#800000;">}</span>/canstart<span style=3D"color:#800000;">.</span=
>service<span style=3D"color:#800000;">;</span> then=0A=
        install -d $<span style=3D"color:#800000;">{</span>D<span style=3D"=
color:#800000;">}</span>$<span style=3D"color:#800000;">{</span>datadir<spa=
n style=3D"color:#800000;">}</span>/canstart=0A=
        install -m <span style=3D"color:#000080;">0755</span> $<span style=
=3D"color:#800000;">{</span>WORKDIR<span style=3D"color:#800000;">}</span>/=
can_start<span style=3D"color:#800000;">.</span>sh $<span style=3D"color:#8=
00000;">{</span>D<span style=3D"color:#800000;">}</span>$<span style=3D"col=
or:#800000;">{</span>datadir<span style=3D"color:#800000;">}</span>/canstar=
t=0A=
        install -d $<span style=3D"color:#800000;">{</span>D<span style=3D"=
color:#800000;">}</span>$<span style=3D"color:#800000;">{</span>systemd_sys=
tem_unitdir<span style=3D"color:#800000;">}</span>=0A=
        install -m <span style=3D"color:#000080;">0644</span> $<span style=
=3D"color:#800000;">{</span>WORKDIR<span style=3D"color:#800000;">}</span>/=
canstart<span style=3D"color:#800000;">.</span>service $<span style=3D"colo=
r:#800000;">{</span>D<span style=3D"color:#800000;">}</span>$<span style=3D=
"color:#800000;">{</span>systemd_system_unitdir<span style=3D"color:#800000=
;">}</span>=0A=
        sed -i -e <span style=3D"color:#006060;">'s|@SCRIPTDIR@|${datadir}/=
canstart|g'</span> $<span style=3D"color:#800000;">{</span>D<span style=3D"=
color:#800000;">}</span>$<span style=3D"color:#800000;">{</span>systemd_sys=
tem_unitdir<span style=3D"color:#800000;">}</span>/canstart<span style=3D"c=
olor:#800000;">.</span>service=0A=
    fi=0A=
<span style=3D"color:#800000;">}</span>=0A=
=0A=
SYSTEMD_SERVICE_$<span style=3D"color:#800000;">{</span>PN<span style=3D"co=
lor:#800000;">}</span> <span style=3D"color:#800000;">=3D</span> <span styl=
e=3D"color:#008080;">&quot;canstart.service&quot;</span>=0A=
</pre>
<pre><span style=3D"color:#008080;"><pre style=3D"font-size: 16px;"><span s=
tyle=3D"color: rgb(0, 0, 0);"></span><br></pre><pre style=3D"font-size: 16p=
x;"><span style=3D"color: rgb(0, 0, 0);">Service file:</span></pre><pre sty=
le=3D"font-size: 16px;"><span style=3D"color: rgb(0, 0, 0);"><div style=3D"=
color: #000000;background-color: #ffffff; font-style: normal; font-weight: =
normal; text-decoration: none;">=0A=
<pre>[Unit]=0A=
Description=3DStartup CAN bus interface=0A=
=0A=
[Service]=0A=
Type=3Doneshot=0A=
ExecStart=3D@SCRIPTDIR@/can_start.sh=0A=
=0A=
[Install]=0A=
WantedBy=3Dnetwork.target=0A=
</pre></div><br></span></pre></span></pre>
</div>
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">Fr=
om looking at the connman-conf sample I'm setting everything up correctly a=
nd the service should default to running on startup but it is not.</span></=
div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><b=
r>
</span></div>
The second 'problem' is really just perplexing, if I dump the variables S c=
ontains a path to a directory in my root not&nbsp;</span><span style=3D"col=
or: rgb(0, 128, 128); font-family: Calibri, Arial, Helvetica, sans-serif;">=
&quot;${WORKDIR}&quot;.</span><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif;"><br>
</span><br>
<p></p>
<p>Any and all help with this would be greatly appreciated.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Greg Wilson-Lindberg</p>
</div>
</body>
</html>

--_000_e551e6fd13914d8a9b95c2e31d5af60dsakurauscom_--
