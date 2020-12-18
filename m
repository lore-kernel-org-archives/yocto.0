Subject: Re: Cross compiler which runs on the target architecture
To: yocto@lists.yoctoproject.org
From: "Peter" <peteasa@gmail.com>
X-Originating-Location: Hemel Hempstead, England, GB (82.14.69.17)
X-Originating-Platform: Windows Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Dec 2020 03:10:32 -0800
References: <15af761e-9004-fa5e-6338-9eadcc7987b8@herbrechtsmeier.net>
In-Reply-To: <15af761e-9004-fa5e-6338-9eadcc7987b8@herbrechtsmeier.net>
Message-ID: <18039.1608289832761525353@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D89JMroqVsAGzLQVAzWg"

--D89JMroqVsAGzLQVAzWg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Why you doesn't use multilib?

Once the framework is in place adding addtional compile flags like =C2=A0 =
--enable-multilib is relatively easy.. see https://github.com/peteasa/meta-=
exotic/blob/master/exotic-gc/exotic-gcc-configure-common.inc#L14 where I ac=
tually have used multilib.=C2=A0 In addition it appears that this option is=
 on by default - see https://gcc.gnu.org/onlinedocs/libstdc++/manual/config=
ure.html

>=20
> The problem I see is that your solution doesn't scale
>=20

Interesting comment.=C2=A0 I would expect that for 2 or more exotic system=
s you could create a separate build environment / SDK for each of the exoti=
c systems - not ideal but would scale because each would produce executable=
s that are bundled into a distribution that would published and loaded in t=
he normal way onto embedded system.=C2=A0 Don't forget my initial challenge=
 was that I could not easily create an build environment / SDK that would c=
reate packages for my exotic processor.=C2=A0 My solution addressed that ch=
allenge and re-uses a lot of the code that is provided by yocto.. my intent=
ion was to find out if there was community interest in multi system buildin=
g by providing a proof of concept to spark peoples interest.=C2=A0 The prop=
osed "specialist recipe" idea, whilst simpler, does not produce the environ=
ment that I wanted, I would not have been able to compile simple applicatio=
ns for my accellerator on my target arm processor for example.

--D89JMroqVsAGzLQVAzWg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span id=3D"main">Why you doesn't use multilib?</span></blockqu=
ote>
Once the framework is in place adding addtional compile flags like &nbsp; =
--enable-multilib is relatively easy.. see <a href=3D"https://github.com/pe=
teasa/meta-exotic/blob/master/exotic-gc/exotic-gcc-configure-common.inc#L14=
" target=3D"_blank" rel=3D"noopener">https://github.com/peteasa/meta-exotic=
/blob/master/exotic-gc/exotic-gcc-configure-common.inc#L14</a> where I actu=
ally have used multilib.&nbsp; In addition it appears that this option is o=
n by default - see https://gcc.gnu.org/onlinedocs/libstdc++/manual/configur=
e.html<br />
<blockquote><span id=3D"main">The problem I see is that your solution does=
n't scale<br /></span></blockquote>
Interesting comment.&nbsp; I would expect that for 2 or more exotic system=
s you could create a separate build environment / SDK for each of the exoti=
c systems - not ideal but would scale because each would produce executable=
s that are bundled into a distribution that would published and loaded in t=
he normal way onto embedded system.&nbsp; Don't forget my initial challenge=
 was that I could not easily create an build environment / SDK that would c=
reate packages for my exotic processor.&nbsp; My solution addressed that ch=
allenge and re-uses a lot of the code that is provided by yocto.. my intent=
ion was to find out if there was community interest in multi system buildin=
g by providing a proof of concept to spark peoples interest.&nbsp; The prop=
osed "specialist recipe" idea, whilst simpler, does not produce the environ=
ment that I wanted, I would not have been able to compile simple applicatio=
ns for my accellerator on my target arm processor for example.&nbsp;

--D89JMroqVsAGzLQVAzWg--
