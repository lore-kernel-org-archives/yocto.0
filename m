Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5C6FE00D19; Sat, 16 Dec 2017 23:14:22 -0800 (PST)
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
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB074E00AB0
	for <yocto@yoctoproject.org>; Sat, 16 Dec 2017 23:14:21 -0800 (PST)
Received: by mail-pf0-f176.google.com with SMTP id j28so8408309pfk.8
	for <yocto@yoctoproject.org>; Sat, 16 Dec 2017 23:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=f5Tb7oW4kGXK8NdpIR/YfouCBfCQUpXhrHLrn+cztLY=;
	b=vLPCbgUu32bNqdbnTMKqjcQfbTmuM8tSY1xJMfbxP2DIxyg+tDLTlill/BGaW/wyOy
	gKtG0ZfEPX/8sQBw7ywP17+DALbpe/GJTbcX1SmJKefPdJz/yBuzO0ht+37ysWY2shLt
	NZrIIKTFMfVe5eMZ2KFz4EJswsjHgWKfguTMOCnSu4p47fXW3Z/TgXiXSf316Hy6srtS
	Vj2PaGpiDqmhMFD4R/TlMXKS+0bhjTtRCW3K9Zekb+5cPy/G2OoKQrNVv00WO3jZhxsu
	YgN+hRGguk0I+TgPt8iTSMvs9MM7xkPzo8s4f8k5sBxj7lb9La8VTfuG/QfEA+bmrzFn
	mfsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=f5Tb7oW4kGXK8NdpIR/YfouCBfCQUpXhrHLrn+cztLY=;
	b=XG4+VCwwdaai5wVDqw/ascUeBeUY0RnnznvwEqVTonRzqDw0y2eZIWfPtFNMvBFaEH
	Bbhz6si3pl90syW1nw0jHI9S+Q6xBbYAU8NK7hc78bzzXU8QRjYpyHpXppxlOrwxxtlK
	mGVYCL5FSPLMQ+yjAg3Ku87J6zFggJ72QDWrsgW4gbOfSBEVaKU4D6oJDbDu9YPZ8TQs
	aSynMBhfEhwt+a30HKKWdsI14PaQd9AMI6qqhAvwczFDpAYaMAhjAbRYeJoE2sqlxwaS
	YEQcUvc8edhxFH07SM2MIbUgTWS6h883cqv0sp2d1mQX2nMGrDUF0n5Z9Sd5dXYKMX4g
	L7HQ==
X-Gm-Message-State: AKGB3mJMU1enratd2kBylK5KzZnoplDJHx3KG00qMzkQ9CDoYxI/BtgA
	ML6+fd/FNAkv/+oBaEog7cQZEulxZnM610yMBJhsTA==
X-Google-Smtp-Source: ACJfBotmgWip/IR73sMMuDor6JltMDT8IZP/rbwlX3aBm9gZMLShqg3PG29iWP3DuJzgdAmxbQvi2NSOxdp/cHobmjU=
X-Received: by 10.98.32.21 with SMTP id g21mr18667880pfg.52.1513494861010;
	Sat, 16 Dec 2017 23:14:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sat, 16 Dec 2017 23:14:20 -0800 (PST)
In-Reply-To: <CAPb0b+OE=VyVhhjBEXwCNqB8Y-vdwEP-6RknF1YbGULPkiK=Vw@mail.gmail.com>
References: <CAPb0b+OoUvTRRAO-ViEkEt=qnERAyZ9X+mnQxkExH22eCuvGVw@mail.gmail.com>
	<e944b29f-9264-89a4-aae8-a47d8d4a7e9e@windriver.com>
	<CAPb0b+OiKcY_EZk8L_B=qmJ=2QPzwTZu4XRRp6xw_cymdjaQqg@mail.gmail.com>
	<42d8e64b-91e3-da84-de52-48d907bf1104@windriver.com>
	<CAPb0b+OE=VyVhhjBEXwCNqB8Y-vdwEP-6RknF1YbGULPkiK=Vw@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sun, 17 Dec 2017 08:14:20 +0100
Message-ID: <CAPb0b+OKjtZvzfPaGupwgv0WF_XjtDMytCTr9nv_mUh_K+_ecg@mail.gmail.com>
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
X-List-Received-Date: Sun, 17 Dec 2017 07:14:22 -0000
Content-Type: multipart/alternative; boundary="001a11476aa28f5ba3056083fbe8"

--001a11476aa28f5ba3056083fbe8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi Dengke,

i could go one step further, as i told you there is a firmware that has to
be written to the chip to change the speed
I copied the following files from raspbian

copied from raspbian
/lib/firmware/*
/lib/firmware/br*/*
usr/bin/hciattach  -> this is a newer version
usr/bin/hcitool

I gave the  hciattach command ->
    bcm43xx_ini
    flash firmware /lib/firmware/BCM32320A1.hcd
    Set Controller UART speed to 921600 bit/s
    Device Setup Complete

Ctrl+c


as you see, i got device setup complete but there was no feedback from the
command and i was not on the command line, so i made ctrl+c
since then i get now time out when i give hciattach again ..

but when i start the raspbian, it works normally, it seems for me there is
something else to do to initialize it now.

regards,
Sherif

On Sat, Dec 16, 2017 at 11:29 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> I tried to duplicate at the least the same error and followed what the
> colleague mentioned in the link
>
> here is my configuration in local.conf
>
> CORE_IMAGE_EXTRA_INSTALL +=3D " rsync "
> #sensorhub -> still need to be downloaded
> IMAGE_INSTALL_append +=3D "nodejs nodejs-npm bluez5 networkmanager
> linux-firmware-bcm43430"
> # config systemd" -> no config found. Lets use system V for now
> IMAGE_INSTALL_append +=3D " crda i2c-tools hostapd linux-firmware-bcm4343=
0
> linux-firmware-ralink linux-firmware-rtl8192ce linux-firmware-rtl8192cu
> linux-firmware-rtl8192su wireless-tools dhcp-client iw wpa-supplicant"
> DISTRO_FEATURES_append +=3D " bluez5 bluetooth wifi systemd"
>
>
>
>
> my results so far: the folder etc/firmware is missing.
>
> hciattach  - n /dev ....
> bcm43xx_init
> can not open directory '/etc/firmware' no file or directory
>
>
>
> On Fri, Dec 15, 2017 at 7:00 AM, Dengke Du <dengke.du@windriver.com>
> wrote:
>
>>
>>
>> On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 13:55, Sherif Omran wrote:
>>
>> when i do hciattach, i get initialization timeout.
>>
>>
>> This is a bug for initialization timeout:
>>
>>     https://github.com/agherzan/meta-raspberrypi/issues/148
>>
>> Sometimes it works, sometimes it would not work. Still need research on
>> it.
>>
>> could it be a branch related?
>>
>>
>> Not branch related.
>>
>> I am using the morty branch
>> meta-yocto-bsp: morty
>> meta-raspberrypi: morty
>>
>>
>> On Fri, Dec 15, 2017 at 6:30 AM, Dengke Du <dengke.du@windriver.com>
>> wrote:
>>
>>> You should attach the bluez stack with the raspberry firmware bcm43xx:
>>>
>>>     hciattact -n /dev/ttyAMA0 bcm43xx 921600 noflow -
>>>
>>> or if you use systemd:
>>>
>>>     systemctl restart brcm43438.service
>>>
>>> Now you can see the the device:
>>>
>>>     rfkill list all
>>>
>>> Enable it:
>>>
>>>     rfkill unblock all
>>>
>>>     hciconfig hci0 up
>>>
>>> Checking the bluetooth:
>>>
>>>     hciconfig -a
>>>
>>> On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 12:43, Sherif Omran wrote:
>>>
>>> hello
>>>
>>> i ve been strugggeling since couple of days with raspberry pi 0 board
>>> and can not figure out how to enable the chip, whether it is enabled by
>>> default or it needs some intervention. I generated the rpi-basic-image =
and
>>> tested with the hiconfigure -a but the chip is not detected.
>>>
>>> Any body had similar issue and got it to solve?
>>>
>>>
>>>
>>>
>>
>>
>

--001a11476aa28f5ba3056083fbe8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>hi Dengke,<br><br></div=
>i could go one step further, as i told you there is a firmware that has to=
 be written to the chip to change the speed <br></div>I copied the followin=
g files from raspbian<br><br>copied from raspbian <br>/lib/firmware/*<br>/l=
ib/firmware/br*/*<br>usr/bin/hciattach=C2=A0 -&gt; this is a newer version<=
br>usr/bin/hcitool=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><br>I gave the=C2=A0 h=
ciattach command -&gt;<br>=C2=A0=C2=A0=C2=A0 bcm43xx_ini<br>=C2=A0=C2=A0=C2=
=A0 flash firmware /lib/firmware/BCM32320A1.hcd<br>=C2=A0=C2=A0=C2=A0 Set C=
ontroller UART speed to 921600 bit/s<br>=C2=A0=C2=A0=C2=A0 Device Setup Com=
plete<br><br>Ctrl+c<br><br><br></div>as you see, i got device setup complet=
e but there was no feedback from the command and i was not on the command l=
ine, so i made ctrl+c<br></div>since then i get now time out when i give hc=
iattach again ..<br><br></div>but when i start the raspbian, it works norma=
lly, it seems for me there is something else to do to initialize it now.<br=
><br></div>regards,<br></div>Sherif<br></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Sat, Dec 16, 2017 at 11:29 AM, Sherif Omran =
<span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=
=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr"><div><div><div>I tried to duplicate at =
the least the same error and followed what the colleague mentioned in the l=
ink<br><br></div>here is my configuration in local.conf<br><br>CORE_IMAGE_E=
XTRA_INSTALL +=3D &quot; rsync &quot;<br>#sensorhub -&gt; still need to be =
downloaded<br>IMAGE_INSTALL_append +=3D &quot;nodejs nodejs-npm bluez5 netw=
orkmanager linux-firmware-bcm43430&quot;<br># config systemd&quot; -&gt; no=
 config found. Lets use system V for now<br>IMAGE_INSTALL_append +=3D &quot=
; crda i2c-tools hostapd linux-firmware-bcm43430 linux-firmware-ralink linu=
x-firmware-rtl8192ce linux-firmware-rtl8192cu linux-firmware-rtl8192su wire=
less-tools dhcp-client iw wpa-supplicant&quot;<br>DISTRO_FEATURES_append +=
=3D &quot; bluez5 bluetooth wifi systemd&quot;<br><br><br><br><br></div>my =
results so far: the folder etc/firmware is missing.<br><br></div><div>hciat=
tach=C2=A0 - n /dev .... <br></div><div>bcm43xx_init<br></div><div>can not =
open directory &#39;/etc/firmware&#39; no file or directory<br><br><br></di=
v></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On Fri, Dec 15, 2017 at 7:00 AM, Dengke Du <=
span dir=3D"ltr">&lt;<a href=3D"mailto:dengke.du@windriver.com" target=3D"_=
blank">dengke.du@windriver.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><span>
    <br>
    <br>
    <div class=3D"m_-3172265992085223685m_7546131904444986684moz-cite-prefi=
x">On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 13:55, Sherif Omran
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
    =C2=A0=C2=A0=C2=A0 <a class=3D"m_-3172265992085223685m_7546131904444986=
684moz-txt-link-freetext" href=3D"https://github.com/agherzan/meta-raspberr=
ypi/issues/148" target=3D"_blank">https://github.com/agherzan/me<wbr>ta-ras=
pberrypi/issues/148</a><br>
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
                <div class=3D"m_-3172265992085223685m_7546131904444986684h5=
"> <br>
                  <div class=3D"m_-3172265992085223685m_7546131904444986684=
m_5036739186136312151moz-cite-prefix">On
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
                    <fieldset class=3D"m_-3172265992085223685m_754613190444=
4986684m_5036739186136312151mimeAttachmentHeader"></fieldset>
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

--001a11476aa28f5ba3056083fbe8--
