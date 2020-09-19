Subject: Re: Yocto recipe for Tailscale #yocto #golang
To: yocto@lists.yoctoproject.org
From: "Mike Thompson" <mthompson@dustyrobotics.com>
X-Originating-Location: San Carlos, California, US (73.222.39.199)
X-Originating-Platform: Linux Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 19 Sep 2020 13:58:42 -0700
References: <1315.1600510416708828939@lists.yoctoproject.org>
In-Reply-To: <1315.1600510416708828939@lists.yoctoproject.org>
Message-ID: <30569.1600549122972037103@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PzBmTMYhp3mqAI8iLd1E"

--PzBmTMYhp3mqAI8iLd1E
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I seemed to have resolved all my issues getting a Yocto Bitbake recipe for =
the Tailscale client and CLI utility.

For future reference and in case it helps others, below is my Bitbake reci=
pe:

------------------------------------------------

# tailscale_1.0.5.bb

SUMMARY =3D "Tailscale client and daemon for Linux"

HOMEPAGE =3D "github.com/tailscale/tailscale"

SECTION =3D "net"

LICENSE =3D "CLOSED"

LIC_FILES_CHKSUM =3D "file://src/${GO_IMPORT}/LICENSE;md5=3Dd995c1c4452985=
6a0f35a5ad43e51cc5"

SRC_URI =3D "git://github.com/tailscale/tailscale.git;nobranch=3D1;tag=3Dv=
${PV}"

inherit go-mod systemd

GO_IMPORT =3D "tailscale.com"

GO_WORKDIR =3D "${GO_IMPORT}"

GO_INSTALL =3D "${GO_IMPORT}/cmd/tailscale ${GO_IMPORT}/cmd/tailscaled"

FILES_${PN} +=3D "${systemd_unitdir}/*"

do_install() {

install -d ${D}/${bindir}

install -d ${D}/${sbindir}

install ${B}/bin/tailscale ${D}/${bindir}/tailscale

install ${B}/bin/tailscaled ${D}/${sbindir}/tailscaled

if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}=
; then

install -d ${D}${sysconfdir}/default/

install -m 0644 ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/tailscale=
d.defaults ${D}${sysconfdir}/default/tailscaled

install -d ${D}${systemd_unitdir}/system

install -m 0644 ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/tailscale=
d.service ${D}${systemd_unitdir}/system/tailscaled.service

install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants/

ln -s ${systemd_unitdir}/system/tailscaled.service ${D}${sysconfdir}/syste=
md/system/multi-user.target.wants/tailscaled.service

fi

}

SYSTEMD_PACKAGES =3D "${PN}"

SYSTEMD_SERVICE_${PN} =3D "tailscaled.service"

SYSTEMD_AUTO_ENABLE =3D "enable"

------------------------------------------------

When installed on my target system, systemd reports the following for the =
tailscaled daemon:
------------------------------------------------
[[0;1;32m=E2=97=8F[[0m tailscaled.service - Tailscale node agent
Loaded: loaded (/lib/systemd/system/tailscaled.service; enabled; vendor pr=
eset: enabled)
Active: [[0;1;32mactive (running)[[0m since Sat 2020-09-19 20:46:02 UTC; 4=
min 44s ago
Docs: https://tailscale.com/kb/
Main PID: 252 (tailscaled)
Tasks: 13 (limit: 19081)
Memory: 56.5M
CGroup: /system.slice/tailscaled.service
=E2=94=94=E2=94=80252 /usr/sbin/tailscaled --state=3D/var/lib/tailscale/ta=
ilscaled.state --socket=3D/run/tailscale/tai
lscaled.sock --port 41641

Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: cancelMapSafely=
: synced=3Dfalse
Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: cancelMapSafely=
: wrote to channel
Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: mapRoutine: new=
 map needed while idle.
Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: mapRoutine: sta=
te:url-visit-required
Sep 19 20:48:03 amber tailscaled[252]: 7.3M/39.1M LinkChange(isExpensive=
=3Dfalse); needsRebind=3Dfalse
Sep 19 20:48:03 amber tailscaled[252]: 7.3M/39.1M magicsock: starting endp=
oint update (link-change-minor)
Sep 19 20:48:03 amber tailscaled[252]: 7.6M/39.1M LinkChange(isExpensive=
=3Dfalse); needsRebind=3Dfalse
Sep 19 20:48:03 amber tailscaled[252]: 7.6M/39.1M magicsock: starting endp=
oint update (link-change-minor)
Sep 19 20:48:03 amber tailscaled[252]: 7.5M/39.1M LinkChange(isExpensive=
=3Dfalse); needsRebind=3Dfalse
Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M magicsock: starting endp=
oint update (link-change-minor)

------------------------------------------------

And ifconfig reports the following:
------------------------------------------------

# ifconfig

tailscale0 Link encap:UNSPEC=C2=A0 HWaddr 00-00-00-00-00-00-00-00-00-00-00=
-00-00-00-00-00

inet6 addr: fe80::7f12:8835:cc06:b3e7/64 Scope:Link

UP POINTOPOINT RUNNING NOARP MULTICAST=C2=A0 MTU:1280=C2=A0 Metric:1

RX packets:0 errors:0 dropped:0 overruns:0 frame:0

TX packets:14 errors:0 dropped:0 overruns:0 carrier:0

collisions:0 txqueuelen:500

RX bytes:0 (0.0 B)=C2=A0 TX bytes:825 (825.0 B)

------------------------------------------------

Thank you to Khem for the tip on looking into "inherit go-mod" and patienc=
e while I sorted through this.

Mike Thompson

--PzBmTMYhp3mqAI8iLd1E
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I seemed to have resolved all my issues getting a Yocto Bitbake recipe f=
or the Tailscale client and CLI utility.</p>
<p>For future reference and in case it helps others, below is my Bitbake r=
ecipe:</p>
<p>------------------------------------------------</p>
<p># tailscale_1.0.5.bb</p>
<p>SUMMARY =3D "Tailscale client and daemon for Linux"</p>
<p>HOMEPAGE =3D "github.com/tailscale/tailscale"</p>
<p>SECTION =3D "net"</p>
<p>&nbsp;</p>
<p>LICENSE =3D "CLOSED"</p>
<p>LIC_FILES_CHKSUM =3D "file://src/${GO_IMPORT}/LICENSE;md5=3Dd995c1c4452=
9856a0f35a5ad43e51cc5"</p>
<p>&nbsp;</p>
<p>SRC_URI =3D "git://github.com/tailscale/tailscale.git;nobranch=3D1;tag=
=3Dv${PV}"</p>
<p>&nbsp;</p>
<p>inherit go-mod systemd</p>
<p>&nbsp;</p>
<p>GO_IMPORT =3D "tailscale.com"</p>
<p>GO_WORKDIR =3D "${GO_IMPORT}"</p>
<p>GO_INSTALL =3D "${GO_IMPORT}/cmd/tailscale ${GO_IMPORT}/cmd/tailscaled"=
</p>
<p>&nbsp;</p>
<p>FILES_${PN} +=3D "${systemd_unitdir}/*"</p>
<p>&nbsp;</p>
<p>do_install() {</p>
<p>&nbsp; &nbsp; install -d ${D}/${bindir}</p>
<p>&nbsp; &nbsp; install -d ${D}/${sbindir}</p>
<p>&nbsp; &nbsp; install ${B}/bin/tailscale ${D}/${bindir}/tailscale</p>
<p>&nbsp; &nbsp; install ${B}/bin/tailscaled ${D}/${sbindir}/tailscaled</p=
>
<p>&nbsp;</p>
<p>&nbsp; &nbsp; if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'tr=
ue', 'false', d)}; then</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdir}/default/</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -m 0644 ${WORKDIR}/build/src/${GO_I=
MPORT}/cmd/tailscaled/tailscaled.defaults ${D}${sysconfdir}/default/tailsca=
led</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${systemd_unitdir}/system</p=
>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -m 0644 ${WORKDIR}/build/src/${GO_I=
MPORT}/cmd/tailscaled/tailscaled.service ${D}${systemd_unitdir}/system/tail=
scaled.service</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdir}/systemd/system=
/multi-user.target.wants/</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; ln -s ${systemd_unitdir}/system/tailscaled.=
service ${D}${sysconfdir}/systemd/system/multi-user.target.wants/tailscaled=
.service</p>
<p>&nbsp; &nbsp; fi</p>
<p>}</p>
<p>&nbsp;</p>
<p>SYSTEMD_PACKAGES =3D "${PN}"</p>
<p>SYSTEMD_SERVICE_${PN} =3D "tailscaled.service"</p>
<p>SYSTEMD_AUTO_ENABLE =3D "enable"</p>
<div>
<p style=3D"line-height: 1.42857;">---------------------------------------=
---------</p>
</div>
<div>&nbsp;</div>
<div>When installed on my target system, systemd reports the following for=
 the tailscaled daemon:</div>
<div>------------------------------------------------</div>
<div>
<div>[[0;1;32m=E2=97=8F[[0m tailscaled.service - Tailscale node agent</div=
>
<div>&nbsp; &nbsp; &nbsp;Loaded: loaded (/lib/systemd/system/tailscaled.se=
rvice; enabled; vendor preset: enabled)</div>
<div>&nbsp; &nbsp; &nbsp;Active: [[0;1;32mactive (running)[[0m since Sat 2=
020-09-19 20:46:02 UTC; 4min 44s ago</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;Docs: https://tailscale.com/kb/</div>
<div>&nbsp; &nbsp;Main PID: 252 (tailscaled)</div>
<div>&nbsp; &nbsp; &nbsp; Tasks: 13 (limit: 19081)</div>
<div>&nbsp; &nbsp; &nbsp;Memory: 56.5M</div>
<div>&nbsp; &nbsp; &nbsp;CGroup: /system.slice/tailscaled.service</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=E2=94=94=E2=94=80252=
 /usr/sbin/tailscaled --state=3D/var/lib/tailscale/tailscaled.state --socke=
t=3D/run/tailscale/tai</div>
<div>lscaled.sock --port 41641</div>
<div>&nbsp;</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: cancelMapS=
afely: synced=3Dfalse</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: cancelMapS=
afely: wrote to channel</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: mapRoutine=
: new map needed while idle.</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: mapRoutine=
: state:url-visit-required</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.3M/39.1M LinkChange(isExpens=
ive=3Dfalse); needsRebind=3Dfalse</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.3M/39.1M magicsock: starting=
 endpoint update (link-change-minor)</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.6M/39.1M LinkChange(isExpens=
ive=3Dfalse); needsRebind=3Dfalse</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.6M/39.1M magicsock: starting=
 endpoint update (link-change-minor)</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.5M/39.1M LinkChange(isExpens=
ive=3Dfalse); needsRebind=3Dfalse</div>
<div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M magicsock: starting=
 endpoint update (link-change-minor)</div>
</div>
<div>
<p style=3D"line-height: 1.42857;">---------------------------------------=
---------</p>
</div>
<div>&nbsp;</div>
<div>And ifconfig reports the following:</div>
<div>------------------------------------------------</div>
<div>
<p style=3D"line-height: 1.42857;"># ifconfig</p>
<p style=3D"line-height: 1.42857;">tailscale0 Link encap:UNSPEC&nbsp; HWad=
dr 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00&nbsp;&nbsp;</p>
<p style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet=
6 addr: fe80::7f12:8835:cc06:b3e7/64 Scope:Link</p>
<p style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP P=
OINTOPOINT RUNNING NOARP MULTICAST&nbsp; MTU:1280&nbsp; Metric:1</p>
<p style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX p=
ackets:0 errors:0 dropped:0 overruns:0 frame:0</p>
<p style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX p=
ackets:14 errors:0 dropped:0 overruns:0 carrier:0</p>
<p style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; coll=
isions:0 txqueuelen:500&nbsp;</p>
<p style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX b=
ytes:0 (0.0 B)&nbsp; TX bytes:825 (825.0 B)</p>
<p style=3D"line-height: 1.42857;">---------------------------------------=
---------</p>
</div>
<div>Thank you to Khem for the tip on looking into "inherit go-mod" and pa=
tience while I sorted through this.</div>
<div>&nbsp;</div>
<div>Mike Thompson</div>
<div>&nbsp;</div>

--PzBmTMYhp3mqAI8iLd1E--
