Subject: Re: Timing a recipe
To: yocto@lists.yoctoproject.org
From: rustyhowell@gmail.com
X-Originating-Location: West Valley City, Utah, US (68.177.138.69)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Feb 2021 11:43:34 -0800
References: <d16e306d-528c-b748-6fb6-a7494b0ab6f8@optimcloud.com>
In-Reply-To: <d16e306d-528c-b748-6fb6-a7494b0ab6f8@optimcloud.com>
Message-ID: <633.1613504614588092041@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jV6STSGWxU16WnuAVkmG"

--jV6STSGWxU16WnuAVkmG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

"time bitbake recipe" is perfect for manual things. But I wanted to also me=
asure the recipe times when building the entire image.=C2=A0 I ended up cre=
ating=C2=A0 a bbappend with new pre/post tasks for the main tasks (fetch, u=
npack, configure, compile, install, package).=C2=A0=C2=A0 The pre task drop=
s a timestamp file and the post task reads the file, calculates the elapsed=
 time and logs it to a file.=C2=A0 It's a bit clunky but it gives the infor=
mation I want.=C2=A0 Thanks for the help.

--jV6STSGWxU16WnuAVkmG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

"time bitbake recipe" is perfect for manual things. But I wanted to also me=
asure the recipe times when building the entire image.&nbsp; I ended up cre=
ating&nbsp; a bbappend with new pre/post tasks for the main tasks (fetch, u=
npack, configure, compile, install, package).&nbsp;&nbsp; The pre task drop=
s a timestamp file and the post task reads the file, calculates the elapsed=
 time and logs it to a file.&nbsp; It's a bit clunky but it gives the infor=
mation I want.&nbsp; Thanks for the help.

--jV6STSGWxU16WnuAVkmG--
