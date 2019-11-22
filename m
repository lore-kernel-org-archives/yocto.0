Subject: Re: Coreutils missing in Yocto 2.6.3 sdk
To: yocto@lists.yoctoproject.org
From: alessio.moscatello@marelli.com
X-Originating-Location: Turin, Piedmont, IT (151.91.34.11)
X-Originating-Platform: Windows Firefox 70
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 22 Nov 2019 06:20:30 -0800
References: <SG2PR04MB2876A7AD2E90AAFB6DE9074EFC490@SG2PR04MB2876.apcprd04.prod.outlook.com>
In-Reply-To: <SG2PR04MB2876A7AD2E90AAFB6DE9074EFC490@SG2PR04MB2876.apcprd04.prod.outlook.com>
Message-ID: <25849.1574432430807569686@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qUJkpgyg5PnHaWwP7XfQ"

--qUJkpgyg5PnHaWwP7XfQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
probably coreutils package isnot explicitly installed in the SDK.

You can add packages to the SDK using two variables:

* packages that contain tools for the host: TOOLCHAIN_HOST_TASK - https://=
www.yoctoproject.org/docs/2.6.3/ref-manual/ref-manual.html#var-TOOLCHAIN_HO=
ST_TASK
* packages for the target TOOLCHAIN_TARGET_TASK https://www.yoctoproject.o=
rg/docs/2.6.3/ref-manual/ref-manual.html#var-TOOLCHAIN_TARGET_TASK

BR,

Alessio

--qUJkpgyg5PnHaWwP7XfQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />probably coreutils package isnot explicitly installed in the SD=
K.<br /><br />You can add packages to the SDK using two variables:<br />
<ul>
<li>packages that contain tools for the host: TOOLCHAIN_HOST_TASK - <a hre=
f=3D"https://www.yoctoproject.org/docs/2.6.3/ref-manual/ref-manual.html#var=
-TOOLCHAIN_HOST_TASK" target=3D"_blank" rel=3D"noopener">https://www.yoctop=
roject.org/docs/2.6.3/ref-manual/ref-manual.html#var-TOOLCHAIN_HOST_TASK</a=
></li>
<li>packages for the target TOOLCHAIN_TARGET_TASK <a href=3D"https://www.y=
octoproject.org/docs/2.6.3/ref-manual/ref-manual.html#var-TOOLCHAIN_TARGET_=
TASK" target=3D"_blank" rel=3D"noopener">https://www.yoctoproject.org/docs/=
2.6.3/ref-manual/ref-manual.html#var-TOOLCHAIN_TARGET_TASK</a></li>
</ul>
<br />BR,<br />
<p>Alessio</p>

--qUJkpgyg5PnHaWwP7XfQ--
