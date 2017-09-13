Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93AD9E00CC4; Wed, 13 Sep 2017 10:55:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09914E00CB4
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 10:55:56 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id e199so1363142pfh.3
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 10:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lf1L8NS6+EGIZ8HKWtgYvbt49XkReiSCxj7aGq+AU/E=;
	b=bedLht5K5OSZosjpejMe4Fc31gea5foE08BjBm9+3FpcLS2+JVLanzBhQMPcO9x3Xe
	uUl28zyk/aGdAHEXvC7W1kKAiE6jMDsq4YqLM+twILhLy5xDXRrqqg7yjAEgPJLbQAi1
	xnNsH9LZm/uYJ8FECYJK1Exlny3bDqhl6vKisFDfH2/Aavg8XI/+TjW7KCBIg56Z7DRK
	BnCZ/YTTY4UV/YQ+wii8ncyQx457OUdtF1S0EWrUpjp0qhO1yHXzY9lO6saDKGlvMkr3
	Rj0lizG0uveOXKAdhlx3gAmXnAFmlFe93R7jB28fzhAkeZLAeXZ/BvJaCTN+Dehu6n/X
	EA2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lf1L8NS6+EGIZ8HKWtgYvbt49XkReiSCxj7aGq+AU/E=;
	b=iuGLfkWrd4dnK2wWNNTm1af/Y3ljuOtQ7JUR79yj90TRtyD/djiqjCg00Za2OkNfTc
	svzwGQYbVbUAtD9x6/VEXVgvbEMUDsjqaO0o1WiUlNTfhGgyOrSMrq5Ub4P3xNpvbd3X
	66f9FGlQ5O3Tdtt+flC0Xz+GM+UOo2d2ol+EE3bMPhNmGuDCIqKc/3GzSQ/ZHEx8DsM9
	gzyFZDtmeMUeN3l1Nu4xa1cScOUOUdyjx/zniXHj4a2fsc+qqEjTbvf/BIwnSvuO3Qrp
	B8mrdhPJAp+qC34YFA2DYRK7zgKUyQtuSsM13eQuTxxpQIkFrO1xXEVrH+PHZgLt34wY
	sdFA==
X-Gm-Message-State: AHPjjUjkCbvvq3Yu0nAscWFXzWfCqC5jM41E6K/bOHevXZA7caG5Av5C
	HAlJYyADOaJv9d/xtxZOUpfzb2xKKVh0kt0j634=
X-Google-Smtp-Source: AOwi7QCgzo6PeXWqnT6YMME7QkjYzJpZGYQCIBBkZ2a1ICL0xaUyAmgRBQMcjOe2sq2ipKwg9r63LFCHxjfUVu+qlYo=
X-Received: by 10.84.240.137 with SMTP id z9mr5745202plk.114.1505325356369;
	Wed, 13 Sep 2017 10:55:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.73 with HTTP; Wed, 13 Sep 2017 10:55:25 -0700 (PDT)
In-Reply-To: <49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
References: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
	<49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Sep 2017 10:55:25 -0700
Message-ID: <CAMKF1sp6iZA+0RZ_wM8ZCAWeAd-P2ecmaOA6Z0NMY_7X3L1q7g@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] enable serial communication pi 3
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
X-List-Received-Date: Wed, 13 Sep 2017 17:55:57 -0000
Content-Type: multipart/alternative; boundary="089e0820c4ac234d1e055915dfc3"

--089e0820c4ac234d1e055915dfc3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 13, 2017 at 12:27 AM, Ayoub Zaki <ayoub.zaki@embexus.com> wrote=
:

> I ran into the same problem:
>
> ENABLE_UART =3D "1" is not enough you should also add INSTALL_append=3D "
> rpi-config" to your local.conf and Serial port will be enabled.
>

=E2=80=8Bthis should be automatically pulled in if you built a sdcard image=
.=E2=80=8B



>
> On 12.09.2017 14:09, yahia farghaly wrote:
>
> I have bitbaked rpi-hwup-image for raspberry pi 3 on sd card and connecte=
d
> the serial ports to *usb to ttl device* . i have set the minicom to
> port: /dev/ttyUSB0
> baud rate: 115200
> the image is booting fine and i can see the prompt on the screen but
> cannot see in my serial console using minicom.
> *is serial enabled by default for this image ? *
> i also tried ENABLE_UART =3D "1" in local.conf but doesn't help.
>
> how to enable it ? and what the serial device name with respect to
> raspberry pi
>
> thanks,
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
>
>
>
> =E2=80=8C
>
>
>
> --
>
> Ayoub Zaki
> Embedded Systems Consultant
>
> Vaihinger Str. 2/1
> 71634 Ludwigsburg
>
> e-mail: ayoub.zaki@embexus.com
> Tel: +49176-62901545 <+49%20176%2062901545>https://embexus.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e0820c4ac234d1e055915dfc3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Wed, Sep 13, 2017 at 12:27 AM, Ayoub Zaki <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexu=
s.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I ran into the same problem:<br>
    </p>
    <p>ENABLE_UART =3D &quot;1&quot; is not enough you should also add
      INSTALL_append=3D &quot; rpi-config&quot; to your local.conf and Seri=
al port
      will be enabled.</p></div></blockquote><div><br></div><div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace">=E2=80=8Bthis =
should be automatically pulled in if you built a sdcard image.=E2=80=8B</di=
v><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div text=3D"#0=
00000" bgcolor=3D"#FFFFFF"><div><div class=3D"h5">
    <br>
    <div class=3D"m_-8093970953743212211moz-cite-prefix">On 12.09.2017 14:0=
9, yahia farghaly
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><img class=3D"m_-8093970953743212211mailtrack-img" a=
lt=3D"" style=3D"display:flex" height=3D"0" width=3D"0">I have
        bitbaked=C2=A0rpi-hwup-image for raspberry pi 3 on sd card and
        connected the serial ports to <i>usb to ttl device</i>=C2=A0. i hav=
e
        set the minicom to=C2=A0<br>
        port: /dev/ttyUSB0
        <div>baud rate:=C2=A0115200=C2=A0</div>
        <div>the image is booting fine and i can see the prompt on the
          screen but cannot see in my serial console using minicom.=C2=A0</=
div>
        <div><b>is serial enabled by default for this image ?=C2=A0</b><br =
clear=3D"all">
          <div>i also tried ENABLE_UART =3D &quot;1&quot; in local.conf but=
 doesn&#39;t
            help.=C2=A0</div>
          <div><br>
          </div>
          <div>how to enable it ? and what the serial device name with
            respect to raspberry pi</div>
          <div><br>
          </div>
          <div>thanks,</div>
          <div><br>
          </div>
          -- <br>
          <div class=3D"m_-8093970953743212211gmail_signature">
            <div dir=3D"ltr">
              <div>
                <div dir=3D"ltr"><font style=3D"font-family:Tahoma,sans-ser=
if,Arial,serif,EmojiFont" size=3D"1" color=3D"#777777"><span style=3D"font-=
size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0=
);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:=
16px"></span>
                  <div><font face=3D"Tahoma, sans-serif, Arial, serif,
                      EmojiFont" color=3D"#777777"><span style=3D"font-size=
:13px">Graduated from Faculty of
                        Engineering - Electronics and Communications
                        Department at Cairo University.</span></font><br>
                  </div>
                  <div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,=
Helvetica,sans-serif,serif,EmojiFont;font-size:16px">
                    <div><a href=3D"https://linkedin.com/in/yahiafarghaly" =
rel=3D"noopener noreferrer" target=3D"_blank"><font style=3D"font-family:Ta=
homa,sans-serif,Arial,serif,EmojiFont" size=3D"1"><span style=3D"font-size:=
13px">Linkedin</span></font></a><font style=3D"font-family:Tahoma,sans-seri=
f,Arial,serif,EmojiFont" size=3D"1" color=3D"#777777"><span style=3D"font-s=
ize:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafar=
ghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font style=3D"font-fa=
mily:Tahoma,sans-serif,Arial,serif,EmojiFont" size=3D"1"><span style=3D"fon=
t-size:13px">GitHub</span></font></a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
          <br>
          <br>
          =E2=80=8C</div>
      </div>
      <br>
      <fieldset class=3D"m_-8093970953743212211mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <br>
    </div></div><span class=3D"HOEnZb"><font color=3D"#888888"><pre class=
=3D"m_-8093970953743212211moz-signature" cols=3D"72">--=20

Ayoub Zaki
Embedded Systems Consultant

Vaihinger Str. 2/1
71634 Ludwigsburg

e-mail: <a class=3D"m_-8093970953743212211moz-txt-link-abbreviated" href=3D=
"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a=
>
Tel: <a href=3D"tel:+49%20176%2062901545" value=3D"+4917662901545" target=
=3D"_blank">+49176-62901545</a>
<a class=3D"m_-8093970953743212211moz-txt-link-freetext" href=3D"https://em=
bexus.com" target=3D"_blank">https://embexus.com</a>
</pre>
  </font></span></div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--089e0820c4ac234d1e055915dfc3--
