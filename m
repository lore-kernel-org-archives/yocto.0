Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EBF9C4167B
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 14:46:43 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.37472.1702478797709765020
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Dec 2023 06:46:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=g+XubFed;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.49, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a22ed5f0440so252131866b.1
        for <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 06:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1702478796; x=1703083596; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l6KbeH3lTlSW4OjqAX9hr8kP2sG9GdaGNCQXGpnkblY=;
        b=g+XubFed2wS/WjPkqCnzkfrCX8aRDYe6OEk8k9sXBrZp9temtlWl9RH4T+j+Wjandz
         4AZxOpZwnvEVnJDA9JFPAvNa4S4WahrVmJ06ix0QFFicMs5NmQLFcRg5fBXn/VDoKArB
         rIz9ecIcEfruCRM1VM9Ku4k7cYpPdBrfh8+U0O51NjWhCxFD0BA2pQK1Oy7w3RRvwMtc
         ebtwuauAQW7kAEk+S6bpeywveDpqGPS61s23acXlVTtZm28nL1SAxUv63wqNmV21jeiy
         N0+bAt+ro0cKPOgI1FOEdBoCApKmsTzqDEdZD2jZEZx5xlSk9K/80uqhgUHL2gu8zPog
         p7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702478796; x=1703083596;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l6KbeH3lTlSW4OjqAX9hr8kP2sG9GdaGNCQXGpnkblY=;
        b=OYmtZ2LKXR8BKL0jKtzLaPU1/b0Jt5KbihJqjDNhTix7yPGpPSm0kszLY1O3dgV3ji
         9eJrexaXo+JGxTGI92/QUlgeQ3A0pONy8Mv4FcyIIfNybMuoZ+t7OZjlNUhKnBESFKCh
         WrI+9pQe5d6Rn66JCHNvpaHQsL0wGEdCoYv5Ul5NTPjFDA3Kp3vP2PUR3e1BcbTN9gkX
         y6AfKSBqkhx8n2fvYYi4AJVo88ukzq0ybo3TbrHjKSed+CtZe0z4mNNXUFMVSQVzpNo1
         1oV3vNuCsdPCHI0+943Gd/wMAe8pDIH55/nIoDUqRCGyJLZChnWGprh7n28q6drCnbw0
         aOrQ==
X-Gm-Message-State: AOJu0YxNEFK010t6lNhw83YITJZv9U+S3NpG6hgSp+j0ySK99iYIyZkL
	4koUwzMOJVDnlAiP6R+0KTsJxUBfUci+rG+x6OlYR8KDIDId5mRJzJg=
X-Google-Smtp-Source: AGHT+IE+zAIl6iz30Uqo0iTVEjGhd0NjCykyMe3qE7lENZVUwNhQPFohPe1bWKjSKNA9geMwSNdM3jrOICjSZAfhDq4=
X-Received: by 2002:a17:906:1009:b0:a19:a19b:422b with SMTP id
 9-20020a170906100900b00a19a19b422bmr2630429ejm.150.1702478795876; Wed, 13 Dec
 2023 06:46:35 -0800 (PST)
MIME-Version: 1.0
References: <ZewZ.1702478385086388932.zVsO@lists.yoctoproject.org>
In-Reply-To: <ZewZ.1702478385086388932.zVsO@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 13 Dec 2023 15:46:10 +0100
Message-ID: <CAEt6NwpmUrk_27o582FxobTkYgPQzucYuw9Ojm1omhXQEvpyfg@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: yocto@lists.yoctoproject.org, renato.mendes.pes@gmail.com
Content-Type: multipart/alternative; boundary="000000000000ddc477060c653bf9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 14:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61878

--000000000000ddc477060c653bf9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Renato,

make sure that wifi is enabled and the required firmware is installed as
outlined in step 7 here:
https://hub.mender.io/t/how-to-configure-networking-using-systemd-in-yocto-=
project/1097
:

DISTRO_FEATURES:append =3D " wifi "
IMAGE_INSTALL:append =3D " linux-firmware-rpidistro-bcm43430 "

Greetz,
Josef

On Wed, Dec 13, 2023 at 3:39=E2=80=AFPM Renato Mendes <renato.mendes.pes@gm=
ail.com>
wrote:

> I've build a Yocto recipe to be used on a Raspberry Pi Zero W, have build
> it and save to a SD Card. My recipe has the following layers:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> meta                  /home/quadfloor/release_1/src/poky/meta   5
> meta-poky             /home/quadfloor/release_1/src/poky/meta-poky  5
> meta-yocto-bsp        /home/quadfloor/release_1/src/poky/meta-yocto-bsp  =
5
> meta-oe
>  /home/quadfloor/release_1/src/meta-openembedded/meta-oe  5
> meta-python
>  /home/quadfloor/release_1/src/meta-openembedded/meta-python  5
> meta-multimedia
>  /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia  5
> meta-networking
>  /home/quadfloor/release_1/src/meta-openembedded/meta-networking  5
> meta-raspberrypi      /home/quadfloor/release_1/src/meta-raspberrypi  9
> meta-mender-core
> /home/quadfloor/release_1/src/meta-mender/meta-mender-core  6
> meta-mender-raspberrypi
> /home/quadfloor/release_1/src/meta-mender/meta-mender-raspberrypi  10
> meta-stargazer        /home/quadfloor/release_1/src/meta-stargazer  6
>
> The meta-stargazer has the custom network configuration:
>
> meta-stargazer/conf$ cat layer.conf
> # We have a conf and classes directory, add to BBPATH
> BBPATH .=3D ":${LAYERDIR}"
>
> # We have recipes-* directories, add to BBFILES
> BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
>             ${LAYERDIR}/recipes-*/*/*.bbappend"
>
> BBFILE_COLLECTIONS +=3D "meta-stargazer"
> BBFILE_PATTERN_meta-stargazer =3D "^${LAYERDIR}/"
> BBFILE_PRIORITY_meta-stargazer =3D "6"
>
> LAYERDEPENDS_meta-stargazer =3D "core"
> LAYERSERIES_COMPAT_meta-stargazer =3D "kirkstone"
>
> meta-stargazer/recipes-core$ cat systemd/systemd_%.bbappend
> PACKAGECONFIG:append =3D " networkd resolved"
> RDEPENDS:${PN}:append =3D " wpa-supplicant "
>
> meta-stargazer/recipes-core$ cat systemd-conf/systemd-conf_%.bbappend
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
>
> SRC_URI +=3D " file://eth.network file://en.network file://wlan.network "
>
> FILES:${PN} +=3D " ${sysconfdir}/systemd/network/eth.network
> ${sysconfdir}/systemd/network/en.network
> ${sysconfdir}/systemd/network/wlan.network "
>
> do_install:append() {
> install -d ${D}${sysconfdir}/systemd/network
> install -m 0644 ${WORKDIR}/eth.network ${D}${sysconfdir}/systemd/network
> install -m 0644 ${WORKDIR}/en.network ${D}${sysconfdir}/systemd/network
> install -m 0644 ${WORKDIR}/wlan.network ${D}${sysconfdir}/systemd/network
> }
>
> meta-stargazer/recipes-core$ cat systemd-conf/files/wlan.network
> [Match]
> Name=3Dwlan*
> KernelCommandLine=3D!nfsroot
>
> [Network]
> DHCP=3Dv4
>
> [DHCPv4]
> UseHostname=3Dfalse
>
> meta-stargazer/recipes-core$ cat systemd-conf/files/en.network
> [Match]
> Name=3Den*
> KernelCommandLine=3D!nfsroot
>
> [Network]
> DHCP=3Dv4
>
> [DHCPv4]
> UseHostname=3Dfalse
>
> meta-stargazer/recipes-core$ cat systemd-conf/files/eth.network
> [Match]
> Name=3Deth*
> KernelCommandLine=3D!nfsroot
>
> [Network]
> DHCP=3Dv4
>
> [DHCPv4]
> UseHostname=3Dfalse
>
>
> When I boot the Raspi, there are no error messages related to wlan in the
> log ("dmesg | cat wlan" shows nothing), but when I issue ifconfig -a, I
> find only the lo interface.
>
> There are several posts on Raspi forum regarding updating the RaspiOS to
> solve that, but I don't know how to handle that on Yocto. I'm stuck with =
no
> network connection so any help is very much appreciated.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61877):
> https://lists.yoctoproject.org/g/yocto/message/61877
> Mute This Topic: https://lists.yoctoproject.org/mt/103150047/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ddc477060c653bf9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Renato,<div><br></div><div>make sure that wifi is enabl=
ed and the required firmware is installed as outlined in step 7 here:=C2=A0=
<a href=3D"https://hub.mender.io/t/how-to-configure-networking-using-system=
d-in-yocto-project/1097">https://hub.mender.io/t/how-to-configure-networkin=
g-using-systemd-in-yocto-project/1097</a>:</div><div><br></div><div>DISTRO_=
FEATURES:append =3D &quot; wifi &quot;<br>IMAGE_INSTALL:append =3D &quot; l=
inux-firmware-rpidistro-bcm43430 &quot;<br></div><div><br></div><div>Greetz=
,</div><div>Josef</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Dec 13, 2023 at 3:39=E2=80=AFPM Renato Mende=
s &lt;<a href=3D"mailto:renato.mendes.pes@gmail.com">renato.mendes.pes@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">I&#39;ve build a Yocto recipe to be used on a Raspberry Pi Zero W, hav=
e build it and save to a SD Card. My recipe has the following layers:<br><b=
r>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div>
<div>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /ho=
me/quadfloor/release_1/src/poky/meta=C2=A0 =C2=A05</div>
<div>meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadflo=
or/release_1/src/poky/meta-poky=C2=A0 5</div>
<div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/quadfloor/release_1/sr=
c/poky/meta-yocto-bsp=C2=A0 5</div>
<div>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/qu=
adfloor/release_1/src/meta-openembedded/meta-oe=C2=A0 5</div>
<div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadfloor/re=
lease_1/src/meta-openembedded/meta-python=C2=A0 5</div>
<div>meta-multimedia=C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadfloor/release_1/sr=
c/meta-openembedded/meta-multimedia=C2=A0 5</div>
<div>meta-networking=C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadfloor/release_1/sr=
c/meta-openembedded/meta-networking=C2=A0 5</div>
<div>meta-raspberrypi=C2=A0 =C2=A0 =C2=A0 /home/quadfloor/release_1/src/met=
a-raspberrypi=C2=A0 9</div>
<div>meta-mender-core=C2=A0 =C2=A0 =C2=A0 /home/quadfloor/release_1/src/met=
a-mender/meta-mender-core=C2=A0 6</div>
<div>meta-mender-raspberrypi=C2=A0 /home/quadfloor/release_1/src/meta-mende=
r/meta-mender-raspberrypi=C2=A0 10</div>
<div>meta-stargazer=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/quadfloor/release_1/sr=
c/meta-stargazer=C2=A0 6<br><br>The meta-stargazer has the custom network c=
onfiguration:<br><br>
<div>meta-stargazer/conf$ cat layer.conf</div>
<div># We have a conf and classes directory, add to BBPATH</div>
<div>BBPATH .=3D &quot;:${LAYERDIR}&quot;</div>
<div>=C2=A0</div>
<div># We have recipes-* directories, add to BBFILES</div>
<div>BBFILES +=3D &quot;${LAYERDIR}/recipes-*/*/*.bb \</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${LAYERDIR}/recipes-*/*/*.bb=
append&quot;</div>
<div>=C2=A0</div>
<div>BBFILE_COLLECTIONS +=3D &quot;meta-stargazer&quot;</div>
<div>BBFILE_PATTERN_meta-stargazer =3D &quot;^${LAYERDIR}/&quot;</div>
<div>BBFILE_PRIORITY_meta-stargazer =3D &quot;6&quot;</div>
<div>=C2=A0</div>
<div>LAYERDEPENDS_meta-stargazer =3D &quot;core&quot;</div>
<div>LAYERSERIES_COMPAT_meta-stargazer =3D &quot;kirkstone&quot;<br><br>
<div>meta-stargazer/recipes-core$ cat systemd/systemd_%.bbappend</div>
<div>PACKAGECONFIG:append =3D &quot; networkd resolved&quot;</div>
<div>RDEPENDS:${PN}:append =3D &quot; wpa-supplicant &quot;<br><br>
<div>meta-stargazer/recipes-core$ cat systemd-conf/systemd-conf_%.bbappend<=
/div>
<div>FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/files:&quot;</div>
<div>=C2=A0</div>
<div>SRC_URI +=3D &quot; file://eth.network file://en.network file://wlan.n=
etwork &quot;</div>
<div>=C2=A0</div>
<div>FILES:${PN} +=3D &quot; ${sysconfdir}/systemd/network/eth.network ${sy=
sconfdir}/systemd/network/en.network ${sysconfdir}/systemd/network/wlan.net=
work &quot;</div>
<div>=C2=A0</div>
<div>do_install:append() {</div>
<div>install -d ${D}${sysconfdir}/systemd/network</div>
<div>install -m 0644 ${WORKDIR}/eth.network ${D}${sysconfdir}/systemd/netwo=
rk</div>
<div>install -m 0644 ${WORKDIR}/en.network ${D}${sysconfdir}/systemd/networ=
k</div>
<div>install -m 0644 ${WORKDIR}/wlan.network ${D}${sysconfdir}/systemd/netw=
ork</div>
<div>}<br><br>
<div>meta-stargazer/recipes-core$ cat systemd-conf/files/wlan.network</div>
<div>[Match]</div>
<div>Name=3Dwlan*</div>
<div>KernelCommandLine=3D!nfsroot</div>
<div>=C2=A0</div>
<div>[Network]</div>
<div>DHCP=3Dv4</div>
<div>=C2=A0</div>
<div>[DHCPv4]</div>
<div>UseHostname=3Dfalse<br><br>
<div>meta-stargazer/recipes-core$ cat systemd-conf/files/en.network</div>
<div>[Match]</div>
<div>Name=3Den*</div>
<div>KernelCommandLine=3D!nfsroot</div>
<div>=C2=A0</div>
<div>[Network]</div>
<div>DHCP=3Dv4</div>
<div>=C2=A0</div>
<div>[DHCPv4]</div>
<div>UseHostname=3Dfalse<br><br>
<div>meta-stargazer/recipes-core$ cat systemd-conf/files/eth.network</div>
<div>[Match]</div>
<div>Name=3Deth*</div>
<div>KernelCommandLine=3D!nfsroot</div>
<div>=C2=A0</div>
<div>[Network]</div>
<div>DHCP=3Dv4</div>
<div>=C2=A0</div>
<div>[DHCPv4]</div>
<div>UseHostname=3Dfalse<br><br><br>When I boot the Raspi, there are no err=
or messages related to wlan in the log (&quot;dmesg | cat wlan&quot; shows =
nothing), but when I issue ifconfig -a, I find only the lo interface.<br><b=
r>There are several posts on Raspi forum regarding updating the RaspiOS to =
solve that, but I don&#39;t know how to handle that on Yocto. I&#39;m stuck=
 with no network connection so any help is very much appreciated.=C2=A0=C2=
=A0</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#61877): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61877" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61877</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103150047/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103150047/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000ddc477060c653bf9--

