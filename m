Subject: Versioning a recipe based on other recipe
To: yocto@lists.yoctoproject.org
From: "Arthur Pinheiro" <aperronepinheiro@luxoft.com>
X-Originating-Location: Much, North Rhine-Westphalia, DE (62.96.135.139)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 04:40:46 -0800
Message-ID: <vhDU.1579524046808607981.4EFQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dA2v3kReaDW4trsbKF9I"

--dA2v3kReaDW4trsbKF9I
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have plugin where its version is based on the module that defines its int=
erface. For my case, I develop a GStreamer plugin and I would like to versi=
on its packages based on gstreamer1.0 current (1.14.4) recipe version of my=
 poky revision.

The problem is that if I also add the same version number directly in the =
recipe, either by naming my recipe gstreamer-my-plugin_1.14.4.bb or by sett=
ing PV inside the recipe, I will have to update this value every time that =
gstreamer1.0 version is bumped. Often times, a bump in gstreamer1.0's MINOR=
/PATCH number is not likely require an adaptation of my plugin to work with=
 it, but I still would have to change my plugin's PV version just to keep i=
n sync with gstreamer1.0 package naming.

Is there a Yocto way to make a recipe's version use another recipe's versi=
on as part of it? Perhaps using something like=C2=A0getVar('PV'), but I can=
't really tell how hacky would that look especially because I couldn't find=
 any examples of this practice.

--dA2v3kReaDW4trsbKF9I
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have plugin where its version is based on the module that defines its int=
erface. For my case, I develop a GStreamer plugin and I would like to versi=
on its packages based on gstreamer1.0 current (1.14.4) recipe version of my=
 poky revision.<br /><br />The problem is that if I also add the same versi=
on number directly in the recipe, either by naming my recipe gstreamer-my-p=
lugin_1.14.4.bb or by setting PV inside the recipe, I will have to update t=
his value every time that gstreamer1.0 version is bumped. Often times, a bu=
mp in gstreamer1.0's MINOR/PATCH number is not likely require an adaptation=
 of my plugin to work with it, but I still would have to change my plugin's=
 PV version just to keep in sync with gstreamer1.0 package naming.<br /><br=
 />Is there a Yocto way to make a recipe's version use another recipe's ver=
sion as part of it? Perhaps using something like&nbsp;getVar('PV'), but I c=
an't really tell how hacky would that look especially because I couldn't fi=
nd any examples of this practice.

--dA2v3kReaDW4trsbKF9I--
