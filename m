Subject: BitBake recipe cache - tasks remain available after removing inheritance #yocto #bitbake
To: yocto@lists.yoctoproject.org
From: jindrichsindelar@eaton.com
X-Originating-Location: DE (165.225.26.121)
X-Originating-Platform: Windows Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 May 2021 00:15:28 -0700
Message-ID: <rlqO.1621235728904953986.2AAJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xCii4aLZOCChSB9WiZ56"

--xCii4aLZOCChSB9WiZ56
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I'm starting with the Yocto project (Zeus) and I made some experiments wit=
h the kernel recipe. For one of my assignments, I needed a do_kernel_config=
me task, but it wasn't provided by our kernel recipe (i.e. not listed in th=
e available tasks). I searched the available layers and found that this tas=
k is defined in poky/meta/classes/kernel-yocto.bbclass. Out of fun, I tried=
 to inherit from that class in our kernel recipe and after parsing the reci=
pe again, the do_kernel_configme task was available.

Later I decided to revert all my changes and removed the inheritance of ke=
rnel-yocto.bbclass. What surprises me is that the do_kernel_configme task r=
emains available in the kernel recipe and I can still successfully run that=
 task. I also tried to remove the content of build/tmp/cache, which, if I u=
nderstand correctly, is the cache for parsing recipes. After running BitBak=
e again, I could see the recipe was parsed from scratch. But even after tha=
t, the do_kernel_configme task still remains available for the kernel recip=
e.

Could anyone explain this behavior? What am I missing here?
Thank you in advance

--xCii4aLZOCChSB9WiZ56
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />
<div>I'm starting with the Yocto project (Zeus) and I made some experiment=
s with the kernel recipe. For one of my assignments, I needed a do_kernel_c=
onfigme task, but it wasn't provided by our kernel recipe (i.e. not listed =
in the available tasks). I searched the available layers and found that thi=
s task is defined in poky/meta/classes/kernel-yocto.bbclass. Out of fun, I =
tried to inherit from that class in our kernel recipe and after parsing the=
 recipe again, the do_kernel_configme task was available.</div>
<div>&nbsp;</div>
<div>Later I decided to revert all my changes and removed the inheritance =
of kernel-yocto.bbclass. What surprises me is that the do_kernel_configme t=
ask remains available in the kernel recipe and I can still successfully run=
 that task. I also tried to remove the content of build/tmp/cache, which, i=
f I understand correctly, is the cache for parsing recipes. After running B=
itBake again, I could see the recipe was parsed from scratch. But even afte=
r that, the do_kernel_configme task still remains available for the kernel =
recipe.</div>
<div>&nbsp;</div>
<div>Could anyone explain this behavior? What am I missing here?<br />Than=
k you in advance</div>

--xCii4aLZOCChSB9WiZ56--
