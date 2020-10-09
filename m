Subject: Re: KeyError: 'getpwuid(): uid not found: 1000' during package nativesdk-glibc-locale #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: "Catalin Crenguta" <catalin.crenguta@gmail.com>
X-Originating-Location: Bucharest, Bucuresti, RO (213.177.23.244)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 09 Oct 2020 08:44:31 -0700
References: <Iw4x.1580687037399983441.B3JT@lists.yoctoproject.org>
In-Reply-To: <Iw4x.1580687037399983441.B3JT@lists.yoctoproject.org>
Message-ID: <8281.1602258271030133730@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HP1ddtguZ0pQCJxMPwS2"

--HP1ddtguZ0pQCJxMPwS2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

You should try a clean-up and then retry to build the package.
I wrongly thought that that this error: ```Exception: KeyError: 'getpwuid(=
): uid not found: 1000'```
was due to the fact that I was working in a rootless container environment=
 (podman).

This worked in my case:
```
bitbake -c cleanall nativesdk-glibc-locale
bitbake nativesdk-glibc-locale
```

C Crenguta

--HP1ddtguZ0pQCJxMPwS2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, <br /><br />You should try a clean-up and then retry to build the packa=
ge. <br />I wrongly thought that that this error: ```Exception: KeyError: '=
getpwuid(): uid not found: 1000'``` <br />was due to the fact that I was wo=
rking in a rootless container environment (podman).<br /><br /><br />This w=
orked in my case:<br />```<br />bitbake -c cleanall nativesdk-glibc-locale<=
br />bitbake nativesdk-glibc-locale<br />```<br /><br />C Crenguta

--HP1ddtguZ0pQCJxMPwS2--
