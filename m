Subject: BBFILE_PRIORITY implicit inherit in nested meta layers #yocto
To: yocto@lists.yoctoproject.org
From: dz4list@gmail.com
X-Originating-Location: Union City, California, US (199.201.64.2)
X-Originating-Platform: Mac Firefox 71
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 13:22:20 -0800
Message-ID: <uHfz.1579555340600231928.OYbC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4I0pwSZEmY8YkSgvp2Az"

--4I0pwSZEmY8YkSgvp2Az
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

In a conventional setting of meta-layer layer.conf, we set the BBFILE_PRIO=
RITY as following

BBFILE_COLLECTIONS +=3D "mylayer"

BBFILE_PATTERN_mylayer =3D "^${LAYERDIR_RE}"

BBFILE_PRIORITY_mylayer =3D "10"

I noticed that when one meta-layer has sub-meta-layers nested within it,

BBFILE_PATTERN_mylayer =3D "^${LAYERDIR_RE}" will cause sub-meta-layers' B=
BFILE_PRIORITY "implicitly inherited" from the container/parent meta-layer.

i.e.

meta-mylayer/

=E2=94=9C=E2=94=80=E2=94=80 conf

=E2=94=9C=E2=94=80=E2=94=80 meta-mysublayer

=E2=94=94=E2=94=80=E2=94=80 recipes-test

Meta-mylayer's LAYERDIR=3D"meta-mylayer"

As meta-sublayer nested in meta-mylayer,

Meta-sublayer's LAYERDIR=3D"meta-mylayer/meta-sublayer"

So all BBFILES in meta-sublayer will match parent meta-mylayer's BBFILE_PA=
TTERN.

The impact is all recipes in meta-sublayer will inherit meta-mylayer's BBF=
ILE_PRIORITY, instead of its own layers' priority set in the layer.conf.

So I named it as "implicit inherit".

A quick fix to avoid this happen is refine parent BBFILE_PATTERN, appendin=
g "recipes".

Because all recipes are suggested to be put in recipes-* directory as foll=
owing:

BBFILE_PATTERN_mylayer =3D "^${LAYERDIR_RE}/recipes"

Maybe nesting meta-layer is a bad idea, we shall not do this.

But I do see meta layers nested in both meta-openembedded and meta-securit=
y layers.

So I believe put all meta layers into one project meta layer is desired fo=
r some decent use cases.

But this "implicit inherit" will cause all recipes within the project effe=
ctively has the same priority,

though the bitbake-layers show-layers tell you they have different priorit=
ies.

So my question is: is it worth to change the layer.conf template to introd=
uce this fix

BBFILE_PATTERN_mylayer =3D "^${LAYERDIR_RE}/recipes"

Or at least give some warning if the meta-layer nesting happen.
Or add some notes in the bitbake reference documents.

=3D=3D=3D following is my toy project to proof my theory =3D=3D=3D

prj/

=E2=94=9C=E2=94=80=E2=94=80 meta-mylayer

=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 conf

=E2=94=82 =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 layer.conf

=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 meta-mysublayer

=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 conf

=E2=94=82 =E2=94=82 =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 layer.conf

=E2=94=82 =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 recipes-test

=E2=94=82 =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 test

=E2=94=82 =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 mypkg_%.bbappend

=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 recipes-test

=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 test

=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 mypkg_1.0.bb

=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 mypkg_%.bbappend

=E2=94=94=E2=94=80=E2=94=80 meta-otherlayer

=E2=94=9C=E2=94=80=E2=94=80 conf

=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 layer.conf

=E2=94=94=E2=94=80=E2=94=80 recipes-test

=E2=94=94=E2=94=80=E2=94=80 test

=E2=94=94=E2=94=80=E2=94=80 mypkg_%.bbappend

I create a "prj", have two meta-layers: meta-mylayer (priority 10) and met=
a-otherlayer (priority 20).

The meta-mylayer has a nested meta-mysublayer (priority 100).

To avoid the BBFILE list order accidently match what we expected, I list t=
he three layers in bblayers.conf as following:

/data/users/zhdaniel/workspaces/tmp/prj/meta-otherlayer \

/data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer \

/data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer/meta-mysublayer \

bitbake-layers show-layers

NOTE: Starting bitbake server...

layer path priority

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

meta /data/users/zhdaniel/workspaces/openbmc/yocto/warrior/poky/meta 5

meta-poky /data/users/zhdaniel/workspaces/openbmc/yocto/warrior/poky/meta-=
poky 5

...

meta-otherlayer /data/users/zhdaniel/workspaces/tmp/prj/meta-otherlayer 20

meta-mylayer /data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer 10

meta-mysublayer /data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer/meta-=
mysublayer 100

All three layer has a mypkg_%.bbappend,

according to ( http://lists.openembedded.org/pipermail/openembedded-devel/=
2015-October/103710.html )

The bbappend apply order shall be mylayer , otherlayer, mysublayer.

But bitbake-layers show-appends mypkg , telling that applying order is: my=
layer, mysublayer and otherlayer

Because mysublayer's priority is "inherit" from its parent mylayer and bec=
ome 10.

=3D=3D=3D Matched appended recipes =3D=3D=3D

mypkg_1.0.bb:

/data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer/recipes-test/test/myp=
kg_%.bbappend

/data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer/meta-mysublayer/recip=
es-test/test/mypkg_%.bbappend

/data/users/zhdaniel/workspaces/tmp/prj/meta-otherlayer/recipes-test/test/=
mypkg_%.bbappend

Apply the fix in mylayer/conf/layer.conf, I get the expected order.

=3D=3D=3D Matched appended recipes =3D=3D=3D

mypkg_1.0.bb:

/data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer/recipes-test/test/myp=
kg_%.bbappend

/data/users/zhdaniel/workspaces/tmp/prj/meta-otherlayer/recipes-test/test/=
mypkg_%.bbappend

/data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer/meta-mysublayer/recip=
es-test/test/mypkg_%.bbappend

BTW, this issue apply to not only bbappend order, but also impacts overlap=
ped recipe selection.

BRs

Dan zhang

--4I0pwSZEmY8YkSgvp2Az
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Hello,</=
p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">In a co=
nventional setting of meta-layer layer.conf, we set the BBFILE_PRIORITY as =
following</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">BBFILE_=
COLLECTIONS +=3D "mylayer"</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">BBFILE_=
PATTERN_mylayer =3D "^${LAYERDIR_RE}"</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">BBFILE_=
PRIORITY_mylayer =3D "10"</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">I notic=
ed that when one meta-layer has sub-meta-layers nested within it,<span styl=
e=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span></p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">BBFILE_=
PATTERN_mylayer =3D "^${LAYERDIR_RE}" will cause sub-meta-layers' BBFILE_PR=
IORITY "implicitly inherited" from the container/parent meta-layer.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">i.e.</p=
>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">meta-my=
layer/</p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=9C=E2=94=80=E2=94=80</span><span style=3D"f=
ont-family: Calibri;" lang=3D"en-US"> conf</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=9C=E2=94=80=E2=94=80</span><span style=3D"f=
ont-family: Calibri;" lang=3D"en-US"> meta-mysublayer</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</span><span style=3D"f=
ont-family: Calibri;" lang=3D"en-US"> recipes-test</span></p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Meta-my=
layer's LAYERDIR=3D"meta-mylayer"</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">As meta=
-sublayer nested in meta-mylayer,</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Meta-su=
blayer's LAYERDIR=3D"meta-mylayer/meta-sublayer"</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">So all =
BBFILES in meta-sublayer will match parent meta-mylayer's BBFILE_PATTERN.</=
p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">The imp=
act is all recipes in meta-sublayer will inherit meta-mylayer's BBFILE_PRIO=
RITY, instead of its own layers' priority set in the layer.conf.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">So I na=
med it as "implicit inherit".<span style=3D"mso-spacerun: yes;">&nbsp; </sp=
an></p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">A quick=
 fix to avoid this happen is refine parent BBFILE_PATTERN, appending "recip=
es".</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Because=
 all recipes are suggested to be put in recipes-* directory as following:</=
p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">BBFILE_=
PATTERN_mylayer =3D "^${LAYERDIR_RE}/recipes"</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Maybe n=
esting meta-layer is a bad idea, we shall not do this.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">But I d=
o see meta layers nested in both meta-openembedded and meta-security layers=
.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">So I be=
lieve put all meta layers into one project meta layer is desired for some d=
ecent use cases.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">But thi=
s "implicit inherit" will cause all recipes within the project effectively =
has the same priority,</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">though =
the bitbake-layers show-layers tell you they have different priorities.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">So my q=
uestion is: is it worth to change the layer.conf template to introduce this=
 fix</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">BBFILE_=
PATTERN_mylayer =3D "^${LAYERDIR_RE}/recipes"</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Or at l=
east give some warning if the meta-layer nesting happen. <br />Or add some =
notes in the bitbake reference documents.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">=3D=3D=
=3D following is my toy project to proof my theory =3D=3D=3D</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">prj/</p=
>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=9C=E2=94=80=E2=94=80</span><span style=3D"f=
ont-family: Calibri;" lang=3D"en-US"> meta-mylayer</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=9C=E2=94=
=
=80=E2=94=80</span><span style=3D"font-family: Calibri;" lang=3D"en-US"> c=
onf</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=82</span=
><span style=3D"font-family: Calibri;" lang=3D"en-US"><span style=3D"mso-sp=
acerun: yes;">&nbsp;&nbsp; </span></span><span style=3D"font-family: DengXi=
an;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</span><span style=3D"font-f=
amily: Calibri;" lang=3D"en-US"> layer.conf</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=9C=E2=94=
=
=80=E2=94=80</span><span style=3D"font-family: Calibri;" lang=3D"en-US"> m=
eta-mysublayer</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=82</span=
><span style=3D"font-family: Calibri;" lang=3D"en-US"><span style=3D"mso-sp=
acerun: yes;">&nbsp;&nbsp; </span></span><span style=3D"font-family: DengXi=
an;" lang=3D"zh-CN">=E2=94=9C=E2=94=80=E2=94=80</span><span style=3D"font-f=
amily: Calibri;" lang=3D"en-US"> conf</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=82</span=
><span style=3D"font-family: Calibri;" lang=3D"en-US"><span style=3D"mso-sp=
acerun: yes;">&nbsp;&nbsp; </span></span><span style=3D"font-family: DengXi=
an;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibri;" l=
ang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span></span=
><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=94=E2=94=80=
=E2=94=80</span><span style=3D"font-family: Calibri;" lang=3D"en-US"> laye=
r.conf</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=82</span=
><span style=3D"font-family: Calibri;" lang=3D"en-US"><span style=3D"mso-sp=
acerun: yes;">&nbsp;&nbsp; </span></span><span style=3D"font-family: DengXi=
an;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</span><span style=3D"font-f=
amily: Calibri;" lang=3D"en-US"> recipes-test</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=82</span=
><span style=3D"font-family: Calibri;" lang=3D"en-US"><span style=3D"mso-sp=
acerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span styl=
e=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</sp=
an><span style=3D"font-family: Calibri;" lang=3D"en-US"> test</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=82</span=
><span style=3D"font-family: Calibri;" lang=3D"en-US"><span style=3D"mso-sp=
acerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=
=94=E2=94=80=E2=94=80</span><span style=3D"font-family: Calibri;" lang=3D"=
en-US"> mypkg_%.bbappend</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span><=
/span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=94=E2=94=
=
=80=E2=94=80</span><span style=3D"font-family: Calibri;" lang=3D"en-US"> r=
ecipes-test</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; </span></span><span style=3D"font-family: DengXian;" lang=
=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</span><span style=3D"font-family: C=
alibri;" lang=3D"en-US"> test</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=3D"font-f=
amily: DengXian;" lang=3D"zh-CN">=E2=94=9C=E2=94=80=E2=94=80</span><span st=
yle=3D"font-family: Calibri;" lang=3D"en-US"> mypkg_1.0.bb</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=82</span><span style=3D"font-family: Calibr=
i;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=3D"font-f=
amily: DengXian;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</span><span st=
yle=3D"font-family: Calibri;" lang=3D"en-US"> mypkg_%.bbappend</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: D=
engXian;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</span><span style=3D"f=
ont-family: Calibri;" lang=3D"en-US"> meta-otherlayer</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: C=
alibri;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbs=
p; </span></span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=
=94=9C=E2=94=80=E2=94=80</span><span style=3D"font-family: Calibri;" lang=
=3D"en-US"> conf</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: C=
alibri;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbs=
p; </span></span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=
=94=82</span><span style=3D"font-family: Calibri;" lang=3D"en-US"><span st=
yle=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span></span><span style=3D"font-f=
amily: DengXian;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</span><span st=
yle=3D"font-family: Calibri;" lang=3D"en-US"> layer.conf</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: C=
alibri;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbs=
p; </span></span><span style=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=
=94=94=E2=94=80=E2=94=80</span><span style=3D"font-family: Calibri;" lang=
=3D"en-US"> recipes-test</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: C=
alibri;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=3D"font-family: DengXi=
an;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</span><span style=3D"font-f=
amily: Calibri;" lang=3D"en-US"> test</span></p>
<p style=3D"margin: 0in; font-size: 11.0pt;"><span style=3D"font-family: C=
alibri;" lang=3D"en-US"><span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span styl=
e=3D"font-family: DengXian;" lang=3D"zh-CN">=E2=94=94=E2=94=80=E2=94=80</sp=
an><span style=3D"font-family: Calibri;" lang=3D"en-US"> mypkg_%.bbappend</=
span></p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">I creat=
e a "prj", have two meta-layers: meta-mylayer (priority 10) and meta-otherl=
ayer (priority 20).</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">The met=
a-mylayer has a nested meta-mysublayer (priority 100).</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">To avoi=
d the BBFILE list order accidently match what we expected, I list the three=
 layers in bblayers.conf as following:</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span>/data/users/zhdaniel/worksp=
aces/tmp/prj/meta-otherlayer \</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span>/data/users/zhdaniel/worksp=
aces/tmp/prj/meta-mylayer \</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp;&nbsp; </span>/data/users/zhdaniel/worksp=
aces/tmp/prj/meta-mylayer/meta-mysublayer \</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">bitbake=
-layers show-layers</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">NOTE: S=
tarting bitbake server...</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">layer<s=
pan style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>path<span sty=
le=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; </span>priority</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</=
p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">meta<sp=
an style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>/data/us=
ers/zhdaniel/workspaces/openbmc/yocto/warrior/poky/meta<span style=3D"mso-s=
pacerun: yes;">&nbsp; </span>5</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">meta-po=
ky<span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>/data/users/zhdaniel/workspaces/o=
penbmc/yocto/warrior/poky/meta-poky<span style=3D"mso-spacerun: yes;">&nbsp=
; </span>5</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">...</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">meta-ot=
herlayer<span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; </span>/data/users/zhdaniel/workspaces/tmp/prj/meta-otherlayer<span st=
yle=3D"mso-spacerun: yes;">&nbsp; </span>20</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">meta-my=
layer<span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; </span>/data/users/zhdaniel/workspaces/tmp/prj/meta-myl=
ayer<span style=3D"mso-spacerun: yes;">&nbsp; </span>10</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">meta-my=
sublayer<span style=3D"mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; </span>/data/users/zhdaniel/workspaces/tmp/prj/meta-mylayer/meta-mysub=
layer<span style=3D"mso-spacerun: yes;">&nbsp; </span>100</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">All thr=
ee layer has a mypkg_%.bbappend,</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">accordi=
ng to (<a href=3D"http://lists.openembedded.org/pipermail/openembedded-deve=
l/2015-October/103710.html">http://lists.openembedded.org/pipermail/openemb=
edded-devel/2015-October/103710.html</a> )</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">The bba=
ppend apply order shall be mylayer ,<span style=3D"mso-spacerun: yes;">&nbs=
p; </span>otherlayer,<span style=3D"mso-spacerun: yes;">&nbsp; </span>mysub=
layer.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">But bit=
bake-layers show-appends mypkg , telling that applying order is: mylayer, m=
ysublayer and otherlayer</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Because=
 mysublayer's priority is "inherit" from its parent mylayer and become 10.<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">=3D=3D=
=3D Matched appended recipes =3D=3D=3D</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">mypkg_1=
.0.bb:</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp; </span>/data/users/zhdaniel/workspaces/t=
mp/prj/meta-mylayer/recipes-test/test/mypkg_%.bbappend</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp; </span>/data/users/zhdaniel/workspaces/t=
mp/prj/meta-mylayer/meta-mysublayer/recipes-test/test/mypkg_%.bbappend</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp; </span>/data/users/zhdaniel/workspaces/t=
mp/prj/meta-otherlayer/recipes-test/test/mypkg_%.bbappend</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Apply t=
he fix in mylayer/conf/layer.conf, I get the expected order.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">=3D=3D=
=3D Matched appended recipes =3D=3D=3D</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">mypkg_1=
.0.bb:</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp; </span>/data/users/zhdaniel/workspaces/t=
mp/prj/meta-mylayer/recipes-test/test/mypkg_%.bbappend</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp; </span>/data/users/zhdaniel/workspaces/t=
mp/prj/meta-otherlayer/recipes-test/test/mypkg_%.bbappend</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;"><span s=
tyle=3D"mso-spacerun: yes;">&nbsp; </span>/data/users/zhdaniel/workspaces/t=
mp/prj/meta-mylayer/meta-mysublayer/recipes-test/test/mypkg_%.bbappend</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">BTW, th=
is issue apply to not only bbappend order, but also impacts overlapped reci=
pe selection.</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">&nbsp;<=
/p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">BRs</p>
<p style=3D"margin: 0in; font-family: Calibri; font-size: 11.0pt;">Dan zha=
ng</p>

--4I0pwSZEmY8YkSgvp2Az--
