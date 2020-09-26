Subject: sd-bus.h not found even with DEPENDS += "systemd"
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.17.252)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 26 Sep 2020 11:32:28 -0700
Message-ID: <KGlH.1601145148652845133.saWp@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZQEDhgIjF4Hr4p5dyWZv"

--ZQEDhgIjF4Hr4p5dyWZv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Community,

I'm trying to make a recipe for source files with a Makefile , files are u=
nder : https://github.com/wirepas/gateway/tree/master/sink_service

I can't add the recipe directly from the URL, so I cloned the repo and zip=
ped only the sink_service file.

When I added the zip file with devtool it added DEPEND =3D "systemd" in th=
e recipe file. But when compiling :

>=20
> fatal error: systemd/sd-bus.h: No such file or directory

The Makefile just needs "make" and it worked on my native host. Here is th=
e recipe:
LICENSE =3D " Unknown "
LIC_FILES_CHKSUM =3D " file://c-mesh-api/LICENSE;md5=3Db8b4f77337154d1f64e=
be68dcd93fab6 "
SRC_URI =3D " file:///media/talel/data/multigate/multigate/meta-wirepas/re=
cipes-wirepas/wirepas-sink-tool/files/sink_service.zip "
DEPENDS =3D " systemd "
do_configure () {
# Specify any needed configure commands here
:
}

do_compile () {
# You will almost certainly need to add additional arguments here
oe_runmake
}

do_install () {
# NOTE: unable to determine what to put here - there is a Makefile but no
# target named "install", so you will need to define this yourself
:
}

The only problem is in do_compile , I need to fix it and then I can manage=
 the install part.
How can I specify the libsystemd in BUILD time , do I need EXTRA_OEMAKE ?

Thanks, Talel

--ZQEDhgIjF4Hr4p5dyWZv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Community,<br /><br />I'm trying to make a recipe for source files with =
a Makefile , files are under : <a href=3D"https://github.com/wirepas/gatewa=
y/tree/master/sink_service" target=3D"_blank" rel=3D"noopener">https://gith=
ub.com/wirepas/gateway/tree/master/sink_service</a> <br /><br />I can't add=
 the recipe directly from the URL, so I cloned the repo and zipped only the=
 sink_service file.<br /><br />When I added the zip file with devtool it ad=
ded DEPEND =3D "systemd" in the recipe file. But when compiling : <br />
<blockquote>fatal error: systemd/sd-bus.h: No such file or directory</bloc=
kquote>
The Makefile just needs "make" and it worked on my native host. Here is th=
e recipe:<br />
<div style=3D"color: #a7dbf7; background-color: #011627; font-family: ''Fa=
ntasque Sans Mono','Droid Sans Mono', 'monospace', monospace, 'Droid Sans F=
allback'', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'=
; font-weight: normal; font-size: 20px; line-height: 27px; white-space: pre=
;">
<div><span style=3D"color: #a4ceee;">LICENSE</span><span style=3D"color: #=
a7dbf7;"> </span><span style=3D"color: #00bff9;">=3D</span><span style=3D"c=
olor: #a7dbf7;"> </span><span style=3D"color: #6bff81;">"</span><span style=
=
=3D"color: #d3eed6;">Unknown</span><span style=3D"color: #6bff81;">"</span=
><br />
<div style=3D"color: #a7dbf7; background-color: #011627; font-family: ''Fa=
ntasque Sans Mono','Droid Sans Mono', 'monospace', monospace, 'Droid Sans F=
allback'', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'=
; font-weight: normal; font-size: 20px; line-height: 27px; white-space: pre=
;">
<div><span style=3D"color: #a4ceee;">LIC_FILES_CHKSUM</span><span style=3D=
"color: #a7dbf7;"> </span><span style=3D"color: #00bff9;">=3D</span><span s=
tyle=3D"color: #a7dbf7;"> </span><span style=3D"color: #6bff81;">"</span><s=
pan style=3D"color: #d3eed6;">file://c-mesh-api/LICENSE;md5=3Db8b4f77337154=
d1f64ebe68dcd93fab6</span><span style=3D"color: #6bff81;">"</span></div>
</div>
<div style=3D"color: #a7dbf7; background-color: #011627; font-family: ''Fa=
ntasque Sans Mono','Droid Sans Mono', 'monospace', monospace, 'Droid Sans F=
allback'', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'=
; font-weight: normal; font-size: 20px; line-height: 27px; white-space: pre=
;">
<div><span style=3D"color: #a4ceee;">SRC_URI</span><span style=3D"color: #=
a7dbf7;"> </span><span style=3D"color: #00bff9;">=3D</span><span style=3D"c=
olor: #a7dbf7;"> </span><span style=3D"color: #6bff81;">"</span><span style=
=
=3D"color: #d3eed6;">file:///media/talel/data/multigate/multigate/meta-wir=
epas/recipes-wirepas/wirepas-sink-tool/files/sink_service.zip</span><span s=
tyle=3D"color: #6bff81;">"</span><br />
<div style=3D"color: #a7dbf7; background-color: #011627; font-family: ''Fa=
ntasque Sans Mono','Droid Sans Mono', 'monospace', monospace, 'Droid Sans F=
allback'', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'=
; font-weight: normal; font-size: 20px; line-height: 27px; white-space: pre=
;">
<div><span style=3D"color: #a4ceee;">DEPENDS</span><span style=3D"color: #=
a7dbf7;"> </span><span style=3D"color: #00bff9;">=3D</span><span style=3D"c=
olor: #a7dbf7;"> </span><span style=3D"color: #6bff81;">"</span><span style=
=
=3D"color: #d3eed6;">systemd</span><span style=3D"color: #6bff81;">"</span=
></div>
</div>
<div style=3D"color: #a7dbf7; background-color: #011627; font-family: ''Fa=
ntasque Sans Mono','Droid Sans Mono', 'monospace', monospace, 'Droid Sans F=
allback'', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'=
; font-weight: normal; font-size: 20px; line-height: 27px; white-space: pre=
;">
<div><span style=3D"color: #87aff4;">do_configure</span><span style=3D"col=
or: #a7dbf7;"> () {</span></div>
<div><span style=3D"color: #a7dbf7;"> </span><span style=3D"color: #999999=
;"># Specify any needed configure commands here</span></div>
<div><span style=3D"color: #a7dbf7;"> </span><span style=3D"color: #f7ecb5=
;">:</span></div>
<div><span style=3D"color: #a7dbf7;">}</span></div>
<br />
<div><span style=3D"color: #87aff4;">do_compile</span><span style=3D"color=
: #a7dbf7;"> () {</span></div>
<div><span style=3D"color: #a7dbf7;"> </span><span style=3D"color: #999999=
;"># You will almost certainly need to add additional arguments here</span>=
</div>
<div><span style=3D"color: #a7dbf7;"> oe_runmake</span></div>
<div><span style=3D"color: #a7dbf7;">}<br /></span><br />
<div style=3D"color: #a7dbf7; background-color: #011627; font-family: ''Fa=
ntasque Sans Mono','Droid Sans Mono', 'monospace', monospace, 'Droid Sans F=
allback'', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'=
; font-weight: normal; font-size: 20px; line-height: 27px; white-space: pre=
;">
<div><span style=3D"color: #87aff4;">do_install</span><span style=3D"color=
: #a7dbf7;"> () {</span></div>
<div><span style=3D"color: #a7dbf7;"> </span><span style=3D"color: #999999=
;"># NOTE: unable to determine what to put here - there is a Makefile but n=
o</span></div>
<div><span style=3D"color: #a7dbf7;"> </span><span style=3D"color: #999999=
;"># target named "install", so you will need to define this yourself</span=
></div>
<div><span style=3D"color: #a7dbf7;"> </span><span style=3D"color: #f7ecb5=
;">:</span></div>
<div><span style=3D"color: #a7dbf7;">}</span></div>
</div>
<span style=3D"color: #a7dbf7;"></span></div>
</div>
</div>
</div>
</div>
</div>
<br />The only problem is in do_compile , I need to fix it and then I can =
manage the install part.<br />How can I specify the libsystemd in BUILD tim=
e , do I need EXTRA_OEMAKE ?<br /><br />Thanks, Talel<br /><br /><br />

--ZQEDhgIjF4Hr4p5dyWZv--
