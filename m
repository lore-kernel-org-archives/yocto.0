Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D436E00D19; Sun, 17 Dec 2017 00:24:45 -0800 (PST)
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
	*      [209.85.160.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f47.google.com (mail-pl0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BBDCE00AB0
	for <yocto@yoctoproject.org>; Sun, 17 Dec 2017 00:24:43 -0800 (PST)
Received: by mail-pl0-f47.google.com with SMTP id z5so2994816plo.10
	for <yocto@yoctoproject.org>; Sun, 17 Dec 2017 00:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=A6rBXIloa3IHFrM+T8V2TgqiezT0OiNs6re1qgpgWEY=;
	b=DHErFyQXQ4NgpA7+Br7YWUc9rQ3njSZEfJHi1pdAIw5hmeLeAbogi/QGW7Xof44o5N
	HgkpaBztY/r4l1fcL+c+CPGrid/rxj96mVSW5qQbuAj8W/L3ghDTuXriWUZYBUtqo2Wq
	LgptoN6PUzOWLNHdNxsuEJu6PpPkWoIZzAGnBPbAeARwX15h4ehS+mdTr19MJsIXQLy3
	y6qVEnOdhs6XTFCVbiOW9InvRcLLitYYtXwwAnDGDBYU/dMPHW60xwP6BfSQfPTvj0Fo
	EQK94I9QcXa2iQimOcf3PIQ1a2f/hKVPSBAlHcmycQewbjDYPT1i+MuIS6C2SYbuEqqq
	D+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=A6rBXIloa3IHFrM+T8V2TgqiezT0OiNs6re1qgpgWEY=;
	b=cY5BiI+Bc/r8K6l7CafjaglEL6ysYWbB8kpmMKqt38eoXp5r7qWbtRRvx7qh5RaDJm
	Wg+ElU9lSgB066KE3LqN9ZF49EB1imedpAsz6TAxoyc+QAhLsTnOV8Uo9iBxPhZV2NXy
	eOXp1Rr/zSVJHGndLVOSlPjPBEVVc6JFn7b1opzaP9HwATsIRrvHEit349ZQszk7EU2t
	3Q6xHM/hTgcUbsT4oXWLqGwA+C8uGYs1z30YVEX+uQu+uANgnX43z0ISFTUHdpGuIJKu
	uzOG/KYhP8evCnk1M4z8GGldH4wIVfRWVvghdlfMAG3r03q60hcXmkAc8giw5t2gg5bk
	KLPg==
X-Gm-Message-State: AKGB3mI+emTJDaj7o3bFaUhW4JcAusH+FDBBNSuPuM25FlwqB9E7jZsx
	tOtdGsFu3lz7/UTnySu9ikDczdUXEAmJko1TQRg=
X-Google-Smtp-Source: ACJfBovuxp59RfC4HKB2F+UTtHH7bTCOzVy0WIkagU0o3zISAy8YPVeGSvQzitNJ/sBUI9eXG4yVBuHFZGBlYHO8eMo=
X-Received: by 10.159.198.76 with SMTP id y12mr19025930plt.257.1513499083333; 
	Sun, 17 Dec 2017 00:24:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sun, 17 Dec 2017 00:24:42 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sun, 17 Dec 2017 09:24:42 +0100
Message-ID: <CAPb0b+PExeiE3WX16aRPRO=Q3QrNF_YGCM6=rEWLQP75zinjoQ@mail.gmail.com>
To: Dengke Du <dengke.du@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Bluetooth binding timeout cause ..
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
X-List-Received-Date: Sun, 17 Dec 2017 08:24:45 -0000
Content-Type: multipart/alternative; boundary="089e0825c8103aea24056084f709"

--089e0825c8103aea24056084f709
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

the timeout problem is from the noflow syntax. The problem cause is the
generation of the bluetooth BDADDR (IP) to be used

I rebooted the machine and tried the following :

this syntax causes timeout:
hciattach /dev/ttyAMA0 bcm43xx 921600 noflow -

this syntax binds well, inspired by Raspbian:
hciattach /dev/ttyAMA0 bcm43xx 3000000 flow  - b8:27:eb:c2:e4:41



On Sun, Dec 17, 2017 at 9:06 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> i got it now working ..
> remove the -n in the hciattach command and use 3000000 as speed. This is
> what raspbian is using.
> but this means that there are missing drivers that were needed ..
>
> On Sun, Dec 17, 2017 at 8:14 AM, Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>
>> hi Dengke,
>>
>> i could go one step further, as i told you there is a firmware that has
>> to be written to the chip to change the speed
>> I copied the following files from raspbian
>>
>> copied from raspbian
>> /lib/firmware/*
>> /lib/firmware/br*/*
>> usr/bin/hciattach  -> this is a newer version
>> usr/bin/hcitool
>>
>> I gave the  hciattach command ->
>>     bcm43xx_ini
>>     flash firmware /lib/firmware/BCM32320A1.hcd
>>     Set Controller UART speed to 921600 bit/s
>>     Device Setup Complete
>>
>> Ctrl+c
>>
>>
>> as you see, i got device setup complete but there was no feedback from
>> the command and i was not on the command line, so i made ctrl+c
>> since then i get now time out when i give hciattach again ..
>>
>> but when i start the raspbian, it works normally, it seems for me there
>> is something else to do to initialize it now.
>>
>> regards,
>> Sherif
>>
>> On Sat, Dec 16, 2017 at 11:29 AM, Sherif Omran <sherifomran2000@gmail.co=
m
>> > wrote:
>>
>>> I tried to duplicate at the least the same error and followed what the
>>> colleague mentioned in the link
>>>
>>> here is my configuration in local.conf
>>>
>>> CORE_IMAGE_EXTRA_INSTALL +=3D " rsync "
>>> #sensorhub -> still need to be downloaded
>>> IMAGE_INSTALL_append +=3D "nodejs nodejs-npm bluez5 networkmanager
>>> linux-firmware-bcm43430"
>>> # config systemd" -> no config found. Lets use system V for now
>>> IMAGE_INSTALL_append +=3D " crda i2c-tools hostapd linux-firmware-bcm43=
430
>>> linux-firmware-ralink linux-firmware-rtl8192ce linux-firmware-rtl8192cu
>>> linux-firmware-rtl8192su wireless-tools dhcp-client iw wpa-supplicant"
>>> DISTRO_FEATURES_append +=3D " bluez5 bluetooth wifi systemd"
>>>
>>>
>>>
>>>
>>> my results so far: the folder etc/firmware is missing.
>>>
>>> hciattach  - n /dev ....
>>> bcm43xx_init
>>> can not open directory '/etc/firmware' no file or directory
>>>
>>>
>>>
>>> On Fri, Dec 15, 2017 at 7:00 AM, Dengke Du <dengke.du@windriver.com>
>>> wrote:
>>>
>>>>
>>>>
>>>> On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 13:55, Sherif Omran wrote:
>>>>
>>>> when i do hciattach, i get initialization timeout.
>>>>
>>>>
>>>> This is a bug for initialization timeout:
>>>>
>>>>     https://github.com/agherzan/meta-raspberrypi/issues/148
>>>>
>>>> Sometimes it works, sometimes it would not work. Still need research o=
n
>>>> it.
>>>>
>>>> could it be a branch related?
>>>>
>>>>
>>>> Not branch related.
>>>>
>>>> I am using the morty branch
>>>> meta-yocto-bsp: morty
>>>> meta-raspberrypi: morty
>>>>
>>>>
>>>> On Fri, Dec 15, 2017 at 6:30 AM, Dengke Du <dengke.du@windriver.com>
>>>> wrote:
>>>>
>>>>> You should attach the bluez stack with the raspberry firmware bcm43xx=
:
>>>>>
>>>>>     hciattact -n /dev/ttyAMA0 bcm43xx 921600 noflow -
>>>>>
>>>>> or if you use systemd:
>>>>>
>>>>>     systemctl restart brcm43438.service
>>>>>
>>>>> Now you can see the the device:
>>>>>
>>>>>     rfkill list all
>>>>>
>>>>> Enable it:
>>>>>
>>>>>     rfkill unblock all
>>>>>
>>>>>     hciconfig hci0 up
>>>>>
>>>>> Checking the bluetooth:
>>>>>
>>>>>     hciconfig -a
>>>>>
>>>>> On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 12:43, Sherif Omran wrote:
>>>>>
>>>>> hello
>>>>>
>>>>> i ve been strugggeling since couple of days with raspberry pi 0 board
>>>>> and can not figure out how to enable the chip, whether it is enabled =
by
>>>>> default or it needs some intervention. I generated the rpi-basic-imag=
e and
>>>>> tested with the hiconfigure -a but the chip is not detected.
>>>>>
>>>>> Any body had similar issue and got it to solve?
>>>>>
>>>>>
>>>>>
>>>>>
>>>>
>>>>
>>>
>>
>

--089e0825c8103aea24056084f709
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>the timeout problem is from the noflow syntax. The pr=
oblem cause is the generation of the bluetooth BDADDR (IP) to be used<br><b=
r></div>I rebooted the machine and tried the following :<br><div><br>this s=
yntax causes timeout:<br>hciattach /dev/ttyAMA0 bcm43xx 921600 noflow -<br>=
<br>this syntax binds well, inspired by Raspbian:<br>hciattach /dev/ttyAMA0=
 bcm43xx 3000000 flow=C2=A0 - b8:27:eb:c2:e4:41<br><br><br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Dec 17, 2017 at 9:0=
6 AM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@=
gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>i got it now=
 working .. <br></div>remove the -n in the hciattach command and use 300000=
0 as speed. This is what raspbian is using.<br></div>but this means that th=
ere are missing drivers that were needed .. <br></div><div class=3D"HOEnZb"=
><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Sun, Dec 17, 2017 at 8:14 AM, Sherif Omran <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><div><div><div><div><div><div>hi Dengke,<br><br></div>i could=
 go one step further, as i told you there is a firmware that has to be writ=
ten to the chip to change the speed <br></div>I copied the following files =
from raspbian<br><br>copied from raspbian <br>/lib/firmware/*<br>/lib/firmw=
are/br*/*<br>usr/bin/hciattach=C2=A0 -&gt; this is a newer version<br>usr/b=
in/hcitool=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><br>I gave the=C2=A0 hciattach=
 command -&gt;<br>=C2=A0=C2=A0=C2=A0 bcm43xx_ini<br>=C2=A0=C2=A0=C2=A0 flas=
h firmware /lib/firmware/BCM32320A1.hcd<br>=C2=A0=C2=A0=C2=A0 Set Controlle=
r UART speed to 921600 bit/s<br>=C2=A0=C2=A0=C2=A0 Device Setup Complete<br=
><br>Ctrl+c<br><br><br></div>as you see, i got device setup complete but th=
ere was no feedback from the command and i was not on the command line, so =
i made ctrl+c<br></div>since then i get now time out when i give hciattach =
again ..<br><br></div>but when i start the raspbian, it works normally, it =
seems for me there is something else to do to initialize it now.<br><br></d=
iv>regards,<br></div>Sherif<br></div><div class=3D"m_-6585438958413313471HO=
EnZb"><div class=3D"m_-6585438958413313471h5"><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Sat, Dec 16, 2017 at 11:29 AM, Sherif Omran=
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
v></div><div class=3D"m_-6585438958413313471m_2579498067636292709HOEnZb"><d=
iv class=3D"m_-6585438958413313471m_2579498067636292709h5"><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Fri, Dec 15, 2017 at 7:00 AM, =
Dengke Du <span dir=3D"ltr">&lt;<a href=3D"mailto:dengke.du@windriver.com" =
target=3D"_blank">dengke.du@windriver.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><span>
    <br>
    <br>
    <div class=3D"m_-6585438958413313471m_2579498067636292709m_-31722659920=
85223685m_7546131904444986684moz-cite-prefix">On 2017=E5=B9=B412=E6=9C=8815=
=E6=97=A5 13:55, Sherif Omran
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
    =C2=A0=C2=A0=C2=A0 <a class=3D"m_-6585438958413313471m_2579498067636292=
709m_-3172265992085223685m_7546131904444986684moz-txt-link-freetext" href=
=3D"https://github.com/agherzan/meta-raspberrypi/issues/148" target=3D"_bla=
nk">https://github.com/agherzan/me<wbr>ta-raspberrypi/issues/148</a><br>
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
                <div class=3D"m_-6585438958413313471m_2579498067636292709m_=
-3172265992085223685m_7546131904444986684h5"> <br>
                  <div class=3D"m_-6585438958413313471m_2579498067636292709=
m_-3172265992085223685m_7546131904444986684m_5036739186136312151moz-cite-pr=
efix">On
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
                    <fieldset class=3D"m_-6585438958413313471m_257949806763=
6292709m_-3172265992085223685m_7546131904444986684m_5036739186136312151mime=
AttachmentHeader"></fieldset>
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
</div></div></blockquote></div><br></div></div>

--089e0825c8103aea24056084f709--
