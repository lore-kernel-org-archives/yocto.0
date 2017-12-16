Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D020EE00D1C; Sat, 16 Dec 2017 02:29:27 -0800 (PST)
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
	*      [209.85.160.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f42.google.com (mail-pl0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B94EAE00D17
	for <yocto@yoctoproject.org>; Sat, 16 Dec 2017 02:29:26 -0800 (PST)
Received: by mail-pl0-f42.google.com with SMTP id bi12so1935814plb.6
	for <yocto@yoctoproject.org>; Sat, 16 Dec 2017 02:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cGO81YE4zHkhMwXa/bn7FMTFDcyYNEYU2yl+J2gZmpE=;
	b=ivYxSm4xrb+am8dhrrRFm0+q4VutTo78/2JDmP2rgj/IXO16Gs8ZifZtoWODSf9+OY
	pDbmhljvtTn5Sh1MC99gThiE9/MV/0UHXMUxdpNkAAgWhQ2BLPsT8Xh84kDsHuPdgvmb
	omyvZMETsc4URrwMC49h08LFZ/MlEym7WdTmzCxclPcJbrGkMn3VlRx+ux7SSVh9PPfL
	mtaJN81NVZQSdjxsavNtjHtB0m4E0a4jcIQ/l3KJgDDh+dMfD2RYq3wOP2T78LIgrm1k
	geoqfwndob4dBo1eCvrFF4+woGGANVS6W+gJy+FwpeWW61Vrpr17qmum4OVdHnqra5kY
	lVPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cGO81YE4zHkhMwXa/bn7FMTFDcyYNEYU2yl+J2gZmpE=;
	b=c3gPJMsI9oDgy1oUe1qQJ5e7BqK1y+NtaUW8yT6Pm4DpJ/FHie/Pqw08J+KTSkMKlH
	15+1dvnIqJnVSJfZubdmBa+URpqwGWoemSlCUX2xwS0Wte8jUCSgsJR8arNA+xvdRg0Z
	h9x9ytU5vgbZqYnH96eZrUGO+5mWXE6pWstVIHWmBfSjebHY5HAFbttimrgNTMdAZyrW
	gmSQKqmy/0LH1YnXiSf+/sK1FgEYRldRq9C91sF/qm9AcB0eHd58Sp6HMzYdBTAnRrMV
	4vds/h9eg1aTgI1x6fi4hdbvFDwOf/QYfAScmdr3HHjvPoYawDt1ngADpkw7ON7OaM17
	sr0w==
X-Gm-Message-State: AKGB3mJhRhkmRCV3GsEF9P315Ns+8FA1uWPUvPZxRmBYtO4HdO8UVkLx
	KcvlzkgkmskeDNdslBotF7ELTTIcXkjD9docsKY=
X-Google-Smtp-Source: ACJfBottf4JgWaiwfXXZG5kB9z2b7Tfb4kpbkQz9drIZQYWWEUDHY5peIZOTMShMwoF2QiYjsIw+9OnWiVMC+F/ihbk=
X-Received: by 10.159.198.76 with SMTP id y12mr16489296plt.257.1513420165992; 
	Sat, 16 Dec 2017 02:29:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sat, 16 Dec 2017 02:29:25 -0800 (PST)
In-Reply-To: <42d8e64b-91e3-da84-de52-48d907bf1104@windriver.com>
References: <CAPb0b+OoUvTRRAO-ViEkEt=qnERAyZ9X+mnQxkExH22eCuvGVw@mail.gmail.com>
	<e944b29f-9264-89a4-aae8-a47d8d4a7e9e@windriver.com>
	<CAPb0b+OiKcY_EZk8L_B=qmJ=2QPzwTZu4XRRp6xw_cymdjaQqg@mail.gmail.com>
	<42d8e64b-91e3-da84-de52-48d907bf1104@windriver.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sat, 16 Dec 2017 11:29:25 +0100
Message-ID: <CAPb0b+OE=VyVhhjBEXwCNqB8Y-vdwEP-6RknF1YbGULPkiK=Vw@mail.gmail.com>
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
X-List-Received-Date: Sat, 16 Dec 2017 10:29:27 -0000
Content-Type: multipart/alternative; boundary="089e0825c81063d7ee0560729740"

--089e0825c81063d7ee0560729740
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I tried to duplicate at the least the same error and followed what the
colleague mentioned in the link

here is my configuration in local.conf

CORE_IMAGE_EXTRA_INSTALL +=3D " rsync "
#sensorhub -> still need to be downloaded
IMAGE_INSTALL_append +=3D "nodejs nodejs-npm bluez5 networkmanager
linux-firmware-bcm43430"
# config systemd" -> no config found. Lets use system V for now
IMAGE_INSTALL_append +=3D " crda i2c-tools hostapd linux-firmware-bcm43430
linux-firmware-ralink linux-firmware-rtl8192ce linux-firmware-rtl8192cu
linux-firmware-rtl8192su wireless-tools dhcp-client iw wpa-supplicant"
DISTRO_FEATURES_append +=3D " bluez5 bluetooth wifi systemd"




my results so far: the folder etc/firmware is missing.

hciattach  - n /dev ....
bcm43xx_init
can not open directory '/etc/firmware' no file or directory



On Fri, Dec 15, 2017 at 7:00 AM, Dengke Du <dengke.du@windriver.com> wrote:

>
>
> On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 13:55, Sherif Omran wrote:
>
> when i do hciattach, i get initialization timeout.
>
>
> This is a bug for initialization timeout:
>
>     https://github.com/agherzan/meta-raspberrypi/issues/148
>
> Sometimes it works, sometimes it would not work. Still need research on i=
t.
>
> could it be a branch related?
>
>
> Not branch related.
>
> I am using the morty branch
> meta-yocto-bsp: morty
> meta-raspberrypi: morty
>
>
> On Fri, Dec 15, 2017 at 6:30 AM, Dengke Du <dengke.du@windriver.com>
> wrote:
>
>> You should attach the bluez stack with the raspberry firmware bcm43xx:
>>
>>     hciattact -n /dev/ttyAMA0 bcm43xx 921600 noflow -
>>
>> or if you use systemd:
>>
>>     systemctl restart brcm43438.service
>>
>> Now you can see the the device:
>>
>>     rfkill list all
>>
>> Enable it:
>>
>>     rfkill unblock all
>>
>>     hciconfig hci0 up
>>
>> Checking the bluetooth:
>>
>>     hciconfig -a
>>
>> On 2017=E5=B9=B412=E6=9C=8815=E6=97=A5 12:43, Sherif Omran wrote:
>>
>> hello
>>
>> i ve been strugggeling since couple of days with raspberry pi 0 board an=
d
>> can not figure out how to enable the chip, whether it is enabled by defa=
ult
>> or it needs some intervention. I generated the rpi-basic-image and teste=
d
>> with the hiconfigure -a but the chip is not detected.
>>
>> Any body had similar issue and got it to solve?
>>
>>
>>
>>
>
>

--089e0825c81063d7ee0560729740
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I tried to duplicate at the least the same =
error and followed what the colleague mentioned in the link<br><br></div>he=
re is my configuration in local.conf<br><br>CORE_IMAGE_EXTRA_INSTALL +=3D &=
quot; rsync &quot;<br>#sensorhub -&gt; still need to be downloaded<br>IMAGE=
_INSTALL_append +=3D &quot;nodejs nodejs-npm bluez5 networkmanager linux-fi=
rmware-bcm43430&quot;<br># config systemd&quot; -&gt; no config found. Lets=
 use system V for now<br>IMAGE_INSTALL_append +=3D &quot; crda i2c-tools ho=
stapd linux-firmware-bcm43430 linux-firmware-ralink linux-firmware-rtl8192c=
e linux-firmware-rtl8192cu linux-firmware-rtl8192su wireless-tools dhcp-cli=
ent iw wpa-supplicant&quot;<br>DISTRO_FEATURES_append +=3D &quot; bluez5 bl=
uetooth wifi systemd&quot;<br><br><br><br><br></div>my results so far: the =
folder etc/firmware is missing.<br><br></div><div>hciattach=C2=A0 - n /dev =
.... <br></div><div>bcm43xx_init<br></div><div>can not open directory &#39;=
/etc/firmware&#39; no file or directory<br><br><br></div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Dec 15, 2017 at 7:0=
0 AM, Dengke Du <span dir=3D"ltr">&lt;<a href=3D"mailto:dengke.du@windriver=
.com" target=3D"_blank">dengke.du@windriver.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><span class=3D"">
    <br>
    <br>
    <div class=3D"m_7546131904444986684moz-cite-prefix">On 2017=E5=B9=B412=
=E6=9C=8815=E6=97=A5 13:55, Sherif Omran
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
    =C2=A0=C2=A0=C2=A0 <a class=3D"m_7546131904444986684moz-txt-link-freete=
xt" href=3D"https://github.com/agherzan/meta-raspberrypi/issues/148" target=
=3D"_blank">https://github.com/agherzan/<wbr>meta-raspberrypi/issues/148</a=
><br>
    <br>
    Sometimes it works, sometimes it would not work. Still need research
    on it.<span class=3D""><br>
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
    Not branch related.<span class=3D""><br>
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
                <div class=3D"m_7546131904444986684h5"> <br>
                  <div class=3D"m_7546131904444986684m_5036739186136312151m=
oz-cite-prefix">On
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
                    <fieldset class=3D"m_7546131904444986684m_5036739186136=
312151mimeAttachmentHeader"></fieldset>
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

--089e0825c81063d7ee0560729740--
