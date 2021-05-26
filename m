Subject: Re: using grpc fails with linker error: file in wrong format
To: yocto@lists.yoctoproject.org
From: "Juergen Landwehr" <juergen.landwehr@gmx.de>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (141.113.11.34)
X-Originating-Platform: Mac Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 May 2021 06:02:59 -0700
References: <d11af7fd-15d1-f0a6-e5c1-9545704f7f6c@gmail.com>
In-Reply-To: <d11af7fd-15d1-f0a6-e5c1-9545704f7f6c@gmail.com>
Message-ID: <2028.1622034179428409155@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TrMQRJ8NrGgBUlGLlU5V"

--TrMQRJ8NrGgBUlGLlU5V
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Khem,

we use CMake as build system.

I checked the "sysdig" recipe and they defined both the "grpc" and "grpc-n=
ative" (same with protbuf) in the DEPENDS variable like so:

DEPENDS +=3D "... grpc grpc-native protobuf protobuf-native ..."
If I do this in my recipe I get the following error:
*18:55:09*  -- Found Protobuf: /data/jenkins/workspace/e0_mbient_yocto_mbi=
ent_manifests_master_downstream/build/tmp/work/corei7-64-mbient-linux/token=
master-client/git-r0/recipe-sysroot/usr/lib/libprotobuf.so;-lpthread (found=
 version "3.12.3")=20
*18:55:09*  CMake Error at /data/jenkins/workspace/e0_mbient_yocto_mbient_=
manifests_master_downstream/build/tmp/work/corei7-64-mbient-linux/tokenmast=
er-client/git-r0/recipe-sysroot/usr/lib/cmake/grpc/gRPCTargets.cmake:197 (m=
essage):
*18:55:09*    The imported target "gRPC::grpc_cpp_plugin" references the f=
ile
*18:55:09*  
*18:55:09*       "/data/jenkins/workspace/e0_mbient_yocto_mbient_manifests=
_master_downstream/build/tmp/work/corei7-64-mbient-linux/tokenmaster-client=
/git-r0/recipe-sysroot/usr/bin/grpc_cpp_plugin"
*18:55:09*  
*18:55:09*    but this file does not exist.  Possible reasons include:
which is correct as the directory ".../ *recipe-sysroot* /usr/bin" does no=
t contain any grpc plugins. However the directory ".../ *recipe-sysroot-nat=
ive* /usr/bin" does (due to the dependency to grpc-native).

It seems to work for sysdig, as they do not use "find_package(Protobuf)" o=
r "find_package("gRPC") to detect gRPC related libraries/programs but use s=
ome custom code.

So it looks like:

1) If I use "DEPENDS +=3D "... grpc-native protobuf-native ..." I am able =
to generate grpc stubs and I am also able to successfully build my componen=
t, but only, if the build-host and target-host are compatible =3D> NO CROSS=
 COMPING
2) If I use "DEPENDS +=3D "... grpc grpc-native protobuf protobuf-native .=
.." CMake immediately complains, that some the grpc plugins are missing
3) Using RDEPENDS seems to have no effect

So it seems the only way to make this work is to use "DEPENDS +=3D grpc gr=
pc-native ...." and write some custom CMake code to detect grpc related lib=
raries (e.g. libgrpc++.so) and programs (e.g. protoc, grpc_cpp_plugin).

But again, I am new to Yocto and still hope, that there is an easier way?

--TrMQRJ8NrGgBUlGLlU5V
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Khem, <br /><br />we use CMake as build system. <br /><br />I checked=
 the "sysdig" recipe and they defined both the "grpc" and "grpc-native" (sa=
me with protbuf) in the DEPENDS variable like so: <br /><br />
<pre style=3D"background-color: #ffffff; color: #080808; font-family: 'Jet=
Brains Mono',monospace; font-size: 12,0pt;">DEPENDS +=3D "... grpc grpc-nat=
ive protobuf protobuf-native ..."</pre>
<br />If I do this in my recipe I get the following error: <br />
<pre class=3D"console-output"><span class=3D"timestamp"><strong>18:55:09</=
strong> </span> -- Found Protobuf: /data/jenkins/workspace/e0_mbient_yocto_=
mbient_manifests_master_downstream/build/tmp/work/corei7-64-mbient-linux/to=
kenmaster-client/git-r0/recipe-sysroot/usr/lib/libprotobuf.so;-lpthread (fo=
und version "3.12.3")=20
<span class=3D"timestamp"><strong>18:55:09</strong> </span> CMake Error at=
 /data/jenkins/workspace/e0_mbient_yocto_mbient_manifests_master_downstream=
/build/tmp/work/corei7-64-mbient-linux/tokenmaster-client/git-r0/recipe-sys=
root/usr/lib/cmake/grpc/gRPCTargets.cmake:197 (message):
<span class=3D"timestamp"><strong>18:55:09</strong> </span>   The imported=
 target "gRPC::grpc_cpp_plugin" references the file
<span class=3D"timestamp"><strong>18:55:09</strong> </span>=20
<span class=3D"timestamp"><strong>18:55:09</strong> </span>      "/data/je=
nkins/workspace/e0_mbient_yocto_mbient_manifests_master_downstream/build/tm=
p/work/corei7-64-mbient-linux/tokenmaster-client/git-r0/recipe-sysroot/usr/=
bin/grpc_cpp_plugin"
<span class=3D"timestamp"><strong>18:55:09</strong> </span>=20
<span class=3D"timestamp"><strong>18:55:09</strong> </span>   but this fil=
e does not exist.  Possible reasons include:
<span class=3D"timestamp"></span></pre>
which is correct as the directory ".../<strong>recipe-sysroot</strong>/usr=
/bin" does not contain any grpc plugins. However the directory ".../<strong=
>recipe-sysroot-native</strong>/usr/bin" does (due to the dependency to grp=
c-native).<br /><br />It seems to work for sysdig, as they do not use "find=
_package(Protobuf)" or "find_package("gRPC") to detect gRPC related librari=
es/programs but use some custom code. <br /><br />So it looks like: <br /><=
br />1) If I use "DEPENDS +=3D "... grpc-native protobuf-native ..." I am a=
ble to generate grpc stubs and I am also able to successfully build my comp=
onent, but only, if the build-host and target-host are compatible =3D&gt; N=
O CROSS COMPING<br />2) If I use "DEPENDS +=3D "... grpc grpc-native protob=
uf protobuf-native ..." CMake immediately complains, that some the grpc plu=
gins are missing <br />3) Using RDEPENDS seems to have no effect <br /><br =
/>So it seems the only way to make this work is to use "DEPENDS +=3D grpc g=
rpc-native ...." and write some custom CMake code to detect grpc related li=
braries (e.g. libgrpc++.so) and programs (e.g. protoc, grpc_cpp_plugin).<br=
 /><br />But again, I am new to Yocto and still hope, that there is an easi=
er way?

--TrMQRJ8NrGgBUlGLlU5V--
