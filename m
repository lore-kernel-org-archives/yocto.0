Subject: Re: Adding libgpiod to Yocto Warrior 4.19.35 image?
To: yocto@lists.yoctoproject.org
From: "Scott Whitney" <sdw@inea.com>
X-Originating-Location: Nashua, New Hampshire, US (24.63.67.55)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jul 2020 13:23:25 -0700
References: <DgWj.1595017061230733737.ILXN@lists.yoctoproject.org>
In-Reply-To: <DgWj.1595017061230733737.ILXN@lists.yoctoproject.org>
Message-ID: <9292.1595017405791806988@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I should also note that gpioinfo and other tools from libgpiod run as expec=
ted on the target, and that /usr/lib has libgpiod.so.2 (libgpiod.so.2.1.1) =
in it.
I would also like the header file to be put into the image so that I can b=
uild/run executables using libgpiod on the target.
