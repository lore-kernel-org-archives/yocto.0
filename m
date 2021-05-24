Subject: using grpc fails with linker error: file in wrong format
To: yocto@lists.yoctoproject.org
From: "Juergen Landwehr" <juergen.landwehr@gmx.de>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (141.113.11.34)
X-Originating-Platform: Mac Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 24 May 2021 00:37:28 -0700
Message-ID: <TYgw.1621841848638083780.ftKc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dztD8PoQ9V0cIbqEa4LW"

--dztD8PoQ9V0cIbqEa4LW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am developing a C++ library that is using gRPC.

To be able to use protoc for generating the stubs I added the following de=
pendencies:

DEPENDS +=3D "\
 grpc-native \=20
 protobuf-native \
 ...
 "=20
and to link my library with cross-compiled libraries:

RDEPENDS +=3D "\
grpc \
protobuf \
...
"

However, linking the library fails with the following error:

ld: /data/jenkins/workspace/e0_mbient_yocto_mbient_manifests_master_downst=
ream/build/tmp/work/cortexa72-mbient-linux/tokenmaster-client/git-r0/recipe=
-sysroot-native/usr/lib/libgrpc++.so.1.24.3: error adding symbols: file in =
wrong format

I guess the problem is, that native grpc++ library is used from the "recip=
e-sysroot-native" directory and thus not the cross-compiled version.

What am I doing wrong? How can I tell Yocto to use the cross-compiled vers=
ions?

Thanks,

J=C3=BCrgen

--dztD8PoQ9V0cIbqEa4LW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all, <br /><br />I am developing a C++ library that is using gRPC. <br /=
><br />To be able to use protoc for generating the stubs I added the follow=
ing dependencies:<br /><br />
<pre style=3D"background-color: #ffffff; color: #080808; font-family: 'Jet=
Brains Mono',monospace; font-size: 12,0pt;">DEPENDS +=3D "\<br />  grpc-nat=
ive \ <br />  protobuf-native \<br />  ...<br />  " </pre>
<br />and to link my library with cross-compiled libraries: <br /><br />RD=
EPENDS +=3D "\<br />&nbsp;&nbsp; grpc \<br />&nbsp;&nbsp; protobuf \<br />&=
nbsp;&nbsp; ...<br />&nbsp;&nbsp; "<br /><br />However, linking the library=
 fails with the following error: <br /><br />ld: /data/jenkins/workspace/e0=
_mbient_yocto_mbient_manifests_master_downstream/build/tmp/work/cortexa72-m=
bient-linux/tokenmaster-client/git-r0/recipe-sysroot-native/usr/lib/libgrpc=
++.so.1.24.3: error adding symbols: file in wrong format<br /><br />I guess=
 the problem is, that native grpc++ library is used from the "recipe-sysroo=
t-native" directory and thus not the cross-compiled version. <br /><br />Wh=
at am I doing wrong? How can I tell Yocto to use the cross-compiled version=
s?<br /><br />Thanks,<br /><br />J&uuml;rgen

--dztD8PoQ9V0cIbqEa4LW--
