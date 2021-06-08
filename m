Subject: live555 package issue #yocto
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (157.48.181.70)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Jun 2021 21:32:34 -0700
Message-ID: <Jekq.1623126754487968936.ehbV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vcKiAvdECrS5CndfgFBn"

--vcKiAvdECrS5CndfgFBn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am working on live555 package.have compiled on=C2=A0 live555_20210406.bb=
 successfully. finally created=C2=A0 debs. through apt-get server I am tryi=
ng to install live555 package I am facing issue live555-dev is not installe=
d. so I got libcrypto issue & libopenssl issue.

Manually on target Board ,I clone the sources using bellow steps compiled =
successfully and finally generated binaries.

Same steps I have created=C2=A0 my own recipe and try to build package it =
was build successfully.
live555.bb file
/*************************************************************************=
**/
DEPENDS =3D "openssl"

SRC_URI =3D "file://live555-latest.tar.gz \
file://config.linux-cross \
"

S =3D "${WORKDIR}/live"

TARGET_CC_ARCH +=3D "${LDFLAGS}"

do_configure() {
cp ${WORKDIR}/config.linux-cross .
echo "COMPILE_OPTS+=3D" -fPIC -DXLOCALE_NOT_USED"" >> config.linux-cross
./genMakefiles linux-cross
}
do_install() {
install -d ${D}${includedir}/BasicUsageEnvironment
install -d ${D}${includedir}/groupsock
install -d ${D}${includedir}/liveMedia
install -d ${D}${includedir}/UsageEnvironment
install -d ${D}${libdir}
cp -R --no-dereference --preserve=3Dmode,links -v ${S}/BasicUsageEnvironme=
nt/include/*.hh ${D}${includedir}/BasicUsageEnvironment/
cp -R --no-dereference --preserve=3Dmode,links -v ${S}/groupsock/include/*=
.h ${D}${includedir}/groupsock/
cp -R --no-dereference --preserve=3Dmode,links -v ${S}/groupsock/include/*=
.hh ${D}${includedir}/groupsock/
cp -R --no-dereference --preserve=3Dmode,links -v ${S}/liveMedia/include/*=
.hh ${D}${includedir}/liveMedia/
cp -R --no-dereference --preserve=3Dmode,links -v ${S}/UsageEnvironment/in=
clude/*.hh ${D}${includedir}/UsageEnvironment/
for i in $(find . -name "*.hh") $(find . -name "*.h") ; do
install ${i} ${D}${includedir}
done
cp ${S}/*/*.a ${D}${libdir}
install -d ${D}${bindir}
for i in MPEG2TransportStreamIndexer openRTSP playSIP sapWatch testMPEG1or=
2ProgramToTransportStream testMPEG1or2Splitter testMPEG1or2VideoReceiver te=
stMPEG2TransportStreamTrickPlay testOnDemandRTSPServer testRelay testAMRAud=
ioStreamer testDVVideoStreamer testMP3Receiver testMP3Streamer testMPEG1or2=
AudioVideoStreamer testMPEG1or2VideoStreamer testMPEG2TransportStreamer tes=
tMPEG4VideoStreamer testWAVAudioStreamer vobStreamer; do
install -m 0755 ${S}/testProgs/${i} ${D}${bindir}/
done
install -m 0755 ${S}/mediaServer/live555MediaServer ${D}${bindir}/
}

PACKAGES =3D+ "live555-openrtsp live555-playsip live555-mediaserver live55=
5-examples"
FILES_live555-openrtsp =3D "${bindir}/openRTSP"
FILES_live555-playsip =3D "${bindir}/playSIP"
FILES_live555-mediaserver =3D "${bindir}/live555MediaServer"
FILES_live555-examples =3D "${bindir}/*"
/*************************************************************************=
**********************************/

I have created deb file=C2=A0 while installing this package from apt-get s=
erver I am facing problem.
using dpkg command I am trying to install package on target baord. I am fa=
cing bellow problem.
using dpkg -i live555
dpkg : dependency problems prevent configuration of live555-dev. live555-d=
ev depends on live555.pacakge live555 not installed.
dpkg : dependency problems prevent configuration of live555-staticdev: pac=
kage live555-dev is not configured yet.

dpkg: error processing package package live555-staticdev (--installed): de=
pendency problems -leaving unconfigured. Error: were encountered while proc=
essing : live555-dev ,live555-static.

Can anybody know please help to me. Is I missed anything please give respo=
nse ASAP. it will helpful to fix this issue.

--
Regards,
Sateesh

--vcKiAvdECrS5CndfgFBn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
I am working on live555 package.have compiled on&nbsp; live555_20210406.bb =
successfully. finally created&nbsp; debs. through apt-get server I am tryin=
g to install live555 package I am facing issue live555-dev is not installed=
. so I got libcrypto issue &amp; libopenssl issue.<br /><br />Manually on t=
arget Board ,I clone the sources using bellow steps compiled successfully a=
nd finally generated binaries.<br /><br />Same steps I have created&nbsp; m=
y own recipe and try to build package it was build successfully.<br />live5=
55.bb file<br />/**********************************************************=
*****************/<br />
<div>DEPENDS =3D "openssl"</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "file://live555-latest.tar.gz \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://config.linux-cross \<=
/div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "</div>
<div>&nbsp;</div>
<div>S =3D "${WORKDIR}/live"</div>
<div>&nbsp;</div>
<div>TARGET_CC_ARCH +=3D "${LDFLAGS}"</div>
<div>&nbsp;</div>
<div>do_configure() {</div>
<div>&nbsp; &nbsp; cp ${WORKDIR}/config.linux-cross .</div>
<div>&nbsp; &nbsp; echo "COMPILE_OPTS+=3D" -fPIC -DXLOCALE_NOT_USED"" &gt;=
&gt; config.linux-cross</div>
<div>&nbsp; &nbsp; ./genMakefiles linux-cross</div>
<div>}</div>
<div>
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${D}${includedir}/BasicUsageEnvironment</div=
>
<div>&nbsp; &nbsp; install -d ${D}${includedir}/groupsock</div>
<div>&nbsp; &nbsp; install -d ${D}${includedir}/liveMedia</div>
<div>&nbsp; &nbsp; install -d ${D}${includedir}/UsageEnvironment</div>
<div>&nbsp; &nbsp; install -d ${D}${libdir}</div>
<div>&nbsp; &nbsp; cp -R --no-dereference --preserve=3Dmode,links -v ${S}/=
BasicUsageEnvironment/include/*.hh ${D}${includedir}/BasicUsageEnvironment/=
</div>
<div>&nbsp; &nbsp; cp -R --no-dereference --preserve=3Dmode,links -v ${S}/=
groupsock/include/*.h ${D}${includedir}/groupsock/</div>
<div>&nbsp; &nbsp; cp -R --no-dereference --preserve=3Dmode,links -v ${S}/=
groupsock/include/*.hh ${D}${includedir}/groupsock/</div>
<div>&nbsp; &nbsp; cp -R --no-dereference --preserve=3Dmode,links -v ${S}/=
liveMedia/include/*.hh ${D}${includedir}/liveMedia/</div>
<div>&nbsp; &nbsp; cp -R --no-dereference --preserve=3Dmode,links -v ${S}/=
UsageEnvironment/include/*.hh ${D}${includedir}/UsageEnvironment/</div>
<div>&nbsp; &nbsp; for i in $(find . -name "*.hh") $(find . -name "*.h") ;=
 do</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install ${i} ${D}${includedir}</div>
<div>&nbsp; &nbsp; done</div>
<div>&nbsp; &nbsp; cp ${S}/*/*.a ${D}${libdir}</div>
<div>&nbsp; &nbsp; install -d ${D}${bindir}</div>
<div>&nbsp; &nbsp; for i in MPEG2TransportStreamIndexer openRTSP playSIP s=
apWatch testMPEG1or2ProgramToTransportStream testMPEG1or2Splitter testMPEG1=
or2VideoReceiver testMPEG2TransportStreamTrickPlay testOnDemandRTSPServer t=
estRelay testAMRAudioStreamer testDVVideoStreamer testMP3Receiver testMP3St=
reamer testMPEG1or2AudioVideoStreamer testMPEG1or2VideoStreamer testMPEG2Tr=
ansportStreamer testMPEG4VideoStreamer testWAVAudioStreamer vobStreamer; do=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -m 0755 ${S}/testProgs/${i} ${D}$=
{bindir}/</div>
<div>&nbsp; &nbsp; done</div>
<div>&nbsp; &nbsp; install -m 0755 ${S}/mediaServer/live555MediaServer ${D=
}${bindir}/</div>
<div>}</div>
<div>&nbsp;</div>
<div>PACKAGES =3D+ "live555-openrtsp live555-playsip live555-mediaserver l=
ive555-examples"</div>
<div>FILES_live555-openrtsp =3D "${bindir}/openRTSP"</div>
<div>FILES_live555-playsip =3D "${bindir}/playSIP"</div>
<div>FILES_live555-mediaserver =3D "${bindir}/live555MediaServer"</div>
<div>FILES_live555-examples =3D "${bindir}/*"</div>
<div>/********************************************************************=
***************************************/</div>
</div>
<br /><br />I have created deb file&nbsp; while installing this package fr=
om apt-get server I am facing problem.<br />using dpkg command I am trying =
to install package on target baord. I am facing bellow problem.&nbsp;<br />=
using dpkg -i live555&nbsp;<br />dpkg : dependency problems prevent configu=
ration of live555-dev. live555-dev depends on live555.pacakge live555 not i=
nstalled.<br />dpkg : dependency problems prevent configuration of live555-=
staticdev: package live555-dev is not configured yet.<br /><br />dpkg: erro=
r processing package package live555-staticdev (--installed): dependency pr=
oblems -leaving unconfigured. Error: were encountered while processing : li=
ve555-dev ,live555-static.<br /><br />Can anybody know please help to me. I=
s I missed anything please give response ASAP. it will helpful to fix this =
issue.&nbsp;<br /><br />-- <br />Regards,<br />Sateesh

--vcKiAvdECrS5CndfgFBn--
