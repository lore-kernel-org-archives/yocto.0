Subject: Re: How to completely uninstall a pre-installed package in Yocto #linux #yocto
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jul 2020 10:10:23 -0700
References: <CAEt6NwrHhg1Bwm9QM7RhSYbB1obk2UXksqq2iTkW=hKtZo8D5A@mail.gmail.com>
In-Reply-To: <CAEt6NwrHhg1Bwm9QM7RhSYbB1obk2UXksqq2iTkW=hKtZo8D5A@mail.gmail.com>
Message-ID: <5242.1594833023805939735@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="psKbmPA0K8JRlcrtavpu"

--psKbmPA0K8JRlcrtavpu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

What I did was. I ran the following:

bitbake <image> -e |grep -v ^# |grep "^DISTRO_FEATURES=3D\|^IMAGE_FEATURES=
=
=3D"

Then used=C2=A0DISTRO_FEATURES_remove in local.conf to remove the unwanted=
 packages.

-=3DSrijan Nandi

--psKbmPA0K8JRlcrtavpu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

What I did was. I ran the following:<br /><br />
<p lang=3D"en-US" style=3D"caret-color: #000000; color: #000000; margin: 0=
in; font-family: Calibri; font-size: 11pt;">bitbake <em>&lt;image&gt;</em> =
-e |grep -v ^# |grep "^DISTRO_FEATURES=3D\|^IMAGE_FEATURES=3D"<br /><br />T=
hen used&nbsp;DISTRO_FEATURES_remove in local.conf to remove the unwanted p=
ackages.<br /><br />-=3DSrijan Nandi</p>

--psKbmPA0K8JRlcrtavpu--
