Subject: Re: Unable to add pre compiled library #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Jan 2021 22:39:08 -0800
References: <20210112142952.sqkpqbg24py4em22@qschulz>
In-Reply-To: <20210112142952.sqkpqbg24py4em22@qschulz>
Message-ID: <10369.1610519948495180203@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QGUkhBr6kfYBvawCzv7B"

--QGUkhBr6kfYBvawCzv7B
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 12, 2021 at 06:29 AM, Quentin Schulz wrote:

>=20
> I told you on StackOverflow to checkout the dunfell branch of
> meta-clang. Do that, and recompile again instead of cherry-picking
> recipes, classes, patches and whatnot.
> Once you've something that works, you can experiment with cherry-picking
> if you want.

I had tried your suggestion and bitbake started to reinstall all packages =
but facing the same issue. Bitbake doesn't show any progress.

meta-clang=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "dunfell:e63d6f9abb=
a5348e2183089d6ef5ea384d7ae8d8"

Initialising tasks: 100% |################################################=
###############################| Time: 0:00:18
Sstate summary: Wanted 1189 Found 0 Missed 1189 Current 1157 (0% match, 49=
% complete)
NOTE: Executing Tasks
Currently=C2=A0 4 running tasks (2744 of 5866)=C2=A0 46% |################=
#################=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |
0: linux-mtk-5.4.51+gitAUTOINC+50ca5f1c95-r0 do_compile_kernelmodules - 2h=
33m23s (pid 117)
1: clang-native-10.0.1-r0 do_compile (pid 4105)=C2=A0 =C2=A07% |####=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|
2: gnutls-3.6.13-r0 do_package - 1h3m55s (pid 4706)
3: libgcrypt-1.8.5-r0 do_configure - 1h0m23s (pid 7528)

Thanks & Regards,
VR

--QGUkhBr6kfYBvawCzv7B
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 12, 2021 at 06:29 AM, Quentin Schulz wrote:<br />
<blockquote>I told you on StackOverflow to checkout the dunfell branch of<=
br />meta-clang. Do that, and recompile again instead of cherry-picking<br =
/>recipes, classes, patches and whatnot.<br />Once you've something that wo=
rks, you can experiment with cherry-picking<br />if you want.</blockquote>
I had tried your suggestion and bitbake started to reinstall all packages =
but facing the same issue. Bitbake doesn't show any progress.<br /><br />
<div>meta-clang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "dunfell:e63d6=
f9abba5348e2183089d6ef5ea384d7ae8d8"</div>
<div>&nbsp;</div>
<div>Initialising tasks: 100% |###########################################=
####################################| Time: 0:00:18</div>
<div>Sstate summary: Wanted 1189 Found 0 Missed 1189 Current 1157 (0% matc=
h, 49% complete)</div>
<div>NOTE: Executing Tasks</div>
<div>Currently&nbsp; 4 running tasks (2744 of 5866)&nbsp; 46% |###########=
######################&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; |</div>
<div>0: linux-mtk-5.4.51+gitAUTOINC+50ca5f1c95-r0 do_compile_kernelmodules=
 - 2h33m23s (pid 117)</div>
<div>1: clang-native-10.0.1-r0 do_compile (pid 4105)&nbsp; &nbsp;7% |####&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|</div>
<div>2: gnutls-3.6.13-r0 do_package - 1h3m55s (pid 4706)</div>
<div>3: libgcrypt-1.8.5-r0 do_configure - 1h0m23s (pid 7528)</div>
<div><br />Thanks &amp; Regards,<br />VR</div>

--QGUkhBr6kfYBvawCzv7B--
