Subject: Need help understanding #devtool flow to library
To: yocto@lists.yoctoproject.org
From: tobies@synopsys.com
X-Originating-Location: (198.182.37.200)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Jun 2020 04:26:01 -0700
Message-ID: <C5wX.1593516361344535133.allJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yGvoM4CP7xwvkG99HQrx"

--yGvoM4CP7xwvkG99HQrx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

I am new to yocto, so I might be missing something obvious, but I have tro=
uble getting the devtool flow to work for me. It seems that the library tha=
t ends up in the image is not the one with my modifications but instead the=
 altered one.

Here is what I have done:

devtool modify <libname>

This has successfully checked out the sources of the library that I want t=
o modify and I could make my modifications and build the changed version wi=
th "devtool build vsomeip" .=C2=A0Now when I build an image with "devtool b=
uild-image <img-name>", devtool reports that it would build the image with =
addtional package "vsomeip".

But the library that ends up in the generated image does not seem to have =
the modified code. I do not find my additional symbols when I do an objdump=
 on the library in

./tmp/work/qemux86-poky-linux/<img-name>/1.0-r0/rootfs/usr/lib/libvsomeip.=
..

On the other hand, the library built in=C2=A0./tmp/work/i586-poky-linux/vs=
omeip/2.10.21-r0/vsomeip-2.10.21/libvsomeip.so.2.10.21 does have these symb=
ols.

The disconnect seems to happen already within the vsomeip library build pr=
ocess. The library present at=C2=A0./tmp/work/i586-poky-linux/vsomeip/2.10.=
21-r0/package/usr/lib/libvsomeip.so.2.10.21 is one _without_ my changes pre=
sent (and identical in size to the one on the rootfs folder of the image).

It feels like I am missing a step of the devtool flow, or at least the sta=
rting point to debug the deployment process.

Any hints of pointers to relevant documentation would be very appreciated!

Thanks a lot!

Stephan

--yGvoM4CP7xwvkG99HQrx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!<br /><br />I am new to yocto, so I might be missing something obviou=
s, but I have trouble getting the devtool flow to work for me. It seems tha=
t the library that ends up in the image is not the one with my modification=
s but instead the altered one.&nbsp;<br /><br />Here is what I have done:<b=
r /><br />devtool modify &lt;libname&gt;<br /><br />This has successfully c=
hecked out the sources of the library that I want to modify and I could mak=
e my modifications and build the changed version with "devtool build vsomei=
p" .&nbsp;Now when I build an image with "devtool build-image &lt;img-name&=
gt;", devtool reports that it would build the image with addtional package =
"vsomeip".<br /><br />But the library that ends up in the generated image d=
oes not seem to have the modified code. I do not find my additional symbols=
 when I do an objdump on the library in&nbsp;<br /><br />./tmp/work/qemux86=
-poky-linux/&lt;img-name&gt;/1.0-r0/rootfs/usr/lib/libvsomeip...<br /><br /=
>On the other hand, the library built in&nbsp;./tmp/work/i586-poky-linux/vs=
omeip/2.10.21-r0/vsomeip-2.10.21/libvsomeip.so.2.10.21 does have these symb=
ols.<br /><br />The disconnect seems to happen already within the vsomeip l=
ibrary build process. The library present at&nbsp;./tmp/work/i586-poky-linu=
x/vsomeip/2.10.21-r0/package/usr/lib/libvsomeip.so.2.10.21 is one _without_=
 my changes present (and identical in size to the one on the rootfs folder =
of the image).<br /><br />It feels like I am missing a step of the devtool =
flow, or at least the starting point to debug the deployment process.<br />=
<br />Any hints of pointers to relevant documentation would be very appreci=
ated!<br /><br />Thanks a lot!<br /><br />Stephan<br /><br />

--yGvoM4CP7xwvkG99HQrx--
