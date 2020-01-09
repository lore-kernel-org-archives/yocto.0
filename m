Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web12.7910.1578572714115797201
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 04:25:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@glucoset-com.20150623.gappssmtp.com header.s=20150623 header.b=CEf88Cu4;
 spf=none, err=permanent DNS error (domain: glucoset.com, ip: 209.85.210.44, mailfrom: mattis.asp@glucoset.com)
Received: by mail-ot1-f44.google.com with SMTP id d7so7045313otf.5
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2020 04:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=glucoset-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vRkrvWAQb8suUSjHxikHz6RQWZo9AwdglNBTjeNddkM=;
        b=CEf88Cu4fgQTNHe0qJZEYpML3xS2+7MH6lltXPAYQ5HyrtYy2cu97qJDP3WjYWQY0N
         yD7afo2r2yzwnrVi3FDMYB8avZjdXPBvZyB8N8n7mD6eb90y5YY4ZevUOkm//G+UCjMb
         Aek0KcZKSc2DHmt6qRnUempPDITSHFzFAf12d6sQ5W0MlGNrVd+Uy2WUbOG6fRKfA39v
         h0MwKrXLMrc8Q9iKzYht2ZRE9S/0UU2gsS2tqmv2TbzSomkP7CI9XA+Ad1VZmvLMAcPF
         LH2EyWWs7mzNSEXAJjPUEArqwfIFbzfHiCHp4WQtCQepZN6A/JPZdURyGSpBho3mzk+Z
         fJ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vRkrvWAQb8suUSjHxikHz6RQWZo9AwdglNBTjeNddkM=;
        b=naJ3XpU1+BCN0hZ2RtFQPdyIFipbNBRaIyM2Uuf27vVkbWUg2zTkMSbD9uh9Dnyqfu
         ZxQBlqx/Pza2SAljpZ2h1UG/7blt+7XNe8n9GJMBdQ8XZEZ0F9Swd5aI3o5C2LrODELw
         cEsymAJt4ugXiqrH0hMb5BD/xgzmVpLpd4Uczo525jZ03C0F50zNhja6LToZJfzm8CIj
         9/hva4OAdLoAtoWA3vTci5sMfL9JuQ0qNKDr7J+AZqpaPd7g3mX0nAAY3L5RZAXQf/0g
         MckSM/YiBJQPam/b/FMJ+gv3pvE2/c3/+hm45IH0q2zljrOD49p0whdYbH+etUd0LIxH
         ePxQ==
X-Gm-Message-State: APjAAAVqN7zmmzLsrZaAtVKzpipBEwmlIzVT2gE3sqTgHJf3DCcJ8JDw
	xOFdJzAV1r4au6k6tz1jiz+TunbEToqTNvM8ewSGKQ==
X-Google-Smtp-Source: APXvYqzWdzweSoZietuwIjkmn5mX8cP1YqPqr1tfKx4Cj7+V55QDoyRyH+Dksj74bQqBwbVQTObAaVWb0fWqnxesHOg=
X-Received: by 2002:a9d:3f61:: with SMTP id m88mr7767714otc.56.1578572712019;
 Thu, 09 Jan 2020 04:25:12 -0800 (PST)
MIME-Version: 1.0
References: <em2f6fb73f-c8b6-4fa3-94c2-e530827f90ec@andys-imac.leeshillfarm.local>
In-Reply-To: <em2f6fb73f-c8b6-4fa3-94c2-e530827f90ec@andys-imac.leeshillfarm.local>
From: "Mattis Spieler Asp" <mattis.asp@glucoset.com>
Date: Thu, 9 Jan 2020 13:25:00 +0100
Message-ID: <CABOj+1dCTGigFaEQKNJtbF9+SK+cO17ahstSCLwtQbN7ZhCj=A@mail.gmail.com>
Subject: Re: [meta-freescale] i.MX6 screen rotation
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: "meta-freescale@lists.yoctoproject.org" <meta-freescale@lists.yoctoproject.org>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c0a2fd059bb41977"

--000000000000c0a2fd059bb41977
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*Uname -a *
Linux purple 5.0.4-050004-generic #201903231634 SMP Sat Mar 23 20:37:29 UT=
C
2019 x86_64 x86_64 x86_64 GNU/Linux


*Also *

mattis@purple:~/development/main/Unishop/template-2$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description: Ubuntu 18.04.2 LTS
Release: 18.04
Codename: bionic


*Here is me running rebuild*
mattis@purple:~/development/main/Unishop/template-2$ sudo npm rebuild
node-sass
[sudo] password for mattis:

> node-sass@4.11.0 install
/home/mattis/development/main/Unishop/template-2/node_modules/node-sass
> node scripts/install.js

Downloading binary from
https://github.com/sass/node-sass/releases/download/v4.11.0/linux-x64-72_b=
inding.node
Cannot download "
https://github.com/sass/node-sass/releases/download/v4.11.0/linux-x64-72_b=
inding.node":


HTTP error 404 Not Found

Hint: If github.com is not accessible in your location
      try setting a proxy via HTTP_PROXY, e.g.

      export HTTP_PROXY=3Dhttp://example.com:1234

or configure npm proxy via

      npm config set proxy http://example.com:8080

> node-sass@4.11.0 postinstall
/home/mattis/development/main/Unishop/template-2/node_modules/node-sass
> node scripts/build.js

Building: /usr/local/bin/node
/home/mattis/development/main/Unishop/template-2/node_modules/node-gyp/bin=
/node-gyp.js
rebuild --verbose --libsass_ext=3D --libsass_cflags=3D --libsass_ldflags=
=3D
--libsass_library=3D
gyp info it worked if it ends with ok
gyp verb cli [
gyp verb cli   '/usr/local/bin/node',
gyp verb cli
'/home/mattis/development/main/Unishop/template-2/node_modules/node-gyp/bi=
n/node-gyp.js',
gyp verb cli   'rebuild',
gyp verb cli   '--verbose',
gyp verb cli   '--libsass_ext=3D',
gyp verb cli   '--libsass_cflags=3D',
gyp verb cli   '--libsass_ldflags=3D',
gyp verb cli   '--libsass_library=3D'
gyp verb cli ]
gyp info using node-gyp@3.8.0
gyp info using node@12.14.1 | linux | x64
gyp verb command rebuild []
gyp verb command clean []
gyp verb clean removing "build" directory
gyp verb command configure []
gyp verb check python checking for Python executable "python2" in the PATH
gyp verb `which` succeeded python2 /usr/bin/python2
gyp verb check python version `/usr/bin/python2 -c "import sys; print
"2.7.17
gyp verb check python version .%s.%s" % sys.version_info[:3];"` returned: =
%j
gyp verb get node dir no --target version specified, falling back to host
node version: 12.14.1
gyp verb command install [ '12.14.1' ]
gyp verb install input version string "12.14.1"
gyp verb install installing version: 12.14.1
gyp verb install --ensure was passed, so won't reinstall if already
installed
gyp verb install version is already installed, need to check
"installVersion"
gyp verb got "installVersion" 9
gyp verb needs "installVersion" 9
gyp verb install version is good
gyp verb get node dir target node version installed: 12.14.1
gyp verb build dir attempting to create "build" dir:
/home/mattis/development/main/Unishop/template-2/node_modules/node-sass/bu=
ild
gyp verb build dir "build" dir needed to be created?
/home/mattis/development/main/Unishop/template-2/node_modules/node-sass/bu=
ild
gyp verb build/config.gypi creating config file
gyp verb build/config.gypi writing out config file:
/home/mattis/development/main/Unishop/template-2/node_modules/node-sass/bu=
ild/config.gypi
gyp verb config.gypi checking for gypi file:
/home/mattis/development/main/Unishop/template-2/node_modules/node-sass/co=
nfig.gypi
gyp verb common.gypi checking for gypi file:
/home/mattis/development/main/Unishop/template-2/node_modules/node-sass/co=
mmon.gypi
gyp verb gyp gyp format was not specified; forcing "make"
gyp info spawn /usr/bin/python2
gyp info spawn args [
gyp info spawn args
'/home/mattis/development/main/Unishop/template-2/node_modules/node-gyp/gy=
p/gyp_main.py',
gyp info spawn args   'binding.gyp',
gyp info spawn args   '-f',
gyp info spawn args   'make',
gyp info spawn args   '-I',
gyp info spawn args
'/home/mattis/development/main/Unishop/template-2/node_modules/node-sass/b=
uild/config.gypi',
gyp info spawn args   '-I',
gyp info spawn args
'/home/mattis/development/main/Unishop/template-2/node_modules/node-gyp/ad=
don.gypi',
gyp info spawn args   '-I',
gyp info spawn args
'/home/mattis/.node-gyp/12.14.1/include/node/common.gypi',
gyp info spawn args   '-Dlibrary=3Dshared_library',
gyp info spawn args   '-Dvisibility=3Ddefault',
gyp info spawn args   '-Dnode_root_dir=3D/home/mattis/.node-gyp/12.14.1',
gyp info spawn args
'-Dnode_gyp_dir=3D/home/mattis/development/main/Unishop/template-2/node_mo=
dules/node-gyp',
gyp info spawn args
'-Dnode_lib_file=3D/home/mattis/.node-gyp/12.14.1/<(target_arch)/node.lib'=
,
gyp info spawn args
'-Dmodule_root_dir=3D/home/mattis/development/main/Unishop/template-2/node=
_modules/node-sass',
gyp info spawn args   '-Dnode_engine=3Dv8',
gyp info spawn args   '--depth=3D.',
gyp info spawn args   '--no-parallel',
gyp info spawn args   '--generator-output',
gyp info spawn args   'build',
gyp info spawn args   '-Goutput_dir=3D.'
gyp info spawn args ]
gyp verb command build []
gyp verb build type Release
gyp verb architecture x64
gyp verb node dev dir /home/mattis/.node-gyp/12.14.1
gyp verb `which` succeeded for `make` /usr/bin/make
gyp info spawn make
gyp info spawn args [ 'V=3D1', 'BUILDTYPE=3DRelease', '-C', 'build' ]
make: Entering directory
'/home/mattis/development/main/Unishop/template-2/node_modules/node-sass/b=
uild'
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/ast.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/ast.o
../src/libsass/src/ast.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/ast_fwd_decl.o.=
d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/ast_fwd_decl.o
../src/libsass/src/ast_fwd_decl.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/backtrace.o.d.r=
aw
  -c -o Release/obj.target/libsass/src/libsass/src/backtrace.o
../src/libsass/src/backtrace.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/base64vlq.o.d.r=
aw
  -c -o Release/obj.target/libsass/src/libsass/src/base64vlq.o
../src/libsass/src/base64vlq.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/bind.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/bind.o
../src/libsass/src/bind.cpp
  cc '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer  -MMD -MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/cencode.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/cencode.o
../src/libsass/src/cencode.c
../src/libsass/src/cencode.c: In function =E2=80=98base64_encode_block=E2=
=80=99:
../src/libsass/src/cencode.c:48:11: warning: this statement may fall
through [-Wimplicit-fallthrough=3D]
    result =3D (fragment & 0x003) << 4;
    ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
../src/libsass/src/cencode.c:52:2: note: here
  case step_B:
  ^~~~
../src/libsass/src/cencode.c:62:11: warning: this statement may fall
through [-Wimplicit-fallthrough=3D]
    result =3D (fragment & 0x00f) << 2;
    ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
../src/libsass/src/cencode.c:66:2: note: here
  case step_C:
  ^~~~
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/check_nesting.o=
.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/check_nesting.o
../src/libsass/src/check_nesting.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/color_maps.o.d.=
raw
  -c -o Release/obj.target/libsass/src/libsass/src/color_maps.o
../src/libsass/src/color_maps.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/constants.o.d.r=
aw
  -c -o Release/obj.target/libsass/src/libsass/src/constants.o
../src/libsass/src/constants.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/context.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/context.o
../src/libsass/src/context.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/cssize.o.d.raw
-c -o Release/obj.target/libsass/src/libsass/src/cssize.o
../src/libsass/src/cssize.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/emitter.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/emitter.o
../src/libsass/src/emitter.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/environment.o.d=
.raw
  -c -o Release/obj.target/libsass/src/libsass/src/environment.o
../src/libsass/src/environment.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/error_handling.=
o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/error_handling.o
../src/libsass/src/error_handling.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/eval.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/eval.o
../src/libsass/src/eval.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/expand.o.d.raw
-c -o Release/obj.target/libsass/src/libsass/src/expand.o
../src/libsass/src/expand.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/extend.o.d.raw
-c -o Release/obj.target/libsass/src/libsass/src/extend.o
../src/libsass/src/extend.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/file.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/file.o
../src/libsass/src/file.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/functions.o.d.r=
aw
  -c -o Release/obj.target/libsass/src/libsass/src/functions.o
../src/libsass/src/functions.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/inspect.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/inspect.o
../src/libsass/src/inspect.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/json.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/json.o
../src/libsass/src/json.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/lexer.o.d.raw
-c -o Release/obj.target/libsass/src/libsass/src/lexer.o
../src/libsass/src/lexer.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/listize.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/listize.o
../src/libsass/src/listize.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/memory/SharedPt=
r.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/memory/SharedPtr.o
../src/libsass/src/memory/SharedPtr.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/node.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/node.o
../src/libsass/src/node.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/operators.o.d.r=
aw
  -c -o Release/obj.target/libsass/src/libsass/src/operators.o
../src/libsass/src/operators.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/output.o.d.raw
-c -o Release/obj.target/libsass/src/libsass/src/output.o
../src/libsass/src/output.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/parser.o.d.raw
-c -o Release/obj.target/libsass/src/libsass/src/parser.o
../src/libsass/src/parser.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/plugins.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/plugins.o
../src/libsass/src/plugins.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/position.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/position.o
../src/libsass/src/position.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/prelexer.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/prelexer.o
../src/libsass/src/prelexer.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/remove_placehol=
ders.o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/remove_placeholders.o
../src/libsass/src/remove_placeholders.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/sass.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/sass.o
../src/libsass/src/sass.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/sass2scss.o.d.r=
aw
  -c -o Release/obj.target/libsass/src/libsass/src/sass2scss.o
../src/libsass/src/sass2scss.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/sass_context.o.=
d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/sass_context.o
../src/libsass/src/sass_context.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/sass_functions.=
o.d.raw
  -c -o Release/obj.target/libsass/src/libsass/src/sass_functions.o
../src/libsass/src/sass_functions.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/sass_util.o.d.r=
aw
  -c -o Release/obj.target/libsass/src/libsass/src/sass_util.o
../src/libsass/src/sass_util.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/sass_values.o.d=
.raw
  -c -o Release/obj.target/libsass/src/libsass/src/sass_values.o
../src/libsass/src/sass_values.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/source_map.o.d.=
raw
  -c -o Release/obj.target/libsass/src/libsass/src/source_map.o
../src/libsass/src/source_map.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/subset_map.o.d.=
raw
  -c -o Release/obj.target/libsass/src/libsass/src/subset_map.o
../src/libsass/src/subset_map.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/to_c.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/to_c.o
../src/libsass/src/to_c.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/to_value.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/to_value.o
../src/libsass/src/to_value.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/units.o.d.raw
-c -o Release/obj.target/libsass/src/libsass/src/units.o
../src/libsass/src/units.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/utf8_string.o.d=
.raw
  -c -o Release/obj.target/libsass/src/libsass/src/utf8_string.o
../src/libsass/src/utf8_string.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/util.o.d.ra=
w
  -c -o Release/obj.target/libsass/src/libsass/src/util.o
../src/libsass/src/util.cpp
  g++ '-DNODE_GYP_MODULE_NAME=3Dlibsass' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DLIBSASS_VERSION=3D"3.5.4"'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include
 -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD
-MF
./Release/.deps/Release/obj.target/libsass/src/libsass/src/values.o.d.raw
-c -o Release/obj.target/libsass/src/libsass/src/values.o
../src/libsass/src/values.cpp
  rm -f Release/obj.target/src/sass.a && ar crs
Release/obj.target/src/sass.a
Release/obj.target/libsass/src/libsass/src/ast.o
Release/obj.target/libsass/src/libsass/src/ast_fwd_decl.o
Release/obj.target/libsass/src/libsass/src/backtrace.o
Release/obj.target/libsass/src/libsass/src/base64vlq.o
Release/obj.target/libsass/src/libsass/src/bind.o
Release/obj.target/libsass/src/libsass/src/cencode.o
Release/obj.target/libsass/src/libsass/src/check_nesting.o
Release/obj.target/libsass/src/libsass/src/color_maps.o
Release/obj.target/libsass/src/libsass/src/constants.o
Release/obj.target/libsass/src/libsass/src/context.o
Release/obj.target/libsass/src/libsass/src/cssize.o
Release/obj.target/libsass/src/libsass/src/emitter.o
Release/obj.target/libsass/src/libsass/src/environment.o
Release/obj.target/libsass/src/libsass/src/error_handling.o
Release/obj.target/libsass/src/libsass/src/eval.o
Release/obj.target/libsass/src/libsass/src/expand.o
Release/obj.target/libsass/src/libsass/src/extend.o
Release/obj.target/libsass/src/libsass/src/file.o
Release/obj.target/libsass/src/libsass/src/functions.o
Release/obj.target/libsass/src/libsass/src/inspect.o
Release/obj.target/libsass/src/libsass/src/json.o
Release/obj.target/libsass/src/libsass/src/lexer.o
Release/obj.target/libsass/src/libsass/src/listize.o
Release/obj.target/libsass/src/libsass/src/memory/SharedPtr.o
Release/obj.target/libsass/src/libsass/src/node.o
Release/obj.target/libsass/src/libsass/src/operators.o
Release/obj.target/libsass/src/libsass/src/output.o
Release/obj.target/libsass/src/libsass/src/parser.o
Release/obj.target/libsass/src/libsass/src/plugins.o
Release/obj.target/libsass/src/libsass/src/position.o
Release/obj.target/libsass/src/libsass/src/prelexer.o
Release/obj.target/libsass/src/libsass/src/remove_placeholders.o
Release/obj.target/libsass/src/libsass/src/sass.o
Release/obj.target/libsass/src/libsass/src/sass2scss.o
Release/obj.target/libsass/src/libsass/src/sass_context.o
Release/obj.target/libsass/src/libsass/src/sass_functions.o
Release/obj.target/libsass/src/libsass/src/sass_util.o
Release/obj.target/libsass/src/libsass/src/sass_values.o
Release/obj.target/libsass/src/libsass/src/source_map.o
Release/obj.target/libsass/src/libsass/src/subset_map.o
Release/obj.target/libsass/src/libsass/src/to_c.o
Release/obj.target/libsass/src/libsass/src/to_value.o
Release/obj.target/libsass/src/libsass/src/units.o
Release/obj.target/libsass/src/libsass/src/utf8_string.o
Release/obj.target/libsass/src/libsass/src/util.o
Release/obj.target/libsass/src/libsass/src/values.o
  rm -rf "Release/sass.a" && cp -af "Release/obj.target/src/sass.a"
"Release/sass.a"
  g++ '-DNODE_GYP_MODULE_NAME=3Dbinding' '-DUSING_UV_SHARED=3D1'
'-DUSING_V8_SHARED=3D1' '-DV8_DEPRECATION_WARNINGS=3D1'
'-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS'
'-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=3D64' '-DOPENSSL_NO_PINSHARED'
'-DOPENSSL_THREADS' '-DBUILDING_NODE_EXTENSION'
-I/home/mattis/.node-gyp/12.14.1/include/node
-I/home/mattis/.node-gyp/12.14.1/src
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/config
-I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include
-I/home/mattis/.node-gyp/12.14.1/deps/zlib
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../node_modules/nan
-I../src/libsass/include  -fPIC -pthread -Wall -Wextra
-Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -fno-rtti
-fno-exceptions -std=3Dgnu++1y -std=3Dc++0x -MMD -MF
./Release/.deps/Release/obj.target/binding/src/binding.o.d.raw   -c -o
Release/obj.target/binding/src/binding.o ../src/binding.cpp
In file included from ../node_modules/nan/nan_converters.h:67:0,
                 from ../node_modules/nan/nan.h:222,
                 from ../src/binding.cpp:1:
../node_modules/nan/nan_converters_43_inl.h: In static member function
=E2=80=98static Nan::imp::ToFactoryBase<v8::Boolean>::return_t
Nan::imp::ToFactory<v8::Boolean>::convert(v8::Local<v8::Value>)=E2=80=99:
../node_modules/nan/nan_converters_43_inl.h:18:51: warning:
=E2=80=98v8::MaybeLocal<v8::Boolean> v8::Value::ToBoolean(v8::Local<v8::Co=
ntext>)
const=E2=80=99 is deprecated: ToBoolean can never throw. Use Local version=
.
[-Wdeprecated-declarations]
       val->To ## TYPE(isolate->GetCurrentContext())
     \
                                                   ^
../node_modules/nan/nan_converters_43_inl.h:22:1: note: in expansion of
macro =E2=80=98X=E2=80=99
 X(Boolean)
 ^
In file included from
/home/mattis/.node-gyp/12.14.1/include/node/v8-internal.h:14:0,
                 from /home/mattis/.node-gyp/12.14.1/include/node/v8.h:25,
                 from /home/mattis/.node-gyp/12.14.1/include/node/node.h:6=
3,
                 from ../node_modules/nan/nan.h:53,
                 from ../src/binding.cpp:1:
/home/mattis/.node-gyp/12.14.1/include/node/v8.h:2568:59: note: declared
here
                 V8_WARN_UNUSED_RESULT MaybeLocal<Boolean> ToBoolean(
                                                           ^
/home/mattis/.node-gyp/12.14.1/include/node/v8config.h:311:3: note: in
definition of macro =E2=80=98V8_DEPRECATED=E2=80=99
   declarator __attribute__((deprecated(message)))
   ^~~~~~~~~~
In file included from ../node_modules/nan/nan_converters.h:67:0,
                 from ../node_modules/nan/nan.h:222,
                 from ../src/binding.cpp:1:
../node_modules/nan/nan_converters_43_inl.h: In static member function
=E2=80=98static Nan::imp::ValueFactoryBase<bool>::return_t
Nan::imp::ToFactory<bool>::convert(v8::Local<v8::Value>)=E2=80=99:
../node_modules/nan/nan_converters_43_inl.h:37:57: warning:
=E2=80=98v8::Maybe<bool> v8::Value::BooleanValue(v8::Local<v8::Context>) c=
onst=E2=80=99 is
deprecated: BooleanValue can never throw. Use Isolate version.
[-Wdeprecated-declarations]
   return val->NAME ## Value(isolate->GetCurrentContext());
    \
                                                         ^
../node_modules/nan/nan_converters_43_inl.h:40:1: note: in expansion of
macro =E2=80=98X=E2=80=99
 X(bool, Boolean)
 ^
In file included from
/home/mattis/.node-gyp/12.14.1/include/node/v8-internal.h:14:0,
                 from /home/mattis/.node-gyp/12.14.1/include/node/v8.h:25,
                 from /home/mattis/.node-gyp/12.14.1/include/node/node.h:6=
3,
                 from ../node_modules/nan/nan.h:53,
                 from ../src/binding.cpp:1:
/home/mattis/.node-gyp/12.14.1/include/node/v8.h:2606:51: note: declared
here
                 V8_WARN_UNUSED_RESULT Maybe<bool> BooleanValue(
                                                   ^
/home/mattis/.node-gyp/12.14.1/include/node/v8config.h:311:3: note: in
definition of macro =E2=80=98V8_DEPRECATED=E2=80=99
   declarator __attribute__((deprecated(message)))
   ^~~~~~~~~~
In file included from ../node_modules/nan/nan_new.h:189:0,
                 from ../node_modules/nan/nan.h:223,
                 from ../src/binding.cpp:1:
../node_modules/nan/nan_implementation_12_inl.h: In static member function
=E2=80=98static Nan::imp::FactoryBase<v8::StringObject>::return_t
Nan::imp::Factory<v8::StringObject>::New(v8::Local<v8::String>)=E2=80=99:
../node_modules/nan/nan_implementation_12_inl.h:356:37: error: no matching
function for call to =E2=80=98v8::StringObject::New(v8::Local<v8::String>&=
)=E2=80=99
   return v8::StringObject::New(value).As<v8::StringObject>();
                                     ^
In file included from
/home/mattis/.node-gyp/12.14.1/include/node/node.h:63:0,
                 from ../node_modules/nan/nan.h:53,
                 from ../src/binding.cpp:1:
/home/mattis/.node-gyp/12.14.1/include/node/v8.h:5426:23: note: candidate:
static v8::Local<v8::Value> v8::StringObject::New(v8::Isolate*,
v8::Local<v8::String>)
   static Local<Value> New(Isolate* isolate, Local<String> value);
                       ^~~
/home/mattis/.node-gyp/12.14.1/include/node/v8.h:5426:23: note:   candidat=
e
expects 2 arguments, 1 provided
In file included from ../node_modules/nan/nan_new.h:189:0,
                 from ../node_modules/nan/nan.h:223,
                 from ../src/binding.cpp:1:
../node_modules/nan/nan_implementation_12_inl.h:356:58: error: expected
primary-expression before =E2=80=98>=E2=80=99 token
   return v8::StringObject::New(value).As<v8::StringObject>();
                                                          ^
../node_modules/nan/nan_implementation_12_inl.h:356:60: error: expected
primary-expression before =E2=80=98)=E2=80=99 token
   return v8::StringObject::New(value).As<v8::StringObject>();
                                                            ^
In file included from /usr/include/c++/7/cassert:44:0,
                 from
/home/mattis/.node-gyp/12.14.1/include/node/node_object_wrap.h:26,
                 from ../node_modules/nan/nan.h:55,
                 from ../src/binding.cpp:1:
../node_modules/nan/nan_object_wrap.h: In destructor =E2=80=98virtual
Nan::ObjectWrap::~ObjectWrap()=E2=80=99:
../node_modules/nan/nan_object_wrap.h:24:25: error: =E2=80=98class
Nan::Persistent<v8::Object>=E2=80=99 has no member named =E2=80=98IsNearDe=
ath=E2=80=99
     assert(persistent().IsNearDeath());
                         ^
../node_modules/nan/nan_object_wrap.h: In static member function =E2=80=98=
static
void Nan::ObjectWrap::WeakCallback(const
v8::WeakCallbackInfo<Nan::ObjectWrap>&)=E2=80=99:
../node_modules/nan/nan_object_wrap.h:127:26: error: =E2=80=98class
Nan::Persistent<v8::Object>=E2=80=99 has no member named =E2=80=98IsNearDe=
ath=E2=80=99
     assert(wrap->handle_.IsNearDeath());
                          ^
binding.target.mk:129: recipe for target
'Release/obj.target/binding/src/binding.o' failed
make: *** [Release/obj.target/binding/src/binding.o] Error 1
make: Leaving directory
'/home/mattis/development/main/Unishop/template-2/node_modules/node-sass/b=
uild'
gyp ERR! build error
gyp ERR! stack Error: `make` failed with exit code: 2
gyp ERR! stack     at ChildProcess.onExit
(/home/mattis/development/main/Unishop/template-2/node_modules/node-gyp/li=
b/build.js:262:23)
gyp ERR! stack     at ChildProcess.emit (events.js:223:5)
gyp ERR! stack     at Process.ChildProcess._handle.onexit
(internal/child_process.js:272:12)
gyp ERR! System Linux 5.0.4-050004-generic
gyp ERR! command "/usr/local/bin/node"
"/home/mattis/development/main/Unishop/template-2/node_modules/node-gyp/bi=
n/node-gyp.js"
"rebuild" "--verbose" "--libsass_ext=3D" "--libsass_cflags=3D"
"--libsass_ldflags=3D" "--libsass_library=3D"
gyp ERR! cwd
/home/mattis/development/main/Unishop/template-2/node_modules/node-sass
gyp ERR! node -v v12.14.1
gyp ERR! node-gyp -v v3.8.0
gyp ERR! not ok
Build failed with error code: 1
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! node-sass@4.11.0 postinstall: `node scripts/build.js`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the node-sass@4.11.0 postinstall script.
npm ERR! This is probably not a problem with npm. There is likely
additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/mattis/.npm/_logs/2020-01-09T12_05_29_968Z-debug.log

On Wed, 8 Jan 2020 at 14:44, Andy Pont <andy.pont@sdcsystems.com> wrote:

> Hello,
>
> I=E2=80=99m not sure whether this is a hardware issue, Linux kernel issu=
e or a
> Yocto issue but as some of the finest minds are on the mailing lists I
> figured it was a good place to start! Enough flattery? :-)
>
> We are using a Boundary Devices Nitrogen6X Lite (i.MX6S) board as a demo
> platform for a project using the linux-boundary 4.14.98 kernel.   The
> Boundary Devices kernel is more-or-less the same as the Freescale kernel
> imx_4.14.x_2.0.0_ga.
>
> I am trying to get framebuffer rotation to work so that I can rotate the
> framebuffer console (on fb0) through 90 degrees.  I have the kernel
> configuration option CONFIG_FRAMEBUFFER_CONSOLE_ROTATION enabled and am
> trying to run some tests by setting values through
> /sys/class/graphics/fb0/rotate and /sys/class/graphics/fbcon/rotate.
>
> I have used fb-test to display an image onto the screen and if I write =
=E2=80=9C1=E2=80=9D
> to /sys/class/graphics/fb0/rotate then the display flips and looks great
> when viewed in a mirror.  No amount of trying to set other values will
> rotate the screen through 90 or 270 degrees.
>
> Is there an issue with rotation on the i.MX6 or is there a configuration
> setting that I am missing somewhere?
>
> -Andy.
>=20
>


--=20
Mattis Spieler Asp
Engineer
GlucoSet AS

E-mail: mattis.asp@glucoset.com <cecilie.arentz@glucoset.com>
Phone: +47 412 44 64 <%2B47%20416%2077%20756>8
www.glucoset.com


Disclaimer =E2=80=93 confidentiality: The content of this email is confide=
ntial and
intended for the recipient specified in this message only. It is strictly
forbidden to share any part of this message with any third party, without =
a
written consent of the sender. If you received this message by mistake,
please reply to this message and delete it, so that we can ensure such a
mistake does not occur in the future. If you and/or your employer has
entered into a non-disclosure-agreement whereby it shall be actively
specified that content shall be deemed as confidential in order to be
handled as such, we hereby confirm that this mail and its attachments are
considered confidential unless otherwise is specified in the above email.
Thank you for your cooperation and understanding.

--000000000000c0a2fd059bb41977
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><b>Uname -a </b><br>Linux purple 5.0.4-050004-generic=
 #201903231634 SMP Sat Mar 23 20:37:29 UTC 2019 x86_64 x86_64 x86_64 GNU/Li=
nux<br><br></div><b>Also <br></b><br><br>mattis@purple:~/development/main/U=
nishop/template-2$ lsb_release -a<br>No LSB modules are available.<br>Distr=
ibutor ID:	Ubuntu<br>Description:	Ubuntu 18.04.2 LTS<br>Release:	18.04<br>C=
odename:	bionic<br><br><br><b>Here is me running rebuild</b><br>mattis@purp=
le:~/development/main/Unishop/template-2$ sudo npm rebuild node-sass<br>[su=
do] password for mattis: <br><br>&gt; node-sass@4.11.0 install /home/mattis=
/development/main/Unishop/template-2/node_modules/node-sass<br>&gt; node sc=
ripts/install.js<br><br>Downloading binary from <a href=3D"https://github.c=
om/sass/node-sass/releases/download/v4.11.0/linux-x64-72_binding.node">http=
s://github.com/sass/node-sass/releases/download/v4.11.0/linux-x64-72_bindin=
g.node</a><br>Cannot download &quot;<a href=3D"https://github.com/sass/node=
-sass/releases/download/v4.11.0/linux-x64-72_binding.node">https://github.c=
om/sass/node-sass/releases/download/v4.11.0/linux-x64-72_binding.node</a>&q=
uot;: <br><br>HTTP error 404 Not Found<br><br>Hint: If <a href=3D"http://gi=
thub.com">github.com</a> is not accessible in your location<br>=C2=A0 =C2=
=A0 =C2=A0 try setting a proxy via HTTP_PROXY, e.g. <br><br>=C2=A0 =C2=A0 =
=
=C2=A0 export HTTP_PROXY=3D<a href=3D"http://example.com:1234">http://exam=
ple.com:1234</a><br><br>or configure npm proxy via<br><br>=C2=A0 =C2=A0 =C2=
=
=A0 npm config set proxy <a href=3D"http://example.com:8080">http://exampl=
e.com:8080</a><br><br>&gt; node-sass@4.11.0 postinstall /home/mattis/develo=
pment/main/Unishop/template-2/node_modules/node-sass<br>&gt; node scripts/b=
uild.js<br><br>Building: /usr/local/bin/node /home/mattis/development/main/=
Unishop/template-2/node_modules/node-gyp/bin/node-gyp.js rebuild --verbose =
--libsass_ext=3D --libsass_cflags=3D --libsass_ldflags=3D --libsass_library=
=
=3D<br>gyp info it worked if it ends with ok<br>gyp verb cli [<br>gyp verb=
 cli =C2=A0 &#39;/usr/local/bin/node&#39;,<br>gyp verb cli =C2=A0 &#39;/hom=
e/mattis/development/main/Unishop/template-2/node_modules/node-gyp/bin/node=
-gyp.js&#39;,<br>gyp verb cli =C2=A0 &#39;rebuild&#39;,<br>gyp verb cli =C2=
=
=A0 &#39;--verbose&#39;,<br>gyp verb cli =C2=A0 &#39;--libsass_ext=3D&#39;=
,<br>gyp verb cli =C2=A0 &#39;--libsass_cflags=3D&#39;,<br>gyp verb cli =C2=
=
=A0 &#39;--libsass_ldflags=3D&#39;,<br>gyp verb cli =C2=A0 &#39;--libsass_=
library=3D&#39;<br>gyp verb cli ]<br>gyp info using node-gyp@3.8.0<br>gyp i=
nfo using node@12.14.1 | linux | x64<br>gyp verb command rebuild []<br>gyp =
verb command clean []<br>gyp verb clean removing &quot;build&quot; director=
y<br>gyp verb command configure []<br>gyp verb check python checking for Py=
thon executable &quot;python2&quot; in the PATH<br>gyp verb `which` succeed=
ed python2 /usr/bin/python2<br>gyp verb check python version `/usr/bin/pyth=
on2 -c &quot;import sys; print &quot;2.7.17<br>gyp verb check python versio=
n .%s.%s&quot; % sys.version_info[:3];&quot;` returned: %j<br>gyp verb get =
node dir no --target version specified, falling back to host node version: =
12.14.1<br>gyp verb command install [ &#39;12.14.1&#39; ]<br>gyp verb insta=
ll input version string &quot;12.14.1&quot;<br>gyp verb install installing =
version: 12.14.1<br>gyp verb install --ensure was passed, so won&#39;t rein=
stall if already installed<br>gyp verb install version is already installed=
, need to check &quot;installVersion&quot;<br>gyp verb got &quot;installVer=
sion&quot; 9<br>gyp verb needs &quot;installVersion&quot; 9<br>gyp verb ins=
tall version is good<br>gyp verb get node dir target node version installed=
: 12.14.1<br>gyp verb build dir attempting to create &quot;build&quot; dir:=
 /home/mattis/development/main/Unishop/template-2/node_modules/node-sass/bu=
ild<br>gyp verb build dir &quot;build&quot; dir needed to be created? /home=
/mattis/development/main/Unishop/template-2/node_modules/node-sass/build<br=
>gyp verb build/config.gypi creating config file<br>gyp verb build/config.g=
ypi writing out config file: /home/mattis/development/main/Unishop/template=
-2/node_modules/node-sass/build/config.gypi<br>gyp verb config.gypi checkin=
g for gypi file: /home/mattis/development/main/Unishop/template-2/node_modu=
les/node-sass/config.gypi<br>gyp verb common.gypi checking for gypi file: /=
home/mattis/development/main/Unishop/template-2/node_modules/node-sass/comm=
on.gypi<br>gyp verb gyp gyp format was not specified; forcing &quot;make&qu=
ot;<br>gyp info spawn /usr/bin/python2<br>gyp info spawn args [<br>gyp info=
 spawn args =C2=A0 &#39;/home/mattis/development/main/Unishop/template-2/no=
de_modules/node-gyp/gyp/gyp_main.py&#39;,<br>gyp info spawn args =C2=A0 &#3=
9;binding.gyp&#39;,<br>gyp info spawn args =C2=A0 &#39;-f&#39;,<br>gyp info=
 spawn args =C2=A0 &#39;make&#39;,<br>gyp info spawn args =C2=A0 &#39;-I&#3=
9;,<br>gyp info spawn args =C2=A0 &#39;/home/mattis/development/main/Unisho=
p/template-2/node_modules/node-sass/build/config.gypi&#39;,<br>gyp info spa=
wn args =C2=A0 &#39;-I&#39;,<br>gyp info spawn args =C2=A0 &#39;/home/matti=
s/development/main/Unishop/template-2/node_modules/node-gyp/addon.gypi&#39;=
,<br>gyp info spawn args =C2=A0 &#39;-I&#39;,<br>gyp info spawn args =C2=A0=
 &#39;/home/mattis/.node-gyp/12.14.1/include/node/common.gypi&#39;,<br>gyp =
info spawn args =C2=A0 &#39;-Dlibrary=3Dshared_library&#39;,<br>gyp info sp=
awn args =C2=A0 &#39;-Dvisibility=3Ddefault&#39;,<br>gyp info spawn args =
=C2=A0 &#39;-Dnode_root_dir=3D/home/mattis/.node-gyp/12.14.1&#39;,<br>gyp =
info spawn args =C2=A0 &#39;-Dnode_gyp_dir=3D/home/mattis/development/main/=
Unishop/template-2/node_modules/node-gyp&#39;,<br>gyp info spawn args =C2=
=A0 &#39;-Dnode_lib_file=3D/home/mattis/.node-gyp/12.14.1/&lt;(target_arch=
)/node.lib&#39;,<br>gyp info spawn args =C2=A0 &#39;-Dmodule_root_dir=3D/ho=
me/mattis/development/main/Unishop/template-2/node_modules/node-sass&#39;,<=
br>gyp info spawn args =C2=A0 &#39;-Dnode_engine=3Dv8&#39;,<br>gyp info spa=
wn args =C2=A0 &#39;--depth=3D.&#39;,<br>gyp info spawn args =C2=A0 &#39;--=
no-parallel&#39;,<br>gyp info spawn args =C2=A0 &#39;--generator-output&#39=
;,<br>gyp info spawn args =C2=A0 &#39;build&#39;,<br>gyp info spawn args =
=C2=A0 &#39;-Goutput_dir=3D.&#39;<br>gyp info spawn args ]<br>gyp verb com=
mand build []<br>gyp verb build type Release<br>gyp verb architecture x64<b=
r>gyp verb node dev dir /home/mattis/.node-gyp/12.14.1<br>gyp verb `which` =
succeeded for `make` /usr/bin/make<br>gyp info spawn make<br>gyp info spawn=
 args [ &#39;V=3D1&#39;, &#39;BUILDTYPE=3DRelease&#39;, &#39;-C&#39;, &#39;=
build&#39; ]<br>make: Entering directory &#39;/home/mattis/development/main=
/Unishop/template-2/node_modules/node-sass/build&#39;<br>=C2=A0 g++ &#39;-D=
NODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-D=
USING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_=
DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39=
;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL=
_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&qu=
ot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/m=
attis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/c=
onfig -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home=
/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/=
deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass=
/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 =
-fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MM=
D -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/ast.o.d.ra=
w =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/ast.o ../src/libs=
ass/src/ast.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#=
39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEP=
RECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IM=
MINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE=
_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THRE=
ADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.no=
de-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/ma=
ttis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1=
/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/incl=
ude -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.=
14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -W=
extra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y=
 -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.targ=
et/libsass/src/libsass/src/ast_fwd_decl.o.d.raw =C2=A0 -c -o Release/obj.ta=
rget/libsass/src/libsass/src/ast_fwd_decl.o ../src/libsass/src/ast_fwd_decl=
.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_=
UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WA=
RNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPR=
ECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BIT=
S=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#=
39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.1=
4.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-=
gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/opens=
sl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home=
/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v=
8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-=
unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++=
0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/=
src/libsass/src/backtrace.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/s=
rc/libsass/src/backtrace.o ../src/libsass/src/backtrace.cpp<br>=C2=A0 g++ &=
#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &=
#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39=
;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39=
; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DO=
PENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=
=
=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I=
/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/op=
enssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include =
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/=
libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m=
64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -fr=
tti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/bas=
e64vlq.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/base=
64vlq.o ../src/libsass/src/base64vlq.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODU=
LE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHAR=
ED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_W=
ARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE=
_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED=
&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot=
;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-g=
yp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home=
/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node=
-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/=
home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=
=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-f=
rame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Rel=
ease/.deps/Release/obj.target/libsass/src/libsass/src/bind.o.d.raw =C2=A0 -=
c -o Release/obj.target/libsass/src/libsass/src/bind.o ../src/libsass/src/b=
ind.cpp<br>=C2=A0 cc &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSIN=
G_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_=
WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DE=
PRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_B=
ITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; =
&#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12=
.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.nod=
e-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/ope=
nssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/ho=
me/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps=
/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wn=
o-unused-parameter -m64 -O3 -fno-omit-frame-pointer =C2=A0-MMD -MF ./Releas=
e/.deps/Release/obj.target/libsass/src/libsass/src/cencode.o.d.raw =C2=A0 -=
c -o Release/obj.target/libsass/src/libsass/src/cencode.o ../src/libsass/sr=
c/cencode.c<br>../src/libsass/src/cencode.c: In function =E2=80=98base64_en=
code_block=E2=80=99:<br>../src/libsass/src/cencode.c:48:11: warning: this s=
tatement may fall through [-Wimplicit-fallthrough=3D]<br>=C2=A0 =C2=A0 resu=
lt =3D (fragment &amp; 0x003) &lt;&lt; 4;<br>=C2=A0 =C2=A0 ~~~~~~~^~~~~~~~~=
~~~~~~~~~~~~~~~~<br>../src/libsass/src/cencode.c:52:2: note: here<br>=C2=A0=
 case step_B:<br>=C2=A0 ^~~~<br>../src/libsass/src/cencode.c:62:11: warning=
: this statement may fall through [-Wimplicit-fallthrough=3D]<br>=C2=A0 =C2=
=
=A0 result =3D (fragment &amp; 0x00f) &lt;&lt; 2;<br>=C2=A0 =C2=A0 ~~~~~~~=
^~~~~~~~~~~~~~~~~~~~~~~~~<br>../src/libsass/src/cencode.c:66:2: note: here<=
br>=C2=A0 case step_C:<br>=C2=A0 ^~~~<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_=
NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=
=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WA=
RNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_=
SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&=
#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;=
&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gy=
p/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/=
mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-=
gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/h=
ome/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=
=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-f=
rame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Rel=
ease/.deps/Release/obj.target/libsass/src/libsass/src/check_nesting.o.d.raw=
 =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/check_nesting.o ..=
/src/libsass/src/check_nesting.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAM=
E=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1=
&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNING=
S&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURC=
E&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; =
&#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39;=
 -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.=
14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/matti=
s/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/m=
attis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPI=
C -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-poi=
nter -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.de=
ps/Release/obj.target/libsass/src/libsass/src/color_maps.o.d.raw =C2=A0 -c =
-o Release/obj.target/libsass/src/libsass/src/color_maps.o ../src/libsass/s=
rc/color_maps.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; =
&#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_D=
EPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_=
IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FI=
LE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_TH=
READS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.=
node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/=
mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14=
.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/in=
clude -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/1=
2.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall =
-Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++=
1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.ta=
rget/libsass/src/libsass/src/constants.o.d.raw =C2=A0 -c -o Release/obj.tar=
get/libsass/src/libsass/src/constants.o ../src/libsass/src/constants.cpp<br=
>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHAR=
ED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=
=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATI=
ON_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D6=
4&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-D=
LIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/i=
nclude/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/1=
2.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/op=
enssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/matt=
is/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/inc=
lude -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unuse=
d-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -f=
exceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/l=
ibsass/src/context.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libs=
ass/src/context.o ../src/libsass/src/context.cpp<br>=C2=A0 g++ &#39;-DNODE_=
GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING=
_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRE=
CATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_L=
ARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_P=
INSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.=
5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis=
/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config=
 -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/matt=
is/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/=
zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/incl=
ude =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-=
omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF=
 ./Release/.deps/Release/obj.target/libsass/src/libsass/src/cssize.o.d.raw =
=
=C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/cssize.o ../src/li=
bsass/src/cssize.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#3=
9; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV=
8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-D=
V8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D=
_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL=
_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/matti=
s/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/ho=
me/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12=
.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv=
/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gy=
p/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wa=
ll -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgn=
u++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj=
.target/libsass/src/libsass/src/emitter.o.d.raw =C2=A0 -c -o Release/obj.ta=
rget/libsass/src/libsass/src/emitter.o ../src/libsass/src/emitter.cpp<br>=
=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHAR=
ED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=
=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATI=
ON_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D6=
4&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-D=
LIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/i=
nclude/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/1=
2.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/op=
enssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/matt=
is/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/inc=
lude -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unuse=
d-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -f=
exceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/l=
ibsass/src/environment.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/=
libsass/src/environment.o ../src/libsass/src/environment.cpp<br>=C2=A0 g++ =
&#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; =
&#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#3=
9;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#3=
9; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-D=
OPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSIO=
N=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I=
/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/op=
enssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include =
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/=
libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m=
64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -fr=
tti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/err=
or_handling.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src=
/error_handling.o ../src/libsass/src/error_handling.cpp<br>=C2=A0 g++ &#39;=
-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;=
-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV=
8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#=
39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENS=
SL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&=
quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home=
/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl=
/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/ho=
me/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.=
1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsa=
ss/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O=
3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -=
MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/eval.o.d=
.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/eval.o ../src/=
libsass/src/eval.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#3=
9; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV=
8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-D=
V8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D=
_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL=
_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/matti=
s/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/ho=
me/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12=
.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv=
/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gy=
p/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wa=
ll -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgn=
u++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj=
.target/libsass/src/libsass/src/expand.o.d.raw =C2=A0 -c -o Release/obj.tar=
get/libsass/src/libsass/src/expand.o ../src/libsass/src/expand.cpp<br>=C2=
=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=
=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=
=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATI=
ON_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D6=
4&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-D=
LIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/i=
nclude/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/1=
2.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/op=
enssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/matt=
is/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/inc=
lude -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unuse=
d-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -f=
exceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/l=
ibsass/src/extend.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsa=
ss/src/extend.o ../src/libsass/src/extend.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP=
_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8=
_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECAT=
ION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARG=
EFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINS=
HARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4=
&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.n=
ode-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I=
/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/=
.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zli=
b -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include=
 =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omi=
t-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./=
Release/.deps/Release/obj.target/libsass/src/libsass/src/file.o.d.raw =C2=
=A0 -c -o Release/obj.target/libsass/src/libsass/src/file.o ../src/libsass=
/src/file.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39=
;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRE=
CATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMI=
NENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_O=
FFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREAD=
S&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node=
-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/matt=
is/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/d=
eps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/includ=
e -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14=
.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wex=
tra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -=
std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target=
/libsass/src/libsass/src/functions.o.d.raw =C2=A0 -c -o Release/obj.target/=
libsass/src/libsass/src/functions.o ../src/libsass/src/functions.cpp<br>=C2=
=
=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=
=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=
=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATI=
ON_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D6=
4&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-D=
LIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/i=
nclude/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/1=
2.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/op=
enssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/matt=
is/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/inc=
lude -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unuse=
d-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -f=
exceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/l=
ibsass/src/inspect.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libs=
ass/src/inspect.o ../src/libsass/src/inspect.cpp<br>=C2=A0 g++ &#39;-DNODE_=
GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING=
_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRE=
CATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_L=
ARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_P=
INSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.=
5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis=
/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config=
 -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/matt=
is/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/=
zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/incl=
ude =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-=
omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF=
 ./Release/.deps/Release/obj.target/libsass/src/libsass/src/json.o.d.raw =
=C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/json.o ../src/libs=
ass/src/json.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &=
#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DE=
PRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_I=
MMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FIL=
E_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THR=
EADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.n=
ode-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/m=
attis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.=
1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/inc=
lude -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12=
.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -=
Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1=
y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.tar=
get/libsass/src/libsass/src/lexer.o.d.raw =C2=A0 -c -o Release/obj.target/l=
ibsass/src/libsass/src/lexer.o ../src/libsass/src/lexer.cpp<br>=C2=A0 g++ &=
#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &=
#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39=
;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39=
; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DO=
PENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=
=
=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I=
/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/op=
enssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include =
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/=
libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m=
64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -fr=
tti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/lis=
tize.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/listiz=
e.o ../src/libsass/src/listize.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAM=
E=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1=
&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNING=
S&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURC=
E&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; =
&#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39;=
 -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.=
14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/matti=
s/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/m=
attis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPI=
C -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-poi=
nter -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.de=
ps/Release/obj.target/libsass/src/libsass/src/memory/SharedPtr.o.d.raw =C2=
=A0 -c -o Release/obj.target/libsass/src/libsass/src/memory/SharedPtr.o ..=
/src/libsass/src/memory/SharedPtr.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_=
NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=
=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WA=
RNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_=
SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&=
#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;=
&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gy=
p/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/=
mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-=
gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/h=
ome/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=
=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-f=
rame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Rel=
ease/.deps/Release/obj.target/libsass/src/libsass/src/node.o.d.raw =C2=A0 -=
c -o Release/obj.target/libsass/src/libsass/src/node.o ../src/libsass/src/n=
ode.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSI=
NG_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION=
_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_D=
EPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_=
BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39;=
 &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/1=
2.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.no=
de-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/op=
enssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/h=
ome/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/dep=
s/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -W=
no-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3D=
c++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsa=
ss/src/libsass/src/operators.o.d.raw =C2=A0 -c -o Release/obj.target/libsas=
s/src/libsass/src/operators.o ../src/libsass/src/operators.cpp<br>=C2=A0 g+=
+ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39=
; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &=
#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&=
#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;=
-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERS=
ION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node =
-I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/=
openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/includ=
e -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp=
/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../sr=
c/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter =
-m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -=
frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/o=
utput.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/outpu=
t.o ../src/libsass/src/output.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=
=
=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1=
&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNING=
S&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURC=
E&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; =
&#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39;=
 -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.=
14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/matti=
s/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/m=
attis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPI=
C -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-poi=
nter -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.de=
ps/Release/obj.target/libsass/src/libsass/src/parser.o.d.raw =C2=A0 -c -o R=
elease/obj.target/libsass/src/libsass/src/parser.o ../src/libsass/src/parse=
r.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING=
_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_W=
ARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEP=
RECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BI=
TS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &=
#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.=
14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node=
-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/open=
ssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/hom=
e/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/=
v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno=
-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc+=
+0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass=
/src/libsass/src/plugins.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/sr=
c/libsass/src/plugins.o ../src/libsass/src/plugins.cpp<br>=C2=A0 g++ &#39;-=
DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-=
DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8=
_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#3=
9;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSS=
L_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&q=
uot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/=
mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/=
config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/hom=
e/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1=
/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsas=
s/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3=
 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -M=
MD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/position.=
o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/position.o =
../src/libsass/src/position.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=
=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1=
&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNING=
S&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURC=
E&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; =
&#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39;=
 -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.=
14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/matti=
s/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/m=
attis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPI=
C -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-poi=
nter -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.de=
ps/Release/obj.target/libsass/src/libsass/src/prelexer.o.d.raw =C2=A0 -c -o=
 Release/obj.target/libsass/src/libsass/src/prelexer.o ../src/libsass/src/p=
relexer.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-=
DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECA=
TION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINE=
NT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFF=
SET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&=
#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-g=
yp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis=
/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/dep=
s/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include =
-I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1=
/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextr=
a -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -st=
d=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/l=
ibsass/src/libsass/src/remove_placeholders.o.d.raw =C2=A0 -c -o Release/obj=
.target/libsass/src/libsass/src/remove_placeholders.o ../src/libsass/src/re=
move_placeholders.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#=
39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-D=
V8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-=
DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-=
D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSS=
L_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/matt=
is/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/h=
ome/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/1=
2.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/u=
v/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-g=
yp/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -W=
all -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dg=
nu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/ob=
j.target/libsass/src/libsass/src/sass.o.d.raw =C2=A0 -c -o Release/obj.targ=
et/libsass/src/libsass/src/sass.o ../src/libsass/src/sass.cpp<br>=C2=A0 g++=
 &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39;=
 &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#=
39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#=
39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-=
DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSI=
ON=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -=
I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/o=
penssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include=
 -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/=
12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src=
/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -=
m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -f=
rtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/sa=
ss2scss.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/sas=
s2scss.o ../src/libsass/src/sass2scss.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MOD=
ULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHA=
RED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_=
WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFIL=
E_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARE=
D&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quo=
t;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-=
gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/hom=
e/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.nod=
e-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I=
/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=
=
=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-f=
rame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Rel=
ease/.deps/Release/obj.target/libsass/src/libsass/src/sass_context.o.d.raw =
=
=C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/sass_context.o ../=
src/libsass/src/sass_context.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=
=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1=
&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNING=
S&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURC=
E&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; =
&#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39;=
 -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.=
14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/matti=
s/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/m=
attis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPI=
C -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-poi=
nter -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.de=
ps/Release/obj.target/libsass/src/libsass/src/sass_functions.o.d.raw =C2=A0=
 -c -o Release/obj.target/libsass/src/libsass/src/sass_functions.o ../src/l=
ibsass/src/sass_functions.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dl=
ibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39;=
 &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39=
; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39=
; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;=
-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/h=
ome/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/=
src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.no=
de-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.=
1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis=
/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pt=
hread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer =
-std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Re=
lease/obj.target/libsass/src/libsass/src/sass_util.o.d.raw =C2=A0 -c -o Rel=
ease/obj.target/libsass/src/libsass/src/sass_util.o ../src/libsass/src/sass=
_util.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DU=
SING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATI=
ON_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT=
_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSE=
T_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#3=
9; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp=
/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.=
node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/=
openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I=
/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/d=
eps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra =
-Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=
=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/l=
ibsass/src/libsass/src/sass_values.o.d.raw =C2=A0 -c -o Release/obj.target/=
libsass/src/libsass/src/sass_values.o ../src/libsass/src/sass_values.cpp<br=
>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHAR=
ED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=
=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATI=
ON_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D6=
4&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-D=
LIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/i=
nclude/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/1=
2.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/op=
enssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/matt=
is/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/inc=
lude -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unuse=
d-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -f=
exceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/l=
ibsass/src/source_map.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/l=
ibsass/src/source_map.o ../src/libsass/src/source_map.cpp<br>=C2=A0 g++ &#3=
9;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#3=
9;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-=
DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; =
&#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPE=
NSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=
=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I=
/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/op=
enssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include =
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/=
libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m=
64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -fr=
tti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/sub=
set_map.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/sub=
set_map.o ../src/libsass/src/subset_map.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_M=
ODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_S=
HARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATIO=
N_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEF=
ILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHA=
RED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&q=
uot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.nod=
e-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/h=
ome/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.n=
ode-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib =
-I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =
=C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omi=
t-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./=
Release/.deps/Release/obj.target/libsass/src/libsass/src/to_c.o.d.raw =C2=
=A0 -c -o Release/obj.target/libsass/src/libsass/src/to_c.o ../src/libsass=
/src/to_c.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39=
;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRE=
CATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMI=
NENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_O=
FFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREAD=
S&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node=
-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/home/matt=
is/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12.14.1/d=
eps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv/includ=
e -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14=
.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wall -Wex=
tra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -=
std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj.target=
/libsass/src/libsass/src/to_value.o.d.raw =C2=A0 -c -o Release/obj.target/l=
ibsass/src/libsass/src/to_value.o ../src/libsass/src/to_value.cpp<br>=C2=A0=
 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&=
#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39=
; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNIN=
GS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#=
39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_V=
ERSION=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/no=
de -I/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/de=
ps/openssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/inc=
lude -I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-=
gyp/12.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I..=
/src/libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-paramet=
er -m64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexception=
s -frtti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/sr=
c/units.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/uni=
ts.o ../src/libsass/src/units.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=
=
=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1=
&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNING=
S&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURC=
E&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; =
&#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39;=
 -I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.=
14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/matti=
s/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/m=
attis/.node-gyp/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPI=
C -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-poi=
nter -std=3Dgnu++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.de=
ps/Release/obj.target/libsass/src/libsass/src/utf8_string.o.d.raw =C2=A0 -c=
 -o Release/obj.target/libsass/src/libsass/src/utf8_string.o ../src/libsass=
/src/utf8_string.cpp<br>=C2=A0 g++ &#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#3=
9; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV=
8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS&#39; &#39;-D=
V8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D=
_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL=
_THREADS&#39; &#39;-DLIBSASS_VERSION=3D&quot;3.5.4&quot;&#39; -I/home/matti=
s/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.14.1/src -I/ho=
me/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis/.node-gyp/12=
.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12.14.1/deps/uv=
/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/mattis/.node-gy=
p/12.14.1/deps/v8/include -I../src/libsass/include =C2=A0-fPIC -pthread -Wa=
ll -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=3Dgn=
u++1y -std=3Dc++0x -fexceptions -frtti -MMD -MF ./Release/.deps/Release/obj=
.target/libsass/src/libsass/src/util.o.d.raw =C2=A0 -c -o Release/obj.targe=
t/libsass/src/libsass/src/util.o ../src/libsass/src/util.cpp<br>=C2=A0 g++ =
&#39;-DNODE_GYP_MODULE_NAME=3Dlibsass&#39; &#39;-DUSING_UV_SHARED=3D1&#39; =
&#39;-DUSING_V8_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#3=
9;-DV8_DEPRECATION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#3=
9; &#39;-D_LARGEFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-D=
OPENSSL_NO_PINSHARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DLIBSASS_VERSIO=
N=3D&quot;3.5.4&quot;&#39; -I/home/mattis/.node-gyp/12.14.1/include/node -I=
/home/mattis/.node-gyp/12.14.1/src -I/home/mattis/.node-gyp/12.14.1/deps/op=
enssl/config -I/home/mattis/.node-gyp/12.14.1/deps/openssl/openssl/include =
-I/home/mattis/.node-gyp/12.14.1/deps/uv/include -I/home/mattis/.node-gyp/1=
2.14.1/deps/zlib -I/home/mattis/.node-gyp/12.14.1/deps/v8/include -I../src/=
libsass/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m=
64 -O3 -fno-omit-frame-pointer -std=3Dgnu++1y -std=3Dc++0x -fexceptions -fr=
tti -MMD -MF ./Release/.deps/Release/obj.target/libsass/src/libsass/src/val=
ues.o.d.raw =C2=A0 -c -o Release/obj.target/libsass/src/libsass/src/values.=
o ../src/libsass/src/values.cpp<br>=C2=A0 rm -f Release/obj.target/src/sass=
.a &amp;&amp; ar crs Release/obj.target/src/sass.a Release/obj.target/libsa=
ss/src/libsass/src/ast.o Release/obj.target/libsass/src/libsass/src/ast_fwd=
_decl.o Release/obj.target/libsass/src/libsass/src/backtrace.o Release/obj.=
target/libsass/src/libsass/src/base64vlq.o Release/obj.target/libsass/src/l=
ibsass/src/bind.o Release/obj.target/libsass/src/libsass/src/cencode.o Rele=
ase/obj.target/libsass/src/libsass/src/check_nesting.o Release/obj.target/l=
ibsass/src/libsass/src/color_maps.o Release/obj.target/libsass/src/libsass/=
src/constants.o Release/obj.target/libsass/src/libsass/src/context.o Releas=
e/obj.target/libsass/src/libsass/src/cssize.o Release/obj.target/libsass/sr=
c/libsass/src/emitter.o Release/obj.target/libsass/src/libsass/src/environm=
ent.o Release/obj.target/libsass/src/libsass/src/error_handling.o Release/o=
bj.target/libsass/src/libsass/src/eval.o Release/obj.target/libsass/src/lib=
sass/src/expand.o Release/obj.target/libsass/src/libsass/src/extend.o Relea=
se/obj.target/libsass/src/libsass/src/file.o Release/obj.target/libsass/src=
/libsass/src/functions.o Release/obj.target/libsass/src/libsass/src/inspect=
.o Release/obj.target/libsass/src/libsass/src/json.o Release/obj.target/lib=
sass/src/libsass/src/lexer.o Release/obj.target/libsass/src/libsass/src/lis=
tize.o Release/obj.target/libsass/src/libsass/src/memory/SharedPtr.o Releas=
e/obj.target/libsass/src/libsass/src/node.o Release/obj.target/libsass/src/=
libsass/src/operators.o Release/obj.target/libsass/src/libsass/src/output.o=
 Release/obj.target/libsass/src/libsass/src/parser.o Release/obj.target/lib=
sass/src/libsass/src/plugins.o Release/obj.target/libsass/src/libsass/src/p=
osition.o Release/obj.target/libsass/src/libsass/src/prelexer.o Release/obj=
.target/libsass/src/libsass/src/remove_placeholders.o Release/obj.target/li=
bsass/src/libsass/src/sass.o Release/obj.target/libsass/src/libsass/src/sas=
s2scss.o Release/obj.target/libsass/src/libsass/src/sass_context.o Release/=
obj.target/libsass/src/libsass/src/sass_functions.o Release/obj.target/libs=
ass/src/libsass/src/sass_util.o Release/obj.target/libsass/src/libsass/src/=
sass_values.o Release/obj.target/libsass/src/libsass/src/source_map.o Relea=
se/obj.target/libsass/src/libsass/src/subset_map.o Release/obj.target/libsa=
ss/src/libsass/src/to_c.o Release/obj.target/libsass/src/libsass/src/to_val=
ue.o Release/obj.target/libsass/src/libsass/src/units.o Release/obj.target/=
libsass/src/libsass/src/utf8_string.o Release/obj.target/libsass/src/libsas=
s/src/util.o Release/obj.target/libsass/src/libsass/src/values.o<br>=C2=A0 =
rm -rf &quot;Release/sass.a&quot; &amp;&amp; cp -af &quot;Release/obj.targe=
t/src/sass.a&quot; &quot;Release/sass.a&quot;<br>=C2=A0 g++ &#39;-DNODE_GYP=
_MODULE_NAME=3Dbinding&#39; &#39;-DUSING_UV_SHARED=3D1&#39; &#39;-DUSING_V8=
_SHARED=3D1&#39; &#39;-DV8_DEPRECATION_WARNINGS=3D1&#39; &#39;-DV8_DEPRECAT=
ION_WARNINGS&#39; &#39;-DV8_IMMINENT_DEPRECATION_WARNINGS&#39; &#39;-D_LARG=
EFILE_SOURCE&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-DOPENSSL_NO_PINS=
HARED&#39; &#39;-DOPENSSL_THREADS&#39; &#39;-DBUILDING_NODE_EXTENSION&#39; =
-I/home/mattis/.node-gyp/12.14.1/include/node -I/home/mattis/.node-gyp/12.1=
4.1/src -I/home/mattis/.node-gyp/12.14.1/deps/openssl/config -I/home/mattis=
/.node-gyp/12.14.1/deps/openssl/openssl/include -I/home/mattis/.node-gyp/12=
.14.1/deps/uv/include -I/home/mattis/.node-gyp/12.14.1/deps/zlib -I/home/ma=
ttis/.node-gyp/12.14.1/deps/v8/include -I../node_modules/nan -I../src/libsa=
ss/include =C2=A0-fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O=
3 -fno-omit-frame-pointer -fno-rtti -fno-exceptions -std=3Dgnu++1y -std=3Dc=
++0x -MMD -MF ./Release/.deps/Release/obj.target/binding/src/binding.o.d.ra=
w =C2=A0 -c -o Release/obj.target/binding/src/binding.o ../src/binding.cpp<=
br>In file included from ../node_modules/nan/nan_converters.h:67:0,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../node_mo=
dules/nan/nan.h:222,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from ../src/binding.cpp:1:<br>../node_modules/nan/nan_convert=
ers_43_inl.h: In static member function =E2=80=98static Nan::imp::ToFactory=
Base&lt;v8::Boolean&gt;::return_t Nan::imp::ToFactory&lt;v8::Boolean&gt;::c=
onvert(v8::Local&lt;v8::Value&gt;)=E2=80=99:<br>../node_modules/nan/nan_con=
verters_43_inl.h:18:51: warning: =E2=80=98v8::MaybeLocal&lt;v8::Boolean&gt;=
 v8::Value::ToBoolean(v8::Local&lt;v8::Context&gt;) const=E2=80=99 is depre=
cated: ToBoolean can never throw. Use Local version. [-Wdeprecated-declarat=
ions]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0val-&gt;To ## TYPE(isolate-&gt;GetCurre=
ntContext()) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^=
<br>../node_modules/nan/nan_converters_43_inl.h:22:1: note: in expansion of=
 macro =E2=80=98X=E2=80=99<br>=C2=A0X(Boolean)<br>=C2=A0^<br>In file includ=
ed from /home/mattis/.node-gyp/12.14.1/include/node/v8-internal.h:14:0,<br>=
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/m=
attis/.node-gyp/12.14.1/include/node/v8.h:25,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/mattis/.node-gyp/12.14.1/=
include/node/node.h:63,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0from ../node_modules/nan/nan.h:53,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../src/binding.cpp:1:<br>/ho=
me/mattis/.node-gyp/12.14.1/include/node/v8.h:2568:59: note: declared here<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0V8_WARN_UN=
USED_RESULT MaybeLocal&lt;Boolean&gt; ToBoolean(<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/mattis/.node-gyp/12.14=
.1/include/node/v8config.h:311:3: note: in definition of macro =E2=80=98V8_=
DEPRECATED=E2=80=99<br>=C2=A0 =C2=A0declarator __attribute__((deprecated(me=
ssage)))<br>=C2=A0 =C2=A0^~~~~~~~~~<br>In file included from ../node_module=
s/nan/nan_converters.h:67:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0from ../node_modules/nan/nan.h:222,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../src/binding.cpp:1:=
<br>../node_modules/nan/nan_converters_43_inl.h: In static member function =
=
=E2=80=98static Nan::imp::ValueFactoryBase&lt;bool&gt;::return_t Nan::imp:=
:ToFactory&lt;bool&gt;::convert(v8::Local&lt;v8::Value&gt;)=E2=80=99:<br>..=
/node_modules/nan/nan_converters_43_inl.h:37:57: warning: =E2=80=98v8::Mayb=
e&lt;bool&gt; v8::Value::BooleanValue(v8::Local&lt;v8::Context&gt;) const=
=E2=80=99 is deprecated: BooleanValue can never throw. Use Isolate version=
. [-Wdeprecated-declarations]<br>=C2=A0 =C2=A0return val-&gt;NAME ## Value(=
isolate-&gt;GetCurrentContext()); =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0^<br>../node_modules/nan/nan_converters_43_inl.h:40:1: note: =
in expansion of macro =E2=80=98X=E2=80=99<br>=C2=A0X(bool, Boolean)<br>=C2=
=A0^<br>In file included from /home/mattis/.node-gyp/12.14.1/include/node/=
v8-internal.h:14:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0from /home/mattis/.node-gyp/12.14.1/include/node/v8.h:25,<br>=C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/matt=
is/.node-gyp/12.14.1/include/node/node.h:63,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../node_modules/nan/nan.h:53,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../src/=
binding.cpp:1:<br>/home/mattis/.node-gyp/12.14.1/include/node/v8.h:2606:51:=
 note: declared here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0V8_WARN_UNUSED_RESULT Maybe&lt;bool&gt; BooleanValue(<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/mattis/.node-gyp/12.14.1/include=
/node/v8config.h:311:3: note: in definition of macro =E2=80=98V8_DEPRECATED=
=
=E2=80=99<br>=C2=A0 =C2=A0declarator __attribute__((deprecated(message)))<=
br>=C2=A0 =C2=A0^~~~~~~~~~<br>In file included from ../node_modules/nan/nan=
_new.h:189:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from ../node_modules/nan/nan.h:223,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../src/binding.cpp:1:<br>../node_mo=
dules/nan/nan_implementation_12_inl.h: In static member function =E2=80=98s=
tatic Nan::imp::FactoryBase&lt;v8::StringObject&gt;::return_t Nan::imp::Fac=
tory&lt;v8::StringObject&gt;::New(v8::Local&lt;v8::String&gt;)=E2=80=99:<br=
>../node_modules/nan/nan_implementation_12_inl.h:356:37: error: no matching=
 function for call to =E2=80=98v8::StringObject::New(v8::Local&lt;v8::Strin=
g&gt;&amp;)=E2=80=99<br>=C2=A0 =C2=A0return v8::StringObject::New(value).As=
&lt;v8::StringObject&gt;();<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0^<br>In file included from /home/mattis/.node-gyp/12.14.1=
/include/node/node.h:63:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0from ../node_modules/nan/nan.h:53,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../src/binding.cpp:1:<br=
>/home/mattis/.node-gyp/12.14.1/include/node/v8.h:5426:23: note: candidate:=
 static v8::Local&lt;v8::Value&gt; v8::StringObject::New(v8::Isolate*, v8::=
Local&lt;v8::String&gt;)<br>=C2=A0 =C2=A0static Local&lt;Value&gt; New(Isol=
ate* isolate, Local&lt;String&gt; value);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~<br>/home/mattis=
/.node-gyp/12.14.1/include/node/v8.h:5426:23: note: =C2=A0 candidate expect=
s 2 arguments, 1 provided<br>In file included from ../node_modules/nan/nan_=
new.h:189:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0from ../node_modules/nan/nan.h:223,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../src/binding.cpp:1:<br>../node_modul=
es/nan/nan_implementation_12_inl.h:356:58: error: expected primary-expressi=
on before =E2=80=98&gt;=E2=80=99 token<br>=C2=A0 =C2=A0return v8::StringObj=
ect::New(value).As&lt;v8::StringObject&gt;();<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>../node_modules/nan/nan_implementatio=
n_12_inl.h:356:60: error: expected primary-expression before =E2=80=98)=E2=
=80=99 token<br>=C2=A0 =C2=A0return v8::StringObject::New(value).As&lt;v8:=
:StringObject&gt;();<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 ^<br>In file included from /usr/include/c++/7/cassert:44:0,<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home=
/mattis/.node-gyp/12.14.1/include/node/node_object_wrap.h:26,<br>=C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../node_modules/n=
an/nan.h:55,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0from ../src/binding.cpp:1:<br>../node_modules/nan/nan_object_wrap.h: In=
 destructor =E2=80=98virtual Nan::ObjectWrap::~ObjectWrap()=E2=80=99:<br>..=
/node_modules/nan/nan_object_wrap.h:24:25: error: =E2=80=98class Nan::Persi=
stent&lt;v8::Object&gt;=E2=80=99 has no member named =E2=80=98IsNearDeath=
=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0assert(persistent().IsNearDeath());<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0^<br>../node_modules/nan/nan_object_wrap.h: In static mem=
ber function =E2=80=98static void Nan::ObjectWrap::WeakCallback(const v8::W=
eakCallbackInfo&lt;Nan::ObjectWrap&gt;&amp;)=E2=80=99:<br>../node_modules/n=
an/nan_object_wrap.h:127:26: error: =E2=80=98class Nan::Persistent&lt;v8::O=
bject&gt;=E2=80=99 has no member named =E2=80=98IsNearDeath=E2=80=99<br>=C2=
=
=A0 =C2=A0 =C2=A0assert(wrap-&gt;handle_.IsNearDeath());<br>=C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ^<br><a href=3D"http://binding.target.mk:129">binding.target.mk:129</a=
>: recipe for target &#39;Release/obj.target/binding/src/binding.o&#39; fai=
led<br>make: *** [Release/obj.target/binding/src/binding.o] Error 1<br>make=
: Leaving directory &#39;/home/mattis/development/main/Unishop/template-2/n=
ode_modules/node-sass/build&#39;<br>gyp ERR! build error <br>gyp ERR! stack=
 Error: `make` failed with exit code: 2<br>gyp ERR! stack =C2=A0 =C2=A0 at =
ChildProcess.onExit (/home/mattis/development/main/Unishop/template-2/node_=
modules/node-gyp/lib/build.js:262:23)<br>gyp ERR! stack =C2=A0 =C2=A0 at Ch=
ildProcess.emit (events.js:223:5)<br>gyp ERR! stack =C2=A0 =C2=A0 at Proces=
s.ChildProcess._handle.onexit (internal/child_process.js:272:12)<br>gyp ERR=
! System Linux 5.0.4-050004-generic<br>gyp ERR! command &quot;/usr/local/bi=
n/node&quot; &quot;/home/mattis/development/main/Unishop/template-2/node_mo=
dules/node-gyp/bin/node-gyp.js&quot; &quot;rebuild&quot; &quot;--verbose&qu=
ot; &quot;--libsass_ext=3D&quot; &quot;--libsass_cflags=3D&quot; &quot;--li=
bsass_ldflags=3D&quot; &quot;--libsass_library=3D&quot;<br>gyp ERR! cwd /ho=
me/mattis/development/main/Unishop/template-2/node_modules/node-sass<br>gyp=
 ERR! node -v v12.14.1<br>gyp ERR! node-gyp -v v3.8.0<br>gyp ERR! not ok <b=
r>Build failed with error code: 1<br>npm ERR! code ELIFECYCLE<br>npm ERR! e=
rrno 1<br>npm ERR! node-sass@4.11.0 postinstall: `node scripts/build.js`<br=
>npm ERR! Exit status 1<br>npm ERR! <br>npm ERR! Failed at the node-sass@4.=
11.0 postinstall script.<br>npm ERR! This is probably not a problem with np=
m. There is likely additional logging output above.<br><br>npm ERR! A compl=
ete log of this run can be found in:<br>npm ERR! =C2=A0 =C2=A0 /home/mattis=
/.npm/_logs/2020-01-09T12_05_29_968Z-debug.log</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 8 Jan 2020 at 14:44, =
Andy Pont &lt;<a href=3D"mailto:andy.pont@sdcsystems.com">andy.pont@sdcsyst=
ems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div><div>Hello,</div><div><br></div><div>I=E2=80=99m not sure wheth=
er this is a hardware issue, Linux kernel issue or a Yocto issue but as som=
e of the finest minds are on the mailing lists I figured it was a good plac=
e to start! Enough flattery? :-)</div><div><br></div><div>We are using a Bo=
undary Devices Nitrogen6X Lite (i.MX6S) board as a demo platform for a proj=
ect using the linux-boundary 4.14.98 kernel. =C2=A0 The Boundary Devices ke=
rnel is more-or-less the same as the Freescale kernel imx_4.14.x_2.0.0_ga.<=
/div><div><br></div><div>I am trying to get framebuffer rotation to work so=
 that I can rotate the framebuffer console (on fb0) through 90 degrees.=C2=
=A0 I have the kernel configuration option CONFIG_FRAMEBUFFER_CONSOLE_ROTA=
TION enabled and am trying to run some tests by setting values through /sys=
/class/graphics/fb0/rotate and /sys/class/graphics/fbcon/rotate.</div><div>=
<br></div><div>I have used fb-test to display an image onto the screen and =
if I write =E2=80=9C1=E2=80=9D to /sys/class/graphics/fb0/rotate then the d=
isplay flips and looks great when viewed in a mirror.=C2=A0 No amount of tr=
ying to set other values will rotate the screen through 90 or 270 degrees.<=
/div><div><br></div><div>Is there an issue with rotation on the i.MX6 or is=
 there a configuration setting that I am missing somewhere?</div><div><br><=
/div><div>-Andy.</div>
</div>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><span style=3D"font-size:12.8px">Mattis Spieler Asp</span><br style=3D"f=
ont-size:12.8px"><span style=3D"font-size:12.8px">Engineer</span><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">GlucoSet AS</span><=
br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D=
"font-size:12.8px">E-mail:=C2=A0</span><a href=3D"mailto:cecilie.arentz@glu=
coset.com" style=3D"color:rgb(17,85,204);font-size:12.8px" target=3D"_blank=
">mattis.asp@glucoset.com</a><br style=3D"font-size:12.8px"><span style=3D"=
font-size:12.8px">Phone:=C2=A0</span><a href=3D"tel:%2B47%20416%2077%20756"=
 value=3D"+4741677756" style=3D"color:rgb(17,85,204);font-size:12.8px" targ=
et=3D"_blank">+47 412 44 64</a>8<br style=3D"font-size:12.8px"><a href=3D"h=
ttp://www.glucoset.com/" rel=3D"noreferrer" style=3D"color:rgb(17,85,204);f=
ont-size:12.8px" target=3D"_blank">www.glucoset.com</a><div></div></div><di=
v><br><br><span style=3D"color:rgb(33,33,33);font-family:Lato,sans-serif;fo=
nt-size:12px;white-space:pre-wrap">Disclaimer =E2=80=93 confidentiality: Th=
e content of this email is confidential and intended for the recipient spec=
ified in this message only. It is strictly forbidden to share any part of t=
his message with any third party, without a written consent of the sender. =
If you received this message by mistake, please reply to this message and d=
elete it, so that we can ensure such a mistake does not occur in the future=
. If you and/or your employer has entered into a non-disclosure-agreement w=
hereby it shall be actively specified that content shall be deemed as confi=
dential in order to be handled as such, we hereby confirm that this mail an=
d its attachments are considered confidential unless otherwise is specified=
 in the above email. Thank you for your cooperation and understanding.</spa=
n><br></div></div></div></div></div></div>

--000000000000c0a2fd059bb41977--
