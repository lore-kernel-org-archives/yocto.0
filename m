Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 690C3E00848; Thu, 15 Mar 2018 09:11:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MANY_SPAN_IN_TEXT,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
X-Greylist: delayed 65224 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Mar 2018 09:11:52 PDT
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C850E007A7
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 09:11:52 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx4.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 15 Mar 2018 16:10:25 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 15 Mar 2018 09:10:03 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 15 Mar 2018 09:10:03 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Jeremy Thien <jeremyt@adtecinc.com>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] trouble getting systemd oneshot to run
Thread-Index: AQHTu8SR04VV/wWOvUyTMDytB670GaPQnlgA//+m/0+AAMLkgIAAvQGA//+yETs=
Date: Thu, 15 Mar 2018 16:10:03 +0000
Message-ID: <dfcf8766442648b6901f833d88c536e0@sakuraus.com>
References: <e551e6fd13914d8a9b95c2e31d5af60d@sakuraus.com>
	<CALzCvPRJd=i1_DESNzT_i8ym9cqkhANntR18vBjpaDgCJsMShA@mail.gmail.com>
	<7d6a04f438314656ad26b1c0b764f3e9@sakuraus.com>
	<CAMKF1soYhSm_gavyMUuFKeCZ6k8N8KAEcVdg3D8V2DfVTX5ZLw@mail.gmail.com>,
	<CALzCvPS+0Ey3XXZYsE=1FMeivkvwdcfrkk_DP+H2nWKK3FoQBA@mail.gmail.com>
In-Reply-To: <CALzCvPS+0Ey3XXZYsE=1FMeivkvwdcfrkk_DP+H2nWKK3FoQBA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1521130118-298555-31412-80461-7
X-BESS-VER: 2018.2-r1803082101
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191087
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 0
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
X-List-Received-Date: Thu, 15 Mar 2018 16:11:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_dfcf8766442648b6901f833d88c536e0sakurauscom_"

--_000_dfcf8766442648b6901f833d88c536e0sakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Well, first, thanks to all for the help.


The recommendation for systemctl is what finally led me to my mistake. I wa=
s blindly figuring that  systemd would figure out that my file named can_st=
art.sh was a shell script, without putting #!/bin/sh at the beginning of it=
. dumb.


At any rate, I've got it running now, on to the next problem.


Thanks again for the community and all of your help,

Greg

________________________________
From: Jeremy Thien <jeremyt@adtecinc.com>
Sent: Thursday, March 15, 2018 6:44:17 AM
To: Khem Raj
Cc: Greg Wilson-Lindberg; yocto@yoctoproject.org
Subject: Re: [yocto] trouble getting systemd oneshot to run

Agreed. I would expect the service file to be in /lib/systemd/system/cansta=
rt.service and a symbolic link in /etc/systemd/system/network.target.wants/=
canstart.service.

If those are both present, then the problem is in the service file. If the =
symbolic link is missing, try "systemctl enable canstart.service" to see if=
 there is any useful information. "systemctl start canstart.service" and "s=
ystemctl status canstart.service" may also help.

In my particular service file, I wanted to start after networking is up so =
I followed this post<https://www.freedesktop.org/wiki/Software/systemd/Netw=
orkTarget/>. In the Install section, I have "WantedBy=3Dmulti-user.target".=
 In the Unit section, I have "After=3Dnetwork-online.target" and "Wants=3Dn=
etwork-online.target".

On Wed, Mar 14, 2018 at 10:28 PM Khem Raj <raj.khem@gmail.com<mailto:raj.kh=
em@gmail.com>> wrote:
On Wed, Mar 14, 2018 at 3:20 PM Greg Wilson-Lindberg <GWilson@sakuraus.com<=
mailto:GWilson@sakuraus.com>> wrote:

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


You can check with systemctl status and other commands on the service on ru=
nning system and might find more details

________________________________
From: Jeremy Thien <jeremyt@adtecinc.com<mailto:jeremyt@adtecinc.com>>
Sent: Wednesday, March 14, 2018 1:08 PM
To: Greg Wilson-Lindberg
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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
e: +1 (904) 910-1749<tel:(904)%20910-1749>
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

--_000_dfcf8766442648b6901f833d88c536e0sakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Well, first, thanks to all for&nbsp;the help.</p>
<p><br>
</p>
<p>The recommendation for systemctl is what finally led me to my mistake. I=
 was blindly figuring that&nbsp; systemd would figure out that my file name=
d can_start.sh was a shell script, without putting #!/bin/sh at the beginni=
ng of it. dumb.</p>
<p><br>
</p>
<p>At any rate, I've got it running now, on to the next problem.</p>
<p><br>
</p>
<p>Thanks again for the community and all of your help,</p>
<p><span style=3D"font-size: 12pt;">Greg</span><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jeremy Thien &lt;jere=
myt@adtecinc.com&gt;<br>
<b>Sent:</b> Thursday, March 15, 2018 6:44:17 AM<br>
<b>To:</b> Khem Raj<br>
<b>Cc:</b> Greg Wilson-Lindberg; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] trouble getting systemd oneshot to run</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Agreed. I would expect the service file to be in /lib/syst=
emd/system/canstart.service and a symbolic link in /etc/systemd/system/netw=
ork.target.wants/canstart.service.
<div><br>
</div>
<div>If those are both present, then the problem is in the service file. If=
 the symbolic link is missing, try &quot;systemctl enable canstart.service&=
quot; to see if there is any useful information. &quot;systemctl start cans=
tart.service&quot; and &quot;systemctl status canstart.service&quot;
 may also help.</div>
<div><br>
</div>
<div>In my particular service file, I wanted to start after networking is u=
p so I followed
<a href=3D"https://www.freedesktop.org/wiki/Software/systemd/NetworkTarget/=
">this post</a>. In the Install section, I have &quot;WantedBy=3Dmulti-user=
.target&quot;. In the Unit section, I have &quot;After=3Dnetwork-online.tar=
get&quot; and &quot;Wants=3Dnetwork-online.target&quot;.&nbsp;</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr">On Wed, Mar 14, 2018 at 10:28 PM Khem Raj &lt;<a href=3D"m=
ailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>
<div class=3D"gmail_quote">
<div dir=3D"auto">On Wed, Mar 14, 2018 at 3:20 PM Greg Wilson-Lindberg &lt;=
<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">GWilson@sakuraus.=
com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
<p>I changed it to look like:</p>
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
<pre></pre>
</div>
</div>
</div>
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
<pre>PACKAGES &#43;<span style=3D"color:#800000">=3D</span> <span style=3D"=
color:#008080">&quot;${PN}-service&quot;</span></pre>
</div>
</div>
</div>
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
<pre>FILES_$<span style=3D"color:#800000">{</span>PN<span style=3D"color:#8=
00000">}</span> <span style=3D"color:#800000">=3D</span> <span style=3D"col=
or:#008080">&quot;${datadir}/*&quot;</span>
FILES_$<span style=3D"color:#800000">{</span>PN<span style=3D"color:#800000=
">}</span>-service <span style=3D"color:#800000">=3D</span> <span style=3D"=
color:#008080">&quot;${systemd_system_unitdir}/canstart.service&quot;</span=
></pre>
</div>
</div>
</div>
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
<pre><span style=3D"font-weight:bolder">do_install</span> <span style=3D"co=
lor:#800000">()</span> <span style=3D"color:#800000">{</span>
    <span style=3D"color:#800080">if</span> test -e $<span style=3D"color:#=
800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/can_start<spa=
n style=3D"color:#800000">.</span>sh &amp;&amp;
       test -e $<span style=3D"color:#800000">{</span>WORKDIR<span style=3D=
"color:#800000">}</span>/canstart<span style=3D"color:#800000">.</span>serv=
ice<span style=3D"color:#800000">;</span> then
        install -d $<span style=3D"color:#800000">{</span>D<span style=3D"c=
olor:#800000">}</span>$<span style=3D"color:#800000">{</span>datadir<span s=
tyle=3D"color:#800000">}</span>/canstart
        install -m <span style=3D"color:#000080">0755</span> $<span style=
=3D"color:#800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/ca=
n_start<span style=3D"color:#800000">.</span>sh $<span style=3D"color:#8000=
00">{</span>D<span style=3D"color:#800000">}</span>$<span style=3D"color:#8=
00000">{</span>datadir<span style=3D"color:#800000">}</span>/canstart
        install -d $<span style=3D"color:#800000">{</span>D<span style=3D"c=
olor:#800000">}</span>$<span style=3D"color:#800000">{</span>systemd_system=
_unitdir<span style=3D"color:#800000">}</span>
        install -m <span style=3D"color:#000080">0644</span> $<span style=
=3D"color:#800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/ca=
nstart<span style=3D"color:#800000">.</span>service $<span style=3D"color:#=
800000">{</span>D<span style=3D"color:#800000">}</span>$<span style=3D"colo=
r:#800000">{</span>systemd_system_unitdir<span style=3D"color:#800000">}</s=
pan>
        sed -i -e <span style=3D"color:#006060">'s|@SCRIPTDIR@|${datadir}/c=
anstart|g'</span> $<span style=3D"color:#800000">{</span>D<span style=3D"co=
lor:#800000">}</span>$<span style=3D"color:#800000">{</span>systemd_system_=
unitdir<span style=3D"color:#800000">}</span>/canstart<span style=3D"color:=
#800000">.</span>service
    fi
<span style=3D"color:#800000">}</span>
<br></pre>
</div>
</div>
</div>
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
<pre>SYSTEMD_PACKAGES <span style=3D"color:#800000">=3D</span> <span style=
=3D"color:#008080">&quot;${PN}-service&quot;</span>
SYSTEMD_SERVICE_$<span style=3D"color:#800000">{</span>PN<span style=3D"col=
or:#800000">}</span>-service <span style=3D"color:#800000">=3D</span> <span=
 style=3D"color:#008080">&quot;canstart.service&quot;</span>
SYSTEMD_AUTO_ENABLE_$<span style=3D"color:#800000">{</span>PN<span style=3D=
"color:#800000">}</span>-service <span style=3D"color:#800000">=3D</span> <=
span style=3D"color:#008080">&quot;enable&quot;</span>

</pre>
</div>
</div>
</div>
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
</div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
Still got the same results, my task is not running at startup.</div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
To make sure that there wasn't some&nbsp;problem in running the script, I c=
hanged the ExecStart to echo to a file in /tmp. Nothing there. The .service=
 file is not being executed.</div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
I've obviously got something totally messed up, but I'm darned if I underst=
and what it is.</div>
<br>
</div>
</div>
</blockquote>
<div dir=3D"auto"><br>
</div>
</div>
</div>
<div>
<div class=3D"gmail_quote">
<div dir=3D"auto">You can check with systemctl status and other commands on=
 the service on running system and might find more details&nbsp;</div>
</div>
</div>
<div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3203980841762195626m_-2373803950331680750divRplyFwdMsg"><font=
 face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b=
>From:</b> Jeremy Thien &lt;<a href=3D"mailto:jeremyt@adtecinc.com" target=
=3D"_blank">jeremyt@adtecinc.com</a>&gt;<br>
<b>Sent:</b> Wednesday, March 14, 2018 1:08 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] trouble getting systemd oneshot to run</font>
<div>&nbsp;</div>
</div>
</div>
</div>
</div>
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750divtagdefaultwrapper=
" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica=
,sans-serif">
<div style=3D"color:rgb(0,0,0)">
<div>
<div>I am no expert, but I have a similar recipe. It might be over complica=
ted, but I put the script in one package and the service in another somethi=
ng like:
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
<div>On Wed, Mar 14, 2018 at 3:21 PM Greg Wilson-Lindberg &lt;<a href=3D"ma=
ilto:GWilson@sakuraus.com" target=3D"_blank">GWilson@sakuraus.com</a>&gt; w=
rote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>
<div id=3D"m_-3203980841762195626m_-2373803950331680750m_400852570594412136=
0divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-family:Ca=
libri,Arial,Helvetica,sans-serif">
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
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
<pre>SUMMARY<span style=3D"color:#800000">=3D</span><span style=3D"color:#0=
08080">&quot;recipe to create CAN bus startup service&quot;</span>

LICENSE <span style=3D"color:#800000">=3D</span> <span style=3D"color:#0080=
80">&quot;CLOSED&quot;</span>
LIC_FILES_CHKSUM <span style=3D"color:#800000">=3D</span> <span style=3D"co=
lor:#008080">&quot;&quot;</span>

inherit systemd

SRC_URI <span style=3D"color:#800000">=3D</span> <span style=3D"color:#0080=
80">&quot;file://can_start.sh \</span>
<span style=3D"color:#008080">           file://canstart.service \</span>
<span style=3D"color:#008080">&quot;</span>

S <span style=3D"color:#800000">=3D</span> <span style=3D"color:#008080">&q=
uot;${WORKDIR}&quot;</span>

PACKAGE_ARCH <span style=3D"color:#800000">=3D</span> <span style=3D"color:=
#008080">&quot;${MACHINE_ARCH}&quot;</span>

FILES_$<span style=3D"color:#800000">{</span>PN<span style=3D"color:#800000=
">}</span> <span style=3D"color:#800000">=3D</span> <span style=3D"color:#0=
08080">&quot;${datadir}/*&quot;</span>

<span style=3D"font-weight:bolder">do_install</span> <span style=3D"color:#=
800000">()</span> <span style=3D"color:#800000">{</span>
    <span style=3D"color:#800080">if</span> test -e $<span style=3D"color:#=
800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/can_start<spa=
n style=3D"color:#800000">.</span>sh &amp;&amp;
       test -e $<span style=3D"color:#800000">{</span>WORKDIR<span style=3D=
"color:#800000">}</span>/canstart<span style=3D"color:#800000">.</span>serv=
ice<span style=3D"color:#800000">;</span> then
        install -d $<span style=3D"color:#800000">{</span>D<span style=3D"c=
olor:#800000">}</span>$<span style=3D"color:#800000">{</span>datadir<span s=
tyle=3D"color:#800000">}</span>/canstart
        install -m <span style=3D"color:#000080">0755</span> $<span style=
=3D"color:#800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/ca=
n_start<span style=3D"color:#800000">.</span>sh $<span style=3D"color:#8000=
00">{</span>D<span style=3D"color:#800000">}</span>$<span style=3D"color:#8=
00000">{</span>datadir<span style=3D"color:#800000">}</span>/canstart
        install -d $<span style=3D"color:#800000">{</span>D<span style=3D"c=
olor:#800000">}</span>$<span style=3D"color:#800000">{</span>systemd_system=
_unitdir<span style=3D"color:#800000">}</span>
        install -m <span style=3D"color:#000080">0644</span> $<span style=
=3D"color:#800000">{</span>WORKDIR<span style=3D"color:#800000">}</span>/ca=
nstart<span style=3D"color:#800000">.</span>service $<span style=3D"color:#=
800000">{</span>D<span style=3D"color:#800000">}</span>$<span style=3D"colo=
r:#800000">{</span>systemd_system_unitdir<span style=3D"color:#800000">}</s=
pan>
        sed -i -e <span style=3D"color:#006060">'s|@SCRIPTDIR@|${datadir}/c=
anstart|g'</span> $<span style=3D"color:#800000">{</span>D<span style=3D"co=
lor:#800000">}</span>$<span style=3D"color:#800000">{</span>systemd_system_=
unitdir<span style=3D"color:#800000">}</span>/canstart<span style=3D"color:=
#800000">.</span>service
    fi
<span style=3D"color:#800000">}</span>

SYSTEMD_SERVICE_$<span style=3D"color:#800000">{</span>PN<span style=3D"col=
or:#800000">}</span> <span style=3D"color:#800000">=3D</span> <span style=
=3D"color:#008080">&quot;canstart.service&quot;</span>
</pre>
<pre><span style=3D"color:#008080"><pre style=3D"font-size:16px"><span styl=
e=3D"color:rgb(0,0,0)"></span><br></pre><pre style=3D"font-size:16px"><span=
 style=3D"color:rgb(0,0,0)">Service file:</span></pre><pre style=3D"font-si=
ze:16px"><span style=3D"color:rgb(0,0,0)"><div style=3D"color:#000000;backg=
round-color:#ffffff;font-style:normal;font-weight:normal;text-decoration:no=
ne">
<pre>[Unit]
Description=3DStartup CAN bus interface

[Service]
Type=3Doneshot
ExecStart=3D@SCRIPTDIR@/can_start.sh

[Install]
WantedBy=3Dnetwork.target
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
or:rgb(0,128,128);font-family:Calibri,Arial,Helvetica,sans-serif">&quot;${W=
ORKDIR}&quot;.</span><span style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif"><br>
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
<div class=3D"m_-3203980841762195626m_-2373803950331680750gmail_signature">
<div>Jeremy Thien
<div>Director of Engineering | Adtec Digital</div>
<div><a href=3D"mailto:jeremy.thien@adtecdigital.net" target=3D"_blank">jer=
emy.thien@adtecdigital.net</a> | mobile:
<a href=3D"tel:(904)%20910-1749" value=3D"&#43;19049101749" target=3D"_blan=
k">&#43;1 (904) 910-1749</a></div>
</div>
</div>
</div>
</div>
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
</div>
</blockquote>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e">
<div dir=3D"ltr">Jeremy Thien
<div>Director of Engineering | Adtec Digital</div>
<div><a href=3D"mailto:jeremy.thien@adtecdigital.net">jeremy.thien@adtecdig=
ital.net</a> | mobile: &#43;1 (904) 910-1749</div>
</div>
</div>
</div>
</body>
</html>

--_000_dfcf8766442648b6901f833d88c536e0sakurauscom_--
