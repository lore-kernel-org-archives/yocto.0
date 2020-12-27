Subject: Re: Error during do_install for linux-libc-headers_5.8 recipe during 'bitbake core-image-minimal'
To: yocto@lists.yoctoproject.org
From: matthias.rampke@googlemail.com
X-Originating-Location: Berlin, Land Berlin, DE (87.154.222.189)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 27 Dec 2020 11:42:59 -0800
References: <4430.1609097094568670186@lists.yoctoproject.org>
In-Reply-To: <4430.1609097094568670186@lists.yoctoproject.org>
Message-ID: <9239.1609098179883791636@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uHoUNW4Wx40mJEFb8hHk"

--uHoUNW4Wx40mJEFb8hHk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

One more thing: I tried reverting the linux-libc-headers version change (57=
d5f4ad410d4e9d55bdd9734bf5ab8fa6667a53) and that fails in the same way, so =
it's not that.

I also realized that the yocto-3.2 tag does not include the 3.2.1 updates;=
 however the same issue happens on 3.2.1 as well.

I will try to bisect this but it seems like it will take a long time since=
 I need to wipe the tmp directory at every step.

/MR

--uHoUNW4Wx40mJEFb8hHk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

One more thing: I tried reverting the linux-libc-headers version change (57=
d5f4ad410d4e9d55bdd9734bf5ab8fa6667a53) and that fails in the same way, so =
it's not that.<br /><br />I also realized that the yocto-3.2 tag does not i=
nclude the 3.2.1 updates; however the same issue happens on 3.2.1 as well.<=
br /><br />I will try to bisect this but it seems like it will take a long =
time since I need to wipe the tmp directory at every step.<br /><br />/MR

--uHoUNW4Wx40mJEFb8hHk--
