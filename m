Subject: Resolving unbuildable dependency chain: custom image (machine & kernel) and quilt-native #yocto
To: yocto@lists.yoctoproject.org
From: mark@taqtiqa.com
X-Originating-Location: Hurstville, New South Wales, AU (115.69.5.21)
X-Originating-Platform: Linux Firefox 76
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 26 May 2020 19:13:18 -0700
Message-ID: <Szbl.1590545598588598950.2p3E@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="F0UvQ9IsMF9Cc3kjpNvN"

--F0UvQ9IsMF9Cc3kjpNvN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Thanks for all the efort that has gone into Yocto, esp the documentation.
I've setup a new machine definition (x86_64 arch), custom BSP, custom kern=
el and image.

Initially I had trouble establishing the dependency chain between the kern=
el and the machine.
Thank you to *Diego Santa Cruz and Bruce Ashfield's* for their description=
s:
https://www.yoctoproject.org/pipermail/yocto/2019-October/047002.html

From these I was able to get the kernel BSP, BSP recipe and machine defini=
tion holding hands and playing nice... up until these squabbles with quilt-=
native:

Running the `recipes-core/images/bcknv-base.bb`:

$ bitbake bcknv-base
ERROR: Nothing PROVIDES 'quilt-native'
quilt-native was skipped: incompatible with machine bcknv (not in COMPATIB=
LE_MACHINE)
ERROR: Required build target 'bcknv-base' has no buildable providers.
Missing or unbuildable dependency chain was: ['bcknv-base', 'quilt-native'=
]

Checking it was not just an issue with the image:

$ bitbake virtual/kernel
ERROR: Nothing PROVIDES 'quilt-native'
quilt-native was skipped: incompatible with machine bcknv (not in COMPATIB=
LE_MACHINE)
ERROR: Required build target 'virtual/kernel' has no buildable providers.
Missing or unbuildable dependency chain was: ['virtual/kernel', 'quilt-nat=
ive']

This is progress since before the unbuildable dependency chain was: ['bckn=
v-base', 'virtual/kernel']

I've been through the BSP and kernel dev manuals as well as the mega manua=
l and couldn't see anywhere this is address.
Obviously I'm missing the tree for the forest.

Appreciate any hints, tips or suggestions on where I've gone wrong.

Kind regards
Mark

--F0UvQ9IsMF9Cc3kjpNvN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />Thanks for all the efort that has gone into Yocto, esp the documen=
tation.<br />I've setup a new machine definition (x86_64 arch), custom BSP,=
 custom kernel and image.<br /><br />Initially I had trouble establishing t=
he dependency chain between the kernel and the machine.<br />Thank you to <=
strong>Diego Santa Cruz and Bruce Ashfield's</strong> for their description=
s:<br /><a href=3D"https://www.yoctoproject.org/pipermail/yocto/2019-Octobe=
r/047002.html" target=3D"_blank" rel=3D"noopener">https://www.yoctoproject.=
org/pipermail/yocto/2019-October/047002.html</a><br /><br />From these I wa=
s able to get the kernel BSP, BSP recipe and machine definition holding han=
ds and playing nice... up until these squabbles with quilt-native: <br /><b=
r />Running the `recipes-core/images/bcknv-base.bb`:<br /><br />$ bitbake b=
cknv-base<br />ERROR: Nothing PROVIDES 'quilt-native'<br />quilt-native was=
 skipped: incompatible with machine bcknv (not in COMPATIBLE_MACHINE)<br />=
ERROR: Required build target 'bcknv-base' has no buildable providers.<br />=
Missing or unbuildable dependency chain was: ['bcknv-base', 'quilt-native']=
<br /><br />Checking it was not just an issue with the image:<br /><br />&n=
bsp;$ bitbake virtual/kernel<br />ERROR: Nothing PROVIDES 'quilt-native'<br=
 />quilt-native was skipped: incompatible with machine bcknv (not in COMPAT=
IBLE_MACHINE)<br />ERROR: Required build target 'virtual/kernel' has no bui=
ldable providers.<br />Missing or unbuildable dependency chain was: ['virtu=
al/kernel', 'quilt-native']<br /><br />This is progress since before the un=
buildable dependency chain was: ['bcknv-base', 'virtual/kernel'] <br /><br =
/>I've been through the BSP and kernel dev manuals as well as the mega manu=
al and couldn't see anywhere this is address.<br />Obviously I'm missing th=
e tree for the forest.<br /><br />Appreciate any hints, tips or suggestions=
 on where I've gone wrong.<br /><br />Kind regards<br />Mark

--F0UvQ9IsMF9Cc3kjpNvN--
