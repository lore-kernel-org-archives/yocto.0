Subject: Re: devtool question/issue
To: yocto@lists.yoctoproject.org
From: "David Gartner" <gartnerd@gmail.com>
X-Originating-Location: Macklin, Saskatchewan, CA (71.17.204.173)
X-Originating-Platform: Mac Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 06 Feb 2021 16:57:58 -0800
References: <31249.1612637302602568173@lists.yoctoproject.org>
In-Reply-To: <31249.1612637302602568173@lists.yoctoproject.org>
Message-ID: <31249.1612659478103525956@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UVGNRNZbJfya1EP9ryzA"

--UVGNRNZbJfya1EP9ryzA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After some experimentation it appears that devtool does not like running fr=
om a filesystem volume that does not contain my home directory.

My current setup on a virtualized host has the following volumes:

Filesystem Size Used Avail Use% Mounted on

udev 32G 0 32G 0% /dev

tmpfs 6.3G 5.7M 6.3G 1% /run

/dev/sda 25G 11G 13G 46% /

tmpfs 32G 0 32G 0% /dev/shm

tmpfs 5.0M 0 5.0M 0% /run/lock

tmpfs 32G 0 32G 0% /sys/fs/cgroup

/dev/sdc 148G 39G 102G 28% /mnt/YB

tmpfs 6.3G 0 6.3G 0% /run/user/1000

My home directory is located on /dev/sda - devtool works for yocto project=
s on this volume

/dev/sdc - I added this volume so that I'd have more space while using yoc=
to, but devtool complains and doesn't run here. I deleted the contents of /=
dev/sdc and re-tried following the tutorial given in my initial post. I can=
 reproduce (e.g. create and run qemuarm images) everything upto the step wh=
ere devtool needs to be used.

The short term solution would be to increase the size of /dev/sdc but this=
 requires moving up to a more expensive plan from my cloud provider.

Any insight as to why this occurs

--UVGNRNZbJfya1EP9ryzA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After some experimentation it appears that devtool does not like running fr=
om a filesystem volume that does not contain my home directory.&nbsp;<br />=
<br />My current setup on a virtualized host has the following volumes:<br =
/><br />
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">Filesystem<span class=3D"Apple-conver=
ted-space">&nbsp; &nbsp; &nbsp; </span>Size<span class=3D"Apple-converted-s=
pace">&nbsp; </span>Used Avail Use% Mounted on</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">udev <span class=3D"Apple-converted-s=
pace">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>32G <span class=3D"A=
pple-converted-space">&nbsp; &nbsp; </span>0 <span class=3D"Apple-converted=
-space">&nbsp; </span>32G <span class=3D"Apple-converted-space">&nbsp; </sp=
an>0% /dev</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">tmpfs <span class=3D"Apple-converted-=
space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>6.3G<span class=3D"Apple-c=
onverted-space">&nbsp; </span>5.7M<span class=3D"Apple-converted-space">&nb=
sp; </span>6.3G <span class=3D"Apple-converted-space">&nbsp; </span>1% /run=
</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">/dev/sda <span class=3D"Apple-convert=
ed-space">&nbsp; &nbsp; &nbsp; &nbsp; </span>25G <span class=3D"Apple-conve=
rted-space">&nbsp; </span>11G <span class=3D"Apple-converted-space">&nbsp; =
</span>13G<span class=3D"Apple-converted-space">&nbsp; </span>46% /</span><=
/p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">tmpfs<span class=3D"Apple-converted-s=
pace">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>32G <span class=3D"A=
pple-converted-space">&nbsp; &nbsp; </span>0 <span class=3D"Apple-converted=
-space">&nbsp; </span>32G <span class=3D"Apple-converted-space">&nbsp; </sp=
an>0% /dev/shm</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">tmpfs <span class=3D"Apple-converted-=
space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>5.0M <span class=3D"Apple-=
converted-space">&nbsp; &nbsp; </span>0<span class=3D"Apple-converted-space=
">&nbsp; </span>5.0M <span class=3D"Apple-converted-space">&nbsp; </span>0%=
 /run/lock</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">tmpfs<span class=3D"Apple-converted-s=
pace">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>32G <span class=3D"A=
pple-converted-space">&nbsp; &nbsp; </span>0 <span class=3D"Apple-converted=
-space">&nbsp; </span>32G <span class=3D"Apple-converted-space">&nbsp; </sp=
an>0% /sys/fs/cgroup</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">/dev/sdc<span class=3D"Apple-converte=
d-space">&nbsp; &nbsp; &nbsp; &nbsp; </span>148G <span class=3D"Apple-conve=
rted-space">&nbsp; </span>39G<span class=3D"Apple-converted-space">&nbsp; <=
/span>102G<span class=3D"Apple-converted-space">&nbsp; </span>28% /mnt/YB</=
span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; line-height: normal=
; font-family: Menlo; color: #000000;"><span class=3D"s1" style=3D"font-var=
iant-ligatures: no-common-ligatures;">tmpfs <span class=3D"Apple-converted-=
space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>6.3G <span class=3D"Apple-=
converted-space">&nbsp; &nbsp; </span>0<span class=3D"Apple-converted-space=
">&nbsp; </span>6.3G <span class=3D"Apple-converted-space">&nbsp; </span>0%=
 /run/user/1000<br /><br /><span style=3D"color: #333333; font-family: 'Hel=
vetica Neue', Helvetica, Arial, sans-serif; font-variant-ligatures: normal;=
">My home directory is located on /dev/sda - devtool works for yocto projec=
ts on this volume<br /><br />/dev/sdc - I added this volume so that I'd hav=
e more space while using yocto, but devtool complains and doesn't run here.=
 I deleted the contents of /dev/sdc and re-tried following the tutorial giv=
en in my initial post. I can reproduce (e.g. create and run qemuarm images)=
 everything upto the step where devtool needs to be used.<br /><br />The sh=
ort term solution would be to increase the size of /dev/sdc but this requir=
es moving up to a more expensive plan from my cloud provider.<br /><br />An=
y insight as to why this occurs<br /></span><br /></span></p>

--UVGNRNZbJfya1EP9ryzA--
