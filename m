Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 858A4E00C1B; Tue, 19 Feb 2019 23:37:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4379EE00BC8
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 23:37:57 -0800 (PST)
Received: by mail-qt1-f173.google.com with SMTP id z39so26227573qtz.0
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 23:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=++Ra3tSHO2j2C98Nzv1ShFfFiMHpOf/7N4LV8T+S3ZY=;
	b=ML3ukIQ4i9GmZ2DMhZbu21WMElvAgpOPUHM8Wa5403ArQ372sZVlYzQhL7tDYDZWWW
	S9z3eC27bqHr83x171owlhyanJoibUh3onA2LyGycencI2X41+kiKNiewFVFao7pWSsV
	sZjpIgHrUY0w8bh20GwnRNhtbYeP4JK8eq+iPV2CKKOqs8p8LEvn1bRKfoXSC2KaTMfU
	w7+1vuwdODgxdSs32RVstYFjDMrFWZGu4/orvlX57KSDg6hsONOe+MXoEB8dNlEO3t+i
	+aERdUDB88ozGj8QZNPF8dQwaMhIC4ZDeBQ9B0wV6oBzYBM+XtpYkEMFCyvSY0PoYajR
	fJWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=++Ra3tSHO2j2C98Nzv1ShFfFiMHpOf/7N4LV8T+S3ZY=;
	b=QPkfA7NZywLp8woswqAAxH/7JQPB9mcZNWOYA2oPdbgCKDCzG0gh31EB3vjsc4IXQK
	S4nXsEvGb/nAcooPI1FDpXZ6Pq81dsS1535SDylxgSrT3D3yPYVipJ+Pr1sDJh/gBcAd
	shB4YuLJMYYO8ox+r40WPCqfAvlSTD3ZznT66ltnXDyp9Z3nhMeMlwe2sZYjNdyy/apu
	QXhh4aDQJy0HTvOntpZx3X4lsWpcUcvigHHBWkS6vngtAxNsQeV4w/EvtoZSbmmoIeVG
	n17LNhi6GUvVmy5dgHsVkioX8jWkw2xjh/VNoFlFGfPZRaFX7R0XEC2a/1Jrbpq76OaN
	7WNQ==
X-Gm-Message-State: AHQUAuYN859Xs4EHmOhqfoDKlecJwe+MQh23PjegB63B7rOsyAA3kIu2
	WgcMdnMGePfZ5INxzbFzYignmQp05ts2ypcYeP0=
X-Google-Smtp-Source: AHgI3IZgPoxdnBXMoVc9NPTNZX6FkAl4Co8kVjR3+6IllkkDYj8/YQNAjNmP7L07c91ZFXPcHFL3Jq3r6FL0IaIjfTY=
X-Received: by 2002:a0c:c906:: with SMTP id r6mr24696841qvj.121.1550648276508; 
	Tue, 19 Feb 2019 23:37:56 -0800 (PST)
MIME-Version: 1.0
References: <001301d4c2f2$e94a45a0$bbded0e0$@aktyon.com>
	<a8408263-cd61-2352-45ec-d0da8787eaa2@windriver.com>
In-Reply-To: <a8408263-cd61-2352-45ec-d0da8787eaa2@windriver.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 20 Feb 2019 08:37:45 +0100
Message-ID: <CAGAf8LxHYhiYZZgv2ox4Y5VW9i5yH0pySgbykJ70-FO6fWQuRg@mail.gmail.com>
To: andrew.rudd@aktyon.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto General purpose evaluation
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
X-List-Received-Date: Wed, 20 Feb 2019 07:37:59 -0000
Content-Type: multipart/alternative; boundary="000000000000b1631105824e6f18"

--000000000000b1631105824e6f18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Background/requirements

> Currently using Debian OS on my prototype build based on a

> Beaglebone green wireless.

> Custom software is constructed in java.

> System utilizes 9 axis accelerometer, vibration sensor, Bluetooth,

> WiFi, LTE-M, GNSS, power management (through BB I2c and

> GPIO channels)

> It runs on a battery and solar.


Very stringent requirements. But... I would suggest more systematic

approach, which has more in-depth reach: nothing to do with neither

YOCTO, neither Debian!


> Power usage is important. Standby is used and still needs to listen

> for vibration sensor, Bluetooth and LTE-m cellular events.

> Only constrained *by power usage and data usage*. Processor or

> memory usage are unconstrained except for in relation to power usage.


Here, the data usage and memory usage are somehow on the same page.

I will assume that main (and sole) problem here is *power usage*.


> Minimizing data usage if an OS update is needed would be an advantage

> No audio , video, USB or GUI is used.


You need to consider deeper, more fundamental approach, here. The first

control you have over the hardware is U-Boot run (boot-loader).


In other words, you should, using U-Boot (I am assuming you use U-Boot),

to add functions which explicity disable the next functionality in ARM

(AM335x 1GHz ARM=C2=AE Cortex-A8): <http://www.ti.com/product/am3358>

[1] ALSA HW (some registers in Power Plane which will completely disconnect

     ALSA domain);

[2] The same for HDMI 720p domain;

[3] The same for USB domain;

[4] Whatever HW blocks/domains you really do not use!


Then, you need to minimize Linux driver tree, leaving only what you really
use:

9 axis accelerometer;

vibration sensor;

Bluetooth;

WiFi;

LTE-M;

GNSS;

Power management (through BB I2c);

GPIO channels (leaving the minimum GPIO usage)!


I would prefer Debian (for number of reasons), but YOCTO is, certainly,

the good option too!


Zoran

_______

On Wed, Feb 20, 2019 at 2:49 AM ChenQi <Qi.Chen@windriver.com> wrote:

> Your main concern is about power usage. As long as you are using linux,
> you might want to do the following:
> 1) Custom kernel to include drivers that are necessary
> 2) Do not install unnecessary packages, do not start unnecessary daemons
> The above two could easily be achieved by Yocto.
>
> Best Regards,
> Chen Qi
>
> On 02/13/2019 12:49 AM, andrew.rudd@aktyon.com wrote:
>
> Hello,
>
>
>
> I=E2=80=99m looking to evaluate the general purpose/utility of a custom b=
uild
> Yocto embedded OS. I=E2=80=99m trying to get my head around the benefits =
of using
> such an OS. I=E2=80=99m sure it=E2=80=99s on case by case basis so let me=
 provide my
> background and requirements.
>
>
>
> Background/requirements
>
> Currently using Debian OS on my prototype build based on a Beaglebone
> green wireless.
>
> Custom software is constructed in java.
>
> System utilizes 9 axis accelerometer, vibration sensor, Bluetooth, WiFi,
> LTE-M, GNSS, power management (through BB I2c and GPIO channels)
>
> It runs on a battery and solar.
>
> Power usage is important. Standby is used and still needs to listen for
> vibration sensor, Bluetooth and LTE-m cellular events.
>
> Only constrained by power usage and data usage. Processor or memory usage
> are unconstrained except for in relation to power usage.
>
> Minimizing data usage if an OS update is needed would be an advantage.
>
> No audio , video, USB or GUI is used.
>
>
>
>
>
> So would there be a significant benefit seen by using a custom Yocto buil=
d
> or would a GUIless version of Debian be just as effective? Also consideri=
ng
> Buildroot if that would be just as effective and simpler to execute. If
> anyone has any other thoughts or concerns I would love to discuss. Thank
> you for your time.
>
>
>
> Thank you,
>
> Andrew Rudd
>
> President, Aktyon
>
> 352-256-8086
>
> Andrew.Rudd@Aktyon.com
>
> [image: AktyonLogoAndFontSignature]
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b1631105824e6f18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal">&gt; Background/requirements</p><p =
class=3D"MsoNormal">&gt; Currently using Debian OS on my prototype build ba=
sed on a</p><p class=3D"MsoNormal">&gt; Beaglebone green wireless. </p><p c=
lass=3D"MsoNormal">&gt; Custom software is constructed in java.</p><p class=
=3D"MsoNormal">&gt; System
 utilizes 9 axis accelerometer, vibration sensor, Bluetooth,</p><p class=3D=
"MsoNormal">&gt; WiFi,=20
LTE-M, GNSS, power management (through BB I2c and <br></p><p class=3D"MsoNo=
rmal">&gt; GPIO channels)</p><p class=3D"MsoNormal">&gt; It runs on a batte=
ry and solar.</p><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal">Very=
 stringent requirements. But... I would suggest more systematic</p><p class=
=3D"MsoNormal">approach, which has more in-depth reach: nothing to do with =
neither</p><p class=3D"MsoNormal">YOCTO, neither Debian!</p><p class=3D"Mso=
Normal"><br></p><p class=3D"MsoNormal">&gt; Power usage is important. Stand=
by is used and still needs to listen</p><p class=3D"MsoNormal">&gt; for vib=
ration sensor, Bluetooth and LTE-m cellular events.</p><p class=3D"MsoNorma=
l">&gt; Only
 constrained <span style=3D"color:rgb(255,0,0)"><i><b>by power usage and da=
ta usage</b></i></span>. Processor or</p><p class=3D"MsoNormal">&gt; memory=
 usage=20
are unconstrained except for in relation to power usage.</p><p class=3D"Mso=
Normal"><br></p><p class=3D"MsoNormal">Here, the data usage and memory usag=
e are somehow on the same page.</p><p class=3D"MsoNormal">I will assume tha=
t main (and sole) problem here is <span style=3D"color:rgb(255,0,0)"><i><b>=
power usage</b></i></span>.<br></p><p class=3D"MsoNormal"><br></p><p class=
=3D"MsoNormal">&gt; Minimizing data usage if an OS update is needed would b=
e an advantage</p><p class=3D"MsoNormal">&gt; No audio , video, USB or GUI =
is used.</p><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal">You need =
to consider deeper, more fundamental approach, here. The first</p><p class=
=3D"MsoNormal">control you have over the hardware is U-Boot run (boot-loade=
r).</p><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal">In other words=
, you should, using U-Boot (I am assuming you use U-Boot),</p><p class=3D"M=
soNormal">to add functions which explicity disable the next functionality i=
n ARM</p><p class=3D"MsoNormal"><span style=3D"color:rgb(0,0,0)"><font size=
=3D"2"><span style=3D"font-weight:normal"><a href=3D"http://www.ti.com/prod=
uct/am3358"><span style=3D"color:rgb(0,0,0)">(AM335x 1GHz=20
    ARM=C2=AE Cortex-A8):</span> </a><br></span></font></span></p><p class=
=3D"MsoNormal"><font size=3D"2">[1] ALSA HW (some registers in Power Plane =
which will completely disconnect</font></p><p class=3D"MsoNormal"><font siz=
e=3D"2">=C2=A0=C2=A0=C2=A0=C2=A0 ALSA domain);</font></p><p class=3D"MsoNor=
mal"><font size=3D"2">[2] The same for HDMI 720p domain;</font></p><p class=
=3D"MsoNormal"><font size=3D"2">[3] The same for USB</font> domain;</p><p c=
lass=3D"MsoNormal">[4] Whatever HW blocks/domains you really do not use!</p=
><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal"><font size=3D"2">The=
n, you need to minimize Linux driver tree, leaving only what you really use=
:</font></p><p class=3D"MsoNormal">9 axis accelerometer;</p><p class=3D"Mso=
Normal">vibration sensor;</p><p class=3D"MsoNormal">Bluetooth;</p><p class=
=3D"MsoNormal">WiFi;</p><p class=3D"MsoNormal">LTE-M;</p><p class=3D"MsoNor=
mal"> GNSS;</p><p class=3D"MsoNormal"> Power management (through BB I2c); <=
br></p><p class=3D"MsoNormal">GPIO channels (leaving the minimum GPIO usage=
)!</p><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal">I would prefer =
Debian (for number of reasons), but YOCTO is, certainly,</p><p class=3D"Mso=
Normal">the good option too!<br></p><p class=3D"MsoNormal"><br></p><p class=
=3D"MsoNormal">Zoran</p><p class=3D"MsoNormal">_______<br></p></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 2=
0, 2019 at 2:49 AM ChenQi &lt;<a href=3D"mailto:Qi.Chen@windriver.com" targ=
et=3D"_blank">Qi.Chen@windriver.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-711278105346096989gmail-m_1561330982176246946moz=
-cite-prefix">Your main concern is about power usage.
      As long as you are using linux, you might want to do the
      following:<br>
      1) Custom kernel to include drivers that are necessary<br>
      2) Do not install unnecessary packages, do not start unnecessary
      daemons<br>
      The above two could easily be achieved by Yocto.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 02/13/2019 12:49 AM, <a class=3D"gmail-m_-711278105346096989gmail-=
m_1561330982176246946moz-txt-link-abbreviated" href=3D"mailto:andrew.rudd@a=
ktyon.com" target=3D"_blank">andrew.rudd@aktyon.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
     =20
      <div class=3D"gmail-m_-711278105346096989gmail-m_1561330982176246946W=
ordSection1">
        <p class=3D"MsoNormal">Hello,<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">I=E2=80=99m looking to evaluate the general
          purpose/utility of a custom build Yocto embedded OS. I=E2=80=99m
          trying to get my head around the benefits of using such an OS.
          I=E2=80=99m sure it=E2=80=99s on case by case basis so let me pro=
vide my
          background and requirements.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Background/requirements<u></u><u></u></p>
        <p class=3D"MsoNormal">Currently using Debian OS on my prototype
          build based on a Beaglebone green wireless. <u></u><u></u></p>
        <p class=3D"MsoNormal">Custom software is constructed in java.<u></=
u><u></u></p>
        <p class=3D"MsoNormal">System utilizes 9 axis accelerometer,
          vibration sensor, Bluetooth, WiFi, LTE-M, GNSS, power
          management (through BB I2c and GPIO channels)<u></u><u></u></p>
        <p class=3D"MsoNormal">It runs on a battery and solar.<u></u><u></u=
></p>
        <p class=3D"MsoNormal">Power usage is important. Standby is used
          and still needs to listen for vibration sensor, Bluetooth and
          LTE-m cellular events.<u></u><u></u></p>
        <p class=3D"MsoNormal">Only constrained by power usage and data
          usage. Processor or memory usage are unconstrained except for
          in relation to power usage.<u></u><u></u></p>
        <p class=3D"MsoNormal">Minimizing data usage if an OS update is
          needed would be an advantage. <u></u><u></u></p>
        <p class=3D"MsoNormal">No audio , video, USB or GUI is used.<u></u>=
<u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">So would there be a significant benefit
          seen by using a custom Yocto build or would a GUIless version
          of Debian be just as effective? Also considering Buildroot if
          that would be just as effective and simpler to execute. If
          anyone has any other thoughts or concerns I would love to
          discuss. Thank you for your time.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Thank you,<u></u><u></u></p>
        <p class=3D"MsoNormal">Andrew Rudd<u></u><u></u></p>
        <p class=3D"MsoNormal">President, Aktyon<u></u><u></u></p>
        <p class=3D"MsoNormal">352-256-8086<u></u><u></u></p>
        <p class=3D"MsoNormal"><a href=3D"mailto:Andrew.Rudd@Aktyon.com" ta=
rget=3D"_blank"><span style=3D"color:blue">Andrew.Rudd@Aktyon.com</span></a=
><u></u><u></u></p>
        <p class=3D"MsoNormal"><img style=3D"width: 2.3958in; height: 0.583=
3in;" id=3D"gmail-m_-711278105346096989gmail-m_1561330982176246946Picture_x=
0020_1" src=3D"cid:16909bcb7bac204bfcc1" alt=3D"AktyonLogoAndFontSignature"=
 width=3D"230" height=3D"56" border=3D"0"><u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
      </div>
      <br>
      <fieldset class=3D"gmail-m_-711278105346096989gmail-m_156133098217624=
6946mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000b1631105824e6f18--
