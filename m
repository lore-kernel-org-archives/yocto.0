Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9EEFE00C62; Wed, 13 Sep 2017 01:07:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6BCFE00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:07:20 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id t10so15298692vke.0
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vjLPGoMIBY8OxFvosfErWMd4LsnA6bpOI2vUbtzzEkQ=;
	b=cD70AM0qIycRg5402fsv24RvH+wLakbzm5IXdd9IttiI/m99Nh5h9FjtE5lZ5y8MTl
	8VyT+G+/TXIoQpT6O7ok938GOQbdg2RgwbsxmoYK4TBagUdgOwE7uI6Lhq7lk6yd45oq
	sfkrIyH104ddQYiGHa9fHz8pwCaSTvpHc0PLFg4IlGUouLoo8/ywxM3xqOsYtHaliazN
	fR5xoTllK1SZAWQ01GWuJGuEuBx8YbEGdfJuAV7bCL1ZraHfitwvXbBLV57tFRLh2WKo
	4anNGEq9LISaVj0yToAf7Ono9KnwJFcpIm84QW2YLqNZz4KIUkXwPaC8JVQ4PcT42i2+
	fUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vjLPGoMIBY8OxFvosfErWMd4LsnA6bpOI2vUbtzzEkQ=;
	b=SeU5F8ea4jww5l2QhRDHIlw/i7Sp1R1uANDZZqYYWevG5kuuBu5xjEM5Od61WWhSBY
	aKPB+pqfxwLxRSA8DKuq3+dKieVdojW9VazeVBh9m6g9k720syFqe03QVQqW/iuRhPJO
	eWFMWBN7eiPuEM25OfMo4M91/4WmoQpiAMRvyDjKwc4G6FcGZ2ersYZGWD3iCPfbC6ZC
	Xp18ndfovuhwaT/xCXadrESfoTGkafATp3fd9GjtJoiazjUqSJ8zmhWnZSNa8SW1q197
	fKKBb2Y8GARM4s+tu0gUWvOamzXnsPRSwzttI1uGXYHlmkihD/Ny82g94ZYKzV1kcs9S
	ZhYg==
X-Gm-Message-State: AHPjjUj3D0E5MLKnOVDQj3PsML2g0DjDHa+QleaCkv5B+DBhc0bm+g6i
	sn8P6gqW76XIHk9QJjrLBw6D9uayfvbKShiJKrw=
X-Google-Smtp-Source: AOwi7QDVGaCEr/I23C9Faj9dOnNythEH+3x+NLAiUwu73GUcursQ6m7b6mNp39rOBxczW6x+UrIKiqYa+60UDod87AI=
X-Received: by 10.31.147.204 with SMTP id v195mr12799817vkd.137.1505290039794; 
	Wed, 13 Sep 2017 01:07:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Wed, 13 Sep 2017 01:07:19 -0700 (PDT)
In-Reply-To: <CABFXn3F24cswmw2R0C-CN_+-UJSQ_360U7Cke0Pq9+0tX2=+3A@mail.gmail.com>
References: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
	<49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
	<CABFXn3F24cswmw2R0C-CN_+-UJSQ_360U7Cke0Pq9+0tX2=+3A@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 13 Sep 2017 10:07:19 +0200
Message-ID: <CAC+thW0EPdn057n+Ff9ZOW8meqqA8UFDgFCMxY=7cK9pdQdUHA@mail.gmail.com>
To: yahia farghaly <yahiafarghaly@gmail.com>
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
X-List-Received-Date: Wed, 13 Sep 2017 08:07:21 -0000
Content-Type: multipart/alternative; boundary="001a1140f77c1b214705590da6df"

--001a1140f77c1b214705590da6df
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 13, 2017 at 10:04 AM, yahia farghaly <yahiafarghaly@gmail.com>
wrote:

>
> Thanks for replying but it gives me this error log
>
>
>> *ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Unable to install packages.
>> Command
>> '/yocto/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-ima=
ge/1.0-r0/recipe-sysroot-native/usr/bin/apt-get
>>  install --force-yes --allow-unauthenticated run-postinsts
>> packagegroup-core-boot kernel-modules rpi-config' returned 100:*
>> *Reading package lists...*
>> *Building dependency tree...*
>> *Reading state information...*
>> *Package rpi-config is not available, but is referred to by another
>> package.*
>> *This may mean that the package is missing, has been obsoleted, or**is
>> only available from another source*
>> *E: Package 'rpi-config' has no installation candidate*
>>
>> *ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Function failed: do_rootfs*
>> *ERROR: Logfile of failure stored in:
>> /yocto/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-imag=
e/1.0-r0/temp/log.do_rootfs.2252**ERROR:
>> Task
>> (/yocto/poky/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb:do_r=
ootfs)
>> failed with exit code '1'*
>
>
> All what i did is  IMAGE_INSTALL_append =3D "rpi-config" , the recipe fil=
e
> is not exist in the meta-raspberry
>

You missed the space before rpi-config from the original suggestion in
IMAGE_INSTALL_append. This is always required when overriding variables
with _append


>
> =E2=80=8C
>
> On 13 September 2017 at 09:27, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:
>
>> I ran into the same problem:
>>
>> ENABLE_UART =3D "1" is not enough you should also add INSTALL_append=3D =
"
>> rpi-config" to your local.conf and Serial port will be enabled.
>>
>> On 12.09.2017 14:09, yahia farghaly wrote:
>>
>> I have bitbaked rpi-hwup-image for raspberry pi 3 on sd card and
>> connected the serial ports to *usb to ttl device* . i have set the
>> minicom to
>> port: /dev/ttyUSB0
>> baud rate: 115200
>> the image is booting fine and i can see the prompt on the screen but
>> cannot see in my serial console using minicom.
>> *is serial enabled by default for this image ? *
>> i also tried ENABLE_UART =3D "1" in local.conf but doesn't help.
>>
>> how to enable it ? and what the serial device name with respect to
>> raspberry pi
>>
>> thanks,
>>
>> --
>> Yahia Farghaly
>> Graduated from Faculty of Engineering - Electronics and Communications
>> Department at Cairo University.
>> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>> <https://github.com/yahiafarghaly>
>>
>>
>>
>> =E2=80=8C
>>
>>
>>
>> --
>>
>> Ayoub Zaki
>> Embedded Systems Consultant
>>
>> Vaihinger Str. 2/1
>> 71634 Ludwigsburg
>>
>> e-mail: ayoub.zaki@embexus.com
>> Tel: +49176-62901545 <+49%20176%2062901545>https://embexus.com
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1140f77c1b214705590da6df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Sep 13, 2017 at 10:04 AM, yahia farghaly <span dir=3D"ltr">&lt;=
<a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank">yahiafarghaly@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><img class=3D"gmail-m_-7843972840442536946mailt=
rack-img" alt=3D"" style=3D"display: flex;" src=3D"https://mailtrack.io/tra=
ce/mail/027c421977ea17e38f572949e240e49ee044b458.png?u=3D1822760" width=3D"=
0" height=3D"0"><br>Thanks for replying but it gives me this error log<div>=
<br></div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><i>ERROR: =
rpi-hwup-image-1.0-r0 do_rootfs: Unable to install packages. Command &#39;/=
yocto/poky/build/tmp/work/<wbr>raspberrypi3-poky-linux-<wbr>gnueabi/rpi-hwu=
p-image/1.0-r0/<wbr>recipe-sysroot-native/usr/bin/<wbr>apt-get =C2=A0instal=
l --force-yes --allow-unauthenticated run-postinsts packagegroup-core-boot =
kernel-modules rpi-config&#39; returned 100:<br></i><i>Reading package list=
s...<br></i><i>Building dependency tree...<br></i><i>Reading state informat=
ion...<br></i><i>Package rpi-config is not available, but is referred to by=
 another package.<br></i><i>This may mean that the package is missing, has =
been obsoleted, or<br></i><i>is only available from another source</i><i><b=
r></i><i>E: Package &#39;rpi-config&#39; has no installation candidate</i><=
i><br></i><i>ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Function failed: do_ro=
otfs<br></i><i>ERROR: Logfile of failure stored in: /yocto/poky/build/tmp/w=
ork/<wbr>raspberrypi3-poky-linux-<wbr>gnueabi/rpi-hwup-image/1.0-r0/<wbr>te=
mp/log.do_rootfs.2252<br></i><i>ERROR: Task (/yocto/poky/meta-raspberrypi/<=
wbr>recipes-core/images/rpi-hwup-<wbr>image.bb:do_rootfs) failed with exit =
code &#39;1&#39;</i></blockquote><div><br></div>All what i did is =C2=A0IMA=
GE_INSTALL_append =3D &quot;rpi-config&quot; , the recipe file is not exist=
 in the meta-raspberry=C2=A0<br></div></div></blockquote><div><br></div><di=
v>You missed the space before rpi-config from the original suggestion in IM=
AGE_INSTALL_append. This is always required when overriding variables with =
_append<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div><br>=E2=80=8C</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote"><div><div class=3D"gmail-h5">On 13=
 September 2017 at 09:27, Ayoub Zaki <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a>&gt;<=
/span> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div><div class=3D"gmail-h5">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>I ran into the same problem:<br>
    </p>
    <p>ENABLE_UART =3D &quot;1&quot; is not enough you should also add
      INSTALL_append=3D &quot; rpi-config&quot; to your local.conf and Seri=
al port
      will be enabled.</p>
    <br>
    <div class=3D"gmail-m_-7843972840442536946m_-7550513121790960194moz-cit=
e-prefix">On 12.09.2017 14:09, yahia farghaly
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><img class=3D"gmail-m_-7843972840442536946m_-7550513=
121790960194mailtrack-img" alt=3D"" style=3D"display: flex;" width=3D"0" he=
ight=3D"0">I have
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
          <div>thanks,</div><span class=3D"gmail-m_-7843972840442536946HOEn=
Zb"><font color=3D"#888888">
          <div><br>
          </div>
          -- <br>
          <div class=3D"gmail-m_-7843972840442536946m_-7550513121790960194g=
mail_signature">
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
          =E2=80=8C</font></span></div><span class=3D"gmail-m_-784397284044=
2536946HOEnZb"><font color=3D"#888888">
      </font></span></div><span class=3D"gmail-m_-7843972840442536946HOEnZb=
"><font color=3D"#888888">
      <br>
      <fieldset class=3D"gmail-m_-7843972840442536946m_-7550513121790960194=
mimeAttachmentHeader"></fieldset>
      <br>
    </font></span></blockquote><span class=3D"gmail-m_-7843972840442536946H=
OEnZb"><font color=3D"#888888">
    <br>
    <pre class=3D"gmail-m_-7843972840442536946m_-7550513121790960194moz-sig=
nature" cols=3D"72">--=20

Ayoub Zaki
Embedded Systems Consultant

Vaihinger Str. 2/1
71634 Ludwigsburg

e-mail: <a class=3D"gmail-m_-7843972840442536946m_-7550513121790960194moz-t=
xt-link-abbreviated" href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blan=
k">ayoub.zaki@embexus.com</a>
Tel: <a href=3D"tel:+49%20176%2062901545" value=3D"+4917662901545" target=
=3D"_blank">+49176-62901545</a>
<a class=3D"gmail-m_-7843972840442536946m_-7550513121790960194moz-txt-link-=
freetext" href=3D"https://embexus.com" target=3D"_blank">https://embexus.co=
m</a>
</pre>
  </font></span></div>

<br></div></div><span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"gmail-"><br><br clear=
=3D"all"><div><br></div>-- <br><div class=3D"gmail-m_-7843972840442536946gm=
ail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font style=3D"font-f=
amily:Tahoma,sans-serif,Arial,serif,EmojiFont" size=3D"1" color=3D"#777777"=
><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span sty=
le=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif=
,EmojiFont;font-size:16px"></span><div><font face=3D"Tahoma, sans-serif, Ar=
ial, serif, EmojiFont" color=3D"#777777"><span style=3D"font-size:13px">Gra=
duated from Faculty of Engineering - Electronics and Communications Departm=
ent at Cairo University.</span></font><br></div><div style=3D"color:rgb(0,0=
,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-siz=
e:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noope=
ner noreferrer" target=3D"_blank"><font style=3D"font-family:Tahoma,sans-se=
rif,Arial,serif,EmojiFont" size=3D"1"><span style=3D"font-size:13px">Linked=
in</span></font></a><font style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont" size=3D"1" color=3D"#777777"><span style=3D"font-size:13px">=
=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafarghaly" rel=
=3D"noopener noreferrer" target=3D"_blank"><font style=3D"font-family:Tahom=
a,sans-serif,Arial,serif,EmojiFont" size=3D"1"><span style=3D"font-size:13p=
x">GitHub</span></font></a></div></div></div></div></div></div>
</span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--001a1140f77c1b214705590da6df--
