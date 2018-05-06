Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4E2BE00924; Sun,  6 May 2018 02:01:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F05E00924
	for <yocto@yoctoproject.org>; Sun,  6 May 2018 02:01:31 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id j20so6235736pff.10
	for <yocto@yoctoproject.org>; Sun, 06 May 2018 02:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HB5AD/e1Z83hYKPn5WQ1q+e2MdEmttS37PZ15rBQK6Q=;
	b=RtIGnDBvKJWep98oOPnuKRcIhIavrjaYlgkTooyeGEI4kuBjgY4BcNgj1LBjDlqR91
	AOa0+zTlfsDaMi4rXuNWxvVSEqtsHFKHGVveHfPB75p0T+mCpcdzrAirjEQDocAXO1na
	luoWZMjtvB7N8av73kgpL+o+sOHZy28iJX5Iil8+P0m3wrllL+8Ggdp9S4U7/OFIWtPh
	AEzxo5x6aYMbNIWOtr1WaaKg/F//mJEVEMtjXx+fpq23LcdZzJCOrCcsMUWe+ecZdSYX
	9Xn0sSJVwsX4YymsbQm/UOOXCdzEqSokYFsCfdu2NW/im+5qqv59cvOSRB1WGbY7vQIX
	PY6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HB5AD/e1Z83hYKPn5WQ1q+e2MdEmttS37PZ15rBQK6Q=;
	b=AXXGPaFGAbuXnSSXj6ixmn5aFgsbwrwYV/RdTFKiR9I+rbZ6q/h9BydsJpNn0dOEka
	aGNoGZYlQHiz4oRfOYcwEgbFFoYc9Dqny9A7Zl+zAwvRZhWgWb+RNgOvnWrMqHj2xUlm
	pXZfn2YwyZi8Nf4U3//jXPh0eQW64drwCe2AO/5mXRnUXx7gZ3qqMyT4ktspK4lr7OgA
	CiCAd1YHYIk5AccmKaNBTsGHf9f2Pk7Xmvq9x21qb7Fq+e5TJX2Bo+3LXcpSVdxfZVCX
	+743bykyfYG3wDFOyRAHz1K+NnKJmhpWZ22fG22st3xjzMV42GUrHaa2T/TCHQI/xKkz
	YF+g==
X-Gm-Message-State: ALQs6tA0PKLlf0FR0NzlAimU49PEBxfBXCwELFBDneZCyZbgM2so/+eO
	VT/Qx/rWkHhWM4I9Se8FNJr0NeB2ouuzeMc3v5Ne+w==
X-Google-Smtp-Source: AB8JxZqiTtVL4t/AEA1VdBrumlpHT+OBFe4VFEOAeXbF2kOqzn8xit98tRzh621s6UgxSd5LpLtTyJNkjwBz4SI+DQ4=
X-Received: by 2002:a63:87c6:: with SMTP id
	i189-v6mr26368276pge.2.1525597291123; 
	Sun, 06 May 2018 02:01:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.237.136 with HTTP; Sun, 6 May 2018 02:01:30 -0700 (PDT)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sun, 6 May 2018 11:01:30 +0200
Message-ID: <CAPb0b+MsXPBnGOYxrufzSiKGk+wU=qY42DZVKKuFur+YgCdSxw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [dbus] [meta-raspberrypi] using dbus with system verilog
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
X-List-Received-Date: Sun, 06 May 2018 09:01:33 -0000
Content-Type: multipart/alternative; boundary="0000000000009b99ae056b85cc99"

--0000000000009b99ae056b85cc99
Content-Type: text/plain; charset="UTF-8"

hi
i created an os for raspberry pi 0 w, it uses system v, but dbus does not
start automatically and when i started it using a startup script and
exported its parameters, i still get the following when i start pulseaudio
-vvvv.

Unknown interface org.freedesktop.DBUS.Introspectable

Unknown interface org.bluez.AgentManager1 found

Unknown interface org.bluez.ProfileManager1

Unknown interface org.freedesktop.DBUS.Properties found

Unknown interace org.bluez.Media1 found

Unknown interface org.bluez.NetworkServer1 found



What is the best way to start dbus? should i edit in kernel configuration?

--0000000000009b99ae056b85cc99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hi<br></div>i created an os for raspberry pi 0 w=
, it uses system v, but dbus does not start automatically and when i starte=
d it using a startup script and exported its parameters, i still get the fo=
llowing when i start pulseaudio -vvvv. <br><br>

















<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"gmail-MsoNoteLevel1CxSpFirst"><span style=3D"font-size:8pt;line-heig=
ht:107%" lang=3D"DE">Unknown interface org.freedesktop.DBUS.Introspectable<=
/span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"gmail-MsoNoteLevel1CxSpMiddle"><span style=3D"font-size:8pt;line-hei=
ght:107%" lang=3D"DE">Unknown interface org.bluez.AgentManager1 found</span=
></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"gmail-MsoNoteLevel1CxSpMiddle"><span style=3D"font-size:8pt;line-hei=
ght:107%" lang=3D"DE">Unknown interface org.bluez.ProfileManager1 </span></=
p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"gmail-MsoNoteLevel1CxSpMiddle"><span style=3D"font-size:8pt;line-hei=
ght:107%" lang=3D"DE">Unknown interface org.freedesktop.DBUS.Properties fou=
nd</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"gmail-MsoNoteLevel1CxSpMiddle"><span style=3D"font-size:8pt;line-hei=
ght:107%" lang=3D"DE">Unknown interace org.bluez.Media1 found</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"gmail-MsoNoteLevel1CxSpLast"><span style=3D"font-size:8pt;line-heigh=
t:107%" lang=3D"DE">Unknown interface org.bluez.NetworkServer1 found</span>=
</p><p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;pa=
ge-break-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;=
" class=3D"gmail-MsoNoteLevel1CxSpLast"><span style=3D"font-size:8pt;line-h=
eight:107%" lang=3D"DE"><br></span></p><p style=3D"margin:0cm 0cm 0.0001pt;=
text-indent:0cm;line-height:107%;page-break-after:avoid;font-size:11pt;font=
-family:&quot;Times New Roman&quot;" class=3D"gmail-MsoNoteLevel1CxSpLast">=
<span style=3D"font-size:8pt;line-height:107%" lang=3D"DE"><br></span></p>





What is the best way to start dbus? should i edit in kernel configuration?<=
/div></div>

--0000000000009b99ae056b85cc99--
