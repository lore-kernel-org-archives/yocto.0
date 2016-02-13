Return-Path: <daltonfury42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3D17E00CFE; Sat, 13 Feb 2016 12:21:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daltonfury42[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D51EE00C41
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 12:21:30 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id c3so83052748vkb.3
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 12:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=7s+edXVhldejlxIq6ZUYruPLzh4tUlfFOs4KIHFNVD4=;
	b=IbDzEUVM0WF8Ly5v7s3VM9ZkAhDqyl83Kc8tBIYlelTZppTH04fDfKJCY2lQr71vnL
	bSwnr1NuqJOz34F0GLkJ+jmLbkx/n/BUsSetQ0sfh4Sz9x9NjhjxrjPtryX1hGtFQVH+
	ew2p7fBIM4+LXtHkgAjrRuOuw+tSsot8nsEqV8ZMicipD40Qx3iQE2Wdt19l9dfWU08y
	ZcjkS9Lxed+/+qjeXhHrCXtECeQQQgeq2iYX/mNDwhXx7H8FfvuCs5dquBmSMWCddbiF
	0VF7YYG2sjIE/13m4rCjL9A0gu/d4NDeJ3sJ9Zg0X7P9fDVfQa0EpGKsYyrFZ1UbBzok
	m/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=7s+edXVhldejlxIq6ZUYruPLzh4tUlfFOs4KIHFNVD4=;
	b=C8fac7HGPT2bA01j76AkSsWuLLUD5lkiHbkC9gfxMOK4Bk47lMyevtq1keWNk+4PWH
	GsLwJA8li5dJ8LZkTKnkEUFl5Q7eMoSi2ws8nc1nzyvOFda2J0f8FZECprA/kLajLZgB
	18jg0yaNmaQOe+SsPuDLlZ7b+62TeV27qRnPIqOuH2uj9O5nahEavb//OoM43geBrWbA
	b+LjMOQw6H79vvuHOo5a2LDMoe5qdhgCH5VBdE8y2k8G2ExHq072qvESPyFgFLCP+eIV
	4jTbMxZFo8iSs5HeK/t7GZxztdavyFa9DYL8rNny8x7hnP1SNK8ClkOnVu2cJizTBEzP
	0ZtQ==
X-Gm-Message-State: AG10YOT4GsoKWJ99zMM3OmdTWlnOp/YqAQEjG1y31mwXeuZ5kp6zU9odOEPlg8OOhG5aT3//TXLhc7+85JFqmA==
X-Received: by 10.31.194.130 with SMTP id s124mr6741627vkf.92.1455394890290;
	Sat, 13 Feb 2016 12:21:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.167.9 with HTTP; Sat, 13 Feb 2016 12:20:50 -0800 (PST)
From: Dalton Fury <daltonfury42@gmail.com>
Date: Sun, 14 Feb 2016 01:50:50 +0530
Message-ID: <CALH0XhnmfJh1hOBosM_T6shZz+hnHABvk4V66y7zysizOJVVgg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto + Cuda + MOOS on NVidia Jetson TK1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 Feb 2016 20:21:33 -0000
Content-Type: multipart/alternative; boundary=001a11378f4471994d052bac879a

--001a11378f4471994d052bac879a
Content-Type: text/plain; charset=UTF-8

I am going to make a yocto build and then install cuda and moos on the
jetson.

At the time of writing of this, kraj's bsp on github is ahead of
cubicool's. Since it did not mention any particular distro, I am going
ahead with YP Core - j
<https://www.yoctoproject.org/downloads/core/fido181>ethro
2.0

So I made a new directory yocto in ~/nava and tried cloning the repo. But
the cloning fails probably because I am behind a firewall. But I am able to
clone it from athena. Someone is blocking the ports. It seems to be working
from mea hostel. So I have freed up some 150 Gigs on my laptop and have
cloned YP Core at /run/media/fury/New\ Volume/yocto/:

git clone -b jrthro git://git.yoctoproject.org/poky.git

Then I cd'ed into the folder and cloned kraj's bsp:

git clone https://github.com/kraj/meta-jetson-tk1.git

I am following the quickstart guide, and I am asked to

source oe-init-build-env


YP requires python 2.X but arch by default uses 3.x. This results is a
error, which is solved by:


https://stackoverflow.com/questions/7237415/python-2-instead-of-python-3-as-the-temporary-default-python

Now that that got taken care of, added

BB_NUMBER_THREADS = "6"
PARALLEL_MAKE = "-j 3"
MACHINE ?= "jetson-tk1-l4t"

to conf/layers.conf

and ran:

bitbake-layers add-layer
"/run/media/fury/storage/yocto/poky/meta-jetson-tk1"

The sanity checker asked me to install a few dependancuies:

sudo pacman -S diffstat chrpath cpio

Day2: The build finished when I let it run throughout the night.

I have created a new repo for my layer in my github account and cloned it.
I am reading the "Project Development Manual" on how to create layers.

Now that I have an empty layer, I proceeded to create a new recipe. I
copied the entire opencv recipe from meta-oe and included the
"-DWITH_CUDA=ON" option.

Since opency requires numerous dependencies and they are all provided in
meta-openembedded, I ended up cloning the meta and then edited its
layer.conf and decreased the priority to 4 so that packages are looked for
in my layer (with priority 5) before looking in that layer

Now that opencv is being compiled in the background, I researched a bit on
cuda. Recalling from a conversation with kraj, I am supposed to use the
correct cuda libraries. This wiki seems to be pointing in the right
direction: http://elinux.org/Jetson/Installing_CUDA

Now, my L4T version is R21.4. So i need to find the binaries for it. Also
it supports cuda 6.5

I got the debs from here:
https://developer.nvidia.com/linux-tegra-r214

(More info here:
https://unix.stackexchange.com/questions/261757/how-to-use-nvidia-cuda-on-poky-yocto-based-linux-os
)

(Make sure you download the *Toolkit for L4T* and not the *Toolkit for
Ubuntu* since that is for cross-compilation instead of native compilation).

So I have examined the .deb. What it does is to create a local file
repository to use with apt. So my plan is to install apt as following the
instructions given here: https://community.freescale.com/thread/325384

Evening: I am in lab, the jetson has booted into yocto. I had to test CUDA
without OpenCV because OpenCV build ran into an error.

I added the following to local.conf:

IMAGE_FEATURES += "package-management"

PACKAGE_CLASSES = "package_deb"

CORE_IMAGE_EXTRA_INSTALL += "\
       git \
       cmake \
       apt \
"

I copied the cuda binaries onto the jetson eMMC and had to create a empty
/var/lib/dpkg/status file before I could continue with the elinux wiki.
(SOLVED A FEW LINE BELOW). All you have to do now is use
--force-architecture option when you use dpkg with cuda debs.

i tried to get apt to work, but it did not. So I went to /var/cuda* and
installed using dpkg -i --force-architecture cuda*

Above command failed for some packages due to dependency issue. So I had to
add

tools-sdk dev-pkgs

to EXTRA_IMAGE_FEATURES in local.conf

I tried commenting out all entries in opencv which has to do with java, and
will know if it worked any time now...

WoW both independently worked!

Added gnupg in attempt to fix apt.... did not work...

Opencv had some trouble linking with static libs, and I had to add this
line to local.conf:

IMAGE_INSTALL_append = "opencv-staticdev"

Testing if that did the job... worked

After a lot of trys, I cude get an opencv code with cuda to link.

I had to add NOTHING to cmakelists.txt and include
#include<opencv2/core/cuda.cpp> to the cpp file.

The GPU count came out to be 0. :-(

It has to be smething with the cmake compilation. I am thinking of writing
a new recipe on my own.

I've made a simple recipe which just compiled opencv with cuda. See
commit 8f511945d3d989ab22399d1898d1d92de3abb312 on git.

It did compile but had packaging issues. Also in do_configure logs i found
that Use CUDA: NO as cmake output. I had a chat with comeone in cmake irc,
and he is confident that I have to install cuda before installing opencv or
cuda functions will fail at runtime even if cuda was installed at runtime.

So here is what I am going to do. I am doing to write recipes to install
each of the debs.

It is going well. Gotta fix dependencies. Not completely fixed, everything
get's installed when i install cuda-toolkit-6-5

But still opencv is not compiling with cuda. Fpr some reason all the
binaries are not installed. Let them solve it for me.

--001a11378f4471994d052bac879a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am going to make a yocto build and then install cuda and=
 moos on the jetson.=C2=A0<div><br></div><div>At the time of writing of thi=
s, kraj&#39;s bsp on github is ahead of cubicool&#39;s. Since it did not me=
ntion any particular distro, I am going ahead with=C2=A0<a href=3D"https://=
www.yoctoproject.org/downloads/core/fido181" style=3D"font-size:13px;color:=
rgb(255,191,0);text-decoration:none;font-family:LatoRegular;font-weight:bol=
d;line-height:21px;background-color:rgb(0,0,0)" target=3D"_blank">YP Core -=
 j</a>ethro 2.0</div><div><br></div><div>So I made a new directory yocto in=
 ~/nava and tried cloning the repo. But the cloning fails probably because =
I am behind a firewall. But I am able to clone it from athena. Someone is b=
locking the ports. It seems to be working from mea hostel. So I have freed =
up some 150 Gigs on my laptop and have cloned YP Core at /run/media/fury/Ne=
w\ Volume/yocto/:</div><div><br></div><div><div>git clone -b jrthro git://<=
a href=3D"http://git.yoctoproject.org/poky.git" target=3D"_blank">git.yocto=
project.org/poky.git</a></div></div><div><br></div><div>Then I cd&#39;ed in=
to the folder and cloned kraj&#39;s bsp:</div><div><br></div><div>git clone=
=C2=A0<a href=3D"https://github.com/kraj/meta-jetson-tk1.git" target=3D"_bl=
ank">https://github.com/kraj/meta-jetson-tk1.git</a></div><div><br></div><d=
iv>I am following the quickstart guide, and I am asked to=C2=A0<br></div><d=
iv><br></div><pre style=3D"overflow:auto;color:rgb(51,51,51)">source oe-ini=
t-build-env<br></pre><pre style=3D"overflow:auto;color:rgb(51,51,51)"><br><=
/pre><pre style=3D"overflow:auto;color:rgb(51,51,51)">YP requires python 2.=
X but arch by default uses 3.x. This results is a error, which is solved by=
:</pre><div><br></div><div><a href=3D"https://stackoverflow.com/questions/7=
237415/python-2-instead-of-python-3-as-the-temporary-default-python" target=
=3D"_blank">https://stackoverflow.com/questions/7237415/python-2-instead-of=
-python-3-as-the-temporary-default-python</a><br></div><div><br></div><div>=
Now that that got taken care of, added=C2=A0</div><div><div><br></div><div>=
BB_NUMBER_THREADS =3D &quot;6&quot;</div><div>PARALLEL_MAKE =3D &quot;-j 3&=
quot;</div></div><div>MACHINE ?=3D &quot;jetson-tk1-l4t&quot;<br></div><div=
><br></div><div>to conf/layers.conf</div><div><br></div><div>and ran:</div>=
<div><br></div><div><div>bitbake-layers add-layer &quot;/run/media/fury/sto=
rage/yocto/poky/meta-jetson-tk1&quot;</div></div><div><br></div><div>The sa=
nity checker asked me to install a few dependancuies:</div><div><br></div><=
div>sudo pacman -S diffstat chrpath cpio<br></div><div><br></div><div>Day2:=
 The build finished when I let it run throughout the night.=C2=A0</div><div=
><br></div><div>I have created a new repo for my layer in my github account=
 and cloned it. I am reading the &quot;Project Development Manual&quot; on =
how to create layers.</div><div><br></div><div>Now that I have an empty lay=
er, I proceeded to create a new recipe. I copied the entire opencv recipe f=
rom meta-oe and included the &quot;-DWITH_CUDA=3DON&quot; option.</div><div=
><br></div><div>Since opency requires numerous dependencies and they are al=
l provided in meta-openembedded, I ended up cloning the meta and then edite=
d its layer.conf and decreased the priority to 4 so that packages are looke=
d for in my layer (with priority 5) before looking in that layer</div><div>=
<br></div><div>Now that opencv is being compiled in the background, I resea=
rched a bit on cuda. Recalling from a conversation with kraj, I am supposed=
 to use the correct cuda libraries. This wiki seems to be pointing in the r=
ight direction:=C2=A0<a href=3D"http://elinux.org/Jetson/Installing_CUDA" t=
arget=3D"_blank">http://elinux.org/Jetson/Installing_CUDA</a></div><div><br=
></div><div>Now, my L4T version is R21.4. So i need to find the binaries fo=
r it. Also it supports cuda 6.5=C2=A0</div><div><br></div><div>I got the de=
bs from here:</div><div><a href=3D"https://developer.nvidia.com/linux-tegra=
-r214" target=3D"_blank">https://developer.nvidia.com/linux-tegra-r214</a><=
br></div><div><br></div><div>(More info here: <a href=3D"https://unix.stack=
exchange.com/questions/261757/how-to-use-nvidia-cuda-on-poky-yocto-based-li=
nux-os" target=3D"_blank">https://unix.stackexchange.com/questions/261757/h=
ow-to-use-nvidia-cuda-on-poky-yocto-based-linux-os</a>)</div><div><br></div=
><div><span style=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:1=
4px;line-height:22.4px">(Make sure you download the=C2=A0</span><i style=3D=
"color:rgb(37,37,37);font-family:sans-serif;font-size:14px;line-height:22.4=
px">Toolkit for L4T</i><span style=3D"color:rgb(37,37,37);font-family:sans-=
serif;font-size:14px;line-height:22.4px">=C2=A0and not the=C2=A0</span><i s=
tyle=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:14px;line-heig=
ht:22.4px">Toolkit for Ubuntu</i><span style=3D"color:rgb(37,37,37);font-fa=
mily:sans-serif;font-size:14px;line-height:22.4px">=C2=A0since that is for =
cross-compilation instead of native compilation).=C2=A0</span><br></div><di=
v><span style=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:14px;=
line-height:22.4px"><br></span></div><div><span style=3D"color:rgb(37,37,37=
);font-family:sans-serif;font-size:14px;line-height:22.4px">So I have exami=
ned the .deb. What it does is to create a local file repository to use with=
 apt. So my plan is to install apt as following the instructions given here=
:=C2=A0</span><font color=3D"#252525" face=3D"sans-serif"><span style=3D"fo=
nt-size:14px;line-height:22.4px"><a href=3D"https://community.freescale.com=
/thread/325384" target=3D"_blank">https://community.freescale.com/thread/32=
5384</a></span></font></div><div><font color=3D"#252525" face=3D"sans-serif=
"><br></font></div><div><font color=3D"#252525" face=3D"sans-serif">Evening=
: I am in lab, the jetson has booted into yocto. I had to test CUDA without=
 OpenCV because OpenCV build ran into an error.=C2=A0</font></div><div><fon=
t color=3D"#252525" face=3D"sans-serif"><br></font></div><div><font color=
=3D"#252525" face=3D"sans-serif">I added the following to local.conf:</font=
></div><div><font color=3D"#252525" face=3D"sans-serif"><br></font></div><d=
iv><font color=3D"#252525" face=3D"sans-serif"><div>IMAGE_FEATURES +=3D &qu=
ot;package-management&quot;</div><div><br></div><div>PACKAGE_CLASSES =3D &q=
uot;package_deb&quot;</div><div><br></div><div>CORE_IMAGE_EXTRA_INSTALL +=
=3D &quot;\</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0git \</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0cmake \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0apt \</div><d=
iv>&quot;<br></div><div><br></div><div>I copied the cuda binaries onto the =
jetson eMMC and had to create a empty /var/lib/dpkg/status file before I co=
uld continue with the elinux wiki. (SOLVED A FEW LINE BELOW). All you have =
to do now is use --force-architecture option when you use dpkg with cuda de=
bs.</div><div><br></div><div>i tried to get apt to work, but it did not. So=
 I went to /var/cuda* and installed using dpkg -i --force-architecture cuda=
*</div><div><br></div><div>Above command failed for some packages due to de=
pendency issue. So I had to add=C2=A0</div><div><br></div><div>tools-sdk de=
v-pkgs<br></div><div><br></div><div>to=C2=A0EXTRA_IMAGE_FEATURES in local.c=
onf</div><div><br></div><div>I tried commenting out all entries in opencv w=
hich has to do with java, and will know if it worked any time now...</div><=
div><br></div><div>WoW both independently worked!=C2=A0</div><div><br></div=
><div>Added gnupg in attempt to fix apt.... did not work...</div><div><br><=
/div><div>Opencv had some trouble linking with static libs, and I had to ad=
d this line to local.conf:</div><div><br></div><div>IMAGE_INSTALL_append =
=3D &quot;opencv-staticdev&quot;<br></div><div><br></div><div>Testing if th=
at did the job... worked</div><div><br></div><div>After a lot of trys, I cu=
de get an opencv code with cuda to link.</div><div><br></div><div>I had to =
add NOTHING to cmakelists.txt and include #include&lt;opencv2/core/cuda.cpp=
&gt; to the cpp file.</div><div><br></div><div>The GPU count came out to be=
 0. :-(</div><div><br></div><div>It has to be smething with the cmake compi=
lation. I am thinking of writing a new recipe on my own.</div><div><br></di=
v><div>I&#39;ve made a simple recipe which just compiled opencv with cuda. =
See commit=C2=A08f511945d3d989ab22399d1898d1d92de3abb312 on git.</div><div>=
<br></div><div>It did compile but had packaging issues. Also in do_configur=
e logs i found that Use CUDA: NO as cmake output. I had a chat with comeone=
 in cmake irc, and he is confident that I have to install cuda before insta=
lling opencv or cuda functions will fail at runtime even if cuda was instal=
led at runtime.</div><div><br></div><div>So here is what I am going to do. =
I am doing to write recipes to install each of the debs.=C2=A0</div><div><b=
r></div><div>It is going well. Gotta fix dependencies. Not completely fixed=
, everything get&#39;s installed when i install cuda-toolkit-6-5</div><div>=
<br></div><div>But still opencv is not compiling with cuda. Fpr some reason=
 all the binaries are not installed. Let them solve it for me.</div></font>=
</div></div>

--001a11378f4471994d052bac879a--
