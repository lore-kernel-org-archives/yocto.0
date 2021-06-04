Subject: Can the Linux kernel reuse the barebox device tree? #kernel
To: yocto@lists.yoctoproject.org
From: florian.kauer@koalo.de
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (87.123.201.192)
X-Originating-Platform: Linux Firefox 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Jun 2021 02:00:17 -0700
Message-ID: <td3c.1622797217734922140.8fqZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="k95yZTzqP9a0SX9uGfsS"

--k95yZTzqP9a0SX9uGfsS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I made the following observation in my custom Yocto system:
The device tree loaded by the Linux kernel is one that is only available i=
n the barebox directory, but not available in the kernel sources. In fact, =
it is quite similar, but I made some changes to it in the device tree provi=
ded to the kernel. Especially the machine model that is shown during kernel=
 boot is a string that can only be found in the compiled barebox image, but=
 not in the dtb files (where I can find the correct machine model string) o=
r anywhere else in the compilation results. But also other messages indicat=
e that the wrong device tree is loaded.

It was correct before, and I am not really sure what triggered that (just =
upgraded from zeus, but it might or might not be triggered by that) and I w=
ouldn't expect that anyone could guess what I have done wrong without debug=
ging my setup in depth. But, my general question is: Is there any mechanism=
 that could explain such a behavior? Any configuration that means "extract =
the device tree from the bootloader" or something similar?

Greetings,
Florian

--k95yZTzqP9a0SX9uGfsS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I made the following observation in my custom Yocto system:<br />T=
he device tree loaded by the Linux kernel is one that is only available in =
the barebox directory, but not available in the kernel sources. In fact, it=
 is quite similar, but I made some changes to it in the device tree provide=
d to the kernel. Especially the machine model that is shown during kernel b=
oot is a string that can only be found in the compiled barebox image, but n=
ot in the dtb files (where I can find the correct machine model string) or =
anywhere else in the compilation results. But also other messages indicate =
that the wrong device tree is loaded.<br /><br />It was correct before, and=
 I am not really sure what triggered that (just upgraded from zeus, but it =
might or might not be triggered by that) and I wouldn't expect that anyone =
could guess what I have done wrong without debugging my setup in depth. But=
, my general question is: Is there any mechanism that could explain such a =
behavior? Any configuration that means "extract the device tree from the bo=
otloader" or something similar?<br /><br />Greetings,<br />Florian

--k95yZTzqP9a0SX9uGfsS--
