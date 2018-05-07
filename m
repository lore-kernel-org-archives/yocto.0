Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D101EE00A75; Mon,  7 May 2018 05:23:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64FF2E00A0C
	for <yocto@yoctoproject.org>; Mon,  7 May 2018 05:23:16 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id p12so22725811pff.13
	for <yocto@yoctoproject.org>; Mon, 07 May 2018 05:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HL6r3AFnfQOt4ZE8ENzS8x1StW6Jkwm6ypzSszlks0E=;
	b=aTAMLm6ESFS/BM4ZQ11iC8QkiCTLUPClcTJf7rOLGSdRV8S3HylBcXIgaqlRBBWOCz
	c0os2B5GWdGHFb9vJQT7ZlDqzsV2Y22LepHeUzrhHFHsPJ9GhsgEgRTsIVq1yspeGLbn
	wYfqpwV6Qjy/OXcXVUJO/w73od3zuun7TfXt2QpVUGBWx3X/aHiuu++ksH7CLSQ5FTtM
	ESCTcvMVshWZWuSVUZFAo/Liey31JNTcIrtVD8j84IW3rzNr4aRRwwi8C0ktEweagLES
	W+gCur5SUqUQk+DKdw0qmrh9GWIc0cO7dQ6j9iUFDf3H4t8QrDTUyy04Fj9slih6hbHz
	bm2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HL6r3AFnfQOt4ZE8ENzS8x1StW6Jkwm6ypzSszlks0E=;
	b=SmB90pJ3p45K5q0/Iahmh03n3xKeX90VqicXnzJTJf5eMB0A+Y5pxXzdzQdkRTQaW8
	fEQynp6ppt53MbPqp83EtHajYwfMem/W346uXk77H40b2jLkBlqGg8T+bsYohEDRWHIL
	YT52ho6cKu4J3vXeW8gm5NOb7g8wjOvNjtQqaHyXFhvdlkkXMNtwePIohW86/VLIvhyD
	6uxamLbDhgnKmNMtWsj7JBnbGWLXesLHOQmNlQYVpGiRhclIeWF9Sqy4RGZB+2UhnTX9
	6XwMSr5JT5Kzhm132XAwsEUr/oIXovAJkXK4RRP01sd9BhYQ2d1G1qrOweW/N0fzKWy4
	28MQ==
X-Gm-Message-State: ALQs6tB/YjBzsoWhpVk5WOPUFUJLjNkehrT5u/bz7og/CRzh33nPSEZS
	mJAIvG5oZKSAErkKaKSDn093b6oV4LbTrA/r46g=
X-Google-Smtp-Source: AB8JxZoIfaszXF0hcAc+NKs9KML2HrOozjbMIvRMiLG7co1ksozyYsaX810dup9bUiSweeVi8Sa3HdsK4gz8Jo4X7qI=
X-Received: by 2002:a63:87c6:: with SMTP id
	i189-v6mr29224390pge.2.1525695795643; 
	Mon, 07 May 2018 05:23:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.237.136 with HTTP; Mon, 7 May 2018 05:23:15 -0700 (PDT)
In-Reply-To: <CAMKF1sp0kDx5sUhDwkEEs1WMVXum9Bw=mFO22trGZwzW0APShA@mail.gmail.com>
References: <CAPb0b+MsXPBnGOYxrufzSiKGk+wU=qY42DZVKKuFur+YgCdSxw@mail.gmail.com>
	<CAMKF1sp0kDx5sUhDwkEEs1WMVXum9Bw=mFO22trGZwzW0APShA@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Mon, 7 May 2018 14:23:15 +0200
Message-ID: <CAPb0b+PAiLbX8D1+dG3br_TBhbkGWVCXrWArMJYofyEu_y-9ig@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [dbus] [meta-raspberrypi] using dbus with system verilog
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
X-List-Received-Date: Mon, 07 May 2018 12:23:16 -0000
Content-Type: multipart/alternative; boundary="000000000000ef4a80056b9cbb65"

--000000000000ef4a80056b9cbb65
Content-Type: text/plain; charset="UTF-8"

yes, see below, but my problem is with the systemVinit

DISTRO_FEATURES_append += " bluez5 bluez-utils bluetooth wifi alsa"
IMAGE_INSTALL_append += " linux-firmware-bcm43430 bluez5 bridge-utils
wpa-supplicant python-smbus i2c-tools"
DISTRO_FEATURES_append += " ext2 pulseaudio pam usbhost sbc alsa-plugins
${DISTRO_FEATURES_LIBC} "
PACKAGECONFIG_bluez += " --disable-systemd "
IMAGE_INSTALL_append += " bluez5-testtools bluez5-noinst-tools
libasound-module-bluez packagegroup-base-bluetooth "


IMAGE_INSTALL_append= " bluez5 pulseaudio-server libpulsecore sbc
pulseaudio-module-bluetooth-discover pulseaudio-module-bluez5-device
pulseaudio-module-bluez5-discover pulseaudio-$
DISTRO_FEATURES_remove = " x11 "
IMAGE_INSTALL_append= " screen "

On Mon, May 7, 2018 at 12:18 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Sun, May 6, 2018 at 2:02 AM Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>
>> hi
>> i created an os for raspberry pi 0 w, it uses system v, but dbus does not
>> start automatically and when i started it using a startup script and
>> exported its parameters, i still get the following when i start pulseaudio
>> -vvvv.
>>
>> Unknown interface org.freedesktop.DBUS.Introspectable
>>
>> Unknown interface org.bluez.AgentManager1 found
>>
>> Unknown interface org.bluez.ProfileManager1
>>
>> Unknown interface org.freedesktop.DBUS.Properties found
>>
>> Unknown interace org.bluez.Media1 found
>>
>> Unknown interface org.bluez.NetworkServer1 found
>>
>>
> Have you included bluez in image ?
>
>
>>
>> What is the best way to start dbus? should i edit in kernel configuration?
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000ef4a80056b9cbb65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">yes, see below, but my problem is with the systemVinit<br>=
<br>DISTRO_FEATURES_append +=3D &quot; bluez5 bluez-utils bluetooth wifi al=
sa&quot;<br>IMAGE_INSTALL_append +=3D &quot; linux-firmware-bcm43430 bluez5=
 bridge-utils wpa-supplicant python-smbus i2c-tools&quot;<br>DISTRO_FEATURE=
S_append +=3D &quot; ext2 pulseaudio pam usbhost sbc alsa-plugins ${DISTRO_=
FEATURES_LIBC} &quot;<br>PACKAGECONFIG_bluez +=3D &quot; --disable-systemd =
&quot;<br>IMAGE_INSTALL_append +=3D &quot; bluez5-testtools bluez5-noinst-t=
ools libasound-module-bluez packagegroup-base-bluetooth &quot;<br><br><br>I=
MAGE_INSTALL_append=3D &quot; bluez5 pulseaudio-server libpulsecore sbc pul=
seaudio-module-bluetooth-discover pulseaudio-module-bluez5-device pulseaudi=
o-module-bluez5-discover pulseaudio-$<br>DISTRO_FEATURES_remove =3D &quot; =
x11 &quot;<br>IMAGE_INSTALL_append=3D &quot; screen &quot;<br></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, May 7, 2018 at 1=
2:18 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.co=
m" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div><br><div class=3D"gmail_quote"><span class=3D""><=
div dir=3D"auto">On Sun, May 6, 2018 at 2:02 AM Sherif Omran &lt;<a href=3D=
"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div><div>h=
i<br></div>i created an os for raspberry pi 0 w, it uses system v, but dbus=
 does not start automatically and when i started it using a startup script =
and exported its parameters, i still get the following when i start pulseau=
dio -vvvv. <br><br>

















<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-9178613209230605325m_-6315659821394050345gmail-MsoNoteLevel1CxSpF=
irst"><span style=3D"font-size:8pt;line-height:107%" lang=3D"DE">Unknown in=
terface org.freedesktop.DBUS.<wbr>Introspectable</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-9178613209230605325m_-6315659821394050345gmail-MsoNoteLevel1CxSpM=
iddle"><span style=3D"font-size:8pt;line-height:107%" lang=3D"DE">Unknown i=
nterface org.bluez.AgentManager1 found</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-9178613209230605325m_-6315659821394050345gmail-MsoNoteLevel1CxSpM=
iddle"><span style=3D"font-size:8pt;line-height:107%" lang=3D"DE">Unknown i=
nterface org.bluez.ProfileManager1 </span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-9178613209230605325m_-6315659821394050345gmail-MsoNoteLevel1CxSpM=
iddle"><span style=3D"font-size:8pt;line-height:107%" lang=3D"DE">Unknown i=
nterface org.freedesktop.DBUS.<wbr>Properties found</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-9178613209230605325m_-6315659821394050345gmail-MsoNoteLevel1CxSpM=
iddle"><span style=3D"font-size:8pt;line-height:107%" lang=3D"DE">Unknown i=
nterace org.bluez.Media1 found</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-9178613209230605325m_-6315659821394050345gmail-MsoNoteLevel1CxSpL=
ast"><span style=3D"font-size:8pt;line-height:107%" lang=3D"DE">Unknown int=
erface org.bluez.NetworkServer1 found</span></p><p style=3D"margin:0cm 0cm =
0.0001pt;text-indent:0cm;line-height:107%;page-break-after:avoid;font-size:=
11pt;font-family:&quot;Times New Roman&quot;" class=3D"m_-91786132092306053=
25m_-6315659821394050345gmail-MsoNoteLevel1CxSpLast"><span style=3D"font-si=
ze:8pt;line-height:107%" lang=3D"DE"></span></p></div></div></blockquote><d=
iv dir=3D"auto"><br></div></span><div dir=3D"auto">Have you included bluez =
in image ?</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D""><div><div><p style=3D"margin:0cm 0cm 0.0001pt;text-indent:=
0cm;line-height:107%;page-break-after:avoid;font-size:11pt;font-family:&quo=
t;Times New Roman&quot;" class=3D"m_-9178613209230605325m_-6315659821394050=
345gmail-MsoNoteLevel1CxSpLast"><span style=3D"font-size:8pt;line-height:10=
7%" lang=3D"DE"><br></span></p><p style=3D"margin:0cm 0cm 0.0001pt;text-ind=
ent:0cm;line-height:107%;page-break-after:avoid;font-size:11pt;font-family:=
&quot;Times New Roman&quot;" class=3D"m_-9178613209230605325m_-631565982139=
4050345gmail-MsoNoteLevel1CxSpLast"><span style=3D"font-size:8pt;line-heigh=
t:107%" lang=3D"DE"><br></span></p>





What is the best way to start dbus? should i edit in kernel configuration?<=
/div></div></span><span class=3D"HOEnZb"><font color=3D"#888888">
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div></div>
</blockquote></div><br></div>

--000000000000ef4a80056b9cbb65--
