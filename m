Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61243E00AE4; Wed, 14 Mar 2018 19:28:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MANY_SPAN_IN_TEXT, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55264E00712
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 19:28:00 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id z10so2260008pfh.13
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 19:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mjguejwFoQxvHc9E06+U1uXqsKcpUcLt2VcRqE0rgMw=;
	b=IMJQB3pgzxEE97iNvYdAWTvEg/mNjlYd34ofQfRjH3BHOanZsbwmOA/Kkajm2oOWyR
	mXDpgyw9ytcU8ejwp+/yPFmRx5rHHc6PoehMxGvUk1pyrIbw2vLH1ufc7SYx3ZVvSWUj
	+FjISr5zwG7ZnwjgDry84CQ0TuX0xGaLwY8E8L0Y4i1d2FW8BcqlJ0kRfXQhWGBmdool
	p9828BMmX47ltX7eAgcKOS0KZGYxMOKNje7amHdJHMvfthuPCZsD/4/7lMlN76qALhKB
	YuOSc+6yyY71L8lpU8WjpnAjbiaMEXAmGhXp7sWj24JycPMEXEd7NhnTfIOoufY1Xp7e
	7mng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mjguejwFoQxvHc9E06+U1uXqsKcpUcLt2VcRqE0rgMw=;
	b=uFKAOpqbp5gENYcPd++2JyOaeCxOsicpP9sDzrx0ACRqseyuMLk1EkYIqQE/Ve4ark
	qZDTV4zIUQudC10K3v6RnKbHvW9uqCBvt+GBglgTYtzqf/5Kuo1rDCA1dIn1Ykr/BsZm
	pBhD/sq5bbs+PF3drQlqOm9Osf99v+PG1lRi4OmXLeZjOhOUZ/cHUzVr6F7uw/gfykW8
	uVrXR00iDIHM3bP74cHY3mAZLFNMxr3nlezyEm7qmVsXOnPIn9nf9j9R+v7FPi0zcjhG
	ywqR1M1FGHlFyGySyjbivMmDjx+qbFtGs3Et0YVjkZ1nFUFtRKL6j2didi6MGC6+b77h
	U4sQ==
X-Gm-Message-State: AElRT7G0/eaOENbKRDFr3Qw6RTgwWoD23y+ywY/uN3EnJyFn4dLkrnfj
	b7RLsFo7uC6JrSzzXAyP5zGnlLSj1PoW5Q2S7Lc=
X-Google-Smtp-Source: AG47ELuQ8uwwQ6t73UW/WTMdmWkXYo45R3crPRm4PdQVKFJF744le9fyUcw5M+9KrmhJ8UpaqiX6/WnTC9AUTgViCC4=
X-Received: by 10.99.128.67 with SMTP id j64mr5350609pgd.55.1521080879620;
	Wed, 14 Mar 2018 19:27:59 -0700 (PDT)
MIME-Version: 1.0
References: <e551e6fd13914d8a9b95c2e31d5af60d@sakuraus.com>
	<CALzCvPRJd=i1_DESNzT_i8ym9cqkhANntR18vBjpaDgCJsMShA@mail.gmail.com>
	<7d6a04f438314656ad26b1c0b764f3e9@sakuraus.com>
In-Reply-To: <7d6a04f438314656ad26b1c0b764f3e9@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Mar 2018 02:27:49 +0000
Message-ID: <CAMKF1soYhSm_gavyMUuFKeCZ6k8N8KAEcVdg3D8V2DfVTX5ZLw@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jeremy Thien <jeremyt@adtecinc.com>
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
X-List-Received-Date: Thu, 15 Mar 2018 02:28:01 -0000
Content-Type: multipart/alternative; boundary="94eb2c0ba78081265c05676a3dad"

--94eb2c0ba78081265c05676a3dad
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 14, 2018 at 3:20 PM Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> I changed it to look like:
>
> PACKAGES += "${PN}-service"
>
> FILES_${PN} = "${datadir}/*"
> FILES_${PN}-service = "${systemd_system_unitdir}/canstart.service"
>
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
> SYSTEMD_PACKAGES = "${PN}-service"
> SYSTEMD_SERVICE_${PN}-service = "canstart.service"
> SYSTEMD_AUTO_ENABLE_${PN}-service = "enable"
>
> Still got the same results, my task is not running at startup.
> To make sure that there wasn't some problem in running the script, I
> changed the ExecStart to echo to a file in /tmp. Nothing there. The
> .service file is not being executed.
> I've obviously got something totally messed up, but I'm darned if I
> understand what it is.
>
>
You can check with systemctl status and other commands on the service on
running system and might find more details

>
> ------------------------------
> *From:* Jeremy Thien <jeremyt@adtecinc.com>
> *Sent:* Wednesday, March 14, 2018 1:08 PM
> *To:* Greg Wilson-Lindberg
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] trouble getting systemd oneshot to run
>
> I am no expert, but I have a similar recipe. It might be over complicated,
> but I put the script in one package and the service in another something
> like:
>
> PACKAGES += "${PN}-service"
> FILES_${PN} = "${datadir}/canstart/canstart.sh "
> FILES_${PN}-service = "${systemd_unitdir}/system/canstart.service "
> SYSTEMD_PACKAGES = ${PN}-service"
> SYSTEMD_SERVICE_${PN}-service = canstart.service"
> SYSTEMD_AUTO_ENABLE_${PN}-service = "enable"
>
> Of course, this requires image to install both canstart and
> canstart-service.
>
> Hope this helps,
> Jeremy Thien
>
> On Wed, Mar 14, 2018 at 3:21 PM Greg Wilson-Lindberg <GWilson@sakuraus.com>
> wrote:
>
>> I'm building yocto for a raspberry pi3 from Qt's b2qt version.
>>
>>
>> I'm running into two problems, I've got all of the files copying to the
>> correct locations but the .service is not running at startup. I used
>> connman-conf.bb as the template for my .bb file:
>>
>>
>> SUMMARY="recipe to create CAN bus startup service"
>>
>> LICENSE = "CLOSED"
>> LIC_FILES_CHKSUM = ""
>>
>> inherit systemd
>>
>> SRC_URI = "file://can_start.sh \           file://canstart.service \"
>>
>> S = "${WORKDIR}"
>>
>> PACKAGE_ARCH = "${MACHINE_ARCH}"
>>
>> FILES_${PN} = "${datadir}/*"
>> do_install () {
>>     if test -e ${WORKDIR}/can_start.sh &&
>>        test -e ${WORKDIR}/canstart.service; then
>>         install -d ${D}${datadir}/canstart
>>         install -m 0755 ${WORKDIR}/can_start.sh ${D}${datadir}/canstart
>>         install -d ${D}${systemd_system_unitdir}
>>         install -m 0644 ${WORKDIR}/canstart.service ${D}${systemd_system_unitdir}
>>         sed -i -e 's|@SCRIPTDIR@|${datadir}/canstart|g' ${D}${systemd_system_unitdir}/canstart.service
>>     fi}
>>
>> SYSTEMD_SERVICE_${PN} = "canstart.service"
>>
>>
>> Service file:
>>
>> [Unit]
>> Description=Startup CAN bus interface
>>
>> [Service]
>> Type=oneshot
>> ExecStart=@SCRIPTDIR@/can_start.sh
>>
>> [Install]
>> WantedBy=network.target
>>
>>
>> From looking at the connman-conf sample I'm setting everything up
>> correctly and the service should default to running on startup but it is
>> not.
>>
>> The second 'problem' is really just perplexing, if I dump the variables S
>> contains a path to a directory in my root not "${WORKDIR}".
>>
>> Any and all help with this would be greatly appreciated.
>>
>>
>> Regards,
>>
>> Greg Wilson-Lindberg
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> Jeremy Thien
> Director of Engineering | Adtec Digital
> jeremy.thien@adtecdigital.net | mobile: +1 (904) 910-1749
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0ba78081265c05676a3dad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Wed, Mar 14, 2018 =
at 3:20 PM Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com"=
>GWilson@sakuraus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">




<div>
<div id=3D"m_-2373803950331680750divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I changed it to look like:</p>
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
<pre></pre></div></div></div><div><div id=3D"m_-2373803950331680750divtagde=
faultwrapper" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Ari=
al,Helvetica,sans-serif"><div style=3D"color:#000000;background-color:#ffff=
ff;font-style:normal;font-weight:normal;text-decoration:none"><pre>PACKAGES=
 +<span style=3D"color:#800000">=3D</span> <span style=3D"color:#008080">&q=
uot;${PN}-service&quot;</span></pre></div></div></div><div><div id=3D"m_-23=
73803950331680750divtagdefaultwrapper" style=3D"font-size:12pt;color:#00000=
0;font-family:Calibri,Arial,Helvetica,sans-serif"><div style=3D"color:#0000=
00;background-color:#ffffff;font-style:normal;font-weight:normal;text-decor=
ation:none"><pre>FILES_$<span style=3D"color:#800000">{</span>PN<span style=
=3D"color:#800000">}</span> <span style=3D"color:#800000">=3D</span> <span =
style=3D"color:#008080">&quot;${datadir}/*&quot;</span>
FILES_$<span style=3D"color:#800000">{</span>PN<span style=3D"color:#800000=
">}</span>-service <span style=3D"color:#800000">=3D</span> <span style=3D"=
color:#008080">&quot;${systemd_system_unitdir}/canstart.service&quot;</span=
></pre></div></div></div><div><div id=3D"m_-2373803950331680750divtagdefaul=
twrapper" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,H=
elvetica,sans-serif"><div style=3D"color:#000000;background-color:#ffffff;f=
ont-style:normal;font-weight:normal;text-decoration:none"><pre><span style=
=3D"font-weight:bolder">do_install</span> <span style=3D"color:#800000">()<=
/span> <span style=3D"color:#800000">{</span>
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
<br></pre></div></div></div><div><div id=3D"m_-2373803950331680750divtagdef=
aultwrapper" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Aria=
l,Helvetica,sans-serif"><div style=3D"color:#000000;background-color:#fffff=
f;font-style:normal;font-weight:normal;text-decoration:none">
<pre>SYSTEMD_PACKAGES <span style=3D"color:#800000">=3D</span> <span style=
=3D"color:#008080">&quot;${PN}-service&quot;</span>
SYSTEMD_SERVICE_$<span style=3D"color:#800000">{</span>PN<span style=3D"col=
or:#800000">}</span>-service <span style=3D"color:#800000">=3D</span> <span=
 style=3D"color:#008080">&quot;canstart.service&quot;</span>
SYSTEMD_AUTO_ENABLE_$<span style=3D"color:#800000">{</span>PN<span style=3D=
"color:#800000">}</span>-service <span style=3D"color:#800000">=3D</span> <=
span style=3D"color:#008080">&quot;enable&quot;</span>

</pre>
</div></div></div><div><div id=3D"m_-2373803950331680750divtagdefaultwrappe=
r" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetic=
a,sans-serif"><div style=3D"color:#000000;background-color:#ffffff;font-sty=
le:normal;font-weight:normal;text-decoration:none"></div>
<div id=3D"m_-2373803950331680750divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
Still got the same results, my task is not running at startup.</div>
<div id=3D"m_-2373803950331680750divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
To make sure that there wasn&#39;t some=C2=A0problem in running the script,=
 I changed the ExecStart to echo to a file in /tmp. Nothing there. The .ser=
vice file is not being executed.</div>
<div id=3D"m_-2373803950331680750divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
I&#39;ve obviously got something totally messed up, but I&#39;m darned if I=
 understand what it is.</div>
<br>
</div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">You =
can check with systemctl status and other commands on the service on runnin=
g system and might find more details=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div><div id=3D"m_-2373803950331680750divtagdefaultwrapper" style=3D"fo=
nt-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">=
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-2373803950331680750divRplyFwdMsg"><font face=3D"Calibri, sans=
-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jeremy Thie=
n &lt;<a href=3D"mailto:jeremyt@adtecinc.com" target=3D"_blank">jeremyt@adt=
ecinc.com</a>&gt;<br>
<b>Sent:</b> Wednesday, March 14, 2018 1:08 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] trouble getting systemd oneshot to run</font>
<div>=C2=A0</div>
</div></div></div></div><div><div id=3D"m_-2373803950331680750divtagdefault=
wrapper" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,He=
lvetica,sans-serif"><div style=3D"color:rgb(0,0,0)">
<div>
<div>I am no expert, but I have a similar recipe. It might be over complica=
ted, but I put the script in one package and the service in another somethi=
ng like:
<div><br>
</div>
<div>PACKAGES=C2=A0+=3D &quot;${PN}-service&quot;</div>
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
<div id=3D"m_-2373803950331680750m_4008525705944121360divtagdefaultwrapper"=
 style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica,=
sans-serif">
<p>I&#39;m building yocto for a raspberry pi3 from Qt&#39;s b2qt version.</=
p>
<p><br>
</p>
<p>I&#39;m running into two problems, I&#39;ve got all of the files copying=
 to the correct locations but the .service is not running at startup. I use=
d
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
</blockquote>
</div>
-- <br>
<div class=3D"m_-2373803950331680750gmail_signature">
<div>Jeremy Thien
<div>Director of Engineering | Adtec Digital</div>
<div><a href=3D"mailto:jeremy.thien@adtecdigital.net" target=3D"_blank">jer=
emy.thien@adtecdigital.net</a> | mobile: +1 (904) 910-1749</div>
</div>
</div>
</div>
</div></div></div>

--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c0ba78081265c05676a3dad--
