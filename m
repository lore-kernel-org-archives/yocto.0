Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3BA9E00A39; Sun,  6 May 2018 15:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95936E009B9
	for <yocto@yoctoproject.org>; Sun,  6 May 2018 15:18:36 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id p9-v6so15948455pgc.9
	for <yocto@yoctoproject.org>; Sun, 06 May 2018 15:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=k3S1G9aVWwoPwTg2kUiRiHi6lmnxtH8e3ZKsF7C3wqg=;
	b=ZTzO/edVjR2P341f36lNcTgZ+yHQeBB7Ifw/mNe5ppOZqhutYTMA01EOSAVmCyPmfV
	AmHTFrkEQJltAnpUNNLvZhhkDI67TdfJTV/fuJq67gPd2o12TcgP2pkzNDjZD/bJNBHd
	SkBz9vBfTz+Az2khDqKrLoi3bsW5lT0JbsEAqsD3EVsdMYvo9QB/Xhg0c4P1tpUeFodb
	FTm5BfJUZL4YGfb8QCQJNCr59CsYfQj1VieTBgKx0eFs1NRkJ6fGJbBAn8lEgCb3Hbyr
	a2anALRDpjHyFHtGV7ziS4h6eu3WqgnNg69sKwF29MeCOaimzLMuLdsfgUGSYTLzsu09
	cwcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=k3S1G9aVWwoPwTg2kUiRiHi6lmnxtH8e3ZKsF7C3wqg=;
	b=tclC2OEf2AJkLPnWyF+qdn0SAN1vbd3Tshdg3spwXA1V+/lIjWywI05QFNCW+FMoC4
	hYXcYsMwpUtxDfGtQw7aJYQ0Geb0PrJwY7c7QzAeHPywoN2yJGE/daZaMrLvFuApunhi
	hINTIGGzUrSkuuuLfqxQXGNlV7OvlzSt79G6P+Nox14/wlg183/tavm5yJ/jGLNEqlYZ
	dAHtf3CnuKFyZ/12DRXsLadN+5sV6Qwu5B8z2NZppVO5MnlaJuc7BL5FHW7mQUfvhc+s
	tE/y5NOlbPXxZqwY9Eb5NFigpz3jsHR2gDjJG+Z24xz3U3+rCzujajNUX7RHwVC0jnJR
	QJPQ==
X-Gm-Message-State: ALQs6tAVG7llZjoFeJRdng32t2UDmnEkGEL/M9+cGfk/mKHsry5ZkoV3
	WE1VqMY1HU7x35mRpPWMb7kZdTrL/nIw6rjAbnE=
X-Google-Smtp-Source: AB8JxZoqnxrXSQGLDHc32Hr8+LFP3+acRKYBEyqoL7fESpDtbc4u5B++HmV9qYkhedfhVn1xmtNidtqesOuMHPHgRV0=
X-Received: by 10.98.91.2 with SMTP id p2mr26321994pfb.96.1525645115558; Sun,
	06 May 2018 15:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAPb0b+MsXPBnGOYxrufzSiKGk+wU=qY42DZVKKuFur+YgCdSxw@mail.gmail.com>
In-Reply-To: <CAPb0b+MsXPBnGOYxrufzSiKGk+wU=qY42DZVKKuFur+YgCdSxw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 06 May 2018 22:18:24 +0000
Message-ID: <CAMKF1sp0kDx5sUhDwkEEs1WMVXum9Bw=mFO22trGZwzW0APShA@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
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
X-List-Received-Date: Sun, 06 May 2018 22:18:37 -0000
Content-Type: multipart/alternative; boundary="94eb2c12370c2a8f68056b90efb3"

--94eb2c12370c2a8f68056b90efb3
Content-Type: text/plain; charset="UTF-8"

On Sun, May 6, 2018 at 2:02 AM Sherif Omran <sherifomran2000@gmail.com>
wrote:

> hi
> i created an os for raspberry pi 0 w, it uses system v, but dbus does not
> start automatically and when i started it using a startup script and
> exported its parameters, i still get the following when i start pulseaudio
> -vvvv.
>
> Unknown interface org.freedesktop.DBUS.Introspectable
>
> Unknown interface org.bluez.AgentManager1 found
>
> Unknown interface org.bluez.ProfileManager1
>
> Unknown interface org.freedesktop.DBUS.Properties found
>
> Unknown interace org.bluez.Media1 found
>
> Unknown interface org.bluez.NetworkServer1 found
>
>
Have you included bluez in image ?


>
> What is the best way to start dbus? should i edit in kernel configuration?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c12370c2a8f68056b90efb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Sun, May 6, 2018 a=
t 2:02 AM Sherif Omran &lt;<a href=3D"mailto:sherifomran2000@gmail.com">she=
rifomran2000@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div><div><div>hi<br></div>i created an os for raspberry pi 0 w, it uses=
 system v, but dbus does not start automatically and when i started it usin=
g a startup script and exported its parameters, i still get the following w=
hen i start pulseaudio -vvvv. <br><br>

















<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-6315659821394050345gmail-MsoNoteLevel1CxSpFirst"><span style=3D"f=
ont-size:8pt;line-height:107%" lang=3D"DE">Unknown interface org.freedeskto=
p.DBUS.Introspectable</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-6315659821394050345gmail-MsoNoteLevel1CxSpMiddle"><span style=3D"=
font-size:8pt;line-height:107%" lang=3D"DE">Unknown interface org.bluez.Age=
ntManager1 found</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-6315659821394050345gmail-MsoNoteLevel1CxSpMiddle"><span style=3D"=
font-size:8pt;line-height:107%" lang=3D"DE">Unknown interface org.bluez.Pro=
fileManager1 </span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-6315659821394050345gmail-MsoNoteLevel1CxSpMiddle"><span style=3D"=
font-size:8pt;line-height:107%" lang=3D"DE">Unknown interface org.freedeskt=
op.DBUS.Properties found</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-6315659821394050345gmail-MsoNoteLevel1CxSpMiddle"><span style=3D"=
font-size:8pt;line-height:107%" lang=3D"DE">Unknown interace org.bluez.Medi=
a1 found</span></p>

<p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-height:107%;page-b=
reak-after:avoid;font-size:11pt;font-family:&quot;Times New Roman&quot;" cl=
ass=3D"m_-6315659821394050345gmail-MsoNoteLevel1CxSpLast"><span style=3D"fo=
nt-size:8pt;line-height:107%" lang=3D"DE">Unknown interface org.bluez.Netwo=
rkServer1 found</span></p><p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0=
cm;line-height:107%;page-break-after:avoid;font-size:11pt;font-family:&quot=
;Times New Roman&quot;" class=3D"m_-6315659821394050345gmail-MsoNoteLevel1C=
xSpLast"><span style=3D"font-size:8pt;line-height:107%" lang=3D"DE"></span>=
</p></div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">=
Have you included bluez in image ?</div><div dir=3D"auto"><br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div><div><p style=3D"margin:0cm 0cm 0.0001pt;text-=
indent:0cm;line-height:107%;page-break-after:avoid;font-size:11pt;font-fami=
ly:&quot;Times New Roman&quot;" class=3D"m_-6315659821394050345gmail-MsoNot=
eLevel1CxSpLast"><span style=3D"font-size:8pt;line-height:107%" lang=3D"DE"=
><br></span></p><p style=3D"margin:0cm 0cm 0.0001pt;text-indent:0cm;line-he=
ight:107%;page-break-after:avoid;font-size:11pt;font-family:&quot;Times New=
 Roman&quot;" class=3D"m_-6315659821394050345gmail-MsoNoteLevel1CxSpLast"><=
span style=3D"font-size:8pt;line-height:107%" lang=3D"DE"><br></span></p>





What is the best way to start dbus? should i edit in kernel configuration?<=
/div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c12370c2a8f68056b90efb3--
