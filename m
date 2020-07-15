Subject: Re: How to completely uninstall a pre-installed package in Yocto #linux #yocto
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jul 2020 10:24:01 -0700
References: <CAEt6NwrHhg1Bwm9QM7RhSYbB1obk2UXksqq2iTkW=hKtZo8D5A@mail.gmail.com>
In-Reply-To: <CAEt6NwrHhg1Bwm9QM7RhSYbB1obk2UXksqq2iTkW=hKtZo8D5A@mail.gmail.com>
Message-ID: <9229.1594833841050931824@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pDicXAF9ZT77Ddd5ZBgC"

--pDicXAF9ZT77Ddd5ZBgC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

What I did was, ran the following command to see what all gets installed..

bitbake <image> -e |grep -v ^# |grep "^DISTRO_FEATURES=3D\|^IMAGE_FEATURES=
=
=3D"

Then used DISTRO_FEATURES_remove in the local.conf to removed the unnecess=
ary package. Hope this helps.

-=3DSrijan Nandi

--pDicXAF9ZT77Ddd5ZBgC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>What I did was, ran the following command to see what all gets install=
ed..</div>
<div>&nbsp;</div>
<div>bitbake &lt;image&gt; -e |grep -v ^# |grep "^DISTRO_FEATURES=3D\|^IMA=
GE_FEATURES=3D"</div>
<div>&nbsp;</div>
<div>Then used DISTRO_FEATURES_remove in the local.conf to removed the unn=
ecessary package. Hope this helps.<br /><br />-=3DSrijan Nandi</div>

--pDicXAF9ZT77Ddd5ZBgC--
