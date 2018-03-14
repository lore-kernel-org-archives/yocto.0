Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B42B1E00843; Wed, 14 Mar 2018 15:20:03 -0700 (PDT)
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
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4682FE00474
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 15:20:02 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 14 Mar 2018 22:19:57 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 14 Mar 2018 15:04:24 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 14 Mar 2018 15:04:24 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Jeremy Thien <jeremyt@adtecinc.com>
Thread-Topic: [yocto] trouble getting systemd oneshot to run
Thread-Index: AQHTu8SR04VV/wWOvUyTMDytB670GaPQnlgA//+m/08=
Date: Wed, 14 Mar 2018 22:04:24 +0000
Message-ID: <7d6a04f438314656ad26b1c0b764f3e9@sakuraus.com>
References: <e551e6fd13914d8a9b95c2e31d5af60d@sakuraus.com>,
	<CALzCvPRJd=i1_DESNzT_i8ym9cqkhANntR18vBjpaDgCJsMShA@mail.gmail.com>
In-Reply-To: <CALzCvPRJd=i1_DESNzT_i8ym9cqkhANntR18vBjpaDgCJsMShA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1521065993-321457-11912-9240-2
X-BESS-VER: 2018.2-r1803082101
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191064
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn'
	t match header 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, HTML_MESSAGE,
	BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble getting systemd oneshot to run
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
X-List-Received-Date: Wed, 14 Mar 2018 22:20:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7d6a04f438314656ad26b1c0b764f3e9sakurauscom_"

--_000_7d6a04f438314656ad26b1c0b764f3e9sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I changed it to look like:

PACKAGES +=3D "${PN}-service"

FILES_${PN} =3D "${datadir}/*"
FILES_${PN}-service =3D "${systemd_system_unitdir}/canstart.service"

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


SYSTEMD_PACKAGES =3D "${PN}-service"
SYSTEMD_SERVICE_${PN}-service =3D "canstart.service"
SYSTEMD_AUTO_ENABLE_${PN}-service =3D "enable"



Still got the same results, my task is not running at startup.
To make sure that there wasn't some problem in running the script, I change=
d the ExecStart to echo to a file in /tmp. Nothing there. The .service file=
 is not being executed.
I've obviously got something totally messed up, but I'm darned if I underst=
and what it is.


________________________________
From: Jeremy Thien <jeremyt@adtecinc.com>
Sent: Wednesday, March 14, 2018 1:08 PM
To: Greg Wilson-Lindberg
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] trouble getting systemd oneshot to run

I am no expert, but I have a similar recipe. It might be over complicated, =
but I put the script in one package and the service in another something li=
ke:

PACKAGES +=3D "${PN}-service"
FILES_${PN} =3D "${datadir}/canstart/canstart.sh "
FILES_${PN}-service =3D "${systemd_unitdir}/system/canstart.service "
SYSTEMD_PACKAGES =3D ${PN}-service"
SYSTEMD_SERVICE_${PN}-service =3D canstart.service"
SYSTEMD_AUTO_ENABLE_${PN}-service =3D "enable"

Of course, this requires image to install both canstart and canstart-servic=
e.

Hope this helps,
Jeremy Thien

On Wed, Mar 14, 2018 at 3:21 PM Greg Wilson-Lindberg <GWilson@sakuraus.com<=
mailto:GWilson@sakuraus.com>> wrote:

I'm building yocto for a raspberry pi3 from Qt's b2qt version.


I'm running into two problems, I've got all of the files copying to the cor=
rect locations but the .service is not running at startup. I used connman-c=
onf.bb<http://connman-conf.bb> as the template for my .bb file:


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

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto
--
Jeremy Thien
Director of Engineering | Adtec Digital
jeremy.thien@adtecdigital.net<mailto:jeremy.thien@adtecdigital.net> | mobil=
e: +1 (904) 910-1749

--_000_7d6a04f438314656ad26b1c0b764f3e9sakurauscom_
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
<p>I changed it to look like:</p>
<div style=3D"color: #000000;background-color: #ffffff; font-style: normal;=
 font-weight: normal; text-decoration: none;">
<pre>PACKAGES &#43;<span style=3D"color:#800000;">=3D</span> <span style=3D=
"color:#008080;">&quot;${PN}-service&quot;</span>=0A=
=0A=
FILES_$<span style=3D"color:#800000;">{</span>PN<span style=3D"color:#80000=
0;">}</span> <span style=3D"color:#800000;">=3D</span> <span style=3D"color=
:#008080;">&quot;${datadir}/*&quot;</span>=0A=
FILES_$<span style=3D"color:#800000;">{</span>PN<span style=3D"color:#80000=
0;">}</span>-service <span style=3D"color:#800000;">=3D</span> <span style=
=3D"color:#008080;">&quot;${systemd_system_unitdir}/canstart.service&quot;<=
/span>=0A=
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
<br></pre>
<pre>SYSTEMD_PACKAGES <span style=3D"color:#800000;">=3D</span> <span style=
=3D"color:#008080;">&quot;${PN}-service&quot;</span>=0A=
SYSTEMD_SERVICE_$<span style=3D"color:#800000;">{</span>PN<span style=3D"co=
lor:#800000;">}</span>-service <span style=3D"color:#800000;">=3D</span> <s=
pan style=3D"color:#008080;">&quot;canstart.service&quot;</span>=0A=
SYSTEMD_AUTO_ENABLE_$<span style=3D"color:#800000;">{</span>PN<span style=
=3D"color:#800000;">}</span>-service <span style=3D"color:#800000;">=3D</sp=
an> <span style=3D"color:#008080;">&quot;enable&quot;</span>=0A=
=0A=
</pre>
</div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
Still got the same results, my task is not running at startup.</div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
To make sure that there wasn't some&nbsp;problem in running the script, I c=
hanged the ExecStart to echo to a file in /tmp. Nothing there. The .service=
 file is not being executed.</div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
I've obviously got something totally messed up, but I'm darned if I underst=
and what it is.</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jeremy Thien &lt;jere=
myt@adtecinc.com&gt;<br>
<b>Sent:</b> Wednesday, March 14, 2018 1:08 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] trouble getting systemd oneshot to run</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">I am no expert, but I have a similar recipe. It might be o=
ver complicated, but I put the script in one package and the service in ano=
ther something like:
<div><br>
</div>
<div>PACKAGES&nbsp;&#43;=3D &quot;${PN}-service&quot;</div>
<div>FILES_${PN} =3D &quot;${datadir}/canstart/canstart.sh &quot;</div>
<div>FILES_${PN}-service =3D &quot;${systemd_unitdir}/system/canstart.servi=
ce &quot;</div>
<div>SYSTEMD_PACKAGES =3D ${PN}-service&quot;</div>
<div>SYSTEMD_SERVICE_${PN}-service =3D canstart.service&quot;</div>
<div>SYSTEMD_AUTO_ENABLE_${PN}-service =3D &quot;enable&quot;</div>
<div><br>
</div>
<div>Of course, this requires image to install both canstart and canstart-s=
ervice.</div>
<div><br>
</div>
<div>Hope this helps,</div>
<div>Jeremy Thien</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr">On Wed, Mar 14, 2018 at 3:21 PM Greg Wilson-Lindberg &lt;<=
a href=3D"mailto:GWilson@sakuraus.com">GWilson@sakuraus.com</a>&gt; wrote:<=
br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_4008525705944121360divtagdefaultwrapper" style=3D"font-size:12=
pt; color:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I'm building yocto for a raspberry pi3 from Qt's b2qt version.</p>
<p><br>
</p>
<p>I'm running into two problems, I've got all of the files copying to the =
correct locations but the .service is not running at startup. I used
<a href=3D"http://connman-conf.bb" target=3D"_blank">connman-conf.bb</a> as=
 the template for my .bb file:</p>
<p><br>
</p>
<p></p>
<div style=3D"color:#000000; background-color:#ffffff; font-style:normal; f=
ont-weight:normal; text-decoration:none">
<pre>SUMMARY<span style=3D"color:#800000">=3D</span><span style=3D"color:#0=
08080">&quot;recipe to create CAN bus startup service&quot;</span>=0A=
=0A=
LICENSE <span style=3D"color:#800000">=3D</span> <span style=3D"color:#0080=
80">&quot;CLOSED&quot;</span>=0A=
LIC_FILES_CHKSUM <span style=3D"color:#800000">=3D</span> <span style=3D"co=
lor:#008080">&quot;&quot;</span>=0A=
=0A=
inherit systemd=0A=
=0A=
SRC_URI <span style=3D"color:#800000">=3D</span> <span style=3D"color:#0080=
80">&quot;file://can_start.sh \</span>=0A=
<span style=3D"color:#008080">           file://canstart.service \</span>=
=0A=
<span style=3D"color:#008080">&quot;</span>=0A=
=0A=
S <span style=3D"color:#800000">=3D</span> <span style=3D"color:#008080">&q=
uot;${WORKDIR}&quot;</span>=0A=
=0A=
PACKAGE_ARCH <span style=3D"color:#800000">=3D</span> <span style=3D"color:=
#008080">&quot;${MACHINE_ARCH}&quot;</span>=0A=
=0A=
FILES_$<span style=3D"color:#800000">{</span>PN<span style=3D"color:#800000=
">}</span> <span style=3D"color:#800000">=3D</span> <span style=3D"color:#0=
08080">&quot;${datadir}/*&quot;</span>=0A=
=0A=
<span style=3D"font-weight:bolder">do_install</span> <span style=3D"color:#=
800000">()</span> <span style=3D"color:#800000">{</span>=0A=
    <span style=3D"color:#800080">if</span> test -e $<span style=3D"color:#=
800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/can_start<spa=
n style=3D"color:#800000">.</span>sh &amp;&amp;=0A=
       test -e $<span style=3D"color:#800000">{</span>WORKDIR<span style=3D=
"color:#800000">}</span>/canstart<span style=3D"color:#800000">.</span>serv=
ice<span style=3D"color:#800000">;</span> then=0A=
        install -d $<span style=3D"color:#800000">{</span>D<span style=3D"c=
olor:#800000">}</span>$<span style=3D"color:#800000">{</span>datadir<span s=
tyle=3D"color:#800000">}</span>/canstart=0A=
        install -m <span style=3D"color:#000080">0755</span> $<span style=
=3D"color:#800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/ca=
n_start<span style=3D"color:#800000">.</span>sh $<span style=3D"color:#8000=
00">{</span>D<span style=3D"color:#800000">}</span>$<span style=3D"color:#8=
00000">{</span>datadir<span style=3D"color:#800000">}</span>/canstart=0A=
        install -d $<span style=3D"color:#800000">{</span>D<span style=3D"c=
olor:#800000">}</span>$<span style=3D"color:#800000">{</span>systemd_system=
_unitdir<span style=3D"color:#800000">}</span>=0A=
        install -m <span style=3D"color:#000080">0644</span> $<span style=
=3D"color:#800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/ca=
nstart<span style=3D"color:#800000">.</span>service $<span style=3D"color:#=
800000">{</span>D<span style=3D"color:#800000">}</span>$<span style=3D"colo=
r:#800000">{</span>systemd_system_unitdir<span style=3D"color:#800000">}</s=
pan>=0A=
        sed -i -e <span style=3D"color:#006060">'s|@SCRIPTDIR@|${datadir}/c=
anstart|g'</span> $<span style=3D"color:#800000">{</span>D<span style=3D"co=
lor:#800000">}</span>$<span style=3D"color:#800000">{</span>systemd_system_=
unitdir<span style=3D"color:#800000">}</span>/canstart<span style=3D"color:=
#800000">.</span>service=0A=
    fi=0A=
<span style=3D"color:#800000">}</span>=0A=
=0A=
SYSTEMD_SERVICE_$<span style=3D"color:#800000">{</span>PN<span style=3D"col=
or:#800000">}</span> <span style=3D"color:#800000">=3D</span> <span style=
=3D"color:#008080">&quot;canstart.service&quot;</span>=0A=
</pre>
<pre><span style=3D"color:#008080"><pre style=3D"font-size:16px"><span styl=
e=3D"color:rgb(0,0,0)"></span><br></pre><pre style=3D"font-size:16px"><span=
 style=3D"color:rgb(0,0,0)">Service file:</span></pre><pre style=3D"font-si=
ze:16px"><span style=3D"color:rgb(0,0,0)"><div style=3D"color:#000000; back=
ground-color:#ffffff; font-style:normal; font-weight:normal; text-decoratio=
n:none">=0A=
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
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif">
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif">From lo=
oking at the connman-conf sample I'm setting everything up correctly and th=
e service should default to running on startup but it is not.</span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif"><br>
</span></div>
The second 'problem' is really just perplexing, if I dump the variables S c=
ontains a path to a directory in my root not&nbsp;</span><span style=3D"col=
or:rgb(0,128,128); font-family:Calibri,Arial,Helvetica,sans-serif">&quot;${=
WORKDIR}&quot;.</span><span style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif"><br>
</span><br>
<p></p>
<p>Any and all help with this would be greatly appreciated.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Greg Wilson-Lindberg</p>
</div>
</div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail_signature">
<div dir=3D"ltr">Jeremy Thien
<div>Director of Engineering | Adtec Digital</div>
<div><a href=3D"mailto:jeremy.thien@adtecdigital.net">jeremy.thien@adtecdig=
ital.net</a> | mobile: &#43;1 (904) 910-1749</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_7d6a04f438314656ad26b1c0b764f3e9sakurauscom_--
