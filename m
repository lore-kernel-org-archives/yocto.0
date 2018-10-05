Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF289E00A0A; Fri,  5 Oct 2018 09:26:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
	[209.85.222.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A219AE0053F
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 09:26:44 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id c10so3357544uao.12
	for <yocto@yoctoproject.org>; Fri, 05 Oct 2018 09:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RwN8Lq4lxAXWuwC5qjDtdezn9Yj1hdf2WnrKtPkx37E=;
	b=nJMXkpcukq4R8GG/5w5xEjWcP1yV35deWAubQoKko5TbEQSapWG6SsN3+As90UWvis
	HD518OnQXehAUcwx6BNlYHhDNmLX5ryMR0B4MLJ5K7V5kNkBfI86zaw56k7xb8R+ep4Z
	cSPhlGZ8jf9YbJ+UBqLXUFKAtyoqedC0BiG7axkKmvOGiKGOLook0fKkv599gVyaFfb8
	nLQO7gZ9JSI7VqKhTeZUhLkX4ReCfshTabLhoNZum2j6CVooiLrfAGQrncc460qKiKxF
	UmS1pOkh9pVbSdHPbtitE1ibVv2Y/HS2BVg5i0+frhUULsCzb38RVyl9hkghiAs0PG6L
	ymsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RwN8Lq4lxAXWuwC5qjDtdezn9Yj1hdf2WnrKtPkx37E=;
	b=Z3t/STufdonmys4mH1fcGSTBhMNzZAwUrNqyw998jeCv1QUj2dQHKPeLQvTzLpINNg
	shxXSfHC+6FBZUD/X1k/IphjplF5opl7zPeGzkUeQoCvxQPOUEe3mOq/qzXFYEPlC/IA
	PnNBNPUKnbsV4TwK9h/2Kg3y52yHVW1+GEBlsfsx53OAeDW6U3YvAjw5MJLfmymGg96+
	/XArfxh3CiSV5wv5scnVm2Hzs3TW3qJf3u2aPQBriVKtPDVVWLeUpG05uAmh46v6XRAy
	1LiTVk6O69buW3Zf2GPLKKio6cUt0CM22EASEQHPXck5haZ4Fs3hy81xsIk5bd8T+jBm
	rbrQ==
X-Gm-Message-State: ABuFfohQgGDRxoV6JvHrJ0SzLJatZ25kg/fktdJoTpVxeCGOjQrWQ3+R
	HyphNyCXt9rcXAlel43GjUherLbBbZNkrpBCM7OITw==
X-Google-Smtp-Source: ACcGV60U67sWk8scbbWcUDt0OoNUrTDNN0crsjrfGBaIoR3piRFh99NFo3AQ7BU7t9C8haZvH8C3G2ml3WtaKTlY2yA=
X-Received: by 2002:ab0:2505:: with SMTP id j5mr4964021uan.88.1538756803887;
	Fri, 05 Oct 2018 09:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAFd=ocjm2E-pKH5sDbradN=qsTMYAvcWKyjXa2An-Rnb7MKWwA@mail.gmail.com>
In-Reply-To: <CAFd=ocjm2E-pKH5sDbradN=qsTMYAvcWKyjXa2An-Rnb7MKWwA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 5 Oct 2018 17:25:31 +0100
Message-ID: <CAK18fxFLb2dMSrXJ9PKtsEP60GE7un+VSJvZ==HiAf7PNUCHbQ@mail.gmail.com>
To: markus4dev@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Problem enabling w1-gpio
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
X-List-Received-Date: Fri, 05 Oct 2018 16:26:45 -0000
Content-Type: multipart/alternative; boundary="000000000000b11d6805777dbca9"

--000000000000b11d6805777dbca9
Content-Type: text/plain; charset="UTF-8"

Hi Markus,

On Fri, Oct 5, 2018 at 4:28 PM Markus W <markus4dev@gmail.com> wrote:

> Hi!
>
> I'm creating a yocto image (sumo) for the raspberrypi and got stuck on how
> to enable the one-wire interface on boot.
>
> I have enabled the SPI bus and I2C in my local.conf file.
>
> ENABLE_SPI_BUS = "1"
> ENABLE_I2C = "1"
>
> and checked that they are loaded on boot.
>
> I'm struggling to figure out where to set  "dtoverlay=w1-gpio" and how to
> enable the w1-gpio module on boot. The /boot/config.txt file doesn't exist
> by default after startup. If I create this file with the line above
> directly on the rpi and reboot it, the w1-gpio interface is still not
> enabled.
>

/boot when you run up the image is on the rootfs while the file you are
looking for is in the boot partition. You will need to mount (or set a boot
mount - fstab, systemd etc) the boot partition (p1) and you will see the
file afterwards. Alternatively, just mount the SD card's partitions on your
working station and modify the file offline.

---
Andrei

--000000000000b11d6805777dbca9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Hi Markus,</di=
v><div dir=3D"ltr"><br></div><div dir=3D"ltr">On Fri, Oct 5, 2018 at 4:28 P=
M Markus W &lt;<a href=3D"mailto:markus4dev@gmail.com">markus4dev@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr">Hi!<br><br>I&#39;m creating a yocto image (sumo) for the raspberry=
pi and got stuck on how to enable the one-wire interface on boot.<br><br>I =
have enabled the SPI bus and I2C in my local.conf file.<br><br>ENABLE_SPI_B=
US =3D &quot;1&quot;<br>ENABLE_I2C =3D &quot;1&quot;</div><div dir=3D"ltr">=
<br></div><div dir=3D"ltr">and checked that they are loaded on boot.<br><br=
>I&#39;m struggling to figure out where to set =C2=A0&quot;dtoverlay=3Dw1-g=
pio&quot; and how to enable the w1-gpio module on boot. The /boot/config.tx=
t file doesn&#39;t exist by default after startup. If I create this file wi=
th the line above directly on the rpi and reboot it, the w1-gpio interface =
is still not enabled.<br></div></div></div></div></div></div></blockquote><=
div><br></div><div>/boot when you run up the image is on the rootfs while t=
he file you are looking for is in the boot partition. You will need to moun=
t (or set a boot mount - fstab, systemd etc) the boot partition (p1) and yo=
u will see the file afterwards. Alternatively, just mount the SD card&#39;s=
 partitions on your working station and modify the file offline.</div><div>=
<br></div><div>---</div><div>Andrei</div></div></div>

--000000000000b11d6805777dbca9--
