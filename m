Subject: Re: sd-bus.h not found even with DEPENDS += "systemd"
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.17.252)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 27 Sep 2020 05:42:02 -0700
References: <1379.1601150310877010917@lists.yoctoproject.org>
In-Reply-To: <1379.1601150310877010917@lists.yoctoproject.org>
Message-ID: <17472.1601210522746442997@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nBa6Pft8uxyiayQS4ren"

--nBa6Pft8uxyiayQS4ren
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

A response came only to me :

>=20
> Hey Bel,
>=20
> Please remove the libsystemd from your host. It will cause host
> contamination.
>=20
> You need to tell in your makefile where make can find include path and l=
ib
> path
>=20
> Normally it should work
>=20
> Include: -I${STAging_incdir}
> -L for ld path
>=20
>=20
> Cheers
>=20

So I added

EXTRA_OEMAKE +=3D "-I ${STAGING_INCDIR}
to fix the systemd include error.

But I still get the error of :

/media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/wirepas-sin=
k-tool/1.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexe=
c/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/ld: c-mesh-api/lib/build/=
mesh_api_lib.a: error adding symbols: file in wrong format

I don't know what is the problem.
Help me on this please.

Thanks for your support.

--nBa6Pft8uxyiayQS4ren
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />A response came only to me : <br /><br />
<div dir=3D"auto">
<blockquote>Hey Bel,
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">Please remove the libsystemd from your host. It will cau=
se host contamination.</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">You need to tell in your makefile where make can find in=
clude path and lib path</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">Normally it should work</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">Include: -I${STAging_incdir}</div>
<div dir=3D"auto">-L for ld path</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">Cheers</div>
</blockquote>
</div>
<div class=3D"yj6qo ajU">
<div id=3D":ne" class=3D"ajR" tabindex=3D"0" role=3D"button" data-tooltip=
=3D"Show trimmed content" aria-label=3D"Show trimmed content" aria-expande=
d=3D"false"><img class=3D"ajT" src=3D"https://ssl.gstatic.com/ui/v1/icons/m=
ail/images/cleardot.gif" />So I added <br /><br />
<div style=3D"color: #f8f8f2; background-color: #272822; font-family: ''Fa=
ntasque Sans Mono','Droid Sans Mono', 'monospace', monospace, 'Droid Sans F=
allback'', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'=
; font-weight: normal; font-size: 20px; line-height: 27px; white-space: pre=
;">
<div><span style=3D"color: #f8f8f2;">EXTRA_OEMAKE </span><span style=3D"co=
lor: #f92672;">+=3D</span><span style=3D"color: #f8f8f2;"> </span><span sty=
le=3D"color: #e6db74;">"-I</span><span style=3D"color: #fd971f;">${STAGING_=
INCDIR}</span></div>
</div>
to fix the systemd include error.<br /><br />But I still get the error of =
: <br /><br />&nbsp;/media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-pok=
y-linux/wirepas-sink-tool/1.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky=
-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/ld: c-=
mesh-api/lib/build/mesh_api_lib.a: error adding symbols: file in wrong form=
at<br /><br />I don't know what is the problem.<br />Help me on this please=
.<br /><br />Thanks for your support.<br /><br /><br /></div>
</div>

--nBa6Pft8uxyiayQS4ren--
