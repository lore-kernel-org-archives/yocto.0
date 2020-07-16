Subject: Re: How to completely uninstall a pre-installed package in Yocto #linux #yocto
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jul 2020 03:13:54 -0700
References: <CAEt6NwrHhg1Bwm9QM7RhSYbB1obk2UXksqq2iTkW=hKtZo8D5A@mail.gmail.com>
In-Reply-To: <CAEt6NwrHhg1Bwm9QM7RhSYbB1obk2UXksqq2iTkW=hKtZo8D5A@mail.gmail.com>
Message-ID: <13583.1594894434581797554@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TBAVA6ZoM41SIaLqPWbq"

--TBAVA6ZoM41SIaLqPWbq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is what I did. I ran the following:

bitbake <image> -e |grep -v ^# |grep "^DISTRO_FEATURES=3D\|^IMAGE_FEATURES=
=
=3D"

Found out the DISTRO_FEATURES and IMAGE_FEATURES. Thne used=C2=A0DISTRO_FE=
ATURES_remove in the local.conf to remove the features that I do not need. =
Hope this helps.

-=3DSrijan Nandi

--TBAVA6ZoM41SIaLqPWbq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is what I did. I ran the following:<br /><br />
<p lang=3D"en-US" style=3D"caret-color: #000000; color: #000000; margin: 0=
in; font-family: Calibri; font-size: 11pt;">bitbake <em>&lt;image&gt;</em> =
-e |grep -v ^# |grep "^DISTRO_FEATURES=3D\|^IMAGE_FEATURES=3D"<br /><br />F=
ound out the DISTRO_FEATURES and IMAGE_FEATURES. Thne used&nbsp;DISTRO_FEAT=
URES_remove in the local.conf to remove the features that I do not need. Ho=
pe this helps.<br /><br />-=3DSrijan Nandi</p>

--TBAVA6ZoM41SIaLqPWbq--
