Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.46994.1600709469795413348
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 10:31:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 08LHUDmA028723
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Mon, 21 Sep 2020 10:30:39 -0700
Received: from [172.25.44.2] (172.25.44.2) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 21 Sep
 2020 10:30:25 -0700
Subject: Re: [yocto] Yocto recipe for Tailscale #yocto #golang
To: <mthompson@dustyrobotics.com>, <yocto@lists.yoctoproject.org>
References: <1315.1600510416708828939@lists.yoctoproject.org>
 <30569.1600549122972037103@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <9378dde9-ebda-d6db-df7d-74d1a18c5253@windriver.com>
Date: Mon, 21 Sep 2020 13:30:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <30569.1600549122972037103@lists.yoctoproject.org>
X-Originating-IP: [172.25.44.2]
Content-Type: multipart/alternative;
	boundary="------------6C982475F7C0A8663132A7A3"
Content-Language: en-CA

--------------6C982475F7C0A8663132A7A3
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail5.wrs.com id 08LHUDmA028723

On 2020-09-19 4:58 p.m., Mike Thompson via lists.yoctoproject.org wrote:
>
> I seemed to have resolved all my issues getting a Yocto Bitbake recipe=
=20
> for the Tailscale client and CLI utility.
>
> For future reference and in case it helps others, below is my Bitbake=20
> recipe:
>
Hi Mike,

Could you send your tailscale recipe to meta-openembedded/meta-networking?
 =C2=A0=C2=A0=C2=A0 Email: OpenEmbedded Development mailing list=20
<openembedded-devel@lists.openembedded.org>
 =C2=A0=C2=A0=C2=A0 Instructions:=20
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

It looks like all the work is done aside from an email!

../Randy


> ------------------------------------------------
>
> # tailscale_1.0.5.bb
>
> SUMMARY =3D "Tailscale client and daemon for Linux"
>
> HOMEPAGE =3D "github.com/tailscale/tailscale"
>
> SECTION =3D "net"
>
> LICENSE =3D "CLOSED"
>
> LIC_FILES_CHKSUM =3D=20
> "file://src/${GO_IMPORT}/LICENSE;md5=3Dd995c1c44529856a0f35a5ad43e51cc5"
>
> SRC_URI =3D "git://github.com/tailscale/tailscale.git;nobranch=3D1;tag=
=3Dv${PV}"
>
> inherit go-mod systemd
>
> GO_IMPORT =3D "tailscale.com"
>
> GO_WORKDIR =3D "${GO_IMPORT}"
>
> GO_INSTALL =3D "${GO_IMPORT}/cmd/tailscale ${GO_IMPORT}/cmd/tailscaled"
>
> FILES_${PN} +=3D "${systemd_unitdir}/*"
>
> do_install() {
>
> =C2=A0 =C2=A0 install -d ${D}/${bindir}
>
> =C2=A0 =C2=A0 install -d ${D}/${sbindir}
>
> =C2=A0 =C2=A0 install ${B}/bin/tailscale ${D}/${bindir}/tailscale
>
> =C2=A0 =C2=A0 install ${B}/bin/tailscaled ${D}/${sbindir}/tailscaled
>
> =C2=A0 =C2=A0 if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'tru=
e',=20
> 'false', d)}; then
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/default/
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644=20
> ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/tailscaled.defaults=20
> ${D}${sysconfdir}/default/tailscaled
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_unitdir}/system
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644=20
> ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/tailscaled.service=20
> ${D}${systemd_unitdir}/system/tailscaled.service
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=20
> ${D}${sysconfdir}/systemd/system/multi-user.target.wants/
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -s ${systemd_unitdir}/system/tailscaled.s=
ervice=20
> ${D}${sysconfdir}/systemd/system/multi-user.target.wants/tailscaled.serv=
ice
>
> =C2=A0 =C2=A0 fi
>
> }
>
> SYSTEMD_PACKAGES =3D "${PN}"
>
> SYSTEMD_SERVICE_${PN} =3D "tailscaled.service"
>
> SYSTEMD_AUTO_ENABLE =3D "enable"
>
> ------------------------------------------------
>
> When installed on my target system, systemd reports the following for=20
> the tailscaled daemon:
> ------------------------------------------------
> [[0;1;32m=E2=97=8F[[0m tailscaled.service - Tailscale node agent
> =C2=A0 =C2=A0 =C2=A0Loaded: loaded (/lib/systemd/system/tailscaled.servi=
ce; enabled;=20
> vendor preset: enabled)
> =C2=A0 =C2=A0 =C2=A0Active: [[0;1;32mactive (running)[[0m since Sat 2020=
-09-19=20
> 20:46:02 UTC; 4min 44s ago
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Docs: https://tailscale.com/kb/
> =C2=A0 =C2=A0Main PID: 252 (tailscaled)
> =C2=A0 =C2=A0 =C2=A0 Tasks: 13 (limit: 19081)
> =C2=A0 =C2=A0 =C2=A0Memory: 56.5M
> =C2=A0 =C2=A0 =C2=A0CGroup: /system.slice/tailscaled.service
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80252 /u=
sr/sbin/tailscaled=20
> --state=3D/var/lib/tailscale/tailscaled.state --socket=3D/run/tailscale/=
tai
> lscaled.sock --port 41641
> Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control:=20
> cancelMapSafely: synced=3Dfalse
> Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control:=20
> cancelMapSafely: wrote to channel
> Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: mapRoutine:=
=20
> new map needed while idle.
> Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control: mapRoutine:=
=20
> state:url-visit-required
> Sep 19 20:48:03 amber tailscaled[252]: 7.3M/39.1M=20
> LinkChange(isExpensive=3Dfalse); needsRebind=3Dfalse
> Sep 19 20:48:03 amber tailscaled[252]: 7.3M/39.1M magicsock: starting=20
> endpoint update (link-change-minor)
> Sep 19 20:48:03 amber tailscaled[252]: 7.6M/39.1M=20
> LinkChange(isExpensive=3Dfalse); needsRebind=3Dfalse
> Sep 19 20:48:03 amber tailscaled[252]: 7.6M/39.1M magicsock: starting=20
> endpoint update (link-change-minor)
> Sep 19 20:48:03 amber tailscaled[252]: 7.5M/39.1M=20
> LinkChange(isExpensive=3Dfalse); needsRebind=3Dfalse
> Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M magicsock: starting=20
> endpoint update (link-change-minor)
>
> ------------------------------------------------
>
> And ifconfig reports the following:
> ------------------------------------------------
>
> # ifconfig
>
> tailscale0 Link encap:UNSPEC HWaddr=20
> 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 addr: fe80::7f12:8835:cc06:b3e7=
/64 Scope:Link
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP POINTOPOINT RUNNING NOARP MULTICAS=
T=C2=A0 MTU:1280=C2=A0 Metric:1
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 dropped:0 overr=
uns:0 frame:0
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:14 errors:0 dropped:0 over=
runs:0 carrier:0
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:500
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) TX bytes:825 (825.=
0 B)
>
> ------------------------------------------------
>
> Thank you to Khem for the tip on looking into "inherit go-mod" and=20
> patience while I sorted through this.
> Mike Thompson
>
>=20
>

--=20
# Randy MacLeod
# Wind River Linux


--------------6C982475F7C0A8663132A7A3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail5.wrs.com id 08LHUDmA028723

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2020-09-19 4:58 p.m., Mike Thompson
      via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:30569.1600549122972037103@lists.yoctoproject.org">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      <p>I seemed to have resolved all my issues getting a Yocto Bitbake
        recipe for the Tailscale client and CLI utility.</p>
      <p>For future reference and in case it helps others, below is my
        Bitbake recipe:</p>
    </blockquote>
    <p>Hi Mike,<br>
    </p>
    <p>Could you send your tailscale recipe to
      meta-openembedded/meta-networking?<br>
      =C2=A0=C2=A0=C2=A0 Email: OpenEmbedded Development mailing list
      <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:openembedded-devel=
@lists.openembedded.org">&lt;openembedded-devel@lists.openembedded.org&gt;<=
/a><br>
      =C2=A0=C2=A0=C2=A0 Instructions:
      <a class=3D"moz-txt-link-freetext" href=3D"https://www.openembedded.=
org/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.or=
g/wiki/How_to_submit_a_patch_to_OpenEmbedded</a></p>
    <p>It looks like all the work is done aside from an email!</p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:30569.1600549122972037103@lists.yoctoproject.org">
      <p>------------------------------------------------</p>
      <p># tailscale_1.0.5.bb</p>
      <p>SUMMARY =3D "Tailscale client and daemon for Linux"</p>
      <p>HOMEPAGE =3D "github.com/tailscale/tailscale"</p>
      <p>SECTION =3D "net"</p>
      <p>=C2=A0</p>
      <p>LICENSE =3D "CLOSED"</p>
      <p>LIC_FILES_CHKSUM =3D
        <a class=3D"moz-txt-link-rfc2396E" href=3D"file://src/${GO_IMPORT}=
/LICENSE;md5=3Dd995c1c44529856a0f35a5ad43e51cc5">"file://src/${GO_IMPORT}/L=
ICENSE;md5=3Dd995c1c44529856a0f35a5ad43e51cc5"</a></p>
      <p>=C2=A0</p>
      <p>SRC_URI =3D
        "git://github.com/tailscale/tailscale.git;nobranch=3D1;tag=3Dv${PV=
}"</p>
      <p>=C2=A0</p>
      <p>inherit go-mod systemd</p>
      <p>=C2=A0</p>
      <p>GO_IMPORT =3D "tailscale.com"</p>
      <p>GO_WORKDIR =3D "${GO_IMPORT}"</p>
      <p>GO_INSTALL =3D "${GO_IMPORT}/cmd/tailscale
        ${GO_IMPORT}/cmd/tailscaled"</p>
      <p>=C2=A0</p>
      <p>FILES_${PN} +=3D "${systemd_unitdir}/*"</p>
      <p>=C2=A0</p>
      <p>do_install() {</p>
      <p>=C2=A0 =C2=A0 install -d ${D}/${bindir}</p>
      <p>=C2=A0 =C2=A0 install -d ${D}/${sbindir}</p>
      <p>=C2=A0 =C2=A0 install ${B}/bin/tailscale ${D}/${bindir}/tailscale=
</p>
      <p>=C2=A0 =C2=A0 install ${B}/bin/tailscaled ${D}/${sbindir}/tailsca=
led</p>
      <p>=C2=A0</p>
      <p>=C2=A0 =C2=A0 if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd=
',
        'true', 'false', d)}; then</p>
      <p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/default/=
</p>
      <p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644
        ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/tailscaled.defaul=
ts
        ${D}${sysconfdir}/default/tailscaled</p>
      <p>=C2=A0</p>
      <p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_unitdir}/sys=
tem</p>
      <p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644
        ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/tailscaled.servic=
e
        ${D}${systemd_unitdir}/system/tailscaled.service</p>
      <p>=C2=A0</p>
      <p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d
        ${D}${sysconfdir}/systemd/system/multi-user.target.wants/</p>
      <p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -s ${systemd_unitdir}/system/tails=
caled.service
${D}${sysconfdir}/systemd/system/multi-user.target.wants/tailscaled.servic=
e</p>
      <p>=C2=A0 =C2=A0 fi</p>
      <p>}</p>
      <p>=C2=A0</p>
      <p>SYSTEMD_PACKAGES =3D "${PN}"</p>
      <p>SYSTEMD_SERVICE_${PN} =3D "tailscaled.service"</p>
      <p>SYSTEMD_AUTO_ENABLE =3D "enable"</p>
      <div>
        <p style=3D"line-height: 1.42857;">-------------------------------=
-----------------</p>
      </div>
      <div>=C2=A0</div>
      <div>When installed on my target system, systemd reports the
        following for the tailscaled daemon:</div>
      <div>------------------------------------------------</div>
      <div>
        <div>[[0;1;32m=E2=97=8F[[0m tailscaled.service - Tailscale node ag=
ent</div>
        <div>=C2=A0 =C2=A0 =C2=A0Loaded: loaded
          (/lib/systemd/system/tailscaled.service; enabled; vendor
          preset: enabled)</div>
        <div>=C2=A0 =C2=A0 =C2=A0Active: [[0;1;32mactive (running)[[0m sin=
ce Sat
          2020-09-19 20:46:02 UTC; 4min 44s ago</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0Docs: <a class=3D"moz-txt-link-fre=
etext" href=3D"https://tailscale.com/kb/">https://tailscale.com/kb/</a></di=
v>
        <div>=C2=A0 =C2=A0Main PID: 252 (tailscaled)</div>
        <div>=C2=A0 =C2=A0 =C2=A0 Tasks: 13 (limit: 19081)</div>
        <div>=C2=A0 =C2=A0 =C2=A0Memory: 56.5M</div>
        <div>=C2=A0 =C2=A0 =C2=A0CGroup: /system.slice/tailscaled.service<=
/div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=
=94=80252 /usr/sbin/tailscaled
          --state=3D/var/lib/tailscale/tailscaled.state
          --socket=3D/run/tailscale/tai</div>
        <div>lscaled.sock --port 41641</div>
        <div>=C2=A0</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control:
          cancelMapSafely: synced=3Dfalse</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control:
          cancelMapSafely: wrote to channel</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control:
          mapRoutine: new map needed while idle.</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M control:
          mapRoutine: state:url-visit-required</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.3M/39.1M
          LinkChange(isExpensive=3Dfalse); needsRebind=3Dfalse</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.3M/39.1M
          magicsock: starting endpoint update (link-change-minor)</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.6M/39.1M
          LinkChange(isExpensive=3Dfalse); needsRebind=3Dfalse</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.6M/39.1M
          magicsock: starting endpoint update (link-change-minor)</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.5M/39.1M
          LinkChange(isExpensive=3Dfalse); needsRebind=3Dfalse</div>
        <div>Sep 19 20:48:03 amber tailscaled[252]: 7.2M/39.1M
          magicsock: starting endpoint update (link-change-minor)</div>
      </div>
      <div>
        <p style=3D"line-height: 1.42857;">-------------------------------=
-----------------</p>
      </div>
      <div>=C2=A0</div>
      <div>And ifconfig reports the following:</div>
      <div>------------------------------------------------</div>
      <div>
        <p style=3D"line-height: 1.42857;"># ifconfig</p>
        <p style=3D"line-height: 1.42857;">tailscale0 Link encap:UNSPEC=C2=
=
=A0
          HWaddr 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00=C2=A0=C2=
=A0</p>
        <p style=3D"line-height: 1.42857;">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 inet6 addr:
          fe80::7f12:8835:cc06:b3e7/64 Scope:Link</p>
        <p style=3D"line-height: 1.42857;">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 UP POINTOPOINT
          RUNNING NOARP MULTICAST=C2=A0 MTU:1280=C2=A0 Metric:1</p>
        <p style=3D"line-height: 1.42857;">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 RX packets:0 errors:0
          dropped:0 overruns:0 frame:0</p>
        <p style=3D"line-height: 1.42857;">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 TX packets:14
          errors:0 dropped:0 overruns:0 carrier:0</p>
        <p style=3D"line-height: 1.42857;">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 collisions:0
          txqueuelen:500=C2=A0</p>
        <p style=3D"line-height: 1.42857;">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 RX bytes:0 (0.0 B)=C2=A0
          TX bytes:825 (825.0 B)</p>
        <p style=3D"line-height: 1.42857;">-------------------------------=
-----------------</p>
      </div>
      <div>Thank you to Khem for the tip on looking into "inherit
        go-mod" and patience while I sorted through this.</div>
      <div>=C2=A0</div>
      <div>Mike Thompson</div>
      <div>=C2=A0</div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------6C982475F7C0A8663132A7A3--
