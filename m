Return-Path: <jeremy.thien@adtecdigital.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1261E00DFA; Wed, 14 Mar 2018 13:09:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MANY_SPAN_IN_TEXT,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C287AE00843
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 13:09:02 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id k3so6020853wrg.6
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 13:09:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SYpE0jwlZKAC+8Qxz57p1c5BAfyaJHxcRgjVNOAdrx8=;
	b=I3Q+K2aa4Y3nSbGwIg5oyAz+zotM0udCCbZKI0cRbeJSWern5WmHRcNzyXAUp8Yxie
	kzMPAJU9w/gLusg6sASj3yrP0EV0TA+o8ANey1/zi61TopqcQ448lLYe5/LjPam2i61B
	Kk9z69m/LCW798nohfct5l5++i+Nu4/rYTCeYn/aMwEg5XKiIPGkJfwlh+ElxGFvfSPB
	yqX7jW6L7aZVWykzPCHTXQsO8hlCD3Q5RknOTxWFurkv3D80BhCkz922+HwP23m9cKyK
	ZQN91i2k0hMfLXHgfuVCy9YsWo9CCV+g0OuWTf/+dA7JAx44W7M0lDhzXfnD+fsKV01P
	0N1Q==
X-Gm-Message-State: AElRT7GW+MlAG9Agpsf1ttA41c055pn7v8iIxv4/N+ksoqwUndcNr1o8
	X9r7nuj5VNSq4oOnD2vhcchFD+JqWg2zdMueReEwQQ==
X-Google-Smtp-Source: AG47ELtou268k+TDP9ky6owawgQ1p61lEfccAjWRlb7TE8lFIw9hRWk6uzmL4A+ep03to2Bxp4DTIyjcO2VusOZsZDs=
X-Received: by 10.223.199.69 with SMTP id b5mr5267200wrh.212.1521058141522;
	Wed, 14 Mar 2018 13:09:01 -0700 (PDT)
MIME-Version: 1.0
References: <e551e6fd13914d8a9b95c2e31d5af60d@sakuraus.com>
In-Reply-To: <e551e6fd13914d8a9b95c2e31d5af60d@sakuraus.com>
From: Jeremy Thien <jeremyt@adtecinc.com>
Date: Wed, 14 Mar 2018 20:08:50 +0000
Message-ID: <CALzCvPRJd=i1_DESNzT_i8ym9cqkhANntR18vBjpaDgCJsMShA@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
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
X-List-Received-Date: Wed, 14 Mar 2018 20:09:04 -0000
Content-Type: multipart/alternative; boundary="089e08244c0c355dd7056764f29b"

--089e08244c0c355dd7056764f29b
Content-Type: text/plain; charset="UTF-8"

I am no expert, but I have a similar recipe. It might be over complicated,
but I put the script in one package and the service in another something
like:

PACKAGES += "${PN}-service"
FILES_${PN} = "${datadir}/canstart/canstart.sh "
FILES_${PN}-service = "${systemd_unitdir}/system/canstart.service "
SYSTEMD_PACKAGES = ${PN}-service"
SYSTEMD_SERVICE_${PN}-service = canstart.service"
SYSTEMD_AUTO_ENABLE_${PN}-service = "enable"

Of course, this requires image to install both canstart and
canstart-service.

Hope this helps,
Jeremy Thien

On Wed, Mar 14, 2018 at 3:21 PM Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> I'm building yocto for a raspberry pi3 from Qt's b2qt version.
>
>
> I'm running into two problems, I've got all of the files copying to the
> correct locations but the .service is not running at startup. I used
> connman-conf.bb as the template for my .bb file:
>
>
> SUMMARY="recipe to create CAN bus startup service"
>
> LICENSE = "CLOSED"
> LIC_FILES_CHKSUM = ""
>
> inherit systemd
>
> SRC_URI = "file://can_start.sh \           file://canstart.service \"
>
> S = "${WORKDIR}"
>
> PACKAGE_ARCH = "${MACHINE_ARCH}"
>
> FILES_${PN} = "${datadir}/*"
> do_install () {
>     if test -e ${WORKDIR}/can_start.sh &&
>        test -e ${WORKDIR}/canstart.service; then
>         install -d ${D}${datadir}/canstart
>         install -m 0755 ${WORKDIR}/can_start.sh ${D}${datadir}/canstart
>         install -d ${D}${systemd_system_unitdir}
>         install -m 0644 ${WORKDIR}/canstart.service ${D}${systemd_system_unitdir}
>         sed -i -e 's|@SCRIPTDIR@|${datadir}/canstart|g' ${D}${systemd_system_unitdir}/canstart.service
>     fi}
>
> SYSTEMD_SERVICE_${PN} = "canstart.service"
>
>
> Service file:
>
> [Unit]
> Description=Startup CAN bus interface
>
> [Service]
> Type=oneshot
> ExecStart=@SCRIPTDIR@/can_start.sh
>
> [Install]
> WantedBy=network.target
>
>
> From looking at the connman-conf sample I'm setting everything up
> correctly and the service should default to running on startup but it is
> not.
>
> The second 'problem' is really just perplexing, if I dump the variables S
> contains a path to a directory in my root not "${WORKDIR}".
>
> Any and all help with this would be greatly appreciated.
>
>
> Regards,
>
> Greg Wilson-Lindberg
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Jeremy Thien
Director of Engineering | Adtec Digital
jeremy.thien@adtecdigital.net | mobile: +1 (904) 910-1749

--089e08244c0c355dd7056764f29b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am no expert, but I have a similar recipe. It might be o=
ver complicated, but I put the script in one package and the service in ano=
ther something like:<div><br></div><div>PACKAGES=C2=A0+=3D &quot;${PN}-serv=
ice&quot;</div><div>FILES_${PN} =3D &quot;${datadir}/canstart/canstart.sh &=
quot;</div><div>FILES_${PN}-service =3D &quot;${systemd_unitdir}/system/can=
start.service &quot;</div><div>SYSTEMD_PACKAGES =3D ${PN}-service&quot;</di=
v><div>SYSTEMD_SERVICE_${PN}-service =3D canstart.service&quot;</div><div>S=
YSTEMD_AUTO_ENABLE_${PN}-service =3D &quot;enable&quot;</div><div><br></div=
><div>Of course, this requires image to install both canstart and canstart-=
service.</div><div><br></div><div>Hope this helps,</div><div>Jeremy Thien</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Mar 14, 2=
018 at 3:21 PM Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.=
com">GWilson@sakuraus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">




<div dir=3D"ltr">
<div id=3D"m_4008525705944121360divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I&#39;m building yocto for a raspberry pi3 from Qt&#39;s b2qt version.</=
p>
<p><br>
</p>
<p>I&#39;m running into two problems, I&#39;ve got all of the files copying=
 to the correct locations but the .service is not running at startup. I use=
d <a href=3D"http://connman-conf.bb" target=3D"_blank">connman-conf.bb</a> =
as the template for my .bb file:</p>
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
        sed -i -e <span style=3D"color:#006060">&#39;s|@SCRIPTDIR@|${datadi=
r}/canstart|g&#39;</span> $<span style=3D"color:#800000">{</span>D<span sty=
le=3D"color:#800000">}</span>$<span style=3D"color:#800000">{</span>systemd=
_system_unitdir<span style=3D"color:#800000">}</span>/canstart<span style=
=3D"color:#800000">.</span>service
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
oking at the connman-conf sample I&#39;m setting everything up correctly an=
d the service should default to running on startup but it is not.</span></d=
iv>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif"><br>
</span></div>
The second &#39;problem&#39; is really just perplexing, if I dump the varia=
bles S contains a path to a directory in my root not=C2=A0</span><span styl=
e=3D"color:rgb(0,128,128);font-family:Calibri,Arial,Helvetica,sans-serif">&=
quot;${WORKDIR}&quot;.</span><span style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif"><br>
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
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Jeremy Thien<div>Director of =
Engineering | Adtec Digital</div><div><a href=3D"mailto:jeremy.thien@adtecd=
igital.net">jeremy.thien@adtecdigital.net</a> | mobile: +1 (904) 910-1749</=
div></div></div>

--089e08244c0c355dd7056764f29b--
