Subject: Re: SSH_AUTH_SOCK unavailable when pulling modules #golang
To: yocto@lists.yoctoproject.org
From: "Sven" <sven@svenschwermer.de>
X-Originating-Location: Trondheim, Trøndelag, NO (84.215.47.26)
X-Originating-Platform: Mac Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 May 2021 22:50:54 -0700
References: <25191.1620279432275274109@lists.yoctoproject.org>
In-Reply-To: <25191.1620279432275274109@lists.yoctoproject.org>
Message-ID: <3359.1620280254403164262@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Adding BB_ORIGENV to do_compile[vardepsexclude] solved the issue. Thanks fo=
r your help!
