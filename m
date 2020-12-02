Subject: Re: How to write custom recipe to install AWS C SDK from github #dunfell #linux #yocto
To: yocto@lists.yoctoproject.org
From: vijayrakeshmunganda@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (106.206.71.210)
X-Originating-Platform: iPhone Safari 14
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Dec 2020 03:27:51 -0800
References: <20201202101932.bzer6ox4irlzwx4v@qschulz>
In-Reply-To: <20201202101932.bzer6ox4irlzwx4v@qschulz>
Message-ID: <22091.1606908471186397827@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CYvNbb6t2wvFFDuUUIXt"

--CYvNbb6t2wvFFDuUUIXt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin Schulz,

Thanks for the reply. I had downloaded the SDK into "files" folder of my r=
ecipe and given CMakeLists.txt as SRCURI. Is it correct to do like this?

Here is the Error: (It's a long error)

ERROR: aws-1.0-r0 do_configure: Execution of '/home/bl-docker/rity/bsp/tmp=
/work/aarch64-poky-linux/aws/1.0-r0/temp/run.do_configure.28296' failed wit=
h exit code 1:
-- The C compiler identification is GNU 9.3.0
-- Check for working C compiler: /home/bl-docker/rity/bsp/tmp/work/aarch64=
-poky-linux/aws/1.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/aar=
ch64-poky-linux-gcc
-- Check for working C compiler: /home/bl-docker/rity/bsp/tmp/work/aarch64=
-poky-linux/aws/1.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/aar=
ch64-poky-linux-gcc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Found OpenSSL: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws=
/1.0-r0/recipe-sysroot-native/usr/lib/libcrypto.so (found version "1.1.1g")
-- Looking for pthread.h
-- Looking for pthread.h - found
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed
-- Looking for pthread_create in pthreads
-- Looking for pthread_create in pthreads - not found
-- Looking for pthread_create in pthread
-- Looking for pthread_create in pthread - found
-- Found Threads: TRUE
Downloading the Amazon Root CA certificate...
% Total=C2=A0 =C2=A0 % Received % Xferd=C2=A0 Average Speed=C2=A0 =C2=A0Ti=
me=C2=A0 =C2=A0 Time=C2=A0 =C2=A0 =C2=A0Time=C2=A0 Current
Download =C2=A0Upload=C2=A0 =C2=A0Total=C2=A0 =C2=A0Spent=C2=A0 =C2=A0 Lef=
t=C2=A0 Speed
0=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 0=
=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 --:--:--=
 --:--:-- --:--:--=C2=A0 =C2=A0 =C2=A00
curl: (77) error setting certificate verify locations:
CAfile: /home/bl-docker/rity/bsp/tmp/work/x86_64-linux/curl-native/7.69.1-=
r0/recipe-sysroot-native/etc/ssl/certs/ca-certificates.crt
CApath: none
Downloading the Baltimore Cybertrust Root CA certificate...
% Total=C2=A0 =C2=A0 % Received % Xferd=C2=A0 Average Speed=C2=A0 =C2=A0Ti=
me=C2=A0 =C2=A0 Time=C2=A0 =C2=A0 =C2=A0Time=C2=A0 Current
Dload=C2=A0 Upload=C2=A0 =C2=A0Total=C2=A0 =C2=A0Spent=C2=A0 =C2=A0 Left=
=C2=A0 Speed
0=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 0=
=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 --:--:--=
 --:--:-- --:--:--=C2=A0 =C2=A0 =C2=A00
curl: (77) error setting certificate verify locations:
CAfile: /home/bl-docker/rity/bsp/tmp/work/x86_64-linux/curl-native/7.69.1-=
r0/recipe-sysroot-native/etc/ssl/certs/ca-certificates.crt
CApath: none
CMake Error at demos/defender/defender_demo_json/CMakeLists.txt:6 (include=
):
include could not find load file:
/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/libraries/=
standard/coreMQTT/mqttFilePaths.cmake
CMake Error at demos/defender/defender_demo_json/CMakeLists.txt:9 (include=
):
include could not find load file:
/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/libraries/=
standard/backoffAlgorithm/backoffAlgorithmFilePaths.cmake
CMake Error at demos/defender/defender_demo_json/CMakeLists.txt:12 (includ=
e):
include could not find load file:
/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/libraries/=
standard/coreJSON/jsonFilePaths.cmake (Similar errors continued for few fil=
es)

Thanks & Regards,
VR

--CYvNbb6t2wvFFDuUUIXt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Quentin Schulz,<br /><br /><span style=3D"color: #333333; font-family=
: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px;">Thanks =
for the reply. I had downloaded the SDK into "files" folder of my recipe an=
d given CMakeLists.txt as SRCURI. Is it correct to do like this?<br /></spa=
n><span style=3D"color: #333333; font-family: 'Helvetica Neue', Helvetica, =
Arial, sans-serif; font-size: 14px;"><br /></span></p>
Here is the Error: (It's a long error)<br /><br />ERROR: aws-1.0-r0 do_con=
figure: Execution of '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/=
aws/1.0-r0/temp/run.do_configure.28296' failed with exit code 1:<br />-- Th=
e C compiler identification is GNU 9.3.0<br />-- Check for working C compil=
er: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/recipe-=
sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc<br />-- Ch=
eck for working C compiler: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-=
linux/aws/1.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-p=
oky-linux-gcc -- works<br />-- Detecting C compiler ABI info<br />-- Detect=
ing C compiler ABI info - done<br />-- Detecting C compile features<br />--=
 Detecting C compile features - done<br />-- Found OpenSSL: /home/bl-docker=
/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/recipe-sysroot-native/usr/=
lib/libcrypto.so (found version "1.1.1g")<br />-- Looking for pthread.h<br =
/>-- Looking for pthread.h - found<br />-- Performing Test CMAKE_HAVE_LIBC_=
PTHREAD<br />-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed<br />-- Lo=
oking for pthread_create in pthreads<br />-- Looking for pthread_create in =
pthreads - not found<br />-- Looking for pthread_create in pthread<br />-- =
Looking for pthread_create in pthread - found<br />-- Found Threads: TRUE<b=
r />Downloading the Amazon Root CA certificate...<br />% Total&nbsp; &nbsp;=
 % Received % Xferd&nbsp; Average Speed&nbsp; &nbsp;Time&nbsp; &nbsp; Time&=
nbsp; &nbsp; &nbsp;Time&nbsp; Current<br />Download &nbsp;Upload&nbsp; &nbs=
p;Total&nbsp; &nbsp;Spent&nbsp; &nbsp; Left&nbsp; Speed<br />0&nbsp; &nbsp;=
 &nbsp;0&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp;0&nbsp; &nbsp; 0&nbsp; &nbsp; &n=
bsp;0&nbsp; &nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; 0 --:--:-- --:--:-- --:--:-=
-&nbsp; &nbsp; &nbsp;0<br />curl: (77) error setting certificate verify loc=
ations:<br />CAfile: /home/bl-docker/rity/bsp/tmp/work/x86_64-linux/curl-na=
tive/7.69.1-r0/recipe-sysroot-native/etc/ssl/certs/ca-certificates.crt<br /=
>CApath: none<br />Downloading the Baltimore Cybertrust Root CA certificate=
...<br />% Total&nbsp; &nbsp; % Received % Xferd&nbsp; Average Speed&nbsp; =
&nbsp;Time&nbsp; &nbsp; Time&nbsp; &nbsp; &nbsp;Time&nbsp; Current<br />Dlo=
ad&nbsp; Upload&nbsp; &nbsp;Total&nbsp; &nbsp;Spent&nbsp; &nbsp; Left&nbsp;=
 Speed<br />0&nbsp; &nbsp; &nbsp;0&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp;0&nbsp=
; &nbsp; 0&nbsp; &nbsp; &nbsp;0&nbsp; &nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; 0=
 --:--:-- --:--:-- --:--:--&nbsp; &nbsp; &nbsp;0<br />curl: (77) error sett=
ing certificate verify locations:<br />CAfile: /home/bl-docker/rity/bsp/tmp=
/work/x86_64-linux/curl-native/7.69.1-r0/recipe-sysroot-native/etc/ssl/cert=
s/ca-certificates.crt<br />CApath: none<br />CMake Error at demos/defender/=
defender_demo_json/CMakeLists.txt:6 (include):<br />include could not find =
load file:<br />/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.=
0-r0/libraries/standard/coreMQTT/mqttFilePaths.cmake<br />CMake Error at de=
mos/defender/defender_demo_json/CMakeLists.txt:9 (include):<br />include co=
uld not find load file:<br />/home/bl-docker/rity/bsp/tmp/work/aarch64-poky=
-linux/aws/1.0-r0/libraries/standard/backoffAlgorithm/backoffAlgorithmFileP=
aths.cmake<br />CMake Error at demos/defender/defender_demo_json/CMakeLists=
.txt:12 (include):<br />include could not find load file:<br />/home/bl-doc=
ker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/libraries/standard/core=
JSON/jsonFilePaths.cmake (Similar errors continued for few files)<br /><br =
/><span style=3D"color: #333333; font-family: 'Helvetica Neue', Helvetica, =
Arial, sans-serif; font-size: 14px;">Thanks &amp; Regards,<br /></span>VR

--CYvNbb6t2wvFFDuUUIXt--
