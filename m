Subject: CMake cannot find installed package #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Jan 2021 01:00:13 -0800
Message-ID: <0cEE.1611738013223018585.RTee@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SEoc2fwloM1ArZ6xeeUL"

--SEoc2fwloM1ArZ6xeeUL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I had installed a library into the build by writing my own recipe, but cma=
ke couldn't find my installed package. Please anyone suggest what I have to=
 add in my recipe?

CMake Error at recipe-sysroot-native/usr/share/cmake-3.16/Modules/FindPkgC=
onfig.cmake:711 (message):
|=C2=A0 =C2=A0None of the required 'libopentok' found
|=C2=A0 =C2=A0Call Stack (most recent call first):
|=C2=A0 =C2=A0CMakeLists.txt:14 (PKG_SEARCH_MODULE)

Thanks & Regards,
Vijay

--SEoc2fwloM1ArZ6xeeUL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I had installed a library into the build by writing my own r=
ecipe, but cmake couldn't find my installed package. Please anyone suggest =
what I have to add in my recipe?<br /><br />
<div>
<div>CMake Error at recipe-sysroot-native/usr/share/cmake-3.16/Modules/Fin=
dPkgConfig.cmake:711 (message):</div>
<div>|&nbsp; &nbsp;None of the required 'libopentok' found</div>
<div>|&nbsp; &nbsp;Call Stack (most recent call first):</div>
<div>|&nbsp; &nbsp;CMakeLists.txt:14 (PKG_SEARCH_MODULE)<br /><br />Thanks=
 &amp; Regards,<br />Vijay</div>
</div>

--SEoc2fwloM1ArZ6xeeUL--
