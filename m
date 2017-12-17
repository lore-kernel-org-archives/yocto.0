Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EEBAE00D6C; Sun, 17 Dec 2017 00:06:28 -0800 (PST)
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
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E76EDE00CE1
	for <yocto@yoctoproject.org>; Sun, 17 Dec 2017 00:06:05 -0800 (PST)
Received: by mail-pf0-f180.google.com with SMTP id y89so8451341pfk.0
	for <yocto@yoctoproject.org>; Sun, 17 Dec 2017 00:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oFMy+Rc9+WJ5kviIkA6GjlmKYWin3TEczvEAfDla6bc=;
	b=m0BjK4DXwomlrZOQMT9WSlNRY0q9xSh6oWwufzJWh2DlCp4z/ueacawAcbg62VlLRN
	AAoEoDxvGlmYLyLS3Q1Iev/3jqjMIT3QxkR4mY77chrEBIxdjTqXCWmhpCuCg7BIDTfq
	7k6ydAqrQnhYggP/Gx2KfulhFNh/haZn5NGfGhh4b1Fct7RDaxQJhW1lUOOUResmi4ex
	vR9RddMtBtAkJcVOSw764tUvv9FKAiLG4DwPsIYLNHR9NJzEZMV31xwEZ+GmIKv59g73
	N6UuVH7pnwSmm0jw43GS7swi0v9PMmLLZdx2hc9kku6X0giyPv0FVkg18cJKdcAMbBmA
	Ee4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oFMy+Rc9+WJ5kviIkA6GjlmKYWin3TEczvEAfDla6bc=;
	b=cBJ3W4jOKAiw3wIgGjU0aLYmAAqcs3MMghsZpn+ong1rYRzQ4b4IaxFLy68wocxNNL
	Evbv5Om/LnFzYUdi+v73jqludenQ9KottoEj6CqRc1jtJTrSklUC7KAbTqviv6kgL7Qo
	uhxmb3RDZeWBw3xlmNXoIista5KOzm5Jqna8lOok4dN7VEeyoAC1/hi0llh5yEteJbgW
	D0k6SVMWCcGJ8g0zR05c7ww4U886B4cN0/XemXEnIrOT6VMZM8cj+Z1P/BlD24QZ4gqa
	uIELBS/TO+wRwLO/geAIXFFjvcB2kDcz8AA7D2qbej/x0sf84/RYDx3Dq753UBiS0cVU
	B+zA==
X-Gm-Message-State: AKGB3mJ6iRHB67ZLwm9HanLRjhb2pbU3lbNqji1paBwSjIgw2G8w5hSA
	q19bOqH2zGJQFo3dkJ41UD2zb2vGfnfFx8HNpkg=
X-Google-Smtp-Source: ACJfBottPxx7FRYlQgMPQSt7+oJsg4OzBgrAlW1x3ckhRX0V4qOQrjKNYQd/OnDKpJdeKNTf0cHfjZPJCm7BmqobU3s=
X-Received: by 10.99.127.84 with SMTP id p20mr16953816pgn.204.1513497965138;
	Sun, 17 Dec 2017 00:06:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sun, 17 Dec 2017 00:06:04 -0800 (PST)
In-Reply-To: <CAPb0b+OKjtZvzfPaGupwgv0WF_XjtDMytCTr9nv_mUh_K+_ecg@mail.gmail.com>
References: <CAPb0b+OoUvTRRAO-ViEkEt=qnERAyZ9X+mnQxkExH22eCuvGVw@mail.gmail.com>
	<e944b29f-9264-89a4-aae8-a47d8d4a7e9e@windriver.com>
	<CAPb0b+OiKcY_EZk8L_B=qmJ=2QPzwTZu4XRRp6xw_cymdjaQqg@mail.gmail.com>
	<42d8e64b-91e3-da84-de52-48d907bf1104@windriver.com>
	<CAPb0b+OE=VyVhhjBEXwCNqB8Y-vdwEP-6RknF1YbGULPkiK=Vw@mail.gmail.com>
	<CAPb0b+OKjtZvzfPaGupwgv0WF_XjtDMytCTr9nv_mUh_K+_ecg@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sun, 17 Dec 2017 09:06:04 +0100
Message-ID: <CAPb0b+MH4uOPXfC18K8wZ8x3LVqFSr9xMirx1MZ4ca1KGv1frA@mail.gmail.com>
To: Dengke Du <dengke.du@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Bluetooth
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
X-List-Received-Date: Sun, 17 Dec 2017 08:06:28 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b6a90949966056084b45c"

--94eb2c1b6a90949966056084b45c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i got it now working ..
remove the -n in the hciattach command and use 3000000 as speed. This is
what raspbian is using.
but this means that there are missing drivers that were needed ..

On Sun, Dec 17, 2017 at 8:14 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> hi Dengke,
>
> i could go one step further, as i told you there is a firmware that has t=
o
> be written to the chip to change the speed
> I copied the following files from raspbian
>
> copied from raspbian
> /lib/firmware/*
> /lib/firmware/br*/*
> usr/bin/hciattach  -> this is a newer version
> usr/bin/hcitool
>
> I gave the  hciattach command ->
>     bcm43xx_ini
>     flash firmware /lib/firmware/BCM32320A1.hcd
>     Set Controller UART speed to 921600 bit/s
>     Device Setup Complete
>
> Ctrl+c
>
>
> as you see, i got device setup complete but there was no feedback from th=
e
> command and i was not on the command line, so i made ctrl+c
> since then i get now time out when i give hciattach again ..
>
> but when i start the raspbian, it works normally, it seems for me there i=
s
> something else to do to initialize it now.
>
> regards,
> Sherif
>
> On Sat, Dec 16, 2017 at 11:29 AM, Sherif Omran <sherifomran2000@gmail.com=
>
> wrote:
>
>> I tried to duplicate at the least the same error and followed what the
>> colleague mentioned in the link
>>
>> here is my configuration in local.conf
>>
>> CORE_IMAGE_EXTRA_INSTALL +=3D " rsync "
>> #sensorhub -> still need to be downloaded
>> IMAGE_INSTALL_append +=3D "nodejs nodejs-npm bluez5 networkmanager
>> linux-firmware-bcm43430"
>> # config systemd" -> no config found. Lets use system V for now
>> IMAGE_INSTALL_append +=3D " crda i2c-tools hostapd linux-firmware-bcm434=
30
>> linux-firmware-ralink linux-firmware-rtl8192ce linux-firmware-rtl8192cu
>> linux-firmware-rtl8192su wireless-tools dhcp-client iw wpa-supplicant"
>> DISTRO_FEATURES_append +=3D " bluez5 bluetooth wifi systemd"
>>
>>
>>
>>
>> my results so far: the folder etc/firmware is missing.
>>
>> hciattach  - n /dev ....
>> bcm43xx_init
>> can not open directory '/etc/firmware' no file or directory
>>
>>
>>
>> On Fri, Dec 15, 2017 at 7:00 AM, Dengke Du <dengke.du@windriver.com>
>> wrote:
>>
>>>
>>>
>>> On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 13:55, Sherif Omran wrote:
>>>
>>> when i do hciattach, i get initialization timeout.
>>>
>>>
>>> This is a bug for initialization timeout:
>>>
>>>     https://github.com/agherzan/meta-raspberrypi/issues/148
>>>
>>> Sometimes it works, sometimes it would not work. Still need research on
>>> it.
>>>
>>> could it be a branch related?
>>>
>>>
>>> Not branch related.
>>>
>>> I am using the morty branch
>>> meta-yocto-bsp: morty
>>> meta-raspberrypi: morty
>>>
>>>
>>> On Fri, Dec 15, 2017 at 6:30 AM, Dengke Du <dengke.du@windriver.com>
>>> wrote:
>>>
>>>> You should attach the bluez stack with the raspberry firmware bcm43xx:
>>>>
>>>>     hciattact -n /dev/ttyAMA0 bcm43xx 921600 noflow -
>>>>
>>>> or if you use systemd:
>>>>
>>>>     systemctl restart brcm43438.service
>>>>
>>>> Now you can see the the device:
>>>>
>>>>     rfkill list all
>>>>
>>>> Enable it:
>>>>
>>>>     rfkill unblock all
>>>>
>>>>     hciconfig hci0 up
>>>>
>>>> Checking the bluetooth:
>>>>
>>>>     hciconfig -a
>>>>
>>>> On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 12:43, Sherif Omran wrote:
>>>>
>>>> hello
>>>>
>>>> i ve been strugggeling since couple of days with raspberry pi 0 board
>>>> and can not figure out how to enable the chip, whether it is enabled b=
y
>>>> default or it needs some intervention. I generated the rpi-basic-image=
 and
>>>> tested with the hiconfigure -a but the chip is not detected.
>>>>
>>>> Any body had similar issue and got it to solve?
>>>>
>>>>
>>>>
>>>>
>>>
>>>
>>
>

--94eb2c1b6a90949966056084b45c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>i got it now working .. <br></div>remove the -n =
in the hciattach command and use 3000000 as speed. This is what raspbian is=
 using.<br></div>but this means that there are missing drivers that were ne=
eded .. <br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Sun, Dec 17, 2017 at 8:14 AM, Sherif Omran <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><div><div><div><div><div><div><div>hi Dengke,<br><br></div>i could go=
 one step further, as i told you there is a firmware that has to be written=
 to the chip to change the speed <br></div>I copied the following files fro=
m raspbian<br><br>copied from raspbian <br>/lib/firmware/*<br>/lib/firmware=
/br*/*<br>usr/bin/hciattach=C2=A0 -&gt; this is a newer version<br>usr/bin/=
hcitool=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><br>I gave the=C2=A0 hciattach co=
mmand -&gt;<br>=C2=A0=C2=A0=C2=A0 bcm43xx_ini<br>=C2=A0=C2=A0=C2=A0 flash f=
irmware /lib/firmware/BCM32320A1.hcd<br>=C2=A0=C2=A0=C2=A0 Set Controller U=
ART speed to 921600 bit/s<br>=C2=A0=C2=A0=C2=A0 Device Setup Complete<br><b=
r>Ctrl+c<br><br><br></div>as you see, i got device setup complete but there=
 was no feedback from the command and i was not on the command line, so i m=
ade ctrl+c<br></div>since then i get now time out when i give hciattach aga=
in ..<br><br></div>but when i start the raspbian, it works normally, it see=
ms for me there is something else to do to initialize it now.<br><br></div>=
regards,<br></div>Sherif<br></div><div class=3D"HOEnZb"><div class=3D"h5"><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Dec 16, 20=
17 at 11:29 AM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sherif=
omran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><d=
iv>I tried to duplicate at the least the same error and followed what the c=
olleague mentioned in the link<br><br></div>here is my configuration in loc=
al.conf<br><br>CORE_IMAGE_EXTRA_INSTALL +=3D &quot; rsync &quot;<br>#sensor=
hub -&gt; still need to be downloaded<br>IMAGE_INSTALL_append +=3D &quot;no=
dejs nodejs-npm bluez5 networkmanager linux-firmware-bcm43430&quot;<br># co=
nfig systemd&quot; -&gt; no config found. Lets use system V for now<br>IMAG=
E_INSTALL_append +=3D &quot; crda i2c-tools hostapd linux-firmware-bcm43430=
 linux-firmware-ralink linux-firmware-rtl8192ce linux-firmware-rtl8192cu li=
nux-firmware-rtl8192su wireless-tools dhcp-client iw wpa-supplicant&quot;<b=
r>DISTRO_FEATURES_append +=3D &quot; bluez5 bluetooth wifi systemd&quot;<br=
><br><br><br><br></div>my results so far: the folder etc/firmware is missin=
g.<br><br></div><div>hciattach=C2=A0 - n /dev .... <br></div><div>bcm43xx_i=
nit<br></div><div>can not open directory &#39;/etc/firmware&#39; no file or=
 directory<br><br><br></div></div><div class=3D"m_2579498067636292709HOEnZb=
"><div class=3D"m_2579498067636292709h5"><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Fri, Dec 15, 2017 at 7:00 AM, Dengke Du <span di=
r=3D"ltr">&lt;<a href=3D"mailto:dengke.du@windriver.com" target=3D"_blank">=
dengke.du@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><span>
    <br>
    <br>
    <div class=3D"m_2579498067636292709m_-3172265992085223685m_754613190444=
4986684moz-cite-prefix">On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 13:55, Sheri=
f Omran
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>
          <div>
            <div>when i do hciattach, i get initialization timeout.<br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></span>
    This is a bug for initialization timeout:<br>
    <br>
    =C2=A0=C2=A0=C2=A0 <a class=3D"m_2579498067636292709m_-3172265992085223=
685m_7546131904444986684moz-txt-link-freetext" href=3D"https://github.com/a=
gherzan/meta-raspberrypi/issues/148" target=3D"_blank">https://github.com/a=
gherzan/me<wbr>ta-raspberrypi/issues/148</a><br>
    <br>
    Sometimes it works, sometimes it would not work. Still need research
    on it.<span><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>could it be a branch related? <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br></span>
    Not branch related.<span><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>I am using the morty branch<br>
          </div>
          meta-yocto-bsp: morty<br>
        </div>
        meta-raspberrypi: morty<br>
        <br>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Fri, Dec 15, 2017 at 6:30 AM, Dengke
          Du <span dir=3D"ltr">&lt;<a href=3D"mailto:dengke.du@windriver.co=
m" target=3D"_blank">dengke.du@windriver.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
            <div text=3D"#000000" bgcolor=3D"#FFFFFF">
              <p>You should attach the bluez stack with the raspberry
                firmware bcm43xx:</p>
              <p>=C2=A0=C2=A0=C2=A0 hciattact -n /dev/ttyAMA0 bcm43xx 92160=
0 noflow -</p>
              <p>or if you use systemd:</p>
              <p>=C2=A0=C2=A0=C2=A0 systemctl restart brcm43438.service</p>
              <p>Now you can see the the device:</p>
              <p>=C2=A0=C2=A0=C2=A0 rfkill list all</p>
              <p>Enable it:</p>
              <p>=C2=A0=C2=A0=C2=A0 rfkill unblock all</p>
              <p>=C2=A0=C2=A0=C2=A0 hciconfig hci0 up</p>
              <p>Checking the bluetooth:</p>
              <p>=C2=A0=C2=A0=C2=A0 hciconfig -a<br>
              </p>
              <div>
                <div class=3D"m_2579498067636292709m_-3172265992085223685m_=
7546131904444986684h5"> <br>
                  <div class=3D"m_2579498067636292709m_-3172265992085223685=
m_7546131904444986684m_5036739186136312151moz-cite-prefix">On
                    2017=E5=B9=B412=E6=9C=8815=E6=97=A5 12:43, Sherif Omran=
 wrote:<br>
                  </div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">
                      <div>
                        <div>hello<br>
                          <br>
                        </div>
                        i ve been strugggeling since couple of days with
                        raspberry pi 0 board and can not figure out how
                        to enable the chip, whether it is enabled by
                        default or it needs some intervention. I
                        generated the rpi-basic-image and tested with
                        the hiconfigure -a but the chip is not detected.<br=
>
                        <br>
                      </div>
                      Any body had similar issue and got it to solve?<br>
                    </div>
                    <br>
                    <fieldset class=3D"m_2579498067636292709m_-317226599208=
5223685m_7546131904444986684m_5036739186136312151mimeAttachmentHeader"></fi=
eldset>
                    <br>
                  </blockquote>
                  <br>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </span></div>

</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--94eb2c1b6a90949966056084b45c--
