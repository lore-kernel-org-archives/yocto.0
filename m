Subject: Re: #yocto do_package error for custom app
To: yocto@lists.yoctoproject.org
From: "Bastien0530" <bastien.gallet-pesenti@pi.esisar.grenoble-inp.fr>
X-Originating-Location: Saint-Privat-des-Vieux, Occitanie, FR (109.19.109.181)
X-Originating-Platform: Linux Firefox 75
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 May 2020 06:05:19 -0700
References: <CAAnfSTuzEbam1UCtrYhWUqnKxP+6duRTShKER9auYcxSbXT_fg@mail.gmail.com>
In-Reply-To: <CAAnfSTuzEbam1UCtrYhWUqnKxP+6duRTShKER9auYcxSbXT_fg@mail.gmail.com>
Message-ID: <9838.1588597519955769955@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Vq2QNpv7tDOLbn8E58D1"

--Vq2QNpv7tDOLbn8E58D1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This file is supposed to be my application.
I tried to run it on my target cible but doesn't work.
I have just resolved the issue, that was a mistake in my makefile, I fixed=
 CC=3DGCC instead of CC?=3DGCC.

Thanks for you answer

--Vq2QNpv7tDOLbn8E58D1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>This file is supposed to be my application.<br />I tried to run it on my=
 target cible but doesn't work.<br />I have just resolved the issue, that w=
as a mistake in my makefile, I fixed CC=3DGCC instead of CC?=3DGCC.<br /><b=
r />Thanks for you answer</p>

--Vq2QNpv7tDOLbn8E58D1--
