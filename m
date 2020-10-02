Subject: #yocto #sdk How to add *-dev packages to sdk installer and not to target rootfs
To: yocto@lists.yoctoproject.org
From: hhj@trackman.com
X-Originating-Location: Roskilde, Zealand, DK (87.116.45.197)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Oct 2020 23:57:58 -0700
Message-ID: <bCQA.1601621878946819360.YFe5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bDIDE6MqKuwp5ql42S4O"

--bDIDE6MqKuwp5ql42S4O
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We use the "standard" SDK to provide a basic linux filesystem including lib=
raries=C2=A0 to be used for application development (based on cmake) in the=
 SDK. So we need the *-dev packages for the libraries to be available in th=
e target "sysroot" in the SDK but not in the target rootfs. How can this be=
 configured?
BR's
Henrik

--bDIDE6MqKuwp5ql42S4O
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We use the "standard" SDK to provide a basic linux filesystem including lib=
raries&nbsp; to be used for application development (based on cmake) in the=
 SDK. So we need the *-dev packages for the libraries to be available in th=
e target "sysroot" in the SDK but not in the target rootfs. How can this be=
 configured?<br />BR's<br />Henrik

--bDIDE6MqKuwp5ql42S4O--
