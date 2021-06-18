Subject: Empty source package when using devtool
To: yocto@lists.yoctoproject.org
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
X-Originating-Location: Toulouse, Occitanie, FR (88.163.88.103)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Jun 2021 22:30:22 -0700
Message-ID: <hzlH.1623994222244566542.d6vx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GlqV98kZer7lGI9iQdYH"

--GlqV98kZer7lGI9iQdYH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I currently used yocto warrior and I encounter an issue during packaging o=
f recipes.
I would like to embed some source package (to be able to run coverage on t=
arget) , this work without issues and places the source of the package in $=
{ROOTFS}/usr/src/debug, but when I 'devtool modify' a recipe to work on , t=
he source package is totally empty.

First, I suspected that was my various recipe customization so I tried the=
 same method (devtool modify then packing it and look at content of -src pa=
ckage) for more standard package, here are my results:
- glib-2.0 -> ok
- networkmanager -> ok
- dnsmasq -> empty source
- zlib -> empty source

I try to look at log.do_package but I didn't see any warning nor error the=
re.

Since warrior is EOL, I tried a fresh poky on dunfell and hardknott, I got=
 the exact same results. Is anybody here have experienced this ? Is this bu=
g or did I miss some configuration ?

Thank you very much in advance for any help you can bring.

--GlqV98kZer7lGI9iQdYH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I currently used yocto warrior and I encounter an issue d=
uring packaging of recipes.<br />I would like to embed some source package =
(to be able to run coverage on target) , this work without issues and place=
s the source of the package in ${ROOTFS}/usr/src/debug, but when I 'devtool=
 modify' a recipe to work on , the source package is totally empty.<br /><b=
r />First, I suspected that was my various recipe customization so I tried =
the same method (devtool modify then packing it and look at content of -src=
 package) for more standard package, here are my results:<br />&nbsp; &nbsp=
; &nbsp;- glib-2.0 -&gt; ok<br />&nbsp; &nbsp; &nbsp;- networkmanager -&gt;=
 ok<br />&nbsp; &nbsp; &nbsp;- dnsmasq -&gt; empty source<br />&nbsp; &nbsp=
; &nbsp;- zlib -&gt; empty source<br /><br />I try to look at log.do_packag=
e but I didn't see any warning nor error there.<br /><br />Since warrior is=
 EOL, I tried a fresh poky on dunfell and hardknott, I got the exact same r=
esults. Is anybody here have experienced this ? Is this bug or did I miss s=
ome configuration ?<br /><br />Thank you very much in advance for any help =
you can bring.

--GlqV98kZer7lGI9iQdYH--
