Subject: Re: populate_sdk couldn't create the SDK installer for my image #sdk
To: yocto@lists.yoctoproject.org
From: "Robert Varga" <robert.varga@getinge.com>
X-Originating-Location: Ulm, Baden-Württemberg, DE (217.240.134.124)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Jun 2020 00:55:37 -0700
References: <d924ce04-1a8c-b064-f736-3f348a9ed273@gmail.com>
In-Reply-To: <d924ce04-1a8c-b064-f736-3f348a9ed273@gmail.com>
Message-ID: <31688.1592898937532607361@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IUvvR6Tpk02bgVqFo14O"

--IUvvR6Tpk02bgVqFo14O
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The hint regarding bitbake -e showed me the right direction... Within creat=
e_shar() function, sed is being called with the SDK_TITLE variable among ot=
hers. Examination of the SDK_TITLE variable showed that it contained a " *'=
* " (SDK_TITLE=3D"Rob *'* s Linux Distro") which seems to cause the issue. =
So I removed the " *'* " within the SDK_TITLE and now it works fine.
Thank you very much for your hints.
--
Rob

--IUvvR6Tpk02bgVqFo14O
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The hint regarding bitbake -e showed me the right direction... Within creat=
e_shar() function, sed is being called with the SDK_TITLE variable among ot=
hers. Examination of the SDK_TITLE variable showed that it contained a " <s=
trong>'</strong> " (SDK_TITLE=3D"Rob<strong>'</strong>s Linux Distro") whic=
h seems to cause the issue. So I removed the " <strong>'</strong> " within =
the SDK_TITLE and now it works fine.<br />Thank you very much for your hint=
s.<br />-- <br />Rob

--IUvvR6Tpk02bgVqFo14O--
