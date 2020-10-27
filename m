Subject: Cross compilation error finding libraries
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.110.168)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Oct 2020 02:52:14 -0700
Message-ID: <jNpM.1603792334866771604.SbqP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tu4kLmhU7aEEhZ6OBHoY"

--tu4kLmhU7aEEhZ6OBHoY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I have an SDK populated from an image.
After sourcing the SDK env file, I try to run make on a project with this =
command :

>=20
> make CC=3D"$CC" LD=3D"$LD" CFLAGS=3D"${CFLAGS}
> --sysroot=3D/media/talel/data/sdk-multigate/sysroots/aarch64-poky-linux"
> CXXFLAGS=3D"${CXXFLAGS}
> --sysroot=3D/media/talel/data/sdk-multigate/sysroots/aarch64-poky-linux"

I specified the CFLAGS and CXXFLAGS as mentionned in Yocto document (part =
5.2 Makefile-Based projects) : https://www.yoctoproject.org/docs/1.1.2/adt-=
manual/adt-manual.html
Now I have this error:

** Building dynamic library (debug, shared) /home/talel/Documents/macchina=
.io/samples/LinuxThermalSimple/bin/Linux/x86_64/io.macchina.linux-thermal-s=
impled.so
aarch64-poky-linux-g++ -shared -Wl,-soname,io.macchina.linux-thermal-simpl=
ed.so -o /home/talel/Documents/macchina.io/samples/LinuxThermalSimple/bin/L=
inux/x86_64/io.macchina.linux-thermal-simpled.so=C2=A0 /home/talel/Document=
s/macchina.io/samples/LinuxThermalSimple/obj/Linux/x86_64/debug_shared/Linu=
xThermalSensor.o /home/talel/Documents/macchina.io/samples/LinuxThermalSimp=
le/obj/Linux/x86_64/debug_shared/BundleActivator.o -L/home/talel/Documents/=
macchina.io/lib/Linux/x86_64 -L/home/talel/Documents/macchina.io/platform/l=
ib/Linux/x86_64=C2=A0 -lIoTDevicesd -lPocoRemotingNGd -lPocoOSPd -lPocoUtil=
d -lPocoXMLd -lPocoFoundationd=C2=A0 -lpthread -ldl -lrt
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find crti.o=
: No such file or directory
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find crtbeg=
inS.o: No such file or directory
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lIoTD=
evicesd
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lPoco=
RemotingNGd
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lPoco=
OSPd
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lPoco=
Utild
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lPoco=
XMLd
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lPoco=
Foundationd
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lpthr=
ead
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -ldl
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lrt
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lstdc=
++
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lm
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lgcc_=
s
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lc
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lgcc_=
s
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find crtend=
S.o: No such file or directory
/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/=
aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find crtn.o=
: No such file or directory
collect2: error: ld returned 1 exit status
/home/talel/Documents/macchina.io/platform/build/rules/dylib:54: recipe fo=
r target '/home/talel/Documents/macchina.io/samples/LinuxThermalSimple/bin/=
Linux/x86_64/io.macchina.linux-thermal-simpled.so' failed
make: *** [/home/talel/Documents/macchina.io/samples/LinuxThermalSimple/bi=
n/Linux/x86_64/io.macchina.linux-thermal-simpled.so] Error 1

I need help.
Thanks, Talel

--tu4kLmhU7aEEhZ6OBHoY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I have an SDK populated from an image.<br />After sourci=
ng the SDK env file, I try to run make on a project with this command :<br =
/>
<blockquote>make CC=3D"$CC" LD=3D"$LD" CFLAGS=3D"${CFLAGS} --sysroot=3D/me=
dia/talel/data/sdk-multigate/sysroots/aarch64-poky-linux" CXXFLAGS=3D"${CXX=
FLAGS} --sysroot=3D/media/talel/data/sdk-multigate/sysroots/aarch64-poky-li=
nux"</blockquote>
I specified the CFLAGS and CXXFLAGS as mentionned in Yocto document (part =
5.2 Makefile-Based projects) : <a href=3D"https://www.yoctoproject.org/docs=
/1.1.2/adt-manual/adt-manual.html" target=3D"_blank" rel=3D"noopener">https=
://www.yoctoproject.org/docs/1.1.2/adt-manual/adt-manual.html</a> <br />Now=
 I have this error:<br /><br /><br />** Building dynamic library (debug, sh=
ared) /home/talel/Documents/macchina.io/samples/LinuxThermalSimple/bin/Linu=
x/x86_64/io.macchina.linux-thermal-simpled.so<br />aarch64-poky-linux-g++ -=
shared -Wl,-soname,io.macchina.linux-thermal-simpled.so -o /home/talel/Docu=
ments/macchina.io/samples/LinuxThermalSimple/bin/Linux/x86_64/io.macchina.l=
inux-thermal-simpled.so&nbsp; /home/talel/Documents/macchina.io/samples/Lin=
uxThermalSimple/obj/Linux/x86_64/debug_shared/LinuxThermalSensor.o /home/ta=
lel/Documents/macchina.io/samples/LinuxThermalSimple/obj/Linux/x86_64/debug=
_shared/BundleActivator.o -L/home/talel/Documents/macchina.io/lib/Linux/x86=
_64 -L/home/talel/Documents/macchina.io/platform/lib/Linux/x86_64&nbsp; -lI=
oTDevicesd -lPocoRemotingNGd -lPocoOSPd -lPocoUtild -lPocoXMLd -lPocoFounda=
tiond&nbsp; -lpthread -ldl -lrt<br />/media/talel/data/sdk-multigate/sysroo=
ts/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-lin=
ux/9.2.0/real-ld: cannot find crti.o: No such file or directory<br />/media=
/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64=
-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find crtbeginS.o: =
No such file or directory<br />/media/talel/data/sdk-multigate/sysroots/x86=
_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2=
.0/real-ld: cannot find -lIoTDevicesd<br />/media/talel/data/sdk-multigate/=
sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-po=
ky-linux/9.2.0/real-ld: cannot find -lPocoRemotingNGd<br />/media/talel/dat=
a/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linu=
x/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lPocoOSPd<br />/media/=
talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-=
poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lPocoUtild<br=
 />/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexe=
c/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lPo=
coXMLd<br />/media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/u=
sr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot =
find -lPocoFoundationd<br />/media/talel/data/sdk-multigate/sysroots/x86_64=
-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/=
real-ld: cannot find -lpthread<br />/media/talel/data/sdk-multigate/sysroot=
s/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linu=
x/9.2.0/real-ld: cannot find -ldl<br />/media/talel/data/sdk-multigate/sysr=
oots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-l=
inux/9.2.0/real-ld: cannot find -lrt<br />/media/talel/data/sdk-multigate/s=
ysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-pok=
y-linux/9.2.0/real-ld: cannot find -lstdc++<br />/media/talel/data/sdk-mult=
igate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarc=
h64-poky-linux/9.2.0/real-ld: cannot find -lm<br />/media/talel/data/sdk-mu=
ltigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aa=
rch64-poky-linux/9.2.0/real-ld: cannot find -lgcc_s<br />/media/talel/data/=
sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/=
gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lc<br />/media/talel/dat=
a/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linu=
x/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find -lgcc_s<br />/media/tal=
el/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-pok=
y-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: cannot find crtendS.o: No suc=
h file or directory<br />/media/talel/data/sdk-multigate/sysroots/x86_64-po=
kysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/rea=
l-ld: cannot find crtn.o: No such file or directory<br />collect2: error: l=
d returned 1 exit status<br />/home/talel/Documents/macchina.io/platform/bu=
ild/rules/dylib:54: recipe for target '/home/talel/Documents/macchina.io/sa=
mples/LinuxThermalSimple/bin/Linux/x86_64/io.macchina.linux-thermal-simpled=
.so' failed<br />make: *** [/home/talel/Documents/macchina.io/samples/Linux=
ThermalSimple/bin/Linux/x86_64/io.macchina.linux-thermal-simpled.so] Error =
1<br /><br />I need help.<br />Thanks, Talel

--tu4kLmhU7aEEhZ6OBHoY--
