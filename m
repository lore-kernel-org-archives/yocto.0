Subject: Building Yocto on AWS container getting ERROR: The postinstall intercept hook 'update_icon_cache' failed, #yocto
To: yocto@lists.yoctoproject.org
From: mail2uvijay@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (165.225.122.242)
X-Originating-Platform: Windows Chrome 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Sep 2021 01:46:49 -0700
Message-ID: <RWQe.1630918009123953136.8Mp7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LqFKCcCBVaZfDC96dsD0"

--LqFKCcCBVaZfDC96dsD0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am trying to build Yocto image on aws code buildfor SAMA5D27 from Microch=
ip. Created container.
Able to setup the environment successfully with the dependencies installed =
on container. At the final step while creating rootfs image i am getting be=
low error.

"ERROR: The postinstall intercept hook 'update_icon_cache' failed,...
ERROR:
DEBUG: Python function do_rootfs finished
ERROR: Function failed: do_rootfs
"

Tried couple of options by installing libgdk-pixbuf2.0-0 in container, for =
bb image script DEPENDS +=3D "qemuwrapper-cross"

However I was able to build Yocto in virtual box ubuntu 16.04.

Please let me know what i have missed..

Regards,
Vijay

--LqFKCcCBVaZfDC96dsD0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I am trying to build Yocto image on aws code buildfor SA=
MA5D27 from Microchip. Created container.<br />Able to setup the environmen=
t successfully with the dependencies installed on container. At the final s=
tep while creating rootfs image i am getting below error.<br /><br />"ERROR=
: The postinstall intercept hook 'update_icon_cache' failed,...<br />
<div>ERROR:&nbsp;</div>
<div>DEBUG: Python function do_rootfs finished</div>
<div>ERROR: Function failed: do_rootfs<br />"</div>
<br />Tried couple of options by installing&nbsp;<span style=3D"font-family=
: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe UI Emoji', sans-serif;=
">libgdk-pixbuf2.0-0</span>&nbsp;in container, for bb image script&nbsp;<sp=
an style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe=
 UI Emoji', sans-serif;">DEPENDS +=3D "qemuwrapper-cross"</span><br /><br /=
>However I was able to build Yocto in virtual box ubuntu 16.04.<br /><br />=
Please let me know what i have missed..<br /><br />Regards,<br />Vijay

--LqFKCcCBVaZfDC96dsD0--
