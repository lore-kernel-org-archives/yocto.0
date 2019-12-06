Subject: How to integrate Python monorepo application? #yocto #python #monorepo
To: yocto@lists.yoctoproject.org
From: georgii.staroselskii@emlid.com
X-Originating-Location: CZ (93.170.14.130)
X-Originating-Platform: Mac Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 06 Dec 2019 04:51:35 -0800
Message-ID: <kL2z.1575636695202287626.aUFH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vz0krO99ClQwCffUCj7r"

--vz0krO99ClQwCffUCj7r
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

A little context before the actual questions. As a project that I have work=
ed on grew, the number of repositories used for the application we're devel=
oping grew as well. To the point that it's gotten unbearable to keep making=
 modifications to the codebase: when something is changed in the core libra=
ry in one repository we need to make adjustments to other Python middleware=
 projects that use this library. Whereas this sounds not that terrifying, m=
anaging this in Yocto has become a burden: on every version bump of the Pyt=
hon library we need to bump all of the dependant projects as well. After so=
me thinking, we decided to try a monorepo approach to deal with the complex=
ity. I'm omitting the logic behind choosing this approach but I can delve i=
nto it if you think this is wrong.

1) Phase 1 was easy. Just bring every component of our middleware to one r=
epository. Right now we have a big repository with more than git 20 submodu=
les. Submodules will be gone once we finish the transition but as the proje=
ct doesn't stop while we're doing the transition, submodules were chosen to=
 track the changes and keep the monorepo up to date. Every submodule is a P=
ython code with a setup.py/Pipfile et al. that does the bootstrapping.

2) Phase 2 is to integrate everything in Yocto. It has turned out to be mo=
re difficult than I had anticipated.

Right now we have this:

*Application monorepo*

Pipfile
python - library1 / setup. py
python - library1 / Makefile
python - library1 / python - library1 /< code >

python - library2 / setup. py
python - library2 / Makefile
python - library2 / python - library2 /< code >

...
python - libraryN / setup. py
python - libraryN / Makefile
python - libraryN / python - libraryN /< code >

Naturally, right now we have python-library1_<some_version>.bb , python-li=
brary2_<some_other_version>.bb in Yocto. Now we want to get rid of this ver=
sion hell and stick to monorepo versions so that we could have just monorep=
o_1.0.bb that is to be updated when anything changes in any part.

Right now I have the layout described below.

*monorepo.inc* is as follows:

SRC_URI =3D< gitsm :// the location of the monorepo , branch =3D...,>
S =3D "${WORKDIR}/git"
SRCREV =3D <hash>

*python-libraryN.inc:*

require monorepo.inc
S =3D "${WORKDIR}/git/python-libraryN"
inherit setuptools

#some=C2=A0libraries=C2=A0also=C2=A0use=C2=A0entry=C2=A0points=C2=A0and=C2=
=
=A0the=C2=A0recipe=C2=A0needs=C2=A0to=C2=A0inherit=C2=A0systemd=C2=A0to=C2=
=
=A0enable=C2=A0some=C2=A0services.

This approach works. But it has a very significant drawback I can't ignore=
. Every time SRCREV (or PV/tag in the future) is changed every recipe downl=
oads the whole repository that is quite big.

So, well, the question is how to structure the Yocto recipes for Python mo=
norepo manipulation? I'm looking for a way to trick do_unpack and do_fetch =
to their thing on the monorepo basis.

This ( https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitba=
ke-user-manual.html#ref-bitbake-tasklist ) section of the documentation mak=
es me think that I'm approaching this task wrong. I was trying to decipher =
gcc-source.inc and gcc-shared-source.inc files in the poky but they are out=
 of my depth for now and look a little bit overcomplicated for my use-case.=
 So basically my question boils down to how to deal with multiple recipes r=
eferencing the same source. Any structural change to either the monorepo or=
 the recipe structure can be done now, so I would be very grateful for any =
feedback.

P.S. 1) The monorepo structure is not set in stone so if you have any sugg=
estions, I'm more than open to any criticism 2) The.inc file structure migh=
t not be suitable for another reason. This stack is deployed across a dozen=
 of different devices and some of those python-library_N.bb have.bbappends =
in other layers that are custom for the devices. I mean that some of them m=
ight require different components of the system installed or some configs a=
nd files/ modifications.

Any suggestion on how to deal with the complexity of a big Python applicat=
ion in Yocto will be welcome. Thanks in advance.

--vz0krO99ClQwCffUCj7r
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-num=
eric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; lin=
e-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-se=
rif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear:=
 both; color: #242729;">A little context before the actual questions. As a =
project that I have worked on grew, the number of repositories used for the=
 application we're developing grew as well. To the point that it's gotten u=
nbearable to keep making modifications to the codebase: when something is c=
hanged in the core library in one repository we need to make adjustments to=
 other Python middleware projects that use this library. Whereas this sound=
s not that terrifying, managing this in Yocto has become a burden: on every=
 version bump of the Python library we need to bump all of the dependant pr=
ojects as well. After some thinking, we decided to try a monorepo approach =
to deal with the complexity. I'm omitting the logic behind choosing this ap=
proach but I can delve into it if you think this is wrong.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">1) Phase 1 was easy. Just bring every component of=
 our middleware to one repository. Right now we have a big repository with =
more than git 20 submodules. Submodules will be gone once we finish the tra=
nsition but as the project doesn't stop while we're doing the transition, s=
ubmodules were chosen to track the changes and keep the monorepo up to date=
. Every submodule is a Python code with a setup.py/Pipfile et al. that does=
 the bootstrapping.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">2) Phase 2 is to integrate everything in Yocto. It=
 has turned out to be more difficult than I had anticipated.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">Right now we have this:</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;"><strong style=3D"margin: 0px; padding: 0px; border=
: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; l=
ine-height: inherit; font-family: inherit; vertical-align: baseline; box-si=
zing: inherit;">Application monorepo</strong></p>
<pre class=3D"lang-py prettyprint prettyprinted" style=3D"margin-bottom: 1=
em; padding: 12px 8px; font-variant-numeric: inherit; font-variant-east-asi=
an: inherit; font-stretch: inherit; line-height: inherit; font-family: Cons=
olas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono=
', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif; vertic=
al-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; ba=
ckground-color: #eff0f1; border-radius: 3px; color: #393318; overflow-wrap:=
 normal; border: 0px initial initial;"><code style=3D"margin: 0px; border: =
0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font=
-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Mona=
co, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Ver=
a Sans Mono', 'Courier New', monospace, sans-serif; font-size: 13px; vertic=
al-align: baseline; box-sizing: inherit; background-color: #eff0f1; white-s=
pace: inherit;"><span class=3D"typ" style=3D"margin: 0px; padding: 0px; bor=
der: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit;=
 font-stretch: inherit; line-height: inherit; font-family: inherit; vertica=
l-align: baseline; box-sizing: inherit; color: #2b91af;">Pipfile</span><spa=
n class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style=
: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inher=
it; line-height: inherit; font-family: inherit; vertical-align: baseline; b=
ox-sizing: inherit; color: #303336;">
python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">library1</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #303336;">setup</span><s=
pan class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-sty=
le: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inh=
erit; line-height: inherit; font-family: inherit; vertical-align: baseline;=
 box-sizing: inherit; color: #303336;">.</span><span class=3D"pln" style=3D=
"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant:=
 inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit=
; font-family: inherit; vertical-align: baseline; box-sizing: inherit; colo=
r: #303336;">py
python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">library1</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"typ" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #2b91af;">Makefile</span=
><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-=
style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: =
inherit; line-height: inherit; font-family: inherit; vertical-align: baseli=
ne; box-sizing: inherit; color: #303336;">
python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">library1</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #303336;">python</span><=
span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-st=
yle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: in=
herit; line-height: inherit; font-family: inherit; vertical-align: baseline=
; box-sizing: inherit; color: #303336;">-</span><span class=3D"pln" style=
=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; =
color: #303336;">library1</span><span class=3D"pun" style=3D"margin: 0px; p=
adding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-=
weight: inherit; font-stretch: inherit; line-height: inherit; font-family: =
inherit; vertical-align: baseline; box-sizing: inherit; color: #303336;">/&=
lt;</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0=
px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-=
stretch: inherit; line-height: inherit; font-family: inherit; vertical-alig=
n: baseline; box-sizing: inherit; color: #303336;">code</span><span class=
=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">&gt;</span><span class=3D"pln" style=3D"marg=
in: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inhe=
rit; font-weight: inherit; font-stretch: inherit; line-height: inherit; fon=
t-family: inherit; vertical-align: baseline; box-sizing: inherit; color: #3=
03336;">


python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">library2</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #303336;">setup</span><s=
pan class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-sty=
le: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inh=
erit; line-height: inherit; font-family: inherit; vertical-align: baseline;=
 box-sizing: inherit; color: #303336;">.</span><span class=3D"pln" style=3D=
"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant:=
 inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit=
; font-family: inherit; vertical-align: baseline; box-sizing: inherit; colo=
r: #303336;">py
python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">library2</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"typ" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #2b91af;">Makefile</span=
><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-=
style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: =
inherit; line-height: inherit; font-family: inherit; vertical-align: baseli=
ne; box-sizing: inherit; color: #303336;">
python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">library2</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #303336;">python</span><=
span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-st=
yle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: in=
herit; line-height: inherit; font-family: inherit; vertical-align: baseline=
; box-sizing: inherit; color: #303336;">-</span><span class=3D"pln" style=
=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; =
color: #303336;">library2</span><span class=3D"pun" style=3D"margin: 0px; p=
adding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-=
weight: inherit; font-stretch: inherit; line-height: inherit; font-family: =
inherit; vertical-align: baseline; box-sizing: inherit; color: #303336;">/&=
lt;</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0=
px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-=
stretch: inherit; line-height: inherit; font-family: inherit; vertical-alig=
n: baseline; box-sizing: inherit; color: #303336;">code</span><span class=
=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">&gt;</span><span class=3D"pln" style=3D"marg=
in: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inhe=
rit; font-weight: inherit; font-stretch: inherit; line-height: inherit; fon=
t-family: inherit; vertical-align: baseline; box-sizing: inherit; color: #3=
03336;">


</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px=
; font-style: inherit; font-variant: inherit; font-weight: inherit; font-st=
retch: inherit; line-height: inherit; font-family: inherit; vertical-align:=
 baseline; box-sizing: inherit; color: #303336;">...</span><span class=3D"p=
ln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; f=
ont-variant: inherit; font-weight: inherit; font-stretch: inherit; line-hei=
ght: inherit; font-family: inherit; vertical-align: baseline; box-sizing: i=
nherit; color: #303336;">
python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">libraryN</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #303336;">setup</span><s=
pan class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-sty=
le: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inh=
erit; line-height: inherit; font-family: inherit; vertical-align: baseline;=
 box-sizing: inherit; color: #303336;">.</span><span class=3D"pln" style=3D=
"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant:=
 inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit=
; font-family: inherit; vertical-align: baseline; box-sizing: inherit; colo=
r: #303336;">py
python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">libraryN</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"typ" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #2b91af;">Makefile</span=
><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-=
style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: =
inherit; line-height: inherit; font-family: inherit; vertical-align: baseli=
ne; box-sizing: inherit; color: #303336;">
python</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: #303336;">-</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">libraryN</span><span class=3D"pun" style=3D"=
margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: =
inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;=
 font-family: inherit; vertical-align: baseline; box-sizing: inherit; color=
: #303336;">/</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-style: inherit; font-variant: inherit; font-weight: inhe=
rit; font-stretch: inherit; line-height: inherit; font-family: inherit; ver=
tical-align: baseline; box-sizing: inherit; color: #303336;">python</span><=
span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-st=
yle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: in=
herit; line-height: inherit; font-family: inherit; vertical-align: baseline=
; box-sizing: inherit; color: #303336;">-</span><span class=3D"pln" style=
=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; =
color: #303336;">libraryN</span><span class=3D"pun" style=3D"margin: 0px; p=
adding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-=
weight: inherit; font-stretch: inherit; line-height: inherit; font-family: =
inherit; vertical-align: baseline; box-sizing: inherit; color: #303336;">/&=
lt;</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0=
px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-=
stretch: inherit; line-height: inherit; font-family: inherit; vertical-alig=
n: baseline; box-sizing: inherit; color: #303336;">code</span><span class=
=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #303336;">&gt;</span></code></pre>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">Naturally, right now we have&nbsp;<code style=3D"m=
argin: 0px; padding: 1px 5px; border: 0px; font-style: inherit; font-varian=
t: inherit; font-weight: inherit; font-stretch: inherit; line-height: inher=
it; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mon=
o', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospac=
e, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inher=
it; background-color: #eff0f1; white-space: pre-wrap;">python-library1_&lt;=
some_version&gt;.bb</code>,&nbsp;<code style=3D"margin: 0px; padding: 1px 5=
px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: i=
nherit; font-stretch: inherit; line-height: inherit; font-family: Consolas,=
 Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'B=
itstream Vera Sans Mono', 'Courier New', monospace, sans-serif; font-size: =
13px; vertical-align: baseline; box-sizing: inherit; background-color: #eff=
0f1; white-space: pre-wrap;">python-library2_&lt;some_other_version&gt;.bb<=
/code>&nbsp;in Yocto. Now we want to get rid of this version hell and stick=
 to monorepo versions so that we could have just monorepo_1.0.bb that is to=
 be updated when anything changes in any part.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">Right now I have the layout described below.<br />=
<br /><strong style=3D"font-family: inherit; margin: 0px; padding: 0px; bor=
der: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit=
; line-height: inherit; vertical-align: baseline; box-sizing: inherit;">mon=
orepo.inc</strong>&nbsp;is as follows:</p>
<pre class=3D"lang-py prettyprint prettyprinted" style=3D"margin-bottom: 1=
em; padding: 12px 8px; font-variant-numeric: inherit; font-variant-east-asi=
an: inherit; font-stretch: inherit; line-height: inherit; font-family: Cons=
olas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono=
', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif; vertic=
al-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; ba=
ckground-color: #eff0f1; border-radius: 3px; color: #393318; overflow-wrap:=
 normal; border: 0px initial initial;"><code style=3D"margin: 0px; border: =
0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font=
-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Mona=
co, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Ver=
a Sans Mono', 'Courier New', monospace, sans-serif; font-size: 13px; vertic=
al-align: baseline; box-sizing: inherit; background-color: #eff0f1; white-s=
pace: inherit;"><span class=3D"pln" style=3D"margin: 0px; padding: 0px; bor=
der: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit;=
 font-stretch: inherit; line-height: inherit; font-family: inherit; vertica=
l-align: baseline; box-sizing: inherit; color: #303336;">SRC_URI</span><spa=
n class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-style=
: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inher=
it; line-height: inherit; font-family: inherit; vertical-align: baseline; b=
ox-sizing: inherit; color: #303336;">=3D&lt;</span><span class=3D"pln" styl=
e=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; =
color: #303336;">gitsm</span><span class=3D"pun" style=3D"margin: 0px; padd=
ing: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-wei=
ght: inherit; font-stretch: inherit; line-height: inherit; font-family: inh=
erit; vertical-align: baseline; box-sizing: inherit; color: #303336;">://</=
span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; f=
ont-style: inherit; font-variant: inherit; font-weight: inherit; font-stret=
ch: inherit; line-height: inherit; font-family: inherit; vertical-align: ba=
seline; box-sizing: inherit; color: #303336;">the location of the monorepo<=
/span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; =
font-style: inherit; font-variant: inherit; font-weight: inherit; font-stre=
tch: inherit; line-height: inherit; font-family: inherit; vertical-align: b=
aseline; box-sizing: inherit; color: #303336;">,</span><span class=3D"pln" =
style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-=
variant: inherit; font-weight: inherit; font-stretch: inherit; line-height:=
 inherit; font-family: inherit; vertical-align: baseline; box-sizing: inher=
it; color: #303336;">branch</span><span class=3D"pun" style=3D"margin: 0px;=
 padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; fon=
t-weight: inherit; font-stretch: inherit; line-height: inherit; font-family=
: inherit; vertical-align: baseline; box-sizing: inherit; color: #303336;">=
=
=3D...,&gt;</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; =
border: 0px; font-style: inherit; font-variant: inherit; font-weight: inher=
it; font-stretch: inherit; line-height: inherit; font-family: inherit; vert=
ical-align: baseline; box-sizing: inherit; color: #303336;">
S </span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0=
px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-=
stretch: inherit; line-height: inherit; font-family: inherit; vertical-alig=
n: baseline; box-sizing: inherit; color: #303336;">=3D</span><span class=3D=
"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit;=
 font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-h=
eight: inherit; font-family: inherit; vertical-align: baseline; box-sizing:=
 inherit; color: #303336;"> </span><span class=3D"str" style=3D"margin: 0px=
; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; fo=
nt-weight: inherit; font-stretch: inherit; line-height: inherit; font-famil=
y: inherit; vertical-align: baseline; box-sizing: inherit; color: #7d2727;"=
>"${WORKDIR}/git"<br /></span><span class=3D"pln" style=3D"margin: 0px; pad=
ding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-we=
ight: inherit; font-stretch: inherit; line-height: inherit; font-family: in=
herit; vertical-align: baseline; box-sizing: inherit; color: #303336;">SRCR=
EV =3D &lt;hash&gt;</span><span class=3D"pln" style=3D"margin: 0px; padding=
: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight=
: inherit; font-stretch: inherit; line-height: inherit; font-family: inheri=
t; vertical-align: baseline; box-sizing: inherit; color: #303336;">
</span></code></pre>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;"><strong style=3D"margin: 0px; padding: 0px; border=
: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; l=
ine-height: inherit; font-family: inherit; vertical-align: baseline; box-si=
zing: inherit;">python-libraryN.inc:</strong></p>
<pre class=3D"lang-py prettyprint prettyprinted" style=3D"margin-bottom: 1=
em; padding: 12px 8px; font-variant-numeric: inherit; font-variant-east-asi=
an: inherit; font-stretch: inherit; line-height: inherit; font-family: Cons=
olas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono=
', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif; vertic=
al-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; ba=
ckground-color: #eff0f1; border-radius: 3px; color: #393318; overflow-wrap:=
 normal; border: 0px initial initial;"><code style=3D"margin: 0px; border: =
0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font=
-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Mona=
co, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Ver=
a Sans Mono', 'Courier New', monospace, sans-serif; font-size: 13px; vertic=
al-align: baseline; box-sizing: inherit; background-color: #eff0f1; white-s=
pace: inherit;"><span class=3D"pln" style=3D"margin: 0px; padding: 0px; bor=
der: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit;=
 font-stretch: inherit; line-height: inherit; font-family: inherit; vertica=
l-align: baseline; box-sizing: inherit; color: #303336;">require monorepo.i=
nc<br />S </span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; bo=
rder: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit=
; font-stretch: inherit; line-height: inherit; font-family: inherit; vertic=
al-align: baseline; box-sizing: inherit; color: #303336;">=3D</span><span c=
lass=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: i=
nherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit;=
 line-height: inherit; font-family: inherit; vertical-align: baseline; box-=
sizing: inherit; color: #303336;"> </span><span class=3D"str" style=3D"marg=
in: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inhe=
rit; font-weight: inherit; font-stretch: inherit; line-height: inherit; fon=
t-family: inherit; vertical-align: baseline; box-sizing: inherit; color: #7=
d2727;">"${WORKDIR}/git/python-libraryN"</span><span class=3D"pln" style=3D=
"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant:=
 inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit=
; font-family: inherit; vertical-align: baseline; box-sizing: inherit; colo=
r: #303336;">
inherit setuptools<br /><br />#some&nbsp;libraries&nbsp;also&nbsp;use&nbsp=
;entry&nbsp;points&nbsp;and&nbsp;the&nbsp;recipe&nbsp;needs&nbsp;to&nbsp;in=
herit&nbsp;systemd&nbsp;to&nbsp;enable&nbsp;some&nbsp;services.</span></cod=
e></pre>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">This approach works. But it has a very significant=
 drawback I can't ignore. Every time SRCREV (or PV/tag in the future) is ch=
anged every recipe downloads the whole repository that is quite big.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">So, well, the question is how to structure the Yoc=
to recipes for Python monorepo manipulation? I'm looking for a way to trick=
 do_unpack and do_fetch to their thing on the monorepo basis.<br /><br /><a=
 href=3D"https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitb=
ake-user-manual.html#ref-bitbake-tasklist" target=3D"_blank" rel=3D"noopene=
r">This</a> section of the documentation makes me think that I'm approachin=
g this task wrong. I was trying to decipher gcc-source.inc and gcc-shared-s=
ource.inc files in the poky but they are out of my depth for now and look a=
 little bit overcomplicated for my use-case. So basically my question boils=
 down to how to deal with multiple recipes referencing the same source. Any=
 structural change to either the monorepo or the recipe structure can be do=
ne now, so I would be very grateful for any feedback.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">P.S. 1) The monorepo structure is not set in stone=
 so if you have any suggestions, I'm more than open to any criticism 2) The=
&nbsp;<code style=3D"margin: 0px; padding: 1px 5px; border: 0px; font-style=
: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inher=
it; line-height: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida Con=
sole', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', '=
Courier New', monospace, sans-serif; font-size: 13px; vertical-align: basel=
ine; box-sizing: inherit; background-color: #eff0f1; white-space: pre-wrap;=
">.inc</code>&nbsp;file structure might not be suitable for another reason.=
 This stack is deployed across a dozen of different devices and some of tho=
se&nbsp;<code style=3D"margin: 0px; padding: 1px 5px; border: 0px; font-sty=
le: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inh=
erit; line-height: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida C=
onsole', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono',=
 'Courier New', monospace, sans-serif; font-size: 13px; vertical-align: bas=
eline; box-sizing: inherit; background-color: #eff0f1; white-space: pre-wra=
p;">python-library_N.bb</code>&nbsp;have&nbsp;<code style=3D"margin: 0px; p=
adding: 1px 5px; border: 0px; font-style: inherit; font-variant: inherit; f=
ont-weight: inherit; font-stretch: inherit; line-height: inherit; font-fami=
ly: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu S=
ans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif=
; font-size: 13px; vertical-align: baseline; box-sizing: inherit; backgroun=
d-color: #eff0f1; white-space: pre-wrap;">.bbappends</code>&nbsp;in other l=
ayers that are custom for the devices. I mean that some of them might requi=
re different components of the system installed or some configs and&nbsp;<c=
ode style=3D"margin: 0px; padding: 1px 5px; border: 0px; font-style: inheri=
t; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line=
-height: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', '=
Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier =
New', monospace, sans-serif; font-size: 13px; vertical-align: baseline; box=
-sizing: inherit; background-color: #eff0f1; white-space: pre-wrap;">files/=
</code>&nbsp;modifications.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">Any suggestion on how to deal with the complexity =
of a big Python application in Yocto will be welcome. Thanks in advance.</p=
>

--vz0krO99ClQwCffUCj7r--
